<?php
    session_start();
    if(isset($_SESSION['level'])){
        if($_SESSION['level'] == NULL){
            header('Location: login.php');
        }
    }else{
        header('Location: login.php');
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Website Universitas Udayana</title>
  <link rel="stylesheet" href="style.css" />
</head>

<body>
  <div class="left-panel">
    <section class="logo">
      <img class="logounud" src="gambar/logo.png" alt="Logo.png" height="150px" />
    </section>
    <section class="sub-panel">
      <h3>ARTIKEL POPULER</h3>
    </section>
    <section class="sub-panel-1">
      <a href="#" style="text-decoration: none;">
        <h4>Desain Web</h4>
      </a>
    </section>
    <section class="sub-panel-1">
      <a href="#" style="text-decoration: none;">
        <h4>HTML</h4>
      </a>
    </section>
    <section class="sub-panel-1">
      <a href="#" style="text-decoration: none;">
        <h4>CSS</h4>
      </a>
    </section>
    <section class="sub-panel-1">
      <a href="#" style="text-decoration: none;">
        <h4>Lain-lain</h4>
      </a>
    </section>
  </div>
  <div class="right-panel">

    <section class="cover"></section>

    <section class="navbar">
      <ul>
        <li>
          <a href="kontak.php" style="text-decoration: none;">
            <h3>KONTAK</h3>
          </a>
        </li>
        <li>
          <a href="pengajar.php" style="text-decoration: none;">
            <h3>PENGAJAR</h3>
          </a>
        </li>
        <li>
          <a href="tentang.php" style="text-decoration: none;">
            <h3>TENTANG</h3>
          </a>
        </li>
        <li>
          <a href="index.php" style="text-decoration: none;">
            <h3>HOME</h3>
          </a>
        </li>
        <li>
          <a href="logout.php" style="text-decoration: none; color: #4978D6;">
            <h3>LOGOUT</h3>
          </a>
        </li>
        <li>
          <a href="login.php" style="text-decoration: none; color: #4978D6;">
            <h3>LOGIN</h3>
          </a>
        </li>
      </ul>
    </section>

    

    <section class="deskripsi">
      <h1 style="text-align: center;color: #065279;">Selamat Datang <i><a style="color: #4978D6;"><?php echo $_SESSION['nama']; ?></a></i> di Website Universitas Udayana </h1>
      <h2 style="color: rgb(0, 0, 139);">Berita terkini</h2>
      <img style="width: 300px; float: left; margin-right: 20px; margin-bottom: 30px;" src="gambar/berita.jpg" alt="?">
      <p>Senin (16/3/2020) bertempat di Gedung Rektorat Kampus Jimbaran, Rektor Unud Prof. A.A Raka Sudewi menggelar rapat dengan Para Wakil Rektor, Ketua LPPM, Tim Mitigasi Bencana Unud, Kepala Biro Umum dan Direktur RS Unud untuk mengawal Instruksi Rektor Nomor 1 Tahun 2020 tentang Pencegahan Perkembangan dan Penyebaran Corona Virus Disease (COVID-19) di Universitas Udayana. Dalam kesempatan tersebut .....</p>
      <a target="_blank" href="https://www.unud.ac.id/in/berita3301-Rektor-Unud-Bentuk-Satgas-untuk-Memantau-Kondisi-Perkembangan-dan-Dampak-Penyebaran-Corona-Virus-Bagi-Universitas-Udayana.html">Baca Selengkapnya</a>
      <h2 style="color: rgb(0, 0, 139); clear: both;">Galeri</h2>
      <img style="width: 300px; height: 200px; float: left; margin-right: 20px; margin-bottom: 30px;"
        src="gambar/1.jpg" alt="?">
      <img style="width: 300px; height: 200px; float: left; margin-right: 20px; margin-bottom: 30px;"
        src="gambar/2.jpg" alt="?">
      <img style="width: 300px; height: 200px; float: left; margin-right: 20px; margin-bottom: 30px;"
        src="gambar/3.jpg" alt="?">
      <img style="width: 300px; height: 200px; float: left; margin-right: 20px; margin-bottom: 30px;"
        src="gambar/4.jpg" alt="?">
    </section>
  </div>
  <div class="footer">
    <h2>UNIVERSITAS UDAYANA</h1>
      <h4>Jl. Raya Kampus UNUD, Bukit Jimbaran, Kuta Selatan, Badung-Bali-803611</h4>
      <h4>Phone Number: +62 (361) 701954, 704845</h4>
      <h4>Fax: +62 (361) 701907</h4>
      <h4>Email: info@unud.ac.id</h4>
  </div>
</body>

</html>