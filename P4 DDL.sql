
CREATE DATABASE PATIENTMANAGEMENT

---CREATE TABLES
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
);

CREATE TABLE EmergencyContact (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Relationship VARCHAR(50),
    ContactNumber VARCHAR(15),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE ConsentForm (
    FormID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT,
    ConsentDate DATE,
    ExpiryDate DATE,
    ConsentPurpose VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE PatientFeedback (
    PatientID INT PRIMARY KEY,
    FeedbackFormID INT,
    FeedbackDate DATE,
    FeedbackTime TIME,
    Description VARCHAR(500),
    Rating INT,
    Recommendation VARCHAR(100),
    ContactNumber VARCHAR(15),
    PhysicianName VARCHAR(100),
    TreatmentName VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE Billing (
    InvoiceID INT PRIMARY KEY IDENTITY(1,1),
    DateOfBilling DATE,
    PaymentAmount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    BillingDescription VARCHAR(100),
    BillingStatus VARCHAR(20)
);

CREATE TABLE InsurancePolicy (
    InsuranceNumber VARCHAR(20) PRIMARY KEY,
    PatientID INT,
	InvoiceID INT,
    InsuranceProvider VARCHAR(100),
    InsurancePlan VARCHAR(100),
    PolicyStartDate DATE,
    PolicyEndDate DATE,
    PremiumAmount DECIMAL(10, 2),
    Deductible DECIMAL(10, 2),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
	FOREIGN KEY (InvoiceID) REFERENCES Billing(InvoiceID)
);

CREATE TABLE InsuranceBenefits (
    BenefitID INT PRIMARY KEY IDENTITY(1,1),
    BenefitDescription VARCHAR(100)
);

CREATE TABLE PolicyBenefits (
    PolicyBenefitID INT PRIMARY KEY IDENTITY(1,1),
    InsuranceNumber VARCHAR(20),
    BenefitID INT,
    FOREIGN KEY (InsuranceNumber) REFERENCES InsurancePolicy(InsuranceNumber),
    FOREIGN KEY (BenefitID) REFERENCES InsuranceBenefits(BenefitID)
);


CREATE TABLE Physician (
    PhysicianID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    LicenseNumber VARCHAR(20),
    ContactNumber VARCHAR(15),
    ShiftDay VARCHAR(20),
    ShiftTime TIME,
    JoiningDate DATE,
    Supervisor VARCHAR(100)
);

CREATE TABLE Specialty (
    SpecialtyID INT PRIMARY KEY IDENTITY(1,1),
    SpecialtyName VARCHAR(50)
);

CREATE TABLE PhysicianSpecialty (
    PhysicianID INT,
    SpecialtyID INT,
    PRIMARY KEY (PhysicianID, SpecialtyID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID),
    FOREIGN KEY (SpecialtyID) REFERENCES Specialty(SpecialtyID)
);

CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT,
    PhysicianID INT,
    AppointmentStatus VARCHAR(20),
    AppointmentType VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID)
);

CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY IDENTITY(1,1),
    PatientID INT,
    InvoiceID INT,
    DateOfEntry DATE,
    BloodGroup VARCHAR(10),
    Allergies VARCHAR(100),
    Diabetic TINYINT,
    BloodPressure VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (InvoiceID) REFERENCES Billing(InvoiceID)
);

CREATE TABLE Medication (
    MedicationID INT PRIMARY KEY IDENTITY(1,1),
    MedicineName VARCHAR(50)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY IDENTITY(1,1),
    PhysicianID INT,
    RecordID INT,
    MedicationID INT,
    PrescriptionDate DATE,
    Dosage VARCHAR(50),
    Duration INT,
    Frequency VARCHAR(50),
    RefillDate DATE,
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID),
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID),
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)
);

CREATE TABLE Immunizations (
    ImmunizationID INT PRIMARY KEY IDENTITY(1,1),
    RecordID INT,
    VaccineName VARCHAR(50),
    DateAdministered DATE,
    NextDoseDate DATE,
    DoseNumber INT,
    Manufacturer VARCHAR(50),
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID)
);


