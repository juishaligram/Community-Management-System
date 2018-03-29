--
-- File generated with SQLiteStudio v3.1.1 on Sun Jun 4 23:18:26 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: APARTMENT
CREATE TABLE APARTMENT (Unit INTEGER PRIMARY KEY AUTOINCREMENT, Area REAL NOT NULL, Number_of_Rooms INTEGER NOT NULL DEFAULT (1), Number_of_Bathrooms INTEGER NOT NULL DEFAULT (1), Status VARCHAR (20) DEFAULT Empty);
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (1105, 2000, 2, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (1205, 3000, 3, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (2105, 3000, 3, 3, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (2205, 2000, 2, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (3105, 3000, 3, 3, 'Available');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (3205, 3000, 2, 2, 'Available');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (4105, 3000, 3, 3, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (5105, 2000, 2, 2, 'Available');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (6105, 2000, 2, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (7105, 2500, 2, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (8105, 2500, 2, 2, 'Rented');
INSERT INTO APARTMENT (Unit, Area, Number_of_Rooms, Number_of_Bathrooms, Status) VALUES (9105, 2000, 2, 2, 'Rented');

-- Table: CARPOOL
CREATE TABLE CARPOOL (Carpool_Id INTEGER, Resident_Id INTEGER REFERENCES RESIDENT (Resident_Id), Unit INTEGER REFERENCES APARTMENT (Unit), Carpool_From VARCHAR (50), Carpool_To VARCHAR (50), Carpool_StartTime DATETIME, PRIMARY KEY (Carpool_Id, Resident_Id));
INSERT INTO CARPOOL (Carpool_Id, Resident_Id, Unit, Carpool_From, Carpool_To, Carpool_StartTime) VALUES (710001, 118, 1105, '1190 Benton St.', 'mountain view', '07-02-2017 18:00:00');
INSERT INTO CARPOOL (Carpool_Id, Resident_Id, Unit, Carpool_From, Carpool_To, Carpool_StartTime) VALUES (710001, 119, 4105, '1190 Benton St.', 'mountain view', '07-02-2017 18:00:01');
INSERT INTO CARPOOL (Carpool_Id, Resident_Id, Unit, Carpool_From, Carpool_To, Carpool_StartTime) VALUES (710001, 115, 2105, '1190 Benton St.', 'mountain view', '07-02-2017 18:00:03');
INSERT INTO CARPOOL (Carpool_Id, Resident_Id, Unit, Carpool_From, Carpool_To, Carpool_StartTime) VALUES (710002, 114, 1205, '1190 Benton St.', 'Downtown San Jose', '07-04-2017 22:00:00');
INSERT INTO CARPOOL (Carpool_Id, Resident_Id, Unit, Carpool_From, Carpool_To, Carpool_StartTime) VALUES (710002, 103, 2205, '1190 Benton St.', 'Downtown San Jose', '07-04-2017 22:00:00');

-- Table: CLASSIFIED
CREATE TABLE CLASSIFIED (Ad_Id INTEGER PRIMARY KEY AUTOINCREMENT, Resident_Id INTEGER REFERENCES RESIDENT (Resident_Id), Vendor_Id INTEGER REFERENCES VENDOR (Vendor_Id), Ad_Type VARCHAR (20), Ad_date DATETIME, Ad_Description VARCHAR (100), Amount REAL);
INSERT INTO CLASSIFIED (Ad_Id, Resident_Id, Vendor_Id, Ad_Type, Ad_date, Ad_Description, Amount) VALUES (100101, 107, NULL, 'Sofa', '6/7/2017', 'A year old sofa for grabs', '$99');
INSERT INTO CLASSIFIED (Ad_Id, Resident_Id, Vendor_Id, Ad_Type, Ad_date, Ad_Description, Amount) VALUES (100102, 121, NULL, 'PS4', '5/7/2017', '2 Year old PS4', '$100');
INSERT INTO CLASSIFIED (Ad_Id, Resident_Id, Vendor_Id, Ad_Type, Ad_date, Ad_Description, Amount) VALUES (100103, NULL, 900001, 'TV', '5/4/2017', '80% off SALE @ your local Furniture Shop ', '$500-$5000');

-- Table: EMPLOYEE
CREATE TABLE EMPLOYEE (Employee_Id INTEGER PRIMARY KEY AUTOINCREMENT, User_Id VARCHAR (20) REFERENCES USER_ACCOUNT (User_Id), Employee_F_Name VARCHAR (20), Employee_L_Name VARCHAR (20), Employee_Role VARCHAR (20), SSN VARCHAR (20) NOT NULL, DOB DATETIME, Employee_Address VARCHAR (100), Employee_Contact INTEGER NOT NULL, Email VARCHAR (20), Employee_Salary REAL NOT NULL, Criminal_History VARCHAR (50) DEFAULT Clean, DOJ DATETIME NOT NULL);
INSERT INTO EMPLOYEE (Employee_Id, User_Id, Employee_F_Name, Employee_L_Name, Employee_Role, SSN, DOB, Employee_Address, Employee_Contact, Email, Employee_Salary, Criminal_History, DOJ) VALUES (121001, 'harperjack', 'Jack', 'Harper', 'Manager', '168-456-7899', '12/18/1970', 'Apt#123,New Hall,SC-95050', 6693048967, 'harper78@gmail.com', '$70000', 'No', '01/01/2000');
INSERT INTO EMPLOYEE (Employee_Id, User_Id, Employee_F_Name, Employee_L_Name, Employee_Role, SSN, DOB, Employee_Address, Employee_Contact, Email, Employee_Salary, Criminal_History, DOJ) VALUES (121002, 'whitecharli', 'Charli', 'White', 'Gardener', '456-123-7896', '03/16/1985', '789, Fox Avenue, San Jose-95054', 6693048968, 'charliwhite@yahoo.com', '$30000', 'No', '04/31/2005');
INSERT INTO EMPLOYEE (Employee_Id, User_Id, Employee_F_Name, Employee_L_Name, Employee_Role, SSN, DOB, Employee_Address, Employee_Contact, Email, Employee_Salary, Criminal_History, DOJ) VALUES (121003, 'cruzted', 'Ted', 'Cruz', 'Electrician', '789-074-8867', '04/12/1990', '759, Fox Avenue, San Jose-95054', 6693048969, 'cruzted@yahoo.com', '$40000', 'No', '07/12/2006');
INSERT INTO EMPLOYEE (Employee_Id, User_Id, Employee_F_Name, Employee_L_Name, Employee_Role, SSN, DOB, Employee_Address, Employee_Contact, Email, Employee_Salary, Criminal_History, DOJ) VALUES (121004, 'hoffmandustin', 'Dustin', 'Hoffman', 'Carpenter', '541-231-9999', '07/31/1992', 'Apt#245, Redwood, San Jose-95059', 6693047099, 'hoffmandustin@aolmail.com', '$45000', 'No', '07/01/2006');
INSERT INTO EMPLOYEE (Employee_Id, User_Id, Employee_F_Name, Employee_L_Name, Employee_Role, SSN, DOB, Employee_Address, Employee_Contact, Email, Employee_Salary, Criminal_History, DOJ) VALUES (121006, 'andrewsjose', 'Andrews', 'Jose', 'Plumber', '876-354-7182', '02/18/1988', 'Apt#671, Ginger Street, San Jose-95094', 6693048972, 'joseandrews@gmail.com', '$40000', 'No', '11/23/2010');

-- Table: EVENT
CREATE TABLE EVENT (Event_Id INTEGER PRIMARY KEY AUTOINCREMENT, Host_Id INTEGER REFERENCES RESIDENT (Resident_Id), Group_Id INTEGER REFERENCES "GROUP" (Group_Id), Event_Time DATETIME, Event_Description VARCHAR (100), Venue VARCHAR (20));
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896001, NULL, 7000001, '07/06/2017 18:00:00', 'Movie Manaics Club Gathering', 'Community Hall');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896002, 124, NULL, '07/04/2017 20:00:00', 'Private Party by Mr.Siemen', 'pool');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896003, 114, NULL, '07/03/2017 20:00:00', 'Mr.Coles birthday Party', 'pool');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896004, NULL, 7000001, '07/15/2017 20:00:00', 'Movie Maniacs club gathering', 'Community Hall');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896005, NULL, 7000001, '07/05/2017 20:00:00', 'Movie Maniacs club gathering', 'Community Hall');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896006, NULL, 7000002, '07/12/2017 06:00:00', 'Into the wildhiking trip', 'San Jose');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896007, NULL, 7000002, '07/11/2017 20:00:00', 'Into the wild hiking', 'San Jose');
INSERT INTO EVENT (Event_Id, Host_Id, Group_Id, Event_Time, Event_Description, Venue) VALUES (896008, 113, NULL, '07/15/2017 18:00:00', 'Mr. Cartners Anniversary Party', 'Community Hall');

