-- Create SCHOOLS table to store Chicago Public Schools
-- performance and demographic data (2011–2012)

CREATE TABLE schools (
    School_ID INTEGER,
    NAME_OF_SCHOOL VARCHAR(255),
    "Elementary, Middle, or High School" VARCHAR(50),
    Street_Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(10),
    ZIP_Code VARCHAR(10),
    Phone_Number VARCHAR(50),
    Link VARCHAR(255),
    Network_Manager VARCHAR(255),
    Collaborative_Name VARCHAR(255),
    Adequate_Yearly_Progress_Made_ VARCHAR(10),
    Track_Schedule VARCHAR(50),
    CPS_Performance_Policy_Status VARCHAR(50),
    CPS_Performance_Policy_Level VARCHAR(50),
    HEALTHY_SCHOOL_CERTIFIED VARCHAR(10),
    Safety_Icon VARCHAR(50),
    SAFETY_SCORE VARCHAR(50),
    Family_Involvement_Icon VARCHAR(50),
    Family_Involvement_Score VARCHAR(50),
    Environment_Icon VARCHAR(50),
    Environment_Score VARCHAR(50),
    Instruction_Icon VARCHAR(50),
    Instruction_Score VARCHAR(50),
    Leaders_Icon VARCHAR(50),
    Leaders_Score VARCHAR(50),
    Teachers_Icon VARCHAR(50),
    Teachers_Score VARCHAR(50),
    Parent_Engagement_Icon VARCHAR(50),
    Parent_Engagement_Score VARCHAR(50),
    Parent_Environment_Icon VARCHAR(50),
    Parent_Environment_Score VARCHAR(50),
    AVERAGE_STUDENT_ATTENDANCE VARCHAR(50),
    "Rate_of_Misconducts__per_100_students_" VARCHAR(50),
    Average_Teacher_Attendance VARCHAR(50),
    Individualized_Education_Program_Compliance_Rate VARCHAR(50),
    Pk_2_Literacy__ VARCHAR(50),
    Pk_2_Math__ VARCHAR(50),
    Gr3_5_Grade_Level_Math__ VARCHAR(50),
    Gr3_5_Grade_Level_Read__ VARCHAR(50),
    Gr3_5_Keep_Pace_Read__ VARCHAR(50),
    Gr3_5_Keep_Pace_Math__ VARCHAR(50),
    Gr6_8_Grade_Level_Math__ VARCHAR(50),
    Gr6_8_Grade_Level_Read__ VARCHAR(50),
    Gr6_8_Keep_Pace_Math_ VARCHAR(50),
    Gr6_8_Keep_Pace_Read__ VARCHAR(50),
    Gr_8_Explore_Math__ VARCHAR(50),
    Gr_8_Explore_Read__ VARCHAR(50),
    ISAT_Exceeding_Math__ VARCHAR(50),
    ISAT_Exceeding_Reading__ VARCHAR(50),
    ISAT_Value_Add_Math VARCHAR(50),
    ISAT_Value_Add_Read VARCHAR(50),
    ISAT_Value_Add_Color_Math VARCHAR(50),
    ISAT_Value_Add_Color_Read VARCHAR(50),
    "Students_Taking__Algebra__" VARCHAR(50),
    "Students_Passing__Algebra__" VARCHAR(50),
    "9th Grade EXPLORE (2009)" VARCHAR(50),
    "9th Grade EXPLORE (2010)" VARCHAR(50),
    "10th Grade PLAN (2009)" VARCHAR(50),
    "10th Grade PLAN (2010)" VARCHAR(50),
    Net_Change_EXPLORE_and_PLAN VARCHAR(50),
    "11th Grade Average ACT (2011)" VARCHAR(50),
    Net_Change_PLAN_and_ACT VARCHAR(50),
    College_Eligibility__ VARCHAR(50),
    Graduation_Rate__ VARCHAR(50),
    College_Enrollment_Rate__ VARCHAR(50),
    COLLEGE_ENROLLMENT INTEGER,
    General_Services_Route INTEGER,
    Freshman_on_Track_Rate__ VARCHAR(50),
    X_COORDINATE NUMERIC,
    Y_COORDINATE NUMERIC,
    Latitude NUMERIC(10,8),
    Longitude NUMERIC(11,8),
    COMMUNITY_AREA_NUMBER INTEGER,
    COMMUNITY_AREA_NAME VARCHAR(100),
    Ward INTEGER,
    Police_District INTEGER,
    Location VARCHAR(100)
);

-- Load Chicago Public Schools data from CSV file
-- NDA values are treated as NULLs
COPY schools
FROM 'C:/pgdata/ChicagoPublicSchools.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    NULL 'NDA'
);

-- Validate data load by counting total records
SELECT COUNT(*) FROM schools;

-- Verify table existence in the public schema
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';

-- Retrieve column names and data types for schema review
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'schools'
ORDER BY ordinal_position;

-- Preview sample records from the dataset
SELECT *
FROM schools
LIMIT 10;


