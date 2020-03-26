<div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Pemilik Barang</h3>
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url(); ?>app/tambah_pemilik'>Tambahkan Data</a>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped table-condensed">
                    <thead>
                      <tr>
                        <th style='width:20px'>No</th>
                       

                        <th>Kode Pemilk</th>
                        
                        <th>ID Barang</th>
                        <th> Supplier</th>
                        <th> Stok</th>

                        <th style='width:50px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    echo "<tr><td>$no</td>
                              
                            <td>$row[kode_pemilik]</td>
                              
                              <td><a href='#' class='detail-barang' data-id='$row[id_barang]' title='Detail Barang $row[id_barang]'>$row[id_barang]</a> </td>
                              <td><a href='#' class='detail-supplier' data-id='$row[id_supplier]' title='Detail Supplier $row[id_supplier]'>$row[id_supplier]</a></td>


                              <td>$row[jumlah]</td>
                             
                              
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url()."app/edit_pemilik/$row[id_pemilik]'><span class='glyphicon glyphicon-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."app/delete_pemilik/$row[id_pemilik]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>