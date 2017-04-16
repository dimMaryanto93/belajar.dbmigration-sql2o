CREATE TYPE JENIS_KELAMIN AS ENUM ('L', 'P');
CREATE TABLE m_nasabah (
  no_rek        VARCHAR(10)   NOT NULL PRIMARY KEY,
  nama          VARCHAR(150)  NOT NULL,
  jenis_kelamin JENIS_KELAMIN NOT NULL DEFAULT 'L',
  alamat        VARCHAR(255)
);
INSERT INTO m_nasabah (no_rek, nama, jenis_kelamin, alamat) VALUES
  (:noRek, :nama, :jenisKelamin, :alamat)