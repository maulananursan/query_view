DROP TABLE IF EXISTS nilai_mahasiswa;
CREATE TABLE nilai_mahasiswa (
nim CHAR(8) PRIMARY KEY,
nama VARCHAR(50),
semester_1 DECIMAL(4,2),
semester_2 DECIMAL(4,2),
semester_3 DECIMAL(4,2)
) ENGINE = INNODB;
INSERT INTO nilai_mahasiswa VALUES
('17090113', 'Riana Putria', 3.12, 2.98, 3.45),
('17140143', 'Rudi Permana', 2.56, 3.14, 3.22),
('17080305', 'Rina Kumala Sari', 3.45, 2.56, 3.67),
('17140119', 'Sandri Fatmala', 2.12, 2.78, 2.56),
('17090308', 'Christine Wijaya', 3.78, 3.23, 3.11);

SELECT*FROM view_ipk
SELECT*FROM nilai_ipk_format
SELECT*FROM cari_nama

SET @nama='Maulana';
SET @ipk=3.80;
SET @ipk2=@ipk;

SET @hasil=CEIL(@ipk)+10;
SELECT @hasil;

SET @tanggal = DATE_FORMAT('2020-10-19','%W %M %Y');
SELECT @tanggal;

SET@ipk=2.5;
SELECT*FROM nilai_mahasiswa WHERE semester_1>=@ipk;

SET@ipk=2.5;
SELECT*FROM view_ipk WHERE view_ipk.ipk>=@ipk;

CREATE PROCEDURE prosedur(IN ipk FLOAT)
BEGIN
SELECT*FROM nilai_mahasiswa WHERE semester_1>=@ipk;
END

CALL prosedur();

CREATE TABLE ipk_mahasiswa(
nim VARCHAR(70) PRIMARY KEY,
nilai_ipk DECIMAL(4,2)
);
