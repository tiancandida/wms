<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $response = array();
    //mendapatkan data 
    $kode_penyimpanan = $_POST['kode_penyimpanan'];
    $id_barang = $_POST['id_barang'];
    $id_supplier = $_POST['id_supplier'];
    $id_rak = $_POST['id_rak'];

    require_once('dbConnect.php');
    //Cek kode_penyimpanan sudah terdaftar apa belum 
    $sql = "SELECT * FROM mu_penyimpanan WHERE kode_penyimpanan ='$kode_penyimpanan'";
    $check = mysqli_fetch_array(mysqli_query($con, $sql));

    if (isset($check)) {
        $response["value"] = 0;
        $response["message"] = "oops! Kode Barang sudah terdaftar!";
        echo json_encode($response);
    } else {
        $sql = "INSERT INTO mu_penyimpanan (kode_penyimpanan,id_barang,id_supplier, id_rak) VALUES('$kode_penyimpanan','$id_barang','$id_supplier','$id_rak')";

        if (mysqli_query($con, $sql)) {
            $response["value"] = 1;
            $response["message"] = "Sukses mendaftar";
            echo json_encode($response);
        } else {
            $response["value"] = 0;
            $response["message"] = "oops! Coba lagi!";
            echo json_encode($response);
        }
    }

    // tutup database 

    mysqli_close($con);
} else {
    $response["value"] = 0;
    $response["message"] = "oops! Coba lagi!";
    echo json_encode($response);
}