-- Table: EVENT_ATTENDEE
CREATE TABLE EVENT_ATTENDEE (Event_Id INTEGER REFERENCES EVENT (Event_Id), Attendee_Id INTEGER REFERENCES RESIDENT (Resident_Id), PRIMARY KEY (Event_Id, Attendee_Id));
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896001, 109);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896001, 113);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896001, 115);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896002, 114);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896002, 106);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896002, 117);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896004, 109);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896004, 113);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896005, 109);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896005, 113);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896005, 115);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896004, 115);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896006, 111);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896006, 116);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896006, 117);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896007, 111);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896007, 116);
INSERT INTO EVENT_ATTENDEE (Event_Id, Attendee_Id) VALUES (896007, 117);

-- Table: FEEDBACK
CREATE TABLE FEEDBACK (Feedback_Id INTEGER PRIMARY KEY AUTOINCREMENT, Resident_Id INTEGER REFERENCES RESIDENT, Feedback_Category VARCHAR (20), Feedback_Notes VARCHAR (100), Mode VARCHAR (20));
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000001, 107, 'GYM', 'Impressed by the New GYM', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000002, 108, 'pool', 'Pool needs to be cleaned twice a day', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000003, 106, 'Community Hall', 'Community hall needs more chairs', 'Phone');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000004, 121, 'Movie Day', 'Last movie day was really fun', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000005, 109, 'Garbage', 'Garbage place is never cleaned up', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000006, 123, 'Garden', 'Some plants are drying up', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000007, 118, 'Office Staff', 'The office staff is rude sometimes', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000008, 119, 'Carpool', 'Carpool facility is really good. I save so much money', 'CMS');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (4000009, 101, 'Maintenance Staff', 'Maintenance staff is really knowledgeable', 'Visit to Office');
INSERT INTO FEEDBACK (Feedback_Id, Resident_Id, Feedback_Category, Feedback_Notes, Mode) VALUES (40000010, 102, 'Parking', 'Parking lots are too conjusted', 'CMS');

