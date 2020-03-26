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
$kode = $this->db->query("SELECT id_pemilik FROM mu_pemilik ORDER BY id_pemilik DESC LIMIT 1")->row();
$kode_pemilik = "PEM-".sprintf("%06s", $kode->id_pemilik+1);
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambahkan Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/tambah_pemilik',$attributes); 
          echo "<div class='col-md-5'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>

                  <tr><th width='150px' scope='row'>Kode Pemilik</th>    
                    <td><input style='width:35%; display:inline-block' type='text' id='supplier' value='$kode_pemilik' class='form-control input-sm' name='a'> 
                    <label generated='true' class='error' id='message'></label></td></tr>
                    <input type='hidden' name='id' value=''>
                    <tr><th scope='row'>Kode Barang</th>   

<td><select name='b' class='combobox form-control' onchange=\"changeValue(this.value)\" required autofocus>
                                                                <option value=''> Cari Barang </option>";
                                                                $jsArray = "var prdName = new Array();\n";    
                                                                foreach ($barang as $rows){
                                                                    echo "<option value='$rows[id_barang]'>$rows[kode_barang] - $rows[nama_barang]</option>";
                                                                   
                                                                }
                                                             echo "</select></td>


                    
                    <tr><th scope='row'>Supplier</th>    
                    <td><select class='form-control input-sm' name='f' id='supplier'>
                    <option value=''>- Pilih -</option>";
                    foreach ($supplier  as $r) {
                    echo "<option value='$r[id_supplier]'>$r[nama_supplier]</option>";
                    }
                    echo "
                     </select></td></tr>

                    
                    
                    
                    

                    <tr><th scope='row'>Jumlah Stok</th>   
                     <td><input type='text' class='form-control input-sm' name='q' value=''  style='display:inline-block; width:50px; text-align:center; ' > 
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
            ?>


<script type="text/javascript">    
<?php echo $jsArray; ?>  
  function changeValue(id){  
    document.getElementById('namabarang').value = prdName[id].name;  
    document.getElementById('merek').value = prdName[id].merk;  
    document.getElementById('type').value = prdName[id].tipe;  
    document.getElementById('ukuran').value = prdName[id].ukr;  
    document.getElementById('warna').value = prdName[id].wrn;  
    document.getElementById('kategori').value = prdName[id].ktgr;  
  };  
</script> 
