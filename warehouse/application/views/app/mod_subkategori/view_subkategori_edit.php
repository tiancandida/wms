<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/edit_subkategori',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_subkategori]'>
                    <tr><th width='150px' scope='row'>Nama Pemilik</th>    <td><select class='form-control' name='a' required>
                                                                                  <option value=''>- Pilih -</option>";
                                                                                  foreach ($record as $rows) {
                                                                                    if ($rows['id_kategori']==$row['id_kategori']){
                                                                                      echo "<option value='$rows[id_kategori]' selected>$rows[nama_kategori]</option>";
                                                                                    }else{
                                                                                      echo "<option value='$rows[id_kategori]'>$rows[nama_kategori]</option>";
                                                                                    }
                                                                                  }
                                                                                echo "</select></td></tr>
                    <tr><th scope='row'>Nama Subkategori</th>    <td><input type='text' class='form-control' name='b' value='$row[nama_subkategori]' required></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='". base_url() ."' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
            </div></form>";