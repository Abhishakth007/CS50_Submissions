CREATE TABLE "Users"(
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "User_Id" INTEGER SERIAL PRIMARY KEY,
    "Password" VARCHAR(255) NOT NULL
);

CREATE TABLE "Schools"(
    "School_Name" TEXT NOT NULL UNIQUE,
    "School_Id" INTEGER SERIAL PRIMARY KEY,
    "School Type" TEXT NOT NULL CHECK("Schools Type" IN ("Elementary School", "Middle School", "High School", "Lower School", "Upper School", "College", "University")),
    "School_Location" TEXT NOT NULL,
    "Foundation_Year" INTEGER
);

CREATE TABLE "Companies"(
    "Company_Name" TEXT NOT NULL,
    "Company_Id" INTEGER SERIAL PRIMARY KEY,
    "Industry_Type" TEXT CHECK ("Industry_Type" IN ("Education" , "Technology" , "Finance")),
    "Company_Location" TEXT NOT NULL
);

CREATE TABLE "People_Connections"(
    "User_id1" INTEGER,
    "User_id2" INTEGER,
    PRIMARY KEY ("User_id1" , "User_id2")
);

CREATE TABLE "School_Connections"(
    "User_Id" INTEGER,
    "School_Id" INTEGER,
    "Start_Date" INTEGER,
    "End_Date" INTEGER,
    "Type" TEXT NOT NULL CHECK("Schools Type" IN ("Elementary School", "Middle School", "High School", "Lower School", "Upper School", "College", "University")),
    FOREIGN KEY ("User_Id") REFERENCES "Users"("User_Id"),
    FOREIGN KEY ("School_Id") REFERENCES "Schools"("School_Id")
);
CREATE TABLE "Company_Connections"(
    "User_Id" INTEGER,
    "Company_Id" INTEGER,
    "Start_Date" INTEGER,
    "Last_Date" INTEGER,
    "Working Title" TEXT,
    FOREIGN KEY ("User_Id") REFERENCES "Users"("User_Id"),
    FOREIGN KEY ("Company_Id") REFERENCES "Companies"("Company_Id")
);