CREATE TABLE LabTest (
    TestID INT PRIMARY KEY IDENTITY(1,1),
    RecordID INT,
    PhysicianID INT,
    TestType VARCHAR(50),
    TestDate DATE,
    TestTime TIME,
    TestDescription VARCHAR(100),
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID)
);

CREATE TABLE Diagnosis (
    DiagnosisID INT PRIMARY KEY IDENTITY(1,1),
    DiagnosisName VARCHAR(50),
    Description VARCHAR(100)
);

CREATE TABLE TestResult (
    TestResultID INT PRIMARY KEY IDENTITY(1,1),
    TestID INT,
    DiagnosisID INT,
    TestResults VARCHAR(100),
    ResultDate DATE,
    ReferenceRange VARCHAR(50),
    FOREIGN KEY (TestID) REFERENCES LabTest(TestID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID)
);

CREATE TABLE Treatment (
    TreatmentID INT PRIMARY KEY IDENTITY(1,1),
    RecordID INT,
    PhysicianID INT,
    DiagnosisID INT,
    TreatmentName VARCHAR(50),
    TreatmentPlan VARCHAR(100),
    TreatmentStartDate DATE,
    TreatmentEndDate DATE,
    FOREIGN KEY (RecordID) REFERENCES MedicalRecords(RecordID),
    FOREIGN KEY (PhysicianID) REFERENCES Physician(PhysicianID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(DiagnosisID)
);

---Table-Level CHECK Constraints
--TABLE PATIENT
ALTER TABLE Patient
ADD CONSTRAINT CHK_Gender CHECK (Gender IN ('Male', 'Female', 'Other'))
--TABLE Billing
ALTER TABLE Billing
ADD CONSTRAINT CHK_PaymentAmount CHECK (PaymentAmount >= 0.00)
----Table Immunizations
ALTER TABLE Immunizations
ADD CONSTRAINT CHK_DoseNumber CHECK (DoseNumber > 0)
--Table Lab Test
ALTER TABLE LabTest
ADD CONSTRAINT CHK_TestDateTime CHECK (TestDate IS NOT NULL AND TestTime IS NOT NULL)
--TABLE Physician
ALTER TABLE Physician
ADD CONSTRAINT CHK_LicenseNumber CHECK (LicenseNumber IS NOT NULL);
--Table Medical Records
ALTER TABLE MedicalRecords
ADD CONSTRAINT CHK_Diabetic CHECK (Diabetic IN (0, 1));
--TABLE INSURANCE POLICY
ALTER TABLE InsurancePolicy
ADD CONSTRAINT CHK_PolicyStartDate CHECK (PolicyStartDate IS NOT NULL)
ALTER TABLE InsurancePolicy
ADD CONSTRAINT CHK_PolicyEndDate CHECK (PolicyEndDate IS NOT NULL)

--- USER DEFINED FUNCTIONS
--Full Patient Name
Create function Getfullnames(@PatientID int)
returns varchar(100)
as
BEGIN
	declare @full_name varchar(100)

	select @full_name=p.FirstName+ ' '+p.LastName
	from patient p
	where p.PatientID=@PatientID

	return @full_name
end

ALTER TABLE patient
ADD Fullname AS dbo.Getfullnames(PatientID) 

--Patient Age
Create function GetPatientAge(@PatientID int)
returns int
as
BEGIN
	DECLARE @age int
	
	SELECT @age = 
        CASE
            WHEN MONTH(p.DateOfBirth) > MONTH(GETDATE()) OR 
                 ((MONTH(p.DateOfBirth) = MONTH(GETDATE()) AND DAY(p.DateOfBirth) > DAY(GETDATE())))
            THEN DATEDIFF(YEAR, p.DateOfBirth, GETDATE()) - 1
            ELSE DATEDIFF(YEAR, p.DateOfBirth, GETDATE())
        END
    FROM Patient p
    WHERE p.PatientID = @PatientID

	RETURN @age
END

ALTER TABLE patient
ADD Age AS dbo.GetPatientAge(PatientID);

--Physician's Full Name
Create function GetPhysicianname(@PhysicianID int)
returns varchar(100)
as
begin
	declare @full_name varchar(100)

	select @full_name=p.FirstName+ ' '+p.LastName
	from physician p
	where p.PhysicianID=@PhysicianID

	return @full_name
end

ALTER TABLE physician
ADD FullName AS dbo.GetPhysicianname(PhysicianID) 

--Insurance Policy Duration
CREATE function GetPolicyDuration(@InsuranceNumber varchar(20))
returns int
as
begin
	declare @duration int

	select @duration=DATEDIFF(MONTH, PolicyStartDate,PolicyEndDate)
	from InsurancePolicy 
	where InsuranceNumber=@InsuranceNumber

	return @duration
end

ALTER TABLE InsurancePolicy
ADD PolicyDuration_InMonths AS dbo.GetPolicyDuration(InsuranceNumber) 

--UNIQUE PRESCRIPTION CODE- CAN BE USED FOR SECURITY PURPOSES LATER
CREATE FUNCTION dbo.GeneratePrescriptionCode(@PhysicianID INT, @MedicationID INT, @PrescriptionDate DATE)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @PrescriptionCode VARCHAR(20);

    SET @PrescriptionCode = CAST(@PhysicianID AS VARCHAR(5)) + '-' +
                            CAST(@MedicationID AS VARCHAR(5)) + '-' +
                            REPLACE(CONVERT(VARCHAR(10), @PrescriptionDate, 120), '-', '');

    RETURN @PrescriptionCode;
END;

ALTER TABLE prescriptions
ADD PrescriptionCode AS dbo.GeneratePrescriptionCode(PhysicianID, MedicationID, PrescriptionDate) 


---NON CLUSTERED QUERIES
-- create non-clustered indexes on specific columns to improve query performance
--Faster retrieval of patients feedback based on patient ids
CREATE NONCLUSTERED INDEX IX_PatientFeedback
ON PatientFeedback(PatientID);

SELECT
    P.PatientID,
    dbo.Getfullnames(P.PatientID) AS FullName,
    PF.FeedbackDate,
    PF.Description,
    PF.Rating,
    PF.Recommendation
FROM
    Patient P
JOIN
    PatientFeedback PF ON P.PatientID = PF.PatientID;
--Improved efficiency for queries that involve filtering  billing records based on the date of billing
CREATE NONCLUSTERED INDEX IX_Billing
ON Billing(DateOfBilling)
SELECT *
FROM Billing
WHERE DateOfBilling = '2023-01-15'
-- Improved performance for queries that filter or join based on PatientID
CREATE NONCLUSTERED INDEX IX_MedicalRecords
ON MedicalRecords(PatientID)
SELECT *
FROM MedicalRecords
WHERE PatientID = 1
--Faster retrieval of lab test records associated with a specific medical record 
CREATE NONCLUSTERED INDEX IX_LabTest
ON LabTest(RecordID);
SELECT LT.*,MR.PatientID,MR.BloodGroup,MR.Allergies,MR.Diabetic,MR.BloodPressure,MR.DateOfEntry
FROM LabTest LT
JOIN 
MedicalRecords MR ON LT.RecordID = MR.RecordID
WHERE MR.PatientID = 1
--Improved performance for queries that involve searching or joining OR grouping based on RecordID
CREATE NONCLUSTERED INDEX IX_Treatment
ON Treatment(RecordID);
SELECT RecordID, COUNT(*) AS TreatmentCount
FROM Treatment
GROUP BY RecordID
ORDER BY RecordID


--PROCEDURES
-- Create a stored procedure to get patient information and medical records
CREATE PROCEDURE GetPatientInfoAndRecords
    @PatientID INT
AS
BEGIN
    -- Declare variables to store patient information
    DECLARE @FirstName VARCHAR(50),
            @LastName VARCHAR(50),
            @DateOfBirth DATE,
            @Gender VARCHAR(10),
            @Street VARCHAR(100),
            @City VARCHAR(50),
            @State VARCHAR(50),
            @ZipCode VARCHAR(10),
            @ContactNumber VARCHAR(15),
            @Email VARCHAR(100);

    -- Declare variables to store medical records information
    DECLARE @DateOfEntry DATE,
            @BloodGroup VARCHAR(10),
            @Allergies VARCHAR(100),
            @Diabetic TINYINT,
            @BloodPressure VARCHAR(20),
			@RecordID INT;

    -- Retrieve patient information
    SELECT
        @FirstName = FirstName,
        @LastName = LastName,
        @DateOfBirth = DateOfBirth,
        @Gender = Gender,
        @Street = Street,
        @City = City,
        @State = State,
        @ZipCode = ZipCode,
        @ContactNumber = ContactNumber,
        @Email = Email
    FROM
        Patient
    WHERE
        PatientID = @PatientID;

    -- Retrieve medical records information
    SELECT
        @RecordID = RecordID,
        @DateOfEntry = DateOfEntry,
        @BloodGroup = BloodGroup,
        @Allergies = Allergies,
        @Diabetic = Diabetic,
        @BloodPressure = BloodPressure
    FROM
        MedicalRecords
    WHERE
        PatientID = @PatientID;

    -- Return the results
    SELECT
        @PatientID AS PatientID,
        @FirstName AS FirstName,
        @LastName AS LastName,
        @DateOfBirth AS DateOfBirth,
        @Gender AS Gender,
        @Street AS Street,
        @City AS City,
        @State AS State,
        @ZipCode AS ZipCode,
        @ContactNumber AS ContactNumber,
        @Email AS Email,
        @RecordID AS RecordID,
        @DateOfEntry AS DateOfEntry,
        @BloodGroup AS BloodGroup,
        @Allergies AS Allergies,
        @Diabetic AS Diabetic,
        @BloodPressure AS BloodPressure;
END;

EXEC GetPatientInfoAndRecords @PatientID = 3;



-- Create a stored procedure to get patient prescriptions
CREATE PROCEDURE GetPatientPrescriptions
    @PatientID INT
AS
BEGIN
    -- Declare variables to store prescription information
    DECLARE @PrescriptionID INT,
            @MedicationName VARCHAR(50),
            @Dosage VARCHAR(50),
            @PrescriptionDate DATE;

    -- Retrieve prescription information
    SELECT
        @PrescriptionID = P.PrescriptionID,
        @MedicationName = M.MedicineName,
        @Dosage = P.Dosage,
        @PrescriptionDate = P.PrescriptionDate
    FROM
        Prescriptions P
    INNER JOIN
        Medication M ON P.MedicationID = M.MedicationID
    WHERE
        P.RecordID IN (SELECT RecordID FROM MedicalRecords WHERE PatientID = @PatientID);

    -- Return the results
    SELECT
        @PatientID AS PatientID,
        @PrescriptionID AS PrescriptionID,
        @MedicationName AS MedicationName,
        @Dosage AS Dosage,
        @PrescriptionDate AS PrescriptionDate;
END;

EXEC GetPatientPrescriptions @PatientID = 1;




-- Create a stored procedure to get patient lab test results
CREATE PROCEDURE GetPatientLabTestResults
    @PatientID INT
AS
BEGIN
    -- Declare variables to store lab test information
    DECLARE @TestID INT,
            @TestType VARCHAR(50),
            @TestDate DATE,
            @TestDescription VARCHAR(100),
            @TestResults VARCHAR(100),
            @ResultDate DATE;

    -- Retrieve lab test information and results
    SELECT
        @TestID = LT.TestID,
        @TestType = LT.TestType,
        @TestDate = LT.TestDate,
        @TestDescription = LT.TestDescription,
        @TestResults = TR.TestResults,
        @ResultDate = TR.ResultDate
    FROM
        LabTest LT
    INNER JOIN
        TestResult TR ON LT.TestID = TR.TestID
    WHERE
        LT.RecordID IN (SELECT RecordID FROM MedicalRecords WHERE PatientID = @PatientID);

    -- Return the results
    SELECT
        @PatientID AS PatientID,
        @TestID AS TestID,
        @TestType AS TestType,
        @TestDate AS TestDate,
        @TestDescription AS TestDescription,
        @TestResults AS TestResults,
        @ResultDate AS ResultDate;
END;

EXEC GetPatientLabTestResults @PatientID = 1;

--- VIEWS
--Immunization History View
CREATE VIEW ImmunizationHistoryView AS
SELECT
    i.ImmunizationID,
    i.VaccineName,
    i.DateAdministered,
    i.NextDoseDate,
    i.DoseNumber,
    i.Manufacturer,
    r.BloodGroup,
    r.Allergies,
    dbo.Getfullnames(r.PatientID) AS PatientFullName
FROM
    Immunizations i
JOIN MedicalRecords r ON i.RecordID = r.RecordID;

-- Lab Test Results View
CREATE VIEW LabTestResultsView AS
SELECT
    tr.TestResultID,
    tr.TestResults,
    tr.ResultDate,
    tr.ReferenceRange,
    t.TestType,
    t.TestDate,
    t.TestTime,
    t.TestDescription,
    ph.FirstName AS PhysicianFirstName,
    ph.LastName AS PhysicianLastName,
    r.BloodGroup,
    r.Allergies
FROM
    TestResult tr
JOIN LabTest t ON tr.TestID = t.TestID
JOIN Physician ph ON t.PhysicianID = ph.PhysicianID
JOIN MedicalRecords r ON t.RecordID = r.RecordID;

--Physician Appointment View
CREATE VIEW PhysicianAppointmentView AS
SELECT
    a.AppointmentID,
    p.FirstName AS PatientFirstName,
    p.LastName AS PatientLastName,
    p.DateOfBirth AS PatientDateOfBirth,
    p.Gender AS PatientGender,
    dbo.GetPhysicianName(a.PhysicianID) AS PhysicianFullName,
    ph.LicenseNumber AS PhysicianLicenseNumber,
    ph.ContactNumber AS PhysicianContactNumber,
    ph.ShiftDay AS PhysicianShiftDay,
    ph.ShiftTime AS PhysicianShiftTime,
    s.SpecialtyName
FROM
    Appointment a
JOIN Patient p ON a.PatientID = p.PatientID
JOIN Physician ph ON a.PhysicianID = ph.PhysicianID
JOIN PhysicianSpecialty ps ON ph.PhysicianID = ps.PhysicianID
JOIN Specialty s ON ps.SpecialtyID = s.SpecialtyID;



-- Patient Information View
CREATE VIEW PatientInformationView AS
SELECT
    p.PatientID,
	dbo.Getfullnames(p.PatientID) AS PatientFullName,
    p.DateOfBirth,
    p.Gender,
    p.Street,
    p.City,
    p.State,
    p.ZipCode,
    p.ContactNumber,
    p.Email,
    ec.FirstName AS EmergencyContactFirstName,
    ec.LastName AS EmergencyContactLastName,
    ec.Street AS EmergencyContactStreet,
    ec.City AS EmergencyContactCity,
    ec.State AS EmergencyContactState,
    ec.ZipCode AS EmergencyContactZipCode,
    ec.Relationship AS EmergencyContactRelationship,
    ec.ContactNumber AS EmergencyContactNumber,
    c.ConsentDate,
    c.ExpiryDate,
    c.ConsentPurpose
FROM
    Patient p
LEFT JOIN EmergencyContact ec ON p.PatientID = ec.PatientID
LEFT JOIN ConsentForm c ON p.PatientID = c.PatientID;


-- TopInsuranceProvidersView
CREATE VIEW TopInsuranceProvidersView AS
SELECT
    InsuranceProvider,
    COUNT(*) AS ProviderCount
FROM
    InsurancePolicy
GROUP BY
    InsuranceProvider;


-- PatientAgeView
CREATE VIEW PatientAgeView AS
SELECT
    PatientID,
    dbo.GetFullNames(PatientID) AS PatientFullName,
    DateOfBirth,
    dbo.GetPatientAge(PatientID) as PatientAge
FROM
    Patient;

--MaxCountofAgebyPhysicianView
CREATE VIEW PhysicianSpecialtyAgeView AS
SELECT
    ps.PhysicianID,
    dbo.GetFullNames(p.PatientID) AS PatientFullName,
    s.SpecialtyName,
    DATEDIFF(YEAR, p.DateOfBirth, GETDATE()) AS PatientAge
FROM
    Appointment a
JOIN Patient p ON a.PatientID = p.PatientID
JOIN Physician ph ON a.PhysicianID = ph.PhysicianID
JOIN PhysicianSpecialty ps ON ph.PhysicianID = ps.PhysicianID
JOIN Specialty s ON ps.SpecialtyID = s.SpecialtyID;


CREATE VIEW SpecialtyPatientCountView AS
SELECT
    s.SpecialtyName,
    COUNT(DISTINCT a.PatientID) AS TotalPatients
FROM
    Specialty s
JOIN PhysicianSpecialty ps ON s.SpecialtyID = ps.SpecialtyID
JOIN Physician p ON ps.PhysicianID = p.PhysicianID
JOIN Appointment a ON p.PhysicianID = a.PhysicianID
GROUP BY
    s.SpecialtyName;


--TRIGGER
-- Creating the AppointmentAudit table
CREATE TABLE AppointmentAudit (
    AuditID INT PRIMARY KEY IDENTITY(1,1),
    AppointmentID INT,
    OldAppointmentStatus VARCHAR(20),
    NewAppointmentStatus VARCHAR(20),
    AuditDate DATETIME
);

-- Creating the trigger for the Appointment table
CREATE TRIGGER tr_AppointmentStatusAudit
ON Appointment
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(AppointmentStatus)
    BEGIN
        INSERT INTO AppointmentAudit (AppointmentID, OldAppointmentStatus, NewAppointmentStatus, AuditDate)
        SELECT 
            i.AppointmentID,
            d.AppointmentStatus AS OldAppointmentStatus,
            i.AppointmentStatus AS NewAppointmentStatus,
            GETDATE() AS AuditDate
        FROM
            INSERTED i
            INNER JOIN DELETED d ON i.AppointmentID = d.AppointmentID
        WHERE
            i.AppointmentStatus <> d.AppointmentStatus;
    END
END;

--COLUMN DATA ENCRYPTION 

-- Create the Master Key
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Patient@123';

-- Create a Certificate to Protect the Symmetric Key
CREATE CERTIFICATE PatientEncryptCert WITH SUBJECT = 'Patient Email Certificate 2023';

-- Create the Symmetric Key using AES_256 algorithm
CREATE SYMMETRIC KEY PatientEmailKey
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE PatientEncryptCert;

select * from patient

-- Add Encrypted Columns to the Patient table for email and contactNumber
ALTER TABLE Patient
ADD Email_encrypted VARBINARY(MAX),
    ContactNumber_encrypted VARBINARY(MAX);

select * from patient

-- Encrypt the email and contact columns
OPEN SYMMETRIC KEY PatientEmailKey
DECRYPTION BY CERTIFICATE PatientEncryptCert;

UPDATE Patient
SET 
    Email_encrypted = EncryptByKey(Key_GUID('PatientEmailKey'), Email),
    ContactNumber_encrypted = EncryptByKey(Key_GUID('PatientEmailKey'), ContactNumber);

CLOSE SYMMETRIC KEY PatientEmailKey;

-- Decrypt and View the Data
OPEN SYMMETRIC KEY PatientEmailKey
DECRYPTION BY CERTIFICATE PatientEncryptCert;

SELECT 
    patientid, 
    fullname, 
    CONVERT(VARCHAR, DecryptByKey(Email_encrypted)) AS email_decrypted,
    CONVERT(VARCHAR, DecryptByKey(ContactNumber_encrypted)) AS ContactNumber_decrypted
FROM 
    Patient;

CLOSE SYMMETRIC KEY PatientEmailKey;

SELECT * FROM Patient;