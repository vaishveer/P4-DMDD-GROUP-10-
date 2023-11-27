

---
INSERT INTO Patient (FirstName, LastName, DateOfBirth, Gender, Street, City, [State], ZipCode, ContactNumber, Email)
VALUES
('John', 'Doe', '1990-05-15', 'Male', '123 Main St', 'Cityville', 'CA', '90210', '555-1234', 'john.doe@email.com'),
('Jane', 'Smith', '1985-08-22', 'Female', '456 Oak Ave', 'Townsville', 'NY', '12345', '555-5678', 'jane.smith@email.com'),
('Bob', 'Johnson', '1978-03-10', 'Male', '789 Pine Ln', 'Villagetown', 'TX', '54321', '555-9876', 'bob.johnson@email.com'),
('Alice', 'Williams', '1995-11-02', 'Female', '101 Elm St', 'Cityburg', 'FL', '98765', '555-4321', 'alice.williams@email.com'),
('Michael', 'Jones', '1982-07-18', 'Male', '222 Cedar Rd', 'Hamletville', 'OH', '13579', '555-8765', 'michael.jones@email.com'),
('Emily', 'Brown', '1993-04-30', 'Female', '333 Birch Ave', 'Villageburg', 'IL', '24680', '555-2345', 'emily.brown@email.com'),
('David', 'Lee', '1975-09-12', 'Male', '444 Maple Ln', 'Citytown', 'WA', '56789', '555-7654', 'david.lee@email.com'),
('Sarah', 'Anderson', '1988-01-25', 'Female', '555 Oak St', 'Townburg', 'MI', '67890', '555-3456', 'sarah.anderson@email.com'),
('Chris', 'Miller', '1997-06-08', 'Male', '666 Pine Ave', 'Villageville', 'AZ', '78901', '555-6543', 'chris.miller@email.com'),
('Olivia', 'Taylor', '1980-12-17', 'Female', '777 Cedar Rd', 'Cityville', 'GA', '89012', '555-8765', 'olivia.taylor@email.com'),
('Daniel', 'Moore', '1999-02-03', 'Male', '888 Elm Ln', 'Hamletburg', 'PA', '90123', '555-2345', 'daniel.moore@email.com'),
('Megan', 'Hill', '1983-10-29', 'Female', '999 Birch Ave', 'Villageville', 'CO', '43210', '555-7654', 'megan.hill@email.com'),
('Ryan', 'Smith', '1991-07-14', 'Male', '111 Oak St', 'Cityburg', 'CA', '54321', '555-8765', 'ryan.smith@email.com'),
('Emma', 'Davis', '1972-04-19', 'Female', '222 Pine Rd', 'Townville', 'NY', '98765', '555-2345', 'emma.davis@email.com'),
('Andrew', 'White', '1987-11-07', 'Male', '333 Cedar Ave', 'Villagetown', 'TX', '65432', '555-7654', 'andrew.white@email.com');
--15

INSERT INTO EmergencyContact (PatientID, FirstName, LastName, Street, City, [State], ZipCode, Relationship, ContactNumber)
VALUES
(1, 'Alice', 'Johnson', '456 Pine St', 'Villageville', 'CA', '90210', 'Spouse', '555-1616'),
(2, 'Benjamin', 'Taylor', '789 Cedar Ave', 'Hamletburg', 'NY', '12345', 'Sibling', '555-1717'),
(3, 'Grace', 'Davis', '101 Elm Ln', 'Citytown', 'TX', '54321', 'Parent', '555-1818'),
(4, 'Elijah', 'Hill', '222 Oak St', 'Townsville', 'FL', '98765', 'Friend', '555-1919'),
(5, 'Ava', 'Clark', '333 Maple Ave', 'Villagetown', 'OH', '13579', 'Relative', '555-2020'),
(6, 'Leo', 'Brown', '444 Birch Rd', 'Cityburg', 'IL', '24680', 'Spouse', '555-2121'),
(7, 'Nora', 'Miller', '555 Cedar Ln', 'Villageburg', 'WA', '56789', 'Sibling', '555-2222'),
(8, 'Henry', 'Moore', '666 Pine St', 'Cityville', 'MI', '67890', 'Parent', '555-2323'),
(9, 'Lily', 'Hill', '777 Maple Ave', 'Villageville', 'AZ', '78901', 'Friend', '555-2424'),
(10, 'Ethan', 'Taylor', '888 Elm Rd', 'Hamletville', 'GA', '89012', 'Relative', '555-2525'),
(11, 'Sophia', 'White', '999 Birch St', 'Citytown', 'PA', '90123', 'Spouse', '555-2626'),
(12, 'Mason', 'Clark', '111 Oak Ln', 'Townburg', 'CO', '43210', 'Sibling', '555-2727'),
(13, 'Harper', 'Martin', '222 Pine Rd', 'Cityville', 'CA', '54321', 'Parent', '555-2828'),
(14, 'Logan', 'Wilson', '333 Cedar Ave', 'Townsville', 'NY', '98765', 'Friend', '555-2929'),
(15, 'Zoe', 'Taylor', '444 Elm St', 'Villagetown', 'TX', '65432', 'Relative', '555-3030');
--15

