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
            <div class="polaroid">
                <img src="gambar/mark.jpg" alt="?" style="width:250px">
                <div class="container">
                    <h3>NAMA </h3>
                    <p style="font-size: 17px;">Putu Mark</p>
                    <h3>NIDN</h3>
                    <p style="font-size: 17px;">0123456789</p>
                </div>
            </div>
            <div class="polaroid">
                <img src="gambar/bill.jpg" alt="?" style="width:250px">
                <div class="container">
                    <h3>NAMA </h3>
                    <p style="font-size: 17px;">Wayan Bill</p>
                    <h3>NIDN</h3>
                    <p style="font-size: 17px;">0123456789</p>
                </div>
            </div>
            <div class="polaroid">
                <img src="gambar/jack.jpg" alt="?" style="width:250px">
                <div class="container">
                    <h3>NAMA </h3>
                    <p style="font-size: 17px;">Gede Jack Ma</p>
                    <h3>NIDN</h3>
                    <p style="font-size: 17px;">0123456789</p>
                </div>
            </div>
            <div class="polaroid">
                <img src="gambar/jeff.jpg" alt="?" style="width:250px">
                <div class="container">
                    <h3>NAMA </h3>
                    <p style="font-size: 17px;">Ketut Jeff Bezos</p>
                    <h3>NIDN</h3>
                    <p style="font-size: 17px;">0123456789</p>
                </div>
            </div>
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