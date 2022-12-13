CREATE DATABASE sample_jsp_todo_ajax;

CREATE TABLE `todo_list` (
	`num` INT(11) NOT NULL AUTO_INCREMENT,
	`item` VARCHAR(255) NULL DEFAULT NULL,
	`ischecked` ENUM('true', 'false') NULL DEFAULT 'false',
	`insertDate` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`num`)
);
