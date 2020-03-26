<style type="text/css">
  .anu tbody td {
    padding:3px !important;
    border:1px solid #e3e3e3;
  }
</style>
<script>
function Satuanid(data) {
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

function Satuanid1(data) {
  document.getElementById("sat2").innerHTML = data.value;
  document.getElementById("sat4").innerHTML = data.value;
}
</script>
<?php 
$kode = $this->db->query("SELECT id_barang FROM mu_barang ORDER BY id_barang DESC LIMIT 1")->row();
$ppn = $this->db->query("SELECT * FROM mu_conf_penjualan ORDER BY id_conf_penjualan DESC LIMIT 1")->row_array();
$kode_barang = "BRG-".sprintf("%06s", $kode->id_barang+1);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambahkan Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/tambah_barang',$attributes); 
          echo "<div class='col-md-5'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th scope='row'>Kode Barang</th>    
                    <td><input style='width:35%; display:inline-block' type='text' id='barang' value='$kode_barang' class='form-control input-sm' name='a'> 
                    <label generated='true' class='error' id='message'></label></td></tr>
                    <tr><th scope='row'>Nama Barang</th>    
                    <td><input type='text' class='form-control input-sm' name='b' required></td></tr>
                    <tr><th scope='row'>Merek/Brand</th>    
                    <td><input type='text' class='form-control input-sm' name='c' ></td></tr>
                    <tr><th scope='row'>Model/Type</th>    
                       
                    <td><input type='text' class='form-control input-sm' name='e' ></td></tr>
                    <tr><th scope='row'>Ukuran/Volume</th>    
                    <td><input type='text' class='form-control input-sm' name='f'></td></tr>
                    <tr><th scope='row'>Warna</th>    
                    <td><input type='text' class='form-control input-sm' name='g'></td></tr>
                    <tr><th scope='row'>Kategori</th>    
                    <td><select class='form-control input-sm' name='h' id='kategori' required>
                    <option value=''>- Pilih -</option>";
                    foreach ($kategori as $r) {
                   echo "<option value='$r[id_kategori]'>$r[nama_kategori]</option>";
                  }
                    echo "</select></td></tr>
                    



                    <tr><th scope='row'>Keterangan</th>    
                    <td><textarea class='form-control input-sm' name='n' style='height:40px'></textarea></td></tr>
                   
                    <tr class='$conf[sertakan_gambar]'><th scope='row'>Gambar</th>    
                    <td><input type='file' class='form-control input-sm' name='o'></td></tr>
                       
                    

                    <tr><th scope='row'>Satuan</th>   
                     <td>
                            <select style='padding:2px; display:inline-block; width:120px;' class='form-control input-sm' onchange=\"Satuanid(this)\" name='r'>";
                                foreach ($satuan  as $r) {
                                  if ($conf['kode_satuan']==$r['kode_satuan']){
                                    echo "<option value='$r[kode_satuan]' selected>$r[keterangan] ($r[kode_satuan])</option>";
                                  }else{
                                    echo "<option value='$r[kode_satuan]'>$r[keterangan] ($r[kode_satuan])</option>";
                                  }
                                }
                            echo "</select></td></tr>

                              </tbody>
                            </table>
                    </td></tr>
                  </tbody>
                  </table>
                </div>

               
                </div>

              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='". base_url() ."' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
            </div></form>";
