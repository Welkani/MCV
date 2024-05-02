CREATE DATABASE monblog if not exists;
use monblog;
CREATE TABLE t_billet (
    BIL_ID INT(11) PRIMARY KEY,
    BIL_DATE DATETIME,
    BIL_TITRE VARCHAR(100),
    BIL_CONTENU VARCHAR(400)
);

CREATE TABLE t_commentaire (
    COM_ID INT(11) PRIMARY KEY,
    COM_DATE DATETIME,
    COM_AUTEUR VARCHAR(100),
    COM_CONTENU VARCHAR(200),
    BIL_ID INT(11),
    FOREIGN KEY (BIL_ID) REFERENCES t_billet(BIL_ID)
);