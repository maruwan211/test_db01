CREATE TABLE tbl_score (
  id_score INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tbl_student_id_s INTEGER UNSIGNED NOT NULL,
  tbl_subject_id_subject INTEGER UNSIGNED NOT NULL,
  tbl_teacher_id_teacher INTEGER UNSIGNED NOT NULL,
  score_name VARCHAR(45) NULL,
  score_detail VARCHAR(255) NULL,
  score_date DATETIME NULL,
  score_user INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_score),
  INDEX tbl_score_FKIndex1(tbl_teacher_id_teacher),
  INDEX tbl_score_FKIndex2(tbl_subject_id_subject),
  INDEX tbl_score_FKIndex3(tbl_student_id_s)
);

CREATE TABLE tbl_student (
  id_s INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  tbl_teacher_id_teacher INTEGER UNSIGNED NOT NULL,
  tbl_subject_id_subject INTEGER UNSIGNED NOT NULL,
  name_s VARCHAR(45) NULL,
  lastname_s VARCHAR(45) NULL,
  id_class INTEGER UNSIGNED NULL,
  class_room INTEGER UNSIGNED NULL,
  subject_s INTEGER UNSIGNED NULL,
  img_s VARCHAR(45) NULL,
  PRIMARY KEY(id_s),
  INDEX tbl_student_FKIndex1(tbl_subject_id_subject),
  INDEX tbl_student_FKIndex2(tbl_teacher_id_teacher)
);

CREATE TABLE tbl_subject (
  id_subject INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name_subject VARCHAR(45) NULL,
  detail_subject VARCHAR(255) NULL,
  PRIMARY KEY(id_subject)
);

CREATE TABLE tbl_teacher (
  id_teacher INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  teacher_name VARCHAR(45) NULL,
  teacher_lastname VARCHAR(45) NULL,
  teacher_class INTEGER UNSIGNED NULL,
  teacher_subject INTEGER UNSIGNED NULL,
  PRIMARY KEY(id_teacher)
);