-- Table: GROUP
CREATE TABLE "GROUP" (Group_Id INTEGER PRIMARY KEY AUTOINCREMENT, Group_Name VARCHAR (20), Group_Desc VARCHAR (100));
INSERT INTO "GROUP" (Group_Id, Group_Name, Group_Desc) VALUES (7000001, 'Movie Maniacs', 'If you love movies this is the right place');
INSERT INTO "GROUP" (Group_Id, Group_Name, Group_Desc) VALUES (7000002, 'Into the wild', 'Nature Calling');
INSERT INTO "GROUP" (Group_Id, Group_Name, Group_Desc) VALUES (7000003, 'Book Club', 'Love Reading come join US');
INSERT INTO "GROUP" (Group_Id, Group_Name, Group_Desc) VALUES (7000004, 'DancingForal', 'Join the club of impressive and authentic dancing');
INSERT INTO "GROUP" (Group_Id, Group_Name, Group_Desc) VALUES (7000005, 'Fitness', 'A group that surely will change your body if not the soul');

-- Table: GROUP_MEMBER
CREATE TABLE GROUP_MEMBER (Member_Id INTEGER PRIMARY KEY AUTOINCREMENT, Group_Id INTEGER REFERENCES "GROUP" (Group_Id), Resident_Id INTEGER REFERENCES RESIDENT);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340001, 7000001, 109);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340002, 7000005, 110);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340003, 7000002, 111);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340004, 7000004, 112);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340005, 7000001, 113);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340006, 7000004, 114);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340007, 7000001, 115);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340008, 7000004, 116);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340009, 7000002, 116);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340010, 7000002, 117);
INSERT INTO GROUP_MEMBER (Member_Id, Group_Id, Resident_Id) VALUES (340011, 7000005, 118);

