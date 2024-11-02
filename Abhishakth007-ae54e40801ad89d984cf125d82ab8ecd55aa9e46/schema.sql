CREATE TABLE "Passengers"(
"first name" TEXT NOT NULL UNIQUE,
"last name" TEXT NOT NULL UNIQUE,
"age" TEXT NOT NULL
);
CREATE TABLE "Check-Ins"(
"Passenger Action" TEXT NOT NULL,
"DateTime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
"Flight ID" INTEGER,
PRIMARY KEY ("Flight ID"),
FOREIGN KEY ("Flight ID") REFERENCES "Flights"("ID")
);
CREATE TABLE "Airlines"(
"Airlines Name" TEXT NOT NULL ,
"ID" INTEGER,
"Concourses" TEXT CHECK ("Concourse" IN ('A' , 'B' , 'C' , 'D' , 'E' , 'F' , 'T')),
PRIMARY KEY ("ID")
);
CREATE TABLE "Flights"(
"ID" INTEGER NOT NULL UNIQUE,
"Operating Airline_ID" INTEGER NOT NULL,
"Departure Airport Code" TEXT NOT NULL,
"Destination Airport Code" TEXT NOT NULL,
"Departure Time" NUMERIC NOT NULL,
"Arrival Time" NUMERIC NOT NULL,
PRIMARY KEY ("ID"),
FOREIGN KEY ("Operating Airline_ID") REFERENCES "Airlines"("ID")
);
