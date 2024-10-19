SELECT COUNT([nama_mata_kuliah]) AS MataKuliahSenin
FROM dbo.jadwal_mata_kuliah
WHERE hari = 'Senin';