INSERT INTO ConsentForm (PatientID, ConsentDate, ExpiryDate, ConsentPurpose)
VALUES
(1, '2023-01-01', '2023-12-31', 'General Medical Treatment'),
(2, '2023-02-15', '2023-11-30', 'X-ray and Imaging Procedures'),
(3, '2023-03-10', '2023-10-15', 'Surgery Consent'),
(4, '2023-04-05', '2023-09-20', 'Prescription Information Sharing'),
(5, '2023-05-20', '2023-08-05', 'Medical Records Access'),
(6, '2023-06-15', '2023-07-10', 'Emergency Treatment Authorization'),
(7, '2023-07-01', '2023-06-30', 'Laboratory Tests Consent'),
(8, '2023-08-25', '2023-05-15', 'Physical Therapy Consent'),
(9, '2023-09-30', '2023-04-01', 'Specialized Treatment Consent'),
(10, '2023-10-10', '2023-03-20', 'Psychiatric Treatment Consent');
--10

INSERT INTO PatientFeedback (PatientID, FeedbackFormID, FeedbackDate, FeedbackTime, [Description], Rating, Recommendation, ContactNumber, PhysicianName, TreatmentName)
VALUES
(1, 101, '2023-01-15', '12:30:00', 'Great experience with the staff.', 5, 'Highly recommend', '555-1111', 'Dr. Smith', 'Physical Therapy'),
(2, 102, '2023-02-28', '14:45:00', 'Very satisfied with the treatment received.', 4, 'Would suggest improvements.', '555-2222', 'Dr. Johnson', 'Surgery'),
(3, 103, '2023-03-20', '10:00:00', 'Excellent service and caring staff.', 3, 'No suggestions, everything was perfect.', '555-3333', 'Dr. Williams', 'General Checkup'),
(4, 104, '2023-04-10', '08:15:00', 'Appreciate the attention to detail from the medical team.', 4, 'Minor suggestions for waiting times.', '555-4444', 'Dr. Davis', 'X-ray'),
(5, 105, '2023-05-25', '16:20:00', 'Smooth process from check-in to check-out.', 1, 'Would definitely recommend this clinic.', '555-5555', 'Dr. Anderson', 'Dental Procedure'),
(6, 106, '2023-06-18', '11:30:00', 'Friendly and knowledgeable staff.', 5, 'More information on post-treatment care would be helpful.', '555-6666', 'Dr. Brown', 'Eye Exam'),
(7, 107, '2023-07-05', '13:45:00', 'Prompt response to emergency situation.', 5, 'No suggestions, thank you for the quick assistance.', '555-7777', 'Dr. Miller', 'Emergency Treatment'),
(8, 108, '2023-08-30', '09:10:00', 'Effective communication from the healthcare team.', 2, 'Some improvement in waiting area amenities.', '555-8888', 'Dr. Moore', 'Blood Test'),
(9, 109, '2023-09-15', '07:55:00', 'Received personalized care, appreciate the effort.', 5, 'No recommendations, very satisfied.', '555-9999', 'Dr. Hill', 'Psychiatric Evaluation'),
(10, 110, '2023-10-05', '15:15:00', 'Overall positive experience with the clinic.', 4, 'Minor improvements in appointment scheduling.', '555-1010', 'Dr. Taylor', 'Dietary Consultation'),
(11, 111, '2023-11-12', '10:45:00', 'Timely and thorough examination.', 2, 'Highly recommend for general healthcare.', '555-1111', 'Dr. White', 'General Checkup'),
(12, 112, '2023-12-08', '14:00:00', 'Professional and courteous treatment from the medical staff.', 4, 'Slight improvement in follow-up communication.', '555-1212', 'Dr. Clark', 'MRI Scan'),
(13, 113, '2024-01-22', '08:50:00', 'Well-organized and clean facility.', 3, 'No suggestions, keep up the good work.', '555-1313', 'Dr. Martin', 'Physical Therapy'),
(14, 114, '2024-02-14', '11:20:00', 'Clear explanations from the medical team.', 3, 'Minor suggestions for waiting times.', '555-1414', 'Dr. Wilson', 'X-ray'),
(15, 115, '2024-03-07', '13:30:00', 'Efficient and friendly service.', 5, 'No recommendations, everything was great.', '555-1515', 'Dr. Taylor', 'General Checkup');
--15