-- Table: LEASE_AGREEMENT
CREATE TABLE LEASE_AGREEMENT (Lease_Id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Unit INTEGER NOT NULL REFERENCES APARTMENT (Unit), PO_Resident_Id INTEGER NOT NULL REFERENCES RESIDENT (Resident_Id), SO1_Resident_ID INTEGER REFERENCES RESIDENT (Resident_Id), SO2_Resident_ID INTEGER REFERENCES RESIDENT (Resident_Id), SO3_Resident_ID INTEGER REFERENCES RESIDENT (Resident_Id), SO4_Resident_ID INTEGER REFERENCES RESIDENT (Resident_Id), Employee_Id INTEGER REFERENCES EMPLOYEE, Parking_Lot_Number INTEGER, Lease_Start_Date DATETIME NOT NULL, Lease_End_Date DATETIME DEFAULT NULL, Rent REAL);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (1, 1105, 101, 106, 107, 108, NULL, 121001, 10, '01/02/2015', '01/01/2016', 3000);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (2, 2105, 102, 109, 110, NULL, NULL, 121001, 20, '02/02/2016', '02/01/2019', 2850);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (3, 3105, 103, NULL, NULL, NULL, NULL, 121001, 30, '05/05/2014', '05/04/2016', 2900);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (4, 4105, 104, 111, 112, 113, NULL, 121001, 40, '08/08/2015', '08/07/2016', 3100);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (5, 5105, 105, 114, NULL, NULL, NULL, 121001, 50, '10/11/2014', '10/10/2016', 3000);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (6, 1105, 115, 116, 117, NULL, NULL, 121001, 10, '03/01/2016', '08/28/2017', 2800);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (7, 3105, 118, 119, 120, 121, 122, 121001, 30, '05/06/2016', '05/05/2017', 3000);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (8, 4105, 123, 124, NULL, NULL, NULL, 121001, 40, '08/08/2016', '08/07/2017', 3150);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (9, 6105, 113, 110, 109, NULL, NULL, 121001, 60, '01/05/2017', '12/31/2017', 2700);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (10, 7105, 106, NULL, NULL, NULL, NULL, 121001, 70, '02/06/2017', '02/05/2018', 2800);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (11, 8105, 107, 108, NULL, NULL, NULL, 121001, 80, '03/07/2017', '03/08/2018', 2900);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (12, 9105, 110, 112, 117, NULL, NULL, 121001, 90, '04/08/2017', '04/07/2018', 2950);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (13, 1205, 115, 116, 118, 119, 114, 121001, 100, '04/20/2017', '04/19/2018', 3000);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (14, 2205, 120, 121, 122, 123, 103, 121001, 110, '05/21/2017', '05/20/2018', 3050);
INSERT INTO LEASE_AGREEMENT (Lease_Id, Unit, PO_Resident_Id, SO1_Resident_ID, SO2_Resident_ID, SO3_Resident_ID, SO4_Resident_ID, Employee_Id, Parking_Lot_Number, Lease_Start_Date, Lease_End_Date, Rent) VALUES (15, 3205, 124, NULL, NULL, NULL, NULL, 121001, 120, '06/20/2017', '06/19/2019', 2500);

