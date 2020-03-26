        <?php $users = $this->model_app->edit('mu_karyawan', array('id_karyawan' => $this->session->id_users))->row_array(); ?>
        <section class="sidebar">

          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo base_url()."asset/images/$users[foto_karyawan]" ?>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><?php echo $users['nama_karyawan']; ?></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header" style='color:#fff; text-transform:uppercase; border-bottom:2px solid #00c0ef'>MENU KASIR</li>
            <li><a href="<?php echo base_url(); ?>app/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-archive"></i> <span>Barang</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>app/barang"><i class="fa fa-circle-o"></i> Daftar Barang</a></li>
                <li><a href="<?php echo base_url(); ?>app/promosi"><i class="fa fa-circle-o"></i> Daftar Promosi</a></li>
                <li><a href="<?php echo base_url(); ?>app/penyesuaian"><i class="fa fa-circle-o"></i> Daftar Penyesuaian</a></li>
                <li><a href="<?php echo base_url(); ?>app/barcode"><i class="fa fa-circle-o"></i> Label Barcode</a></li>
                <li><a href="<?php echo base_url(); ?>app/barang/ya"><i class="fa fa-circle-o"></i> Dijual</a></li>
                <li><a href="<?php echo base_url(); ?>app/barang/tidak"><i class="fa fa-circle-o"></i> Tidak Dijual</a></li>
              </ul>
            </li>

            <li class="treeview">
              <a href="#"><i class="glyphicon glyphicon-shopping-cart"></i> <span>Penjualan</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>app/transaksi_penjualan"><i class="fa fa-circle-o"></i> Transaksi Penjualan <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
                  <ul class="treeview-menu menu-open">
                    <li><a href="<?php echo base_url(); ?>app/transaksi_sekarang"><i class="fa fa-circle-o"></i> Sekarang</a></li>
                    <li><a href="<?php echo base_url(); ?>app/transaksi_penjualan_tunggu"><i class="fa fa-circle-o"></i> Tunggu</a></li>
                  </ul>
                </li>
                <li><a href="<?php echo base_url(); ?>app/transaksi_return_penjualan"><i class="fa fa-circle-o"></i> Return Penjualan</a></li>
                <li><a href="<?php echo base_url(); ?>app/daftar_penjualan"><i class="fa fa-circle-o"></i> Daftar Penjualan <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
                  <ul class="treeview-menu menu-open">
                    <li><a href="<?php echo base_url(); ?>app/list_transaksi_penjualan"><i class="fa fa-circle-o"></i> Jual</a></li>
                    <li><a href="<?php echo base_url(); ?>app/list_transaksi_return"><i class="fa fa-circle-o"></i> Return</a></li>
                  </ul>
                </li>
                <!--<li><a href="<?php echo base_url(); ?>app/piutang_dagang"><i class="fa fa-circle-o"></i> Piutang Dagang</a></li>-->
              </ul>
            </li>

            <li class="treeview">
              <a href="#"><i class="fa fa-cart-plus"></i> <span>Pembelian</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?php echo base_url(); ?>app/pembelian"><i class="fa fa-circle-o"></i> Daftar Pembelian</a></li>
                <li><a href="<?php echo base_url(); ?>app/pembelian_terima"><i class="fa fa-circle-o"></i> Daftar Terima</a></li>
                <li><a href="<?php echo base_url(); ?>app/pembelian_return"><i class="fa fa-circle-o"></i> Daftar Return</a></li>
                <!--<li><a href="<?php echo base_url(); ?>app/hutang_dagang"><i class="fa fa-circle-o"></i> Hutang Dagang</a></li>-->
              </ul>
            </li>
            <li><a href="<?php echo base_url(); ?>app/edit_karyawan/<?php echo $this->session->id_users; ?>"><i class="glyphicon glyphicon-user"></i> <span>Edit Profile</span></a></li>
            <li><a href="<?php echo base_url(); ?>app/logout"><i class="glyphicon glyphicon-off"></i> <span>Logout</span></a></li>
          </ul>
        </section>