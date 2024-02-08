-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kys82r
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Campaigns" (
    "staff_pick" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category" text   NOT NULL,
    "subcategory" text   NOT NULL
);

CREATE TABLE "Contacts" (
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "contact_id" text   NOT NULL,
    "email" text   NOT NULL
);

CREATE TABLE "Category" (
    "category_id" text   NOT NULL,
    "category" text   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory" text   NOT NULL,
    "subcategory_id" text   NOT NULL
);

