-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Sample
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Sample
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Sample` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `Sample` ;

-- -----------------------------------------------------
-- Table `Sample`.`AppParameters`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`AppParameters` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `key_type` VARCHAR(255) NOT NULL,
  `key_value` VARCHAR(45) NOT NULL,
  `key_text` VARCHAR(45) NOT NULL,
  `cur_status` VARCHAR(45) NULL DEFAULT NULL,
  `lastUp_user` VARCHAR(45) NULL DEFAULT NULL,
  `lastUp_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  `seq_num` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`FellowshipCandidate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`FellowshipCandidate` (
  `id` INT NOT NULL,
  `First_Name` VARCHAR(255) NOT NULL,
  `Middle_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Hired_City` VARCHAR(45) NULL DEFAULT NULL,
  `Digree` VARCHAR(45) NULL DEFAULT NULL,
  `Hired_Date` VARCHAR(45) NULL DEFAULT NULL,
  `Mobile_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Permenant_Pincode` VARCHAR(45) NULL DEFAULT NULL,
  `Hired_Lab` VARCHAR(45) NULL DEFAULT NULL,
  `Attitude` VARCHAR(45) NULL DEFAULT NULL,
  `Communication_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Knowledge_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Aggregate_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  `Birth_Date` VARCHAR(45) NULL DEFAULT NULL,
  `Is_BirthDate_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Parent_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Parent_Occupation` VARCHAR(45) NULL DEFAULT NULL,
  `Parent_MobileNumber` VARCHAR(45) NULL DEFAULT NULL,
  `Parent_AnnualSalary` VARCHAR(45) NULL DEFAULT NULL,
  `Local_Address` VARCHAR(200) NULL DEFAULT NULL,
  `Permenant_Address` VARCHAR(200) NULL DEFAULT NULL,
  `Photo_Path` VARCHAR(45) NULL DEFAULT NULL,
  `Joining_Date` VARCHAR(45) NULL DEFAULT NULL,
  `Candidate_Status` VARCHAR(45) NULL DEFAULT NULL,
  `Personal_Information` VARCHAR(45) NULL DEFAULT NULL,
  `Bank_Information` VARCHAR(45) NULL DEFAULT NULL,
  `Educationl_Information` VARCHAR(45) NULL DEFAULT NULL,
  `Document_Status` VARCHAR(45) NULL DEFAULT NULL,
  `Remark` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`CandidateBankDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`CandidateBankDetails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Account_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Is_AccNumVerified` VARCHAR(45) NULL DEFAULT NULL,
  `IFSC_code` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Ifsc_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Pan_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Pan_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Aadhar_Num` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Aadhar_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CandidateBankDetails_1_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_CandidateBankDetails_1`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `Sample`.`FellowshipCandidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`CandidateDocuments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`CandidateDocuments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NOT NULL,
  `doc_type` VARCHAR(45) NULL DEFAULT NULL,
  `doc_path` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CandidateDocuments_1_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_CandidateDocuments_1`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `Sample`.`FellowshipCandidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`CandidateQualification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`CandidateQualification` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `candidate_id` INT NOT NULL,
  `diploma` VARCHAR(45) NULL DEFAULT NULL,
  `Degree_name` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Degree_Name_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `employee_decipline` VARCHAR(45) NULL DEFAULT NULL,
  `Is_employee_decipline_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `passing_year` VARCHAR(45) NULL DEFAULT NULL,
  `Is_Passing_year_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Aggre_Percentage` VARCHAR(45) NULL DEFAULT NULL,
  `Is_AggrePerc_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Final_Year_Per` VARCHAR(45) NULL DEFAULT NULL,
  `Is_FinalYearPerc_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Training_Institute` VARCHAR(45) NULL DEFAULT NULL,
  `Is_TrainingInstitute_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Training_DurationMonth` VARCHAR(45) NULL DEFAULT NULL,
  `Is_TrainingDurationMonth_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `Other_Training` VARCHAR(45) NULL DEFAULT NULL,
  `Is_OtherTraining_Verified` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CandidateQualification_1_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `fk_CandidateQualification_1`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `Sample`.`FellowshipCandidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`Company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`Company` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(255) NOT NULL,
  `Location` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`TechType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`TechType` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(255) NOT NULL,
  `cur_status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`TechStack`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`TechStack` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tech_name` VARCHAR(255) NOT NULL,
  `image_path` VARCHAR(45) NULL DEFAULT NULL,
  `framework` VARCHAR(45) NULL DEFAULT NULL,
  `cur_status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`MakerProgram`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`MakerProgram` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `program_name` VARCHAR(55) NOT NULL,
  `program_type` VARCHAR(45) NULL DEFAULT NULL,
  `program_link` VARCHAR(45) NULL DEFAULT NULL,
  `tech_stack_id` INT NULL DEFAULT NULL,
  `tech_type_id` INT NULL DEFAULT NULL,
  `is_program_approved` VARCHAR(45) NULL DEFAULT NULL,
  `Description` VARCHAR(45) NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_MakerProgram_1_idx` (`tech_type_id` ASC) VISIBLE,
  INDEX `fk_MakerProgram_2_idx` (`tech_stack_id` ASC) VISIBLE,
  CONSTRAINT `fk_MakerProgram_1`
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `Sample`.`TechType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MakerProgram_2`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `Sample`.`TechStack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`CompanyRequirement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`CompanyRequirement` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `company_id` INT NOT NULL,
  `requested_month` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `is_document_verification` VARCHAR(45) NULL DEFAULT NULL,
  `requirement_doc_path` VARCHAR(45) NULL DEFAULT NULL,
  `no_of_engg` VARCHAR(45) NULL DEFAULT NULL,
  `tech_stack_id` INT NULL DEFAULT NULL,
  `tech_type_id` INT NULL DEFAULT NULL,
  `maker_program_id` INT NULL DEFAULT NULL,
  `lead_id` INT NULL DEFAULT NULL,
  `ideation_engg_id` INT NULL DEFAULT NULL,
  `buddy_engg_id` INT NULL DEFAULT NULL,
  `special_remark` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CompanyRequirement_1_idx` (`company_id` ASC) VISIBLE,
  INDEX `fk_CompanyRequirement_2_idx` (`tech_type_id` ASC) VISIBLE,
  INDEX `fk_CompanyRequirement_3_idx` (`maker_program_id` ASC) VISIBLE,
  INDEX `fk_CompanyRequirement_4_idx` (`tech_stack_id` ASC) VISIBLE,
  CONSTRAINT `fk_CompanyRequirement_1`
    FOREIGN KEY (`company_id`)
    REFERENCES `Sample`.`Company` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CompanyRequirement_2`
    FOREIGN KEY (`tech_type_id`)
    REFERENCES `Sample`.`TechType` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CompanyRequirement_3`
    FOREIGN KEY (`maker_program_id`)
    REFERENCES `Sample`.`MakerProgram` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CompanyRequirement_4`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `Sample`.`TechStack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`CandidateStackAssignment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`CandidateStackAssignment` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `requirement_id` INT NOT NULL,
  `candidate_id` INT NULL DEFAULT NULL,
  `assign_date` DATE NULL DEFAULT NULL,
  `complete_date` DATE NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CandidateStackAssignment_1_idx` (`candidate_id` ASC) VISIBLE,
  INDEX `fk_CandidateStackAssignment_2_idx` (`requirement_id` ASC) VISIBLE,
  CONSTRAINT `fk_CandidateStackAssignment_1`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `Sample`.`FellowshipCandidate` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CandidateStackAssignment_2`
    FOREIGN KEY (`requirement_id`)
    REFERENCES `Sample`.`CompanyRequirement` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`HiredCandidate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`HiredCandidate` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(45) NOT NULL,
  `Middle_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Hired_City` VARCHAR(45) NULL DEFAULT NULL,
  `Degree` VARCHAR(45) NULL DEFAULT NULL,
  `Hired_Date` VARCHAR(45) NULL DEFAULT NULL,
  `Mobile_Number` VARCHAR(45) NULL DEFAULT NULL,
  `Permenant_Pincode` VARCHAR(45) NULL DEFAULT NULL,
  `Hired_Lab` VARCHAR(45) NULL DEFAULT NULL,
  `Attitude` VARCHAR(45) NULL DEFAULT NULL,
  `Communication_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Knowledge_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Aggregate_Remark` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`Lab`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`Lab` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `Location` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`LabThreshold`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`LabThreshold` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `lab_id` INT NOT NULL,
  `lab_capacity` VARCHAR(45) NULL DEFAULT NULL,
  `lead_threshold` VARCHAR(45) NULL DEFAULT NULL,
  `ideation_engg_threshold` VARCHAR(45) NULL DEFAULT NULL,
  `buddy_engg_threshold` VARCHAR(45) NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_LabThreshold_1_idx` (`lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_LabThreshold_1`
    FOREIGN KEY (`lab_id`)
    REFERENCES `Sample`.`Lab` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`Mentor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`Mentor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `mentor_type` VARCHAR(45) NOT NULL,
  `lab_id` INT NULL DEFAULT NULL,
  `Status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Mentor_1_idx` (`lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_Mentor_1`
    FOREIGN KEY (`lab_id`)
    REFERENCES `Sample`.`Lab` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`MentorIdeationMap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`MentorIdeationMap` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `parent_mentor_id` INT NOT NULL,
  `mentor_id` INT NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_MentorIdeationMap_1_idx` (`mentor_id` ASC) VISIBLE,
  CONSTRAINT `fk_MentorIdeationMap_1`
    FOREIGN KEY (`mentor_id`)
    REFERENCES `Sample`.`Mentor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`MentorTechStack`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`MentorTechStack` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `mentor_id` INT NOT NULL,
  `tech_stack_id` INT NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `datetime` DATETIME NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_MentorTechStack_1_idx` (`mentor_id` ASC) VISIBLE,
  INDEX `fk_MentorTechStack_2_idx` (`tech_stack_id` ASC) VISIBLE,
  CONSTRAINT `fk_MentorTechStack_1`
    FOREIGN KEY (`mentor_id`)
    REFERENCES `Sample`.`Mentor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MentorTechStack_2`
    FOREIGN KEY (`tech_stack_id`)
    REFERENCES `Sample`.`TechStack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Sample`.`UserDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sample`.`UserDetails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `contact` VARCHAR(45) NOT NULL,
  `verified` TINYINT(1) NULL DEFAULT NULL,
  `creator_stamp` VARCHAR(45) NULL DEFAULT NULL,
  `creator_user` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
