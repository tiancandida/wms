<?php 
function cek_session_admin(){
	$ci = & get_instance();
	$session = $ci->session->userdata('level');
	if ($session == ''){
		redirect(base_url());
	}
}

    function tgl_indo($tgl){
        $tanggal = substr($tgl,8,2);
        $bulan = getBulan(substr($tgl,5,2));
        $tahun = substr($tgl,0,4);
        return $tanggal.' '.$bulan.' '.$tahun;       
    }

    function tgl_indoo($tgl){
        $bulan = getBulan(substr($tgl,0,2));
        $tahun = substr($tgl,3,4);
        return $bulan.' '.$tahun;       
    }

    function tgl_slash($tgl){
        $tanggal = substr($tgl,8,2);
        $bulan = substr($tgl,5,2);
        $tahun = substr($tgl,0,4);
        return $tanggal.'/'.$bulan.'/'.$tahun;       
    } 

    function tgl_grafik($tgl){
        $tanggal = substr($tgl,8,2);
        $bulan = getBulan(substr($tgl,5,2));
        $tahun = substr($tgl,0,4);
        return $tanggal.'_'.$bulan;       
    }   

    function tgl_standard($tgl){
        $tanggal = substr($tgl,0,2);
        $bulan = substr($tgl,3,2);
        $tahun = substr($tgl,6,9);
        return $tahun.'-'.$bulan.'-'.$tanggal;       
    } 

    function seo_title($s) {
        $c = array (' ');
        $d = array ('-','/','\\',',','.','#',':',';','\'','"','[',']','{','}',')','(','|','`','~','!','@','%','$','^','&','*','=','?','+','–');
        $s = str_replace($d, '', $s); // Hilangkan karakter yang telah disebutkan di array $d
        $s = strtolower(str_replace($c, '-', $s)); // Ganti spasi dengan tanda - dan ubah hurufnya menjadi kecil semua
        return $s;
    }

    function hari_ini($w){
        $seminggu = array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
        $hari_ini = $seminggu[$w];
        return $hari_ini;
    }

    function rupiah($total){
      if(is_numeric($total)==false){
        return 0;
      }elseif(trim($total)!=''){
        return number_format($total,0);
      }else{
        return 0;
      }
    }

    function getBulan($bln){
                switch ($bln){
                    case 1: 
                        return "Januari";
                        break;
                    case 2:
                        return "Februari";
                        break;
                    case 3:
                        return "Maret";
                        break;
                    case 4:
                        return "April";
                        break;
                    case 5:
                        return "Mei";
                        break;
                    case 6:
                        return "Juni";
                        break;
                    case 7:
                        return "Juli";
                        break;
                    case 8:
                        return "Agustus";
                        break;
                    case 9:
                        return "September";
                        break;
                    case 10:
                        return "Oktober";
                        break;
                    case 11:
                        return "November";
                        break;
                    case 12:
                        return "Desember";
                        break;
                }
            } 

function cek_terakhir($datetime, $full = false) {
		$today = time();    
                 $createdday= strtotime($datetime); 
                 $datediff = abs($today - $createdday);  
                 $difftext="";  
                 $years = floor($datediff / (365*60*60*24));  
                 $months = floor(($datediff - $years * 365*60*60*24) / (30*60*60*24));  
                 $days = floor(($datediff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));  
                 $hours= floor($datediff/3600);  
                 $minutes= floor($datediff/60);  
                 $seconds= floor($datediff);  
                 //year checker  
                 if($difftext=="")  
                 {  
                   if($years>1)  
                    $difftext=$years." Tahun";  
                   elseif($years==1)  
                    $difftext=$years." Tahun";  
                 }  
                 //month checker  
                 if($difftext=="")  
                 {  
                    if($months>1)  
                    $difftext=$months." Bulan";  
                    elseif($months==1)  
                    $difftext=$months." Bulan";  
                 }  
                 //month checker  
                 if($difftext=="")  
                 {  
                    if($days>1)  
                    $difftext=$days." Hari";  
                    elseif($days==1)  
                    $difftext=$days." Hari";  
                 }  
                 //hour checker  
                 if($difftext=="")  
                 {  
                    if($hours>1)  
                    $difftext=$hours." Jam";  
                    elseif($hours==1)  
                    $difftext=$hours." Jam";  
                 }  
                 //minutes checker  
                 if($difftext=="")  
                 {  
                    if($minutes>1)  
                    $difftext=$minutes." Menit";  
                    elseif($minutes==1)  
                    $difftext=$minutes." Menit";  
                 }  
                 //seconds checker  
                 if($difftext=="")  
                 {  
                    if($seconds>1)  
                    $difftext=$seconds." Detik";  
                    elseif($seconds==1)  
                    $difftext=$seconds." Detik";  
                 }  
                 return $difftext;  
	}



    function parse(){
        $rss = simplexml_load_file($this->feed);
        $rss_split = array();
        foreach ($rss->channel->item as $item) {
          $title = (string) $item->title; // Judul
          $link   = (string) $item->link; // Link URL
          $description = (string) $item->description; // Deskripsi  
          $rss_split[] = '
                <li style="padding: 0px 0;" class="item">
                  <div class="product-img">
                    <img class="img-circle img-thumbnail" src="http://localhost/lokomedia_ci/asset/admin/dist/img/users.gif" alt="Product Image">
                  </div>
                  <div class="product-info">
                    <a target="_BLANK" href="'.$link.'" class="product-title">'.$title.'
                      <span class="label label-warning pull-right">124 Kali</span></a>
                        <span class="product-description">
                          '.$description.'
                        </span>
                  </div>
                </li>';
        }
        return $rss_split;
    }
      
    function display($numrows,$head){
        $rss_split = $this->parse();
        $i = 0;
        $rss_data = '
        <div class="box box-warning">
            <div class="box-header with-border">
            <i class="fa fa-users"></i>
              <h3 class="box-title">'.$head.'</h3>
                <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>

            <div class="box-body">
              <ul class="products-list product-list-in-box">';
        while ( $i < $numrows ){
          $rss_data .= $rss_split[$i];
          $i++;
        }
        $trim = str_replace('', '',$this->feed);
        $user = str_replace('&lang=en-us&format=rss_200','',$trim);
        $rss_data.='</ul></div>
                    <div class="box-footer text-center">
                      <a href="https://members.phpmu.com/forum" class="uppercase">View All Topic</a>
                    </div></div>';
        return $rss_data;
    }



function terbilang($x){
  $abil = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
  if ($x < 12)
    return " " . $abil[$x];
  elseif ($x < 20)
    return Terbilang($x - 10) . " Belas";
  elseif ($x < 100)
    return Terbilang($x / 10) . " Puluh" . Terbilang($x % 10);
  elseif ($x < 200)
    return " Seratus" . Terbilang($x - 100);
  elseif ($x < 1000)
    return Terbilang($x / 100) . " Ratus" . Terbilang($x % 100);
  elseif ($x < 2000)
    return " Seribu" . Terbilang($x - 1000);
  elseif ($x < 1000000)
    return Terbilang($x / 1000) . " Ribu" . Terbilang($x % 1000);
  elseif ($x < 1000000000)
    return Terbilang($x / 1000000) . " Juta" . Terbilang($x % 1000000);
}