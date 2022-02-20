<?php
require_once __DIR__ . '/vendor/autoload.php';
require "fungsi.php";

$mpdf = new \Mpdf\Mpdf();

// Write some HTML code:

$mpdf->WriteHTML('
	<!DOCTYPE html>
	<html>
	<head>
	    <title>Sistem Informasi Akademik::Daftar Mahasiswa</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/stylepdf.css">
	</head>
	<body>
	<h1>Daftar Mata Kuliah<br>
	<sub>Sistem Informasi - Fakultas Ilmu Komputer - Universitas Dian Nuswantoro<sub><br>
	<small>Tahun Akademik 2020-2021</small></h1>
	<table>	
	<tr>
      <th>No.</th>
      <th>Kode</th>
      <th>Nama mata kuliah</th>
      <th>SKS</th>
      <th>Jenis</th>
      <th>Semester</th>
	</tr>
	');
$sql="select * from matkul";		
$qry = mysqli_query($koneksi,$sql) or die(mysqli_error($koneksi));
$no=0;
while($row=mysqli_fetch_assoc($qry)){
	$no++;
	$mpdf->WriteHTML('
	<tr>
		<td>'.$no.'</td>
		<td>'.$row["idmatkul"].'</td>
		<td>'.$row["namamatkul"].'</td>
        <td>'.$row["sks"].'</td>
        <td>'.$row["jns"].'</td>
        <td>'.$row["smt"].'</td>					
	</tr>
	');
}
$mpdf->WriteHTML('</table>');
$mpdf->WriteHTML('</body></html>');
// Output a PDF file directly to the browser
$mpdf->Output("Data_MatKul.pdf","I");