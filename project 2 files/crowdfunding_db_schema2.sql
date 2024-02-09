-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kys82r
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaigns" (
    "campaign_id" Serial   NOT NULL,
    "company_name" Varchar   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric   NOT NULL,
    "pledged" numeric   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launch_date" timestamp   NOT NULL,
    "end_date" timestamp   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
    "contact_id" numeric   NOT NULL,
    CONSTRAINT "pk_Campaigns" PRIMARY KEY (
        "campaign_id"
     )
);

CREATE TABLE "Categories" (
    "category_id" serial   NOT NULL,
    "category" varchar   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategories" (
    "subcategory_id" serial   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_Subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" serial   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
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