-- Table: PROSPECTIVE_RESIDENT
CREATE TABLE PROSPECTIVE_RESIDENT (Prospective_Res_Id INTEGER PRIMARY KEY AUTOINCREMENT, User_Id VARCHAR (20) REFERENCES USER_ACCOUNT (User_Id), Employee_Id INTEGER REFERENCES EMPLOYEE, Prospective_Res_F_Name VARCHAR (20), Prospective_Res_L_Name VARCHAR (20), Current_Address VARCHAR (100), Phone_Number INTEGER NOT NULL, Email VARCHAR (20) NOT NULL, Purpose_of_Visit VARCHAR (50));
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21013, 'hankstom', 121001, 'Tom ', 'Hanks ', 'Apt#710 McCllen St, Fremont - 95060', 4044873241, 'tomhanks11@gmail.com', 'Apartment Viewing');
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21014, 'jenkinssherry', 121001, 'Sherry', 'Jenkins', '124, Flora Vista Avenue, San Jose-961170', 5641873902, 'sherryjenkin78@yahoo.com', 'Apartment Viewing');
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21015, 'frank1', 121001, 'Frank', 'Lampard', 'apt# 25 Seemon ST, SJ-95050', 1226688412, 'flampard@gmail.com', 'Apartment Viewing');
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21016, 'didi1', 121001, 'Didier', 'Drogba', 'apt#45 Lehman St, freemont-95050', 5654983246, 'ddrogba@scu.edu', 'Apartment Viewing');
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21017, 'ronaldo123', 121001, 'Ronaldo', 'Cole', 'apt#56 Deran St, SJ-95045', 1230321566, 'rcole@yahoo.com', 'Apartment Viewing');
INSERT INTO PROSPECTIVE_RESIDENT (Prospective_Res_Id, User_Id, Employee_Id, Prospective_Res_F_Name, Prospective_Res_L_Name, Current_Address, Phone_Number, Email, Purpose_of_Visit) VALUES (21018, 'messi123', 121001, 'Messi', 'Siemen', '34# lowell st, sunnyvale-75684', 8532158967, 'msiemen@gmail.com', 'Apartment Viewing');

-- Table: RESERVE_AMENITY
CREATE TABLE RESERVE_AMENITY (Reserve_Id INTEGER PRIMARY KEY AUTOINCREMENT, Resident_Id INTEGER REFERENCES RESIDENT, Group_Id INTEGER REFERENCES "GROUP" (Group_Id), Amenity_Name VARCHAR (20), Booking_From DATETIME NOT NULL, Booking_To DATETIME NOT NULL, Mode_of_Reserve VARCHAR (20), Booking_Time DATETIME);
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100001, NULL, 7000001, 'Community Hall', '06/25/2017 10:00:00', '06/25/2017 12:00:00', 'CMS', '06/01/2017 09:00:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100002, 124, NULL, 'Pool', '07/04/2017 20:00:00', '07/04/ 2017 20:00:00', 'CMS', '06/01/2017 16:00:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100003, 113, NULL, 'Community Hall', '07/15/2017 18:00:00', '07/15/2017 20:00:00', 'CMS', '07/07/2017 18:00:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100004, 111, NULL, 'Pool', '06/25/2017 09:00:00', '06/25/2017 12:00:00', 'CMS', '06/02/2017 01:00:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100005, 112, NULL, 'Pool', '06/26/2017 13:00:00', '06/26/2017 17:00:00', 'CMS', '05/31/2017 10:30:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100006, 114, NULL, 'Community Hall', '06/26/2017 14:00:00', '06/26/2017 16:00:00', 'CMS', '05/30/2017 09:30:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100007, 115, NULL, 'Pool', '06/27/2017 10:00:00', '06/27/2017 14:00:00', 'CMS', '05/30/2017 11:30:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (100008, 116, NULL, 'Community Hall', '06/28/2017 17:00:00', '06/28/2017 20:00:00', 'Phone', '05/29/2017 13:00:00');
INSERT INTO RESERVE_AMENITY (Reserve_Id, Resident_Id, Group_Id, Amenity_Name, Booking_From, Booking_To, Mode_of_Reserve, Booking_Time) VALUES (1000010, NULL, 7000001, 'Community Hall', '06/30/2017 15:00:00', '06/30/2017 19:00:00', 'Visit to Office', '06/02/2017 09:00:00');

