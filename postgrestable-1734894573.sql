CREATE TABLE IF NOT EXISTS "Books" (
	"id" serial NOT NULL UNIQUE,
	"isbn" varchar(255) NOT NULL UNIQUE,
	"title" varchar(255) NOT NULL,
	"copies_available" bigint NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Users" (
	"id" serial NOT NULL UNIQUE,
	"name" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL UNIQUE,
	"password" varchar(255) NOT NULL,
	"role" varchar(255) NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Records" (
	"id" serial NOT NULL UNIQUE,
	"user_id" bigint NOT NULL,
	"book_id" bigint NOT NULL,
	"borrow_date" date NOT NULL,
	"return_date" date NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "Payment" (
	"id" serial NOT NULL UNIQUE,
	"user_id" bigint NOT NULL,
	"amount" numeric(10,0) NOT NULL,
	PRIMARY KEY ("id")
);



ALTER TABLE "Records" ADD CONSTRAINT "Records_fk1" FOREIGN KEY ("user_id") REFERENCES "Users"("id");

ALTER TABLE "Records" ADD CONSTRAINT "Records_fk2" FOREIGN KEY ("book_id") REFERENCES "Books"("id");
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_fk1" FOREIGN KEY ("user_id") REFERENCES "Users"("id");