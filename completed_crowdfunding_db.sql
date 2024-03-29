-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kys82r
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.



    
CREATE TABLE "Campaigns" (
	"cf_id" integer NOT NULL,
	"contact_id" numeric   NOT NULL,
    "company_name" Varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric   NOT NULL,
    "pledged" numeric   NOT NULL,
	"outcome" varchar(50) NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)  NOT NULL,
    "launched_date" timestamp   NOT NULL,
    "end_date" timestamp   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
	CONSTRAINT "pk_Campaigns" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Categories" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategories" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(50)  NOT NULL,
    CONSTRAINT "pk_Subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
	"first_name" varchar (50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "contact_id" numeric   NOT NULL,
    "email" varchar (150)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "Categories" ("category_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategories" ("subcategory_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

Select * From "Campaigns"
Select * From "Contacts"
Select * From "Subcategories"
Select * From "Categories"
