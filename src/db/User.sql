-- Table: "User"

-- DROP TABLE "User";

CREATE TABLE "User"
(
  "UserId" serial NOT NULL,
  "UserName" character varying(50) NOT NULL,
  "Password" character varying(50) NOT NULL,
  "Gender" character(4) NOT NULL,
  "Age" integer NOT NULL,
  "Phone" character(20) NOT NULL,
  "Email" character(30) NOT NULL,
  "Description" character varying(500),
  "Register" timestamp without time zone NOT NULL,
  "Last" timestamp without time zone NOT NULL,
  CONSTRAINT "User_pkey" PRIMARY KEY ("UserId")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "User"
  OWNER TO postgres;
