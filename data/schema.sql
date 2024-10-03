CREATE TABLE IF NOT EXISTS "user"(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "card_number" VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS "statement"(
    "id" SERIAL PRIMARY KEY,
    "user" INTEGER NOT NULL,
    "store" VARCHAR(255) NOT NULL,
    "amount" NUMERIC(10, 2) NOT NULL,
    "transaction_date" DATE NOT NULL,
    FOREIGN KEY ("user") REFERENCES "user"("id")
);

