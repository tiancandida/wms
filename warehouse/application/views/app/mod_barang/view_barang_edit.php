<style type="text/css">
  .anu tbody td {
    padding:3px !important;
    border:1px solid #e3e3e3;
  }
</style>
<script>
function Satuanidd(data) {
  document.getElementById("sat1").innerHTML = data.value;
  document.getElementById("sat2").innerHTML = data.value;
  document.getElementById("sat3").innerHTML = data.value;
  document.getElementById("sat4").innerHTML = data.value;
  document.getElementById("sat5").innerHTML = data.value;
  document.getElementById("sat6").value = data.value;
  document.getElementById("sat7").value = data.value;
  document.getElementById("sat8").value = data.value;
  document.getElementById("sat9").value = data.value;
  document.getElementById("sat10").value = data.value;
}

function Satuanidd1(data) {
  document.getElementById("sat2").innerHTML = data.value;
  document.getElementById("sat4").innerHTML = data.value;
}
</script>
<?php 
$stok = $this->model_app->stok($this->uri->segment(3))->row_array();
//$ppn = $this->db->query("SELECT * FROM mu_conf_penjualan ORDER BY id_conf_penjualan DESC LIMIT 1")->row_array();
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/edit_barang',$attributes); 
          echo "<div class='col-md-5'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_barang]'>
                    <tr><th width='150px' scope='row'>Kode Barang</th>    <td><input style='width:35%; display:inline-block' type='text' id='barang' class='form-control input-sm' name='a' value='$row[kode_barang]'> 
                                                                              <label generated='true' class='error' id='message'></label></td></tr>
                    <tr><th scope='row'>Nama Barang</th>    <td><input type='text' class='form-control input-sm' name='b' value='$row[nama_barang]' required></td></tr>
                    <tr><th scope='row'>Merek/Brand</th>    <td><input type='text' class='form-control input-sm' name='c' value='$row[merek_brand]'></td></tr>
                    <tr><th scope='row'>Model/Type</th>    <td><input type='text' class='form-control input-sm' name='d' value='$row[model_type]'></td></tr>
                   
                    <tr><th scope='row'>Ukuran/Volume</th>    <td><input type='text' class='form-control input-sm' name='f' value='$row[ukuran_volume]'></td></tr>
                    <tr><th scope='row'>Warna</th>    <td><input type='text' class='form-control input-sm' name='g' value='$row[warna]'></td></tr>
                    <tr><th scope='row'>Kategori</th>    <td><select class='form-control input-sm' name='h' id='kategori' required>
                                                            <option value=''>- Pilih -</option>";
                                                            foreach ($kategori as $r) {
                                                              if ($row['id_kategori']==$r['id_kategori']){
                                                                echo "<option value='$r[id_kategori]' selected>$r[nama_kategori]</option>";
                                                              }else{
                                                                echo "<option value='$r[id_kategori]'>$r[nama_kategori]</option>";
                                                              }
                                                            }
                                                        echo "</select></td></tr>
                   
                   
                    <tr><th scope='row'>Keterangan</th>    <td><textarea class='form-control input-sm' name='n' style='height:40px'>$row[keterangan_barang]</textarea></td></tr>
                    
                    <tr class='$conf[sertakan_gambar]'><th scope='row'>Gambar</th>    <td><input type='file' class='form-control input-sm' name='o'>";
                                                    if (trim($row['foto_barang']) != ''){
                                                      echo "<img class='img-thumbnail' width='200px' src='".base_url()."asset/foto_barang/$row[foto_barang]'>";
                                                    }else{
                                                      echo "<i><small>Tidak Ditemukan adanya Foto Barang...</small></i>";
                                                    }
                                                      echo "</td></tr>
                                                    
                    <tr><th scope='row'>Satuan</th>   
                     <td>
                            <select style='padding:2px; display:inline-block; width:120px;' class='form-control input-sm' onchange=\"Satuanidd(this)\" name='r' required>";
                                foreach ($satuann  as $r) {
                                  if ($row['kode_satuan']==$r['kode_satuan']){
                                    echo "<option value='$r[kode_satuan]' selected>$r[keterangan] ($r[kode_satuan])</option>";
                                  }else{
                                    echo "<option value='$r[kode_satuan]'>$r[keterangan] ($r[kode_satuan])</option>";
                                  }
                                }
                            echo "</select> <i class='glyphicon glyphicon-list'></i> <a href='#' class='riwayat-pembelian' data-id='".$this->uri->segment(3)."'>Riwayat DO</a></td></tr>
                   
                              </tbody>
                            </table>
                    </td></tr>
                  </tbody>
                  </table>
                </div>

             
                  </table>
                </div>

              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='". base_url() ."' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
            </div></form>";
