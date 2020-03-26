            <div class="col-xs-12">  
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Data Laporan Barang Jumlah Minimal</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php
                  echo "<table id='example2' class='table table-bordered table-striped table-condensed'>
                    <thead>
                     
                       
                      </tr>
                      <tr bgcolor='#e3e3e3'>
                        <th style='width:20px'>No</th>
                        <th>Kode Barang</th>
                        <th>Nama Barang</th>
                        <th>Kategori</th>
                        <th>Jumlah</th>
                        <th>Satuan</th>
                       
                      </tr>
                    </thead>
                    <tbody>";

                    $no = 1;
                    foreach ($record as $row){
                    $stok = $this->model_app->stok($row['id_barang'])->row_array();
                    $this->db->query("UPDATE mu_barang SET stok='$stok[stok]' where id_barang='$row[id_barang]'");
                    $harga1 = $this->model_app->view_one('mu_barang_harga',array('id_barang'=>$row['id_barang'], 'id_kategori_pelanggan'=>1, 'id_jenis_jual'=>'1'),'id_barang_harga')->row_array();
                    $harga2 = $this->model_app->view_one('mu_barang_harga',array('id_barang'=>$row['id_barang'], 'id_kategori_pelanggan'=>1, 'id_jenis_jual'=>'2'),'id_barang_harga')->row_array();
                    $harga3 = $this->model_app->view_one('mu_barang_harga',array('id_barang'=>$row['id_barang'], 'id_kategori_pelanggan'=>1, 'id_jenis_jual'=>'3'),'id_barang_harga')->row_array();
                    $harga4 = $this->model_app->view_one('mu_barang_harga',array('id_barang'=>$row['id_barang'], 'id_kategori_pelanggan'=>1, 'id_jenis_jual'=>'4'),'id_barang_harga')->row_array();
                    echo "<tr><td>$no</td>
                              <td>$row[kode_barang]</td>
                              <td>$row[nama_barang]</td>
                              <td>$row[nama_kategori]</td>
                              <td>".rupiah($stok['stok'])."</td>
                              <td>$row[kode_satuan]</td>
                              
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div>