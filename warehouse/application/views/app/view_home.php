<?php if ($this->session->level == 'admin'){ ?> 
  <a style='color:#000' href='<?php echo base_url(); ?>app/list_transaksi_penjualan'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-aqua"><i class="ion ion-ios-cart-outline"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Penjualan</span>
        <?php $jmla = $this->db->query("SELECT * FROM mu_transaksi where status='selesai'")->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmla ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url(); ?>app/pembelian'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-green"><i class="fa fa-cart-plus"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Pembelian</span>
        <?php $jmlb = $this->db->query("SELECT * FROM mu_pembelian")->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmlb ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url(); ?>app/barang'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-yellow"><i class="fa fa-archive"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Barang</span>
        <?php $jmlc = $this->db->query("SELECT * FROM mu_barang")->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmlc ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>

  <a style='color:#000' href='<?php echo base_url(); ?>app/pelanggan'>
  <div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
      <span class="info-box-icon bg-red"><i class="ion ion-ios-people-outline"></i></span>
      <div class="info-box-content">
        <span class="info-box-text">Pelanggan</span>
        <?php $jmld = $this->db->query("SELECT * FROM mu_pelanggan")->num_rows(); ?>
        <span class="info-box-number"><?php echo $jmld ?></span>
      </div><!-- /.info-box-content -->
    </div><!-- /.info-box -->
  </div><!-- /.col -->
  </a>
<?php } ?>
  <div style='clear:both'></div>

  <div class='col-md-7'>
      <div class='box'>
        <div class='box-header'>
          <h3 class='box-title'>Application Buttons</h3>
        </div>
        <div class='box-body'>
          <p>Silahkan klik menu pilihan yang berada di sebelah kiri untuk mengelola data-data pada aplikasi ini : </p>

        </div>
      </div>
  </div>

<?php 
$users = $this->model_app->edit('mu_karyawan', array('id_karyawan' => $this->session->id_users))->row_array();
  echo "<div class='col-md-5'>
      <div class='box'>
        <div class='box-header'>
          <h3 class='box-title'>Identitas Login</h3>
        </div>
        <div class='box-body'>
        <div class='box box-widget widget-user'>
            <div class='widget-user-header bg-aqua-active'>
              <h3 class='widget-user-username'>$users[nama_karyawan]</h3>
              <h5 class='widget-user-desc'>". $this->session->userdata('level') ."</h5>
            </div>
            <div class='widget-user-image'>
              <img class='img-circle' src='".base_url()."asset/images/$users[foto_karyawan]' alt='User Avatar'>
            </div>
            <div class='box-footer' style='padding-bottom:0px'>
              <div class='row'>
                <center><br>
                <p style='width:90%'>Haloo Selamat datang!, Silahkan mengelola data-data melalui menu-menu yang sudah tersedia pada bagian sebelah kiri halaman ini : </p>
                </center>
              </div>
            </div>
          </div>
          <dl class='dl-horizontal'>
                <dt>Nama Lengkap</dt>
                <dd>$users[nama_karyawan]</dd>

                <dt>Alamat Email</dt>
                <dd>$users[email_karyawan]</dd>

                <dt>No. Handphone</dt>
                <dd>$users[hp_karyawan]</dd>

                <dt>Alamat Lengkap</dt>
                <dd>$users[alamat_karyawan_1]</dd>

              </dl>
              <a class='btn btn-block btn-sm btn-default' href='".base_url()."app/edit_karyawan/".$this->session->id_users."'>Edit Data Profile</a><br>";
        ?>
          

        </div>
      </div>
   </div>
            