INSERT INTO Physician (FirstName, LastName, LicenseNumber, ContactNumber, ShiftDay, ShiftTime, JoiningDate, Supervisor)
VALUES
('Dr. John', 'Doe', 'LIC101', '555-1111', 'Monday', '08:00:00', '2022-01-15', 'SupervisorX'),
('Dr. Jane', 'Smith', 'LIC102', '555-2222', 'Tuesday', '09:30:00', '2021-12-28', 'SupervisorY'),
('Dr. Robert', 'Johnson', 'LIC103', '555-3333', 'Wednesday', '10:45:00', '2022-02-10', 'SupervisorZ'),
('Dr. Emily', 'Davis', 'LIC104', '555-4444', 'Thursday', '11:15:00', '2022-05-05', 'SupervisorX'),
('Dr. Michael', 'Miller', 'LIC105', '555-5555', 'Friday', '13:00:00', '2021-11-15', 'SupervisorY'),
('Dr. Olivia', 'Clark', 'LIC106', '555-6666', 'Monday', '14:30:00', '2022-03-20', 'SupervisorZ'),
('Dr. Daniel', 'Moore', 'LIC107', '555-7777', 'Tuesday', '15:45:00', '2022-06-05', 'SupervisorX'),
('Dr. Sophia', 'Hill', 'LIC108', '555-8888', 'Wednesday', '08:30:00', '2022-09-20', 'SupervisorY'),
('Dr. Ethan', 'Taylor', 'LIC109', '555-9999', 'Thursday', '09:00:00', '2022-10-15', 'SupervisorZ'),
('Dr. Emma', 'Williams', 'LIC110', '555-1010', 'Friday', '11:30:00', '2022-11-30', 'SupervisorX'),
('Dr. Christopher', 'Brown', 'LIC111', '555-1111', 'Monday', '13:45:00', '2023-01-10', 'SupervisorY'),
('Dr. Ava', 'Martin', 'LIC112', '555-1212', 'Tuesday', '14:15:00', '2023-03-05', 'SupervisorZ'),
('Dr. Mia', 'Turner', 'LIC113', '555-1313', 'Wednesday', '10:00:00', '2023-05-20', 'SupervisorX'),
('Dr. Liam', 'Fletcher', 'LIC114', '555-1414', 'Thursday', '11:45:00', '2023-08-01', 'SupervisorY'),
('Dr. Isabella', 'Pierce', 'LIC115', '555-1515', 'Friday', '14:00:00', '2023-10-10', 'SupervisorZ');
--15

INSERT INTO Specialty (SpecialtyName) VALUES
('Cardiology'),
('Dermatology'),
('Endocrinology'),
('Gastroenterology'),
('Hematology'),
('Internal Medicine'),
('Neurology'),
('Oncology'),
('Orthopedics'),
('Pediatrics'),
('Psychiatry'),
('Pulmonology'),
('Radiology'),
('Rheumatology'),
('Urology'),
('Ophthalmology'),
('Otolaryngology'),
('Nephrology'),
('Gynecology'),
('Gastrointestinal Surgery');
--20

INSERT INTO PhysicianSpecialty (PhysicianID, SpecialtyID) VALUES
(1, 1),  
(1, 3),  
(2, 2),  
(11, 5),  
(3, 4),  
(12, 7),  
(4, 6),  
(4, 9),  
(5, 8),  
(13, 11), 
(6, 10), 
(6, 13), 
(7, 12), 
(14, 15), 
(8, 14), 
(15, 17), 
(9, 16), 
(9, 19), 
(10, 18),
(10, 20);

--20

INSERT INTO Appointment (PatientID, PhysicianID, AppointmentStatus, AppointmentType) VALUES
(1, 1, 'Scheduled', 'First Visit'), 
(2, 2, 'Confirmed', 'Revisit'),   
(3, 3, 'Scheduled', 'First Visit'), 
(4, 4, 'Confirmed', 'Revisit'),   
(5, 5, 'Canceled', 'Walk-in'),    
(6, 6, 'Scheduled', 'First Visit'), 
(7, 7, 'Confirmed', 'Revisit'),   
(8, 8, 'Scheduled', 'Walk-in'),  
(9, 9, 'Confirmed', 'First Visit'), 
(10, 10, 'Scheduled', 'Revisit'),  
(11, 1, 'Confirmed', 'First Visit'),
(12, 2, 'Scheduled', 'Revisit'), 
(13, 3, 'Canceled', 'Walk-in'),  
(14, 4, 'Scheduled', 'First Visit'),
(15, 5, 'Confirmed', 'Revisit'); 
--15

