SELECT [nama_mata_kuliah]
FROM dbo.jadwal_mata_kuliah
WHERE [dosen_pengajar] LIKE 'ang%'
ORDER BY [dosen_pengajar] ASC