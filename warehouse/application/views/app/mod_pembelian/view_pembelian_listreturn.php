            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Barang Keluar</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php
                  echo "<table id='example1' class='table table-bordered table-striped table-condensed'>
                    <thead>
                      <tr bgcolor='#e3e3e3'>
                        <th colspan='2'></th>
                        <th colspan='2'><center>Tanggal</center></th>
                        <th colspan='6'></th>
                      </tr>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>No Barang Keluar</th>
                        <th width='80px'>Barang Keluar</th>
                        <th width='80px'>Kirim</th>
                        
                        <th>Supplier</th>
                        <th>Petugas</th>
                        
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>";

                    $no = 1;
                    foreach ($record->result_array() as $row){
                    //$nort = $this->db->query("SELECT id_pembelian_return FROM mu_pembelian_return ORDER BY id_pembelian_return DESC LIMIT 1")->row();
                    $rows = $this->db->query("SELECT sum(harga_return*jml_return) as jml_bayar FROM mu_pembelian_return_detail where id_pembelian_return='$row[id_pembelian_return]'")->row_array();
                    echo "<tr><td>$no</td>
                              <td>$row[no_return]</td>
                              <td>".tgl_slash($row['tanggal_return'])."</td>
                              <td>".tgl_slash($row['tgl_kirim_return'])."</td>
                              
                              <td>$row[nama_supplier]</td>
                              <td>$row[nama_karyawan]</td>
                              
                              <td><center>
                                <a class='btn btn-info btn-xs' target='_BLANK' title='Cetak / Print' href='".base_url()."app/print_pembelian_return/$row[id_pembelian_return]'><span class='glyphicon glyphicon-print'></span></a>
                                <a class='btn btn-warning btn-xs' title='Edit Data' href='".base_url()."app/edit_pembelian_return/$row[id_pembelian_return]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."app/delete_pembelian_return/$row[id_pembelian_return]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>