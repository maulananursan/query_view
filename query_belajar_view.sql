CREATE VIEW laporan_barang AS(
SELECT
    `tb_barang`.`id`
    , `tb_barang`.`nama_barang`
    , `tb_barang`.`harga`
    , `tb_barang`.`id_jenis`
    , `tb_jenis`.`nama`
    , `tb_jenis`.`keterangan`
FROM
    `db_day26`.`tb_barang`
    INNER JOIN `db_day26`.`tb_jenis` 
        ON (`tb_barang`.`id_jenis` = `tb_jenis`.`id_jenis`))
        
SELECT*FROM laporan_barang
SELECT*FROM laporan_barang2
SELECT*FROM laporan_barang3