INSERT INTO Billing (DateOfBilling, PaymentAmount, PaymentMethod, BillingDescription, BillingStatus) VALUES
('2023-01-01', 150.00, 'Credit Card', 'Consultation Fee', 'Paid'),
('2023-01-02', 200.50, 'Cash', 'Lab Test Charges', 'Pending'),
('2023-01-03', 75.25, 'Debit Card', 'Medication Cost', 'Paid'),
('2023-01-04', 300.00, 'Insurance', 'Specialist Consultation', 'Pending'),
('2023-01-05', 50.00, 'Cash', 'Follow-up Visit', 'Paid'),
('2023-01-06', 180.75, 'Credit Card', 'Prescription Renewal', 'Pending'),
('2023-01-07', 120.50, 'Debit Card', 'X-ray Fees', 'Paid'),
('2023-01-08', 250.00, 'Insurance', 'Surgery Charges', 'Pending'),
('2023-01-09', 90.25, 'Cash', 'Physical Therapy Session', 'Paid'),
('2023-01-10', 175.00, 'Credit Card', 'Dental Checkup', 'Pending'),
('2023-01-11', 60.75, 'Debit Card', 'Eye Examination', 'Paid'),
('2023-01-12', 300.00, 'Insurance', 'MRI Scan', 'Pending'),
('2023-01-13', 80.50, 'Cash', 'Emergency Room Visit', 'Paid'),
('2023-01-14', 150.00, 'Credit Card', 'Allergy Testing', 'Pending'),
('2023-01-15', 200.25, 'Debit Card', 'Physical Examination', 'Paid'),
('2023-01-16', 120.00, 'Insurance', 'Ultrasound Charges', 'Pending'),
('2023-01-17', 40.75, 'Cash', 'Vaccination Fee', 'Paid'),
('2023-01-18', 90.50, 'Credit Card', 'Psychiatric Evaluation', 'Pending'),
('2023-01-19', 180.00, 'Debit Card', 'Chiropractic Session', 'Paid'),
('2023-01-20', 220.25, 'Insurance', 'Cardiac Stress Test', 'Pending');
--20

INSERT INTO InsurancePolicy (InsuranceNumber, PatientID, InvoiceID, InsuranceProvider, InsurancePlan, PolicyStartDate, PolicyEndDate, PremiumAmount, Deductible) VALUES
('INS001', 1, 1, 'ABC Insurance', 'Standard Plan', '2022-01-01', '2023-01-01', 500.00, 50.00),
('INS002', 2, 2, 'XYZ Insurance', 'Comprehensive Plan', '2022-02-01', '2023-02-01', 700.50, 75.00),
('INS003', 3, 3, 'PQR Insurance', 'Basic Plan', '2022-03-01', '2023-03-01', 400.25, 40.00),
('INS004', 4, 4, 'LMN Insurance', 'Family Plan', '2022-04-01', '2023-04-01', 900.00, 100.00),
('INS005', 5, 5, 'DEF Insurance', 'High Deductible Plan', '2022-05-01', '2023-05-01', 300.50, 30.00),
('INS006', 6, 6, 'GHI Insurance', 'Silver Plan', '2022-06-01', '2023-06-01', 600.75, 60.00),
('INS007', 7, 7, 'JKL Insurance', 'Catastrophic Plan', '2022-07-01', '2023-07-01', 350.00, 35.00),
('INS008', 8, 8, 'MNO Insurance', 'Gold Plan', '2022-08-01', '2023-08-01', 800.00, 80.00),
('INS009', 9, 9, 'RST Insurance', 'Platinum Plan', '2022-09-01', '2023-09-01', 450.25, 45.00),
('INS010', 10, 10, 'UVW Insurance', 'Student Plan', '2022-10-01', '2023-10-01', 700.00, 70.00),
('INS011', 11, 11, 'PQR Insurance', 'Basic Plan', '2022-11-01', '2023-11-01', 400.50, 40.00),
('INS012', 12, 12, 'GHI Insurance', 'Silver Plan', '2022-12-01', '2023-12-01', 600.25, 60.00),
('INS013', 13, 13, 'JKL Insurance', 'Catastrophic Plan', '2023-01-01', '2024-01-01', 350.75, 35.00),
('INS014', 14, 14, 'MNO Insurance', 'Gold Plan', '2023-02-01', '2024-02-01', 800.50, 80.00),
('INS015', 15, 15, 'RST Insurance', 'Platinum Plan', '2023-03-01', '2024-03-01', 450.00, 45.00);

--15

INSERT INTO InsuranceBenefits(BenefitDescription)VALUES
('Maternity Care'),
('Wellness Checkups'),
('Diagnostic Imaging'),
('Emergency Room Visits'),
('Prescription Coverage'),
('Mental Health Services'),
('Substance Abuse Treatment'),
('Rehabilitation Services'),
('Home Health Care'),
('Surgery Coverage'),
('Physical Therapy'),
('Vision Care'),
('Dental Services'),
('Health Education'),
('Preventive Care'),
('Chiropractic Services'),
('Cardiac Stress Test'),
('Maternity Services'),
('Lab Test Coverage'),
('Ambulance Services');

--20

