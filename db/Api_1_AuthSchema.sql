CREATE TABLE ApplicationUser
(
    Id INT IDENTITY,
    UserName NVARCHAR(256) NULL,
    NormalizedUserName NVARCHAR(256) NULL,
    Email NVARCHAR(256) NULL,
    NormalizedEmail NVARCHAR(256) NULL,
    EmailConfirmed BIT NOT NULL,
    PasswordHash NVARCHAR(MAX) NULL,
    PhoneNumber NVARCHAR(50) NULL,
    PhoneNumberConfirmed BIT NOT NULL,
    TwoFactorEnabled BIT NOT NULL,
	CONSTRAINT PK_ApplicationUser PRIMARY KEY (Id)
)

CREATE TABLE ApplicationRole
(
    Id INT IDENTITY,
    Name NVARCHAR(256) NOT NULL,
    NormalizedName NVARCHAR(256) NOT NULL,
	CONSTRAINT PK_ApplicationRole PRIMARY KEY (Id)
)