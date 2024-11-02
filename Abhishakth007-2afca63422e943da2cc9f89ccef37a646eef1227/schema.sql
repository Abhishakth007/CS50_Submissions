CREATE TABLE `Users`(
`id` INT UNSIGNED AUTO_INCREMENT ,
`firstname` VARCHAR(32) NOT NULL,
`lastname` VARCHAR(32) NOT NULL,
`username` VARCHAR(32) ,
`password` VARCHAR(255) NOT NULL,
PRIMARY KEY(`id`)
);
CREATE TABLE `Schools`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` VARCHAR(32) NOT NULL,
    `location` VARCHAR(255) ,
    `foundation_year` DATE,
    PRIMARY KEY(`id`)
);
CREATE TABLE `Companies`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` VARCHAR(32) NOT NULL,
    `location` VARCHAR(255) ,
    PRIMARY KEY(`id`)
);
CREATE TABLE `Conns_with_users`(
    `user_id_1` INT UNSIGNED NOT NULL,
    `user_id_2` INT UNSIGNED NOT NULL,
    PRIMARY KEY(`user_id_1`,`user_id_2`),
    FOREIGN KEY(`user_id_1`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`user_id_2`) REFERENCES `Users`(`id`)
);
CREATE TABLE `Conns_with_school`(
    `user_id` INT UNSIGNED ,
    `school_id` INT UNSIGNED ,
    `start_date` DATE NOT NULL,
    `end_date` DATE ,
    `status` ENUM('pursued','pursuing') NOT NULL,
    `type` VARCHAR(32) NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `Schools`(`id`)
);
CREATE TABLE `Conns_with_companies`(
    `user_id` INT UNSIGNED ,
    `company_id` INT UNSIGNED ,
    `start_date` DATE NOT NULL,
    `end_date` DATE ,
    `title` VARCHAR(32) NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `Companies`(`id`)
);

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




