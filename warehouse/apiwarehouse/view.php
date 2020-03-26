<?php

require_once('dbConnect.php');
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $sql = "SELECT * FROM mu_penyimpanan ORDER BY id_barang ASC";
    $res = mysqli_query($con, $sql);
    $result = array();
    while ($row = mysqli_fetch_array($res)) {
        array_push($result, array('kode_penyimpanan' => $row[1], 'id_barang' => $row[3], 'id_supplier' => $row[4], 'id_rak' => $row[6]));
    }
    echo json_encode(array("value" => 1, "result" => $result));
    mysqli_close($con);
}
