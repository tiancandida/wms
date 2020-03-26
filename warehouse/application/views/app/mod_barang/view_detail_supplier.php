<?php 
$stok = $this->model_app->stok($row['id_supplier'])->row_array();
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('',$attributes); 
          echo "<div class='col-md-6'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_supplier]'>
                    <tr><th width='150px' scope='row'>Kode Supplier</th>    <td>$row[id_supplier]</td></tr>
                    <tr><th scope='row'>Nama Barang</th>   <td>$row[nama_supplier]</td></tr>
                    
                  </tbody>
                  </table>
                </div>

                
                    
                  </tbody>
                  </table>
                </div>

                
                </form>";