INSERT INTO PolicyBenefits (InsuranceNumber, BenefitID)
VALUES
('INS001', 1),
('INS002', 2),
('INS003', 3),
('INS004', 4),
('INS005', 5),
('INS006', 6),
('INS007', 7),
('INS008', 8),
('INS009', 9),
('INS010', 10),
('INS011', 11),
('INS012', 12),
('INS013', 13),
('INS014', 14),
('INS015', 15),
('INS010', 1),
('INS011', 2),
('INS012', 3),
('INS013', 4),
('INS014', 5),
('INS015', 6);

--21

INSERT INTO MedicalRecords (PatientID, InvoiceID, DateOfEntry, BloodGroup, Allergies, Diabetic, BloodPressure) VALUES
(1, 1, '2022-01-01', 'A+', 'Pollen', 0, '120/80'),
(2, 2, '2022-02-01', 'O-', 'Penicillin', 1, '130/85'),
(3, 3, '2022-03-01', 'B+', 'Shellfish', 0, '115/75'),
(4, 4, '2022-04-01', 'AB-', 'Dust Mites', 1, '140/90'),
(5, 5, '2022-05-01', 'A-', 'None', 0, '125/80'),
(6, 6, '2022-06-01', 'O+', 'Peanuts', 1, '135/88'),
(7, 7, '2022-07-01', 'B-', 'Mold', 0, '118/78'),
(8, 8, '2022-08-01', 'AB+', 'None', 1, '128/82'),
(9, 9, '2022-09-01', 'A+', 'Latex', 0, '122/76'),
(10, 10, '2022-10-01', 'O-', 'Eggs', 1, '130/85'),
(11, 11, '2022-11-01', 'B+', 'Pollen', 0, '118/75'),
(12, 12, '2022-12-01', 'AB-', 'Shellfish', 1, '138/88'),
(13, 13, '2023-01-01', 'A-', 'Peanuts', 0, '125/80'),
(14, 14, '2023-02-01', 'O+', 'None', 1, '135/88'),
(15, 15, '2023-03-01', 'B-', 'Mold', 0, '118/78'),
(14, 16, '2023-04-01', 'O+', 'None', 1, '128/82'),
(13, 17, '2023-05-01', 'A-', 'Peanuts', 0, '122/76'),
(12, 18, '2023-06-01', 'AB-', 'Shellfish', 1, '130/85'),
(11, 19, '2023-07-01', 'B+', 'Pollen', 0, '118/75'),
(10, 20, '2023-08-01', 'O-', 'Eggs', 1, '138/88'),
(1, 1, '2023-09-01', 'A+', 'Pollen', 0, '125/80'),
(10, 2, '2023-10-01', 'O-', 'Eggs', 1, '135/88'),
(9, 3, '2023-11-01', 'A+', 'Latex', 0, '118/78'),
(9, 4, '2023-12-01', 'A+', 'Latex', 1, '128/82'),
(8, 5, '2024-01-01', 'AB+', 'None', 0, '122/76'),
(8, 6, '2024-02-01', 'AB+', 'None', 1, '130/85'),
(7, 7, '2024-03-01', 'B-', 'Mold', 0, '118/75'),
(5, 8, '2024-04-01', 'A-', 'None', 1, '138/88'),
(4, 9, '2024-05-01', 'AB-', 'Dust Mites', 0, '125/80'),
(3, 10, '2024-06-01', 'B+', 'Shellfish', 1, '135/88');

--30

INSERT INTO Medication (MedicineName) VALUES
('Aspirin'),
('Ibuprofen'),
('Acetaminophen'),
('Amoxicillin'),
('Azithromycin'),
('Ciprofloxacin'),
('Lisinopril'),
('Metformin'),
('Atorvastatin'),
('Levothyroxine'),
('Omeprazole'),
('Simvastatin'),
('Albuterol'),
('Hydrochlorothiazide'),
('Furosemide'),
('Gabapentin'),
('Sertraline'),
('Losartan'),
('Amlodipine'),
('Metoprolol'),
('Prednisone'),
('Warfarin'),
('Escitalopram'),
('Doxycycline'),
('Citalopram'),
('Fluoxetine'),
('Clonazepam'),
('Tramadol'),
('Diazepam'),
('Panadol');

--30

