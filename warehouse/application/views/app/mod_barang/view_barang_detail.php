<?php 
$stok = $this->model_app->stok($row['id_barang'])->row_array();
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('',$attributes); 
          echo "<div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_barang]'>
                    <tr><th width='150px' scope='row'>Kode Barang</th>    <td>$row[kode_barang]</td></tr>
                    <tr><th scope='row'>Nama Barang</th>   <td>$row[nama_barang]</td></tr>
                    <tr><th scope='row'>Merek/Brand</th>   <td>$row[merek_brand]</td></tr>
                    <tr><th scope='row'>Model/Type</th>    <td>$row[model_type]</td></tr>
                   
                    <tr><th scope='row'>Ukuran/Volume</th> <td>$row[ukuran_volume]</td></tr>
                    <tr><th scope='row'>Warna</th>         <td>$row[warna]</td></tr>
                    <tr><th scope='row'>Jumlah Stok</th>    <td>$stok[stok] $row[kode_satuan]</td></tr>
                     <tr><th scope='row'>Keterangan</th>     <td>$row[keterangan_barang]</td></tr>
                    
                  </tbody>
                  </table>
                </div>

                <div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    
                   
                    
                   
                   
                  </tbody>
                  </table>
                </div>

                
                </form>";
