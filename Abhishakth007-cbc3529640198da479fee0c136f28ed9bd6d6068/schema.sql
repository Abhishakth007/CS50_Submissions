CREATE TABLE "Ingredients"(
    "Ingredient_Name" TEXT NOT NULL CHECK("Ingredients_Name" IN ("Flour" , "Yeast" , "Oil" , "Butter" , "Sugar")),
    "Ingredient_Id" INTEGER ,
    "Price_Per_Pound" , NUMERIC,
    PRIMARY KEY ("Ingredient_Id")
);
CREATE TABLE "Donuts"(
    "Donut_Name" TEXT,
    "Donut_Id" NUMERIC SERIAL PRIMARY KEY,
    "Ingredients_Id" INTEGER,
    "Is_Gluten_Free" BOOLEAN,
    "Price_Per_Donut" NUMERIC,
    FOREIGN KEY ("Ingredients_Id") REFERENCES "Ingredients"("Ingredient_Id")
);
CREATE TABLE "Orders"(
    "Order_Id" NUMERIC,
    "Donut_Id" NUMERIC,
    "Customer_Id" NUMERIC,
    PRIMARY KEY("Order_Id"),
    FOREIGN KEY("Customer_Id") REFERENCES "Customers"("Id")
);
CREATE TABLE "Customers"(
    "Id" NUMERIC,
    "First_Name" TEXT,
    "Last_Name" TEXT,
    PRIMARY KEY("Id")
);
CREATE TABLE "Customer_Orders"(
    "Customer_Id" NUMERIC,
    "Order_Id" NUMERIC,
    PRIMARY KEY("Customer_Id" , "Order_Id"),
    FOREIGN KEY("Customer_Id") REFERENCES "Customers"("Id"),
    FOREIGN KEY("Order_Id") REFERENCES "Orders"("Order_Id")
);