INSERT INTO Prescriptions (PhysicianID, RecordID, MedicationID, PrescriptionDate, Dosage, Duration, Frequency, RefillDate) VALUES
(1, 1, 1, '2022-01-05', '1 tablet', 7, 'Once a day', '2022-01-12'),
(2, 2, 2, '2022-02-10', '2 tablets', 14, 'Twice a day', '2022-02-24'),
(3, 3, 3, '2022-03-15', '1 capsule', 30, 'Once a day', '2022-04-14'),
(4, 4, 4, '2022-04-20', '1 tablet', 10, 'Three times a day', '2022-04-30'),
(5, 5, 5, '2022-05-25', '1 tablet', 7, 'Once a day', '2022-06-01'),
(6, 10, 6, '2022-06-30', '1 inhalation', 30, 'Once a day', '2022-07-30'),
(7, 15, 30, '2022-07-05', '1 tablet', 14, 'Twice a day', '2022-07-19'),
(8, 18, 29, '2022-08-10', '1 tablet', 30, 'Once a day', '2022-09-09'),
(9, 19, 28, '2022-09-15', '1 tablet', 7, 'Once a day', '2022-09-22'),
(10, 20, 27, '2022-10-20', '1 tablet', 14, 'Twice a day', '2022-11-03'),
(11, 21, 26, '2022-11-25', '1 tablet', 30, 'Once a day', '2022-12-25'),
(12, 6, 25, '2022-12-30', '1 capsule', 7, 'Once a day', '2023-01-06'),
(13, 8, 24, '2023-01-05', '1 tablet', 14, 'Twice a day', '2023-01-19'),
(14, 9, 23, '2023-02-10', '1 tablet', 30, 'Once a day', '2023-03-12'),
(15, 10, 22, '2023-03-15', '1 tablet', 7, 'Once a day', '2023-03-22');

--15

INSERT INTO Immunizations (RecordID, VaccineName, DateAdministered, NextDoseDate, DoseNumber, Manufacturer) VALUES
(1, 'COVID-19 Vaccine', '2022-01-10', '2022-02-10', 1, 'Pfizer'),
(2, 'Flu Shot', '2022-02-15', '2023-02-15', 1, 'Sanofi Pasteur'),
(3, 'Measles, Mumps, Rubella (MMR) Vaccine', '2022-03-20', '2023-03-20', 1, 'Merck'),
(4, 'Hepatitis B Vaccine', '2022-04-25', '2022-05-25', 1, 'GlaxoSmithKline'),
(5, 'Tetanus, Diphtheria, Pertussis (Tdap) Vaccine', '2022-05-30', '2023-05-30', 1, 'Novartis'),
(6, 'HPV Vaccine', '2022-06-30', '2023-06-30', 1, 'Merck'),
(7, 'Pneumococcal Vaccine', '2022-07-05', '2023-07-05', 1, 'Pfizer'),
(8, 'Varicella (Chickenpox) Vaccine', '2022-08-10', '2023-08-10', 1, 'GlaxoSmithKline'),
(9, 'Hepatitis A Vaccine', '2022-09-15', '2022-10-15', 1, 'Merck'),
(10, 'Meningococcal Vaccine', '2022-10-20', '2023-10-20', 1, 'Novartis'),
(11, 'Shingles (Herpes Zoster) Vaccine', '2022-11-25', '2023-11-25', 1, 'GlaxoSmithKline'),
(12, 'Rotavirus Vaccine', '2022-12-30', '2023-12-30', 1, 'Merck'),
(13, 'Diphtheria, Tetanus, Pertussis (DTaP) Vaccine', '2023-01-05', '2024-01-05', 1, 'Novartis'),
(14, 'Hib Vaccine', '2023-02-10', '2024-02-10', 1, 'Sanofi Pasteur'),
(15, 'Influenza B Vaccine', '2023-03-15', '2024-03-15', 1, 'GlaxoSmithKline'),
(16, 'COVID-19 Booster Vaccine', '2023-04-20', '2023-05-20', 2, 'Moderna'),
(17, 'Hepatitis A Vaccine', '2023-05-25', '2023-06-25', 2, 'Merck'),
(18, 'HPV Vaccine', '2023-06-30', '2023-07-30', 2, 'Merck'),
(19, 'Varicella (Chickenpox) Vaccine', '2023-07-05', '2023-08-05', 2, 'GlaxoSmithKline'),
(20, 'Meningococcal Vaccine', '2023-08-10', '2023-09-10', 2, 'Novartis'),
(21, 'Shingles (Herpes Zoster) Vaccine', '2023-09-15', '2023-10-15', 2, 'GlaxoSmithKline'),
(22, 'Rotavirus Vaccine', '2023-10-20', '2023-11-20', 2, 'Merck'),
(23, 'Diphtheria, Tetanus, Pertussis (DTaP) Vaccine', '2023-11-25', '2023-12-25', 2, 'Novartis'),
(24, 'Hib Vaccine', '2023-12-30', '2024-01-30', 2, 'Sanofi Pasteur'),
(25, 'Influenza B Vaccine', '2024-01-05', '2024-02-05', 2, 'GlaxoSmithKline'),
(26, 'COVID-19 Booster Vaccine', '2024-02-10', '2024-03-10', 3, 'Pfizer'),
(27, 'Hepatitis A Vaccine', '2024-03-15', '2024-04-15', 3, 'Merck'),
(28, 'HPV Vaccine', '2024-04-20', '2024-05-20', 3, 'Merck'),
(29, 'Varicella (Chickenpox) Vaccine', '2024-05-25', '2024-06-25', 3, 'GlaxoSmithKline'),
(30, 'Meningococcal Vaccine', '2024-06-30', '2024-07-30', 3, 'Novartis');
--30