-- Table: RESIDENT
CREATE TABLE RESIDENT (Resident_Id INTEGER PRIMARY KEY AUTOINCREMENT, User_Id VARCHAR (20) REFERENCES USER_ACCOUNT (User_Id), SSN VARCHAR (20), First_Name VARCHAR (20), Last_Name VARCHAR (20), DOB DATETIME, Phone_Number INTEGER NOT NULL, Email_Id VARCHAR (20) NOT NULL, Criminal_History VARCHAR (50), Credit_Rating REAL);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (101, 'nsingh', '123-456-7899', 'Nishant', 'Singh', '12/21/1993', 6698542365, 'nsingh@gmail.com', '', 900);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (102, 'adoshi', '234-567-8910', 'Aalap', 'Doshi', '07/13/1993', 5634256635, 'adoshi@gmail.com', '', 855);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (103, 'jshaligram', '125-456-852', 'Jui', 'Shaligram', '06/25/1990', 8546325452, 'jshaligram@gmail.com', '', 789);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (104, 'tmishra', '652-563-7845	', 'Tulika', 'Mishra', '02/29/1992', 7865231459, 'tmishra@gmail.com', '', 689);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (105, 'bhargav1', '546-851-4562', 'Bhargav', 'Ember', '11/20/1990', 4785693215, 'ebhargav@gmail.com', 'Parking tickets', 840);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (106, 'agasatheya', '785-486-9982', 'Agasthiya', 'Kundarthy', '05/14/1995', 7854589632, 'agastheya@gmail.com', '', 560);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (107, 'nikhil', '785-985-7895', 'Nikhil', 'Singh', '05/23/1991', 7854568965, 'nikhil@yahoo.com', '', 755);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (108, 'ngoushal', '652-546-8456	', 'Neha', 'Goushal', '12/30/1996', 7854214565, 'ngoushal@gmail.com', '', 788);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (109, 'pnirpase', '986-326-4521', 'Priyanka', 'Nirpase', '04/14/1987', 7541236549, 'pnirpase@scu.edu', '', 800);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (110, 'asultan', '865-965-7458', 'Adeel', 'Sultan', '12/27/1989', 7854123652, 'asultan@hotmail.com', '', 850);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (111, 'parvathi', '264-456-1234', 'Parvathi', 'Varma', '12/12/1982', 4521362546, 'parvathi@rediffmail.com', '', 950);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (112, 'ramesh', '452-123-4568', 'Ramesh', 'Babu', '02/31/1985', 1235654578, 'rbabu@yahoo.co.in', '', 562);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (113, 'bob', '456-312-4568', 'Bob', 'Cartner', '07/15/1955', 7845122356, 'bcarpenter@gmail.com', '', 852);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (114, 'mark', '965-321-4569', 'Mark', 'Benson', '08/08/1965', 5689784512, 'mbenson@gmail.com', '', 641);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (115, 'john', '785-123-4569', 'John', 'Terry', '09/09/1982', 2345895678, 'jterry@yahoo.com', '', 983);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (116, 'mary', '561-234-5678', 'Mary', 'Jane', '10/10/1986', 1597538426, 'mjane@hotmail.com', '', 756);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (117, 'eddie', '294-521-2365', 'Eddie', 'Gurrero', '11/11/1975', 2684753951, 'egurrero@yahoo.com', '', 842);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (118, 'ghangsu', '895-623-1425', 'Ghanghsu', 'Mia', '08/10/1999', 4523567845, 'gmia@gmail.com', '', 952);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (119, 'ashely', '963-145-2356', 'Ashely', 'Cole', '05/14/1986', 2558744136, 'acole@gmail.com', '', 654);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (120, 'michal', '789-642-3146', 'Michal', 'Ballack', '01/25/1976', 6998877441, 'mballack@yahoo.com', '', 942);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (121, 'frank', '987-889-7898', 'Frank', 'Lampard', '12/17/1989', 1226688412, 'flampard@gmail.com', '', 753);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (122, 'didier', '456-545-6545', 'Didier', 'Drogba', '02/23/1995', 5654983245, 'ddrogba@scu.edu', '', 951);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (123, 'ronaldo', '123-456-2125', 'Ronaldo', 'Cole', '02/23/1972', 1230321566, 'rcole@yahoo.com', '', 864);
INSERT INTO RESIDENT (Resident_Id, User_Id, SSN, First_Name, Last_Name, DOB, Phone_Number, Email_Id, Criminal_History, Credit_Rating) VALUES (124, 'messi', '753-951-4268', 'Messi', 'Siemen', ' 05/14/1987', 8532158967, 'msiemen@gmail.com', '', 759);

