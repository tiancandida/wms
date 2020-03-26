            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Daftar Terima DO</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php
                  echo "<table id='example1' class='table table-bordered table-striped table-condensed'>
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th colspan='2'></th>
                        <th colspan='2'><center>Tanggal</center></th>
                        <th colspan='5'></th>
                      </tr>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>No Terima DO</th>
                        
                        <th width='80px'>DO</th>
                        <th>No DO</th>
                        <th>Supplier</th>
                        
                        <th>Penerima</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>";

                    $no = 1;
                    foreach ($record->result_array() as $row){
                    echo "<tr><td>$no</td>
                              <td><a href='".base_url()."app/return_pembelian/$row[id_pembelian_terima]' data-id='$row[no_pembelian_terima]'>$row[no_pembelian_terima]</td>
                              
                              <td>".tgl_slash($row['tgl_pembelian'])."</td>
                              <td>$row[kode_pembelian]</td>
                              <td>$row[nama_supplier]</td>
                             
                              <td>$row[nama_karyawan]</td>
                              <td><center>
                                <a class='btn btn-primary btn-xs' title='Barang Keluar' href='".base_url()."app/return_pembelian/$row[id_pembelian_terima]'><span class='fa fa-bus'></span></a>
                                <a class='btn btn-info btn-xs' target='_BLANK' title='Cetak / Print' href='".base_url()."app/print_pembelian_terima/$row[id_pembelian_terima]'><span class='glyphicon glyphicon-print'></span></a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url()."app/edit_pembelian_terima/$row[id_pembelian_terima]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."app/delete_pembelian_terima/$row[id_pembelian_terima]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>