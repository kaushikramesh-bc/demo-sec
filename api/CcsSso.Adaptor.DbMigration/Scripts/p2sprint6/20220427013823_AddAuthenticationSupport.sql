START TRANSACTION;

CREATE TABLE "AdapterConsumerSubscriptionAuthMethod" (
    "Id" integer GENERATED BY DEFAULT AS IDENTITY,
    "APIKey" text NULL,
    "AdapterConsumerId" integer NOT NULL,
    "CreatedOnUtc" timestamp without time zone NOT NULL,
    "LastUpdatedOnUtc" timestamp without time zone NOT NULL,
    "IsDeleted" boolean NOT NULL,
    CONSTRAINT "PK_AdapterConsumerSubscriptionAuthMethod" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_AdapterConsumerSubscriptionAuthMethod_AdapterConsumer_Adapt~" FOREIGN KEY ("AdapterConsumerId") REFERENCES "AdapterConsumer" ("Id") ON DELETE CASCADE
);

CREATE UNIQUE INDEX "IX_AdapterConsumerSubscriptionAuthMethod_AdapterConsumerId" ON "AdapterConsumerSubscriptionAuthMethod" ("AdapterConsumerId");

INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
VALUES ('20220427013823_AddAuthenticationSupport', '5.0.10');

COMMIT;
