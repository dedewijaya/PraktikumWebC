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
            <img class="logounud" src="gambar/logo.png" alt="?" height="150px" />
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
            </ul>
        </section>

        <section class="deskripsi">
            <h1>Pembuat Web</h1>
            <div class="garis"></div>
            <h2>I Gede Bagus Semara Wijaya</h2>
            <img style="width: 30px; float: left; margin-right: 20px;" src="gambar/wa.png" alt="?">
            <h2>No. Telp : 082147459203</h2>
            <img style="width: 30px; float: left; margin-right: 20px;" src="gambar/email.png" alt="?">
            <h2>Email : gedebagus097@gmail.com</h2>
            <img style="width: 30px; float: left; margin-right: 20px;" src="gambar/line.png" alt="?">
            <h2>Id Line : @dedewijaya17</h2>
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