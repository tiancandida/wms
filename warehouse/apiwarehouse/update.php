<?php

require_once('dbConnect.php');
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $response = array();

    //mendapatkan data 

    $kode_penyimpanan = $_POST['kode_penyimpanan'];
    $id_barang = $_POST['id_barang'];
    $id_supplier = $_POST['id_supplier'];
    $sql = "UPDATE mu_penyimpanan SET id_barang = '$id_barang' WHERE kode_penyimpanan = '$kode_penyimpanan'";

    if (mysqli_query($con, $sql)) {
        $response["value"] = 1;
        $response["message"] = "Berhasil diperbarui";
        echo json_encode($response);
    } else {
        $response["value"] = 0;
        $response["message"] = "oops! Gagal merubah!";
        echo json_encode($response);
    }
    mysqli_close($con);
}
