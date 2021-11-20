CREATE TABLE `User` (
  `WechatID` varchar(255) PRIMARY KEY,
  `UserName` varchar(255),
  `Role` char,
  `Password` varchar(255)
);

CREATE TABLE `UserInfo` (
  `WechatID` varchar(255) PRIMARY KEY,
  `ChineseName` varchar(255),
  `EnglishName` varchar(255),
  `BirthDate` date,
  `Sex` varchar(255),
  `Email` varchar(255),
  `PhoneNum` int,
  `CSSADept` char
);

CREATE TABLE `AcademicInfo` (
  `WechatID` varchar(255) PRIMARY KEY,
  `Major` char,
  `Degree` char,
  `StudentStatus` boolean,
  `GradYr` year
);

CREATE TABLE `ContactInfo` (
  `WechatID` varchar(255) PRIMARY KEY,
  `Country` varchar(255),
  `Province` varchar(255),
  `Email` varchar(255),
  `PhoneNum` int,
  `LinkedIn` varchar(255),
  `Other` varchar(255)
);

CREATE TABLE `EmploymentInfo` (
  `WechatID` varchar(255) PRIMARY KEY,
  `Field` varchar(255),
  `Company` varchar(255),
  `Position` varchar(255)
);

CREATE TABLE `Notification` (
  `NotID` int PRIMARY KEY AUTO_INCREMENT,
  `NoteTitle` varchar(255),
  `NoteDate` date,
  `NoteContent` varchar(255),
  `target` varchar(255)
);

CREATE TABLE `Articles` (
  `ArtID` int PRIMARY KEY AUTO_INCREMENT,
  `PubTitle` varchar(255),
  `PubDate` date,
  `PubContent` varchar(255),
  `target` varchar(255)
);

ALTER TABLE `UserInfo` ADD FOREIGN KEY (`WechatID`) REFERENCES `User` (`WechatID`);

ALTER TABLE `User` ADD FOREIGN KEY (`WechatID`) REFERENCES `AcademicInfo` (`WechatID`);

ALTER TABLE `ContactInfo` ADD FOREIGN KEY (`WechatID`) REFERENCES `User` (`WechatID`);

ALTER TABLE `User` ADD FOREIGN KEY (`WechatID`) REFERENCES `EmploymentInfo` (`WechatID`);
