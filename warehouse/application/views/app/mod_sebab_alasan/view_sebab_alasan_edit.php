<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('app/edit_sebab_alasan',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value='$row[id_sebab_alasan]'>
                    <tr><th width='120px' scope='row'>Sebab Alasan</th>    <td><input type='text' class='form-control' name='a' value='$row[nama_sebab_alasan]' required></td></tr>
                    <tr><th scope='row'>Keterangan</th>    <td><textarea class='form-control' name='b'>$row[keterangan]</textarea></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='". base_url() ."' class='btn btn-default pull-right'>Cancel</a>
                    
                  </div>
            </div></form>";