-- Table: SERVICE_REQUEST
CREATE TABLE SERVICE_REQUEST (Service_Id INTEGER PRIMARY KEY AUTOINCREMENT, Resident_Id INTEGER REFERENCES RESIDENT (Resident_Id), Unit INTEGER NOT NULL REFERENCES APARTMENT (Unit), Employee_Id INTEGER REFERENCES EMPLOYEE, Category VARCHAR (20), Comments VARCHAR (100), Request_Time DATETIME, Status VARCHAR (20), Comments_Employee CHAR (20), Priority VARCHAR (20), Mode_of_Request VARCHAR (20));
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650001, 118, 1105, 121003, 'Electrical', 'Bedroom Switch light not working', '1/7/2017', 'RESOLVED', 'Lights fixed', 'MEDIUM', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650002, 119, 4105, 121006, 'Plumbing', 'Kitchen Disposer not functioning', '06/28/2017', 'RESOLVED', 'Resolved Same Day', 'High', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650003, 119, 4105, 121001, 'External', 'Bed Bug Treatment', '7/7/2017', 'ASSIGNED', 'Contract given to External Vendor ', 'HIGH', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650004, 117, 1105, 121003, 'Electrical', 'Kitchen power socket not working', '07/08/17', 'ASSIGNED', 'Employee Dispatched to fix the issue', 'MEDIUM', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650005, 114, 3105, 121004, 'Carpenting', 'Main Door Step Broken', '2/7/2017', 'RECEIVED', 'Took one day to resolve', 'LOW', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650006, 101, 6105, 121004, 'Carpenting', 'Kitchen cabinet broken', '06/06/2017', 'RESOLVED', 'Cabinet screw replaced ', 'LOW', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650007, 105, 5105, 121001, 'External', 'Floor Carpet Cleaning', '07/03/2017', 'ASSIGNED', 'Assigned to vendor', 'LOW', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650008, 106, 1105, 121003, 'Electrical', 'NO Power in house ', '07/01/2017', 'RESOLVED', 'Resolved Same Day', 'URGENT', 'CMS');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650009, 103, 3105, 121004, 'Carpenting', 'Master Bedroom door jamming', '07/09/2017', 'IN-PROGRESS', 'Employee Dispatched to fix the issue', 'LOW', 'Phone');
INSERT INTO SERVICE_REQUEST (Service_Id, Resident_Id, Unit, Employee_Id, Category, Comments, Request_Time, Status, Comments_Employee, Priority, Mode_of_Request) VALUES (650010, 123, 4105, 121006, 'Plumbing', 'Kitchen Faucet leaking', '07/20/2017', 'ASSIGNED', 'Employee Dispatched to fix the issue', 'HIGH', 'Visit to Office');

-- Table: USER_ACCOUNT
CREATE TABLE USER_ACCOUNT (User_Id VARCHAR (20) PRIMARY KEY ON CONFLICT FAIL UNIQUE, Role VARCHAR (20), Password VARCHAR (20));
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('nsingh', 'Resident', 'Querty#124&');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('adoshi', 'Resident', 'Rec@17uz%');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('jshaligram', 'Resident', 'jSh@90gg7^');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('tmishra', 'Resident', 't%0876miSra%');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('harperjack', 'Manager', 'har*96per$45');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('whitecharli', 'Gardener', 'white#ty67%12');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('cruzted', 'Electrician', 'cruZteD&30*21');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('sullytom', 'Security', 'Sec%sullY*3571');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('hankstom', 'Prospective_Resident', 'HAnk%68732$&*');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('raviembar', 'Vendor', 'Ravi%986@3bhar%');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('bhargav1', 'Resident', 'bhargav@001');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('agasatheya', 'Resident', 'agsthycoll@123');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('nikhil', 'Resident', 'newboy#12');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ngoushal', 'Resident', 'great%190');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('pnirpase', 'Resident', 'newstudent@456');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('asultan', 'Resident', '$greatgoing*');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('parvathi', 'Resident', '$pointer1*');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ramesh', 'Resident', 'goodguy#421');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('bob', 'Resident', 'uiisgood*87');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('mark', 'Resident', 'leopard%5678');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('john', 'Resident', 'johnnyui#32');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('mary', 'Resident', 'peacock0921');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('eddie', 'Resident', 'edenwoods$43');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ghangsu', 'Resident', 'iamthegreatest%390');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ashely', 'Resident', 'wassup654^');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('michal', 'Resident', 'redridinghood$43');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('frank', 'Resident', 'goodweather%438');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('didier', 'Resident', 'dbestweather*768');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ronaldo', 'Resident', 'footballplayer&^%43');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('messi', 'Resident', 'ilovefootball');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('bellfordmark', 'vendor', 'bellford@1mark');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('sulivanjake', 'vendor', 'jake@1sulivan');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('andrewsjose', 'Plumber', 'Plumber%698');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('hoffmandustin', 'Carpenter', 'Dusti%662$54^');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('jenkinssherry', 'Prospective_Resident', 'Herryhello#14');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('didi1', 'Prospective_Resident', 'ajd@123');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('ronaldo123', 'Prospective_Resident', 'dmsa m%654');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('messi123', 'Prospective_Resident', 'sdalsk%^');
INSERT INTO USER_ACCOUNT (User_Id, Role, Password) VALUES ('frank1', 'Prospective_Resident', 'sdah12#');