INSERT INTO LabTest (RecordID, PhysicianID, TestType, TestDate, TestTime, TestDescription) VALUES
(1, 1, 'Complete Blood Count (CBC)', '2022-01-10', '08:30:00', 'Complete blood count (CBC)'),
(2, 2, 'Urinalysis', '2022-02-15', '09:45:00', 'Urinalysis'),
(3, 3, 'Chest X-ray', '2022-03-20', '11:00:00', 'Chest X-ray'),
(4, 4, 'Brain MRI', '2022-04-25', '10:15:00', 'Brain MRI'),
(5, 5, 'Electrocardiogram (ECG)', '2022-05-30', '08:00:00', 'Electrocardiogram (ECG)'),
(6, 6, 'Abdominal Ultrasound', '2022-06-30', '14:30:00', 'Abdominal Ultrasound'),
(7, 7, 'Liver Function Tests (LFTs)', '2022-07-05', '08:45:00', 'Liver Function Tests (LFTs)'),
(8, 8, 'Abdominal CT Scan', '2022-08-10', '12:00:00', 'Abdominal CT Scan'),
(9, 9, 'Kidney Function Test', '2022-09-15', '09:30:00', 'Kidney Function Test'),
(10, 10, 'Spine X-ray', '2022-10-20', '10:45:00', 'Spine X-ray'),
(11, 11, 'Knee MRI', '2022-11-25', '11:30:00', 'Knee MRI'),
(12, 12, 'Holter Monitor', '2022-12-30', '08:15:00', 'Holter Monitor'),
(13, 13, 'Pregnancy Ultrasound', '2023-01-05', '15:00:00', 'Pregnancy Ultrasound'),
(14, 14, 'Thyroid Function Tests (TFTs)', '2023-02-10', '09:00:00', 'Thyroid Function Tests (TFTs)'),
(15, 15, 'Head CT Scan', '2023-03-15', '12:30:00', 'Head CT Scan'),
(16, 1, 'Urinary Tract Infection (UTI) Test', '2023-04-20', '10:00:00', 'Urinary Tract Infection (UTI) Test'),
(17, 3, 'Joint X-ray', '2023-05-25', '08:30:00', 'Joint X-ray'),
(18, 4, 'Shoulder MRI', '2023-06-30', '14:45:00', 'Shoulder MRI'),
(19, 5, 'Stress Test', '2023-07-05', '08:45:00', 'Stress Test'),
(20, 6, 'Pelvic Ultrasound', '2023-08-10', '15:15:00', 'Pelvic Ultrasound'),
(21, 7, 'Complete Blood Count (CBC)', '2023-09-15', '09:30:00', 'Complete Blood Count (CBC)'),
(22, 12, 'Urinalysis', '2023-10-20', '10:45:00', 'Urinalysis'),
(23, 13, 'Chest X-ray', '2023-11-25', '11:30:00', 'Chest X-ray'),
(24, 14, 'Brain MRI', '2023-12-30', '08:15:00', 'Brain MRI'),
(25, 15, 'Electrocardiogram (ECG)', '2024-01-05', '15:00:00', 'Electrocardiogram (ECG)'),
(26, 6, 'Abdominal Ultrasound', '2024-02-10', '09:00:00', 'Abdominal Ultrasound'),
(27, 7, 'Liver Function Tests (LFTs)', '2024-03-15', '12:30:00', 'Liver Function Tests (LFTs)'),
(28, 3, 'Abdominal CT Scan', '2024-04-20', '10:00:00', 'Abdominal CT Scan'),
(29, 3, 'Kidney Function Test', '2024-05-25', '08:30:00', 'Kidney Function Test'),
(30, 4, 'Spine X-ray', '2024-06-30', '14:45:00', 'Spine X-ray');

--30

