<?php
require_once('dbConnect.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  $response = array();
  //mendapatkan data
  $kode_penyimpanan = $_POST['kode_penyimpanan'];

  $sql = "DELETE FROM mu_penyimpanan WHERE kode_penyimpanan = '$kode_penyimpanan'";
  if (mysqli_query($con, $sql)) {
    $response["value"] = 1;
    $response["message"] = "Berhasil dihapus";
    echo json_encode($response);
  } else {
    $response["value"] = 0;
    $response["message"] = "oops! Gagal dihapus!";
    echo json_encode($response);
  }
  mysqli_close($con);
}