-- Table: VENDOR
CREATE TABLE VENDOR (Vendor_Id INTEGER PRIMARY KEY, User_Id VARCHAR (20) REFERENCES USER_ACCOUNT (User_Id), Vendor_F_Name VARCHAR (20), Vendor_L_Name VARCHAR (20), Vendor_Desc VARCHAR (20), Contact_No INTEGER, Email VARCHAR (20), Address VARCHAR (100));
INSERT INTO VENDOR (Vendor_Id, User_Id, Vendor_F_Name, Vendor_L_Name, Vendor_Desc, Contact_No, Email, Address) VALUES (900001, 'raviembar', 'Bhargav', 'Embar', 'Get rid of pests', 4785693215, 'ebhargav@pestcontrol.com', 'Apt#5105, 1090 Benton St., SC-95050');
INSERT INTO VENDOR (Vendor_Id, User_Id, Vendor_F_Name, Vendor_L_Name, Vendor_Desc, Contact_No, Email, Address) VALUES (900002, 'sulivanjake', 'Jake', 'Sulivan', 'Carpet', 3223648924, 'jakesulivan@carpet.com', '1790, Flora Vista Ave, SJ-93898');
INSERT INTO VENDOR (Vendor_Id, User_Id, Vendor_F_Name, Vendor_L_Name, Vendor_Desc, Contact_No, Email, Address) VALUES (900003, 'bellfordmark', 'Mark', 'Bellford', 'Land Solutions', 2783623623, 'mark@landsolutions.com', '8732, Redwood Lane, Palo Alto-78727');

-- Index: AMENITY_BOOKING
CREATE INDEX AMENITY_BOOKING ON RESERVE_AMENITY(Amenity_Name);

-- Index: SR_CATEGORY
CREATE INDEX SR_CATEGORY ON SERVICE_REQUEST(Category);

-- Index: SR_EMPLOYEE_ASSIGNMENT
CREATE INDEX SR_EMPLOYEE_ASSIGNMENT ON SERVICE_REQUEST(Employee_Id);

-- Index: UNIT_LEASE_DETAILS
CREATE INDEX UNIT_LEASE_DETAILS ON LEASE_AGREEMENT(Unit);

-- Index: UNIT_STATUS
CREATE INDEX UNIT_STATUS ON APARTMENT(Status);

-- View: APARTMENTS_AVAILABLE
CREATE VIEW APARTMENTS_AVAILABLE AS SELECT Number_of_Rooms AS 'Number of Bedrooms', Number_of_Bathrooms as 'Number of Bathrooms',Area, COUNT(Number_of_Rooms) AS 'Available Units'
FROM APARTMENT
WHERE STATUS = 'Available'
GROUP BY Number_of_Rooms, Number_of_Bathrooms, Area;

-- View: BOOKED_AMENITIES
CREATE VIEW BOOKED_AMENITIES AS SELECT Amenity_Name AS 'Amenity Name',
Booking_From AS 'Booked From',
Booking_To AS 'Booked To'
FROM RESERVE_AMENITY;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
