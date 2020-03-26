<style type="text/css">
  .anu tbody td {
    padding:3px !important;
    border:1px solid #e3e3e3;
  }
</style>
<?php 
$nort = $this->db->query("SELECT id_pembelian_return FROM mu_pembelian_return ORDER BY id_pembelian_return DESC LIMIT 1")->row();
$no_return = "BK-".sprintf("%06s", $nort->id_pembelian_return+1);

    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambahkan Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/tambah_barang_keluar',$attributes); 

              if ($this->session->id_pembelian != ''){
                $a = $row['no_return'];
                $g = tgl_slash($row['tanggal_return']);
                //$c = $row['id_karyawan'];
                //$d = $row['id_supplier']; 
                $e = $row['id_type_bayar'];
                $f = $row['keterangan_return']; 
                $b = tgl_slash($row['tgl_kirim_return']); 
                $h = '';
                //$i = $row['referensi']; 
                //$j = $row['kepada_attention'];
              }else{
                $a = $no_return;
                $g = tgl_slash(date('Y-m-d'));
                $c = '';
                $d = ''; 
                $e = '1';
                $f = ''; 
                $b = tgl_slash(date('Y-m-d'));
                $h = '';
                $i = ''; 
                $j = '';
              }
                
              

          echo "<div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='150px' scope='row'>No. Barang Keluar</th>   
                     <td><input type='text' style='width:40%; display:inline-block' class='form-control' id='return' name='a' value='$a'> 
                                                                                <label generated='true' class='error' id='message'></label></td></tr>
                    <tr><th width='150px' scope='row'>Tanggal Barang Keluar</th>    <td><input type='text' id='datepickerr' class='form-control' name='g' value='$g' required></td></tr>
                    
                    <tr><th scope='row'>Type bayar</th>    <td><select name='e' class='form-control'>"; 
                                                                foreach ($type_bayar as $rows){
                                                                  if ($e == $rows['id_type_bayar']){
                                                                    echo "<option value='$rows[id_type_bayar]' selected>$rows[nama_type_bayar]</option>";
                                                                  }else{
                                                                    echo "<option value='$rows[id_type_bayar]'>$rows[nama_type_bayar]</option>";
                                                                  }
                                                                }
                                                             echo "</select></td></tr>
                    <tr><th scope='row'>Keterangan</th>    <td><textarea class='form-control' name='f' style='height:60px'>$f</textarea></td></tr>
                  </tbody>
                  </table>
                </div>

                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th scope='row'>Tanggal Kirim </th>    <td><input type='text' id='datepicker' class='form-control' name='b' value='$b' required></td></tr>
                   


                    
                  </tbody>
                  </table>
                </div>

                <table class='table table-bordered table-striped'>
                      <thead>
                        <tr bgcolor='#e3e3e3'>
                          <th width='20px'>No</th>
                          <th>Nama Barang</th>
                          <th width='80px'>Jml</th>
                          <th width='80px'>Sat</th>
                         
                          <th width='100px'>Rak</th>
                           <th width='100px'>Stok</th>
                          

                          
                          <th style='width:50px'>Action</th>
                        </tr>

                        <tr>
                          <td></td>
                          <td><select name='aa' class='combobox form-control' onchange=\"changeValue(this.value)\" required autofocus>
                                                                <option value=''> Cari Barang </option>";
                                                                $jsArray = "var prdName = new Array();\n";    
                                                                foreach ($barang as $rows){
                                                                    echo "<option value='$rows[id_barang]'>$rows[kode_barang] - $rows[nama_barang]</option>";
                                                                    $jsArray .= "prdName['" . $rows['id_barang'] . "'] = {name:'".addslashes($rows['id_rak'])."', name1:'".addslashes($rows['stok'])."' ,desc:'".addslashes($rows['kode_satuan'])."'};\n";
                                                                }
                                                             echo "</select></td>
                          <td><input class='form-control' type='number' name='bb'></td>
                          <td><input class='form-control' type='text' name='cc' id='satuan' readonly='on'> </td>
                         
                           <td><input class='form-control' type='text' name='ee'  id='rak' > </td>
                          <td><input class='form-control' type='text' name='ff'  id='stok' readonly='on'> </td>

                          <td><button type='submit' name='submit' class='btn btn-success'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></button></td>
                        </tr>
                        </thead>
                      <tbody>";

                        $no = 1;
                        $penyesuaian_detail = $this->db->query("SELECT * FROM mu_pembelian_return_detail a JOIN mu_barang b ON a.id_barang=b.id_barang where a.id_pembelian_return='".$this->session->id_pembelian_return."' ORDER BY a.id_pembelian_return_detail DESC");
                        foreach ($penyesuaian_detail->result_array() as $r){
                          echo "<tr>
                                <td>$no</td>
                                <td>$r[nama_barang]</td>
                                <td>$r[jml_return]</td>
                                <td>$r[kode_satuan]</td>
                                

                               
                               
                                
                                <td>$r[jml_return]</td>
                                <td>$r[stok]</td>
                               <td align=center><a href='".base_url()."app/delete_pembelian_detail1/$r[id_pembelian_return_detail]' class='text-danger'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></td>
                              </tr>";
                          $no++;
                        }
                        $tot = $this->db->query("SELECT sum(jml_return) as tjumlah FROM `mu_pembelian_return_detail` where id_pembelian_return='".$this->session->id_pembelian_return."'")->row_array();
                      echo "</tbody>
                      <tr class='alert alert-danger'>
                          <td colspan='2' align=right>Jumlah Total</td>
                          <td>".rupiah($tot['tjumlah'])."</td>
                          <td></td>
                         <td></td>
                         <td></td>
                          
                          <td></td>

                      </tr>
                  </table>

              </div>
              <div class='box-footer'>
                    <a href='".base_url()."app/pembelian_return'><button type='button' class='btn btn-info'>Proses dan Selesai</button></a>
                    <a href='".base_url()."app/delete_pembelian/".$this->session->id_pembelian_return."'><button type='button' class='btn btn-default'>Batal</button></a>
                  </div>
            </div></form>";
?>

<script type="text/javascript">    
<?php echo $jsArray; ?>  
  function changeValue(id){  
    document.getElementById('rak').value = prdName[id].name;  
    document.getElementById('stok').value = prdName[id].name1;
    document.getElementById('satuan').value = prdName[id].desc;  
  };  
</script> 