INSERT INTO Diagnosis(DiagnosisName,Description) VALUES
('Common Cold', 'Viral infection causing nasal congestion, cough, and sneezing'),
('Hypertension', 'High blood pressure leading to increased risk of heart disease and stroke'),
('Type 2 Diabetes', 'Metabolic disorder characterized by high blood sugar levels'),
('Migraine', 'Recurring headache, often accompanied by nausea and sensitivity to light'),
('Osteoarthritis', 'Degeneration of joint cartilage and the underlying bone, causing pain and stiffness'),
('Anxiety Disorder', 'Excessive worry and fear, often interfering with daily activities'),
('Asthma', 'Chronic respiratory condition causing difficulty in breathing'),
('Gastroenteritis', 'Inflammation of the stomach and intestines, leading to stomach pain and diarrhea'),
('Depressive Disorder', 'Persistent feeling of sadness and loss of interest'),
('Allergic Rhinitis', 'Inflammation of the nasal passages due to allergies'),
('Hypothyroidism', 'Underactive thyroid gland resulting in fatigue, weight gain, and cold sensitivity'),
('Celiac Disease', 'Autoimmune disorder causing damage to the small intestine in response to gluten consumption'),
('Chronic Bronchitis', 'Long-term inflammation of the bronchial tubes, leading to cough and mucus production'),
('Rheumatoid Arthritis', 'Autoimmune disorder causing joint inflammation and pain'),
('Coronary Artery Disease', 'Narrowing of the coronary arteries, reducing blood flow to the heart muscle');

--15

INSERT INTO TestResult (TestID, DiagnosisID, TestResults, ResultDate, ReferenceRange) VALUES
(1, 1, 'Normal', '2022-01-12', 'See CBC reference values'),
(2, 2, 'Normal', '2022-02-18', 'Normal range'),
(3, 3, 'No abnormalities detected', '2022-03-25', 'No specific range for X-ray'),
(4, 4, 'No abnormalities detected', '2022-04-30', 'No specific range for MRI'),
(5, 5, 'Normal sinus rhythm', '2022-06-05', 'Normal ECG range'),
(6, 6, 'No abnormalities detected', '2022-07-10', 'No specific range for Ultrasound'),
(7, 7, 'Elevated liver enzymes', '2022-08-15', 'See LFT reference values'),
(8, 8, 'No abnormalities detected', '2022-09-20', 'No specific range for CT Scan'),
(9, 9, 'Normal kidney function', '2022-10-25', 'See Kidney Function Test reference values'),
(10, 10, 'No abnormalities detected', '2022-11-30', 'No specific range for X-ray'),
(11, 11, 'Normal knee structure', '2022-12-05', 'Normal MRI range for knees'),
(12, 12, 'Normal heart rhythm', '2023-01-10', 'Normal range for Holter Monitor'),
(13, 13, 'Healthy pregnancy', '2023-02-15', 'No specific range for Pregnancy Ultrasound'),
(14, 14, 'Normal thyroid function', '2023-03-22', 'See TFT reference values'),
(15, 15, 'No abnormalities detected', '2023-04-30', 'No specific range for Head CT Scan');


--15

INSERT INTO Treatment (RecordID, PhysicianID, DiagnosisID, TreatmentName, TreatmentPlan, TreatmentStartDate, TreatmentEndDate) VALUES
(1, 1, 1, 'Rest and Hydration', 'Get plenty of rest and stay hydrated', '2022-01-20', '2022-01-30'),
(2, 2, 2, 'Blood Pressure Medication', 'Prescribe medication to manage hypertension', '2022-02-25', '2022-03-25'),
(3, 3, 3, 'Insulin Therapy', 'Initiate insulin therapy for diabetes management', '2022-04-05', '2022-05-05'),
(4, 4, 4, 'Migraine Relief', 'Prescribe pain relief medication for migraine', '2022-06-10', '2022-07-10'),
(5, 5, 5, 'Joint Pain Management', 'Recommend joint exercises and pain relief medication', '2022-08-15', '2022-09-15'),
(6, 6, 6, 'Counseling', 'Provide counseling sessions for anxiety management', '2022-10-20', '2022-11-20'),
(7, 7, 7, 'Inhaler Usage', 'Prescribe inhaler for asthma management', '2022-12-01', '2023-01-01'),
(8, 8, 8, 'Dietary Changes', 'Suggest dietary changes for gastroenteritis recovery', '2023-02-05', '2023-03-05'),
(9, 9, 9, 'Counseling and Medication', 'Combine counseling with antidepressant medication', '2023-04-10', '2023-05-10'),
(10, 10, 10, 'Antihistamines', 'Prescribe antihistamines for allergic rhinitis relief', '2023-06-15', '2023-07-15'),
(11, 11, 11, 'Thyroid Hormone Replacement', 'Initiate thyroid hormone replacement therapy', '2023-08-20', '2023-09-20'),
(12, 12, 12, 'Gluten-Free Diet', 'Recommend a gluten-free diet for celiac disease management', '2023-10-25', '2023-11-25'),
(13, 13, 13, 'Bronchodilators', 'Prescribe bronchodilators for chronic bronchitis management', '2023-12-30', '2024-01-30'),
(14, 14, 14, 'Disease-Modifying Antirheumatic Drugs (DMARDs)', 'Initiate DMARDs for rheumatoid arthritis', '2024-02-05', '2024-03-05'),
(15, 15, 15, 'Medication Adjustment', 'Adjust medication for coronary artery disease management', '2024-04-10', '2024-05-10');

--15
