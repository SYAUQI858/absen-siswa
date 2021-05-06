<?php
 include '../db/koneksi.php';
 include 'akses.php';
 include '../layout/header.php'; ?>

 <div id="content">
 <div id="content-header">
   <div id="breadcrumb"> <a href="http://localhost/absensi2/<?php echo $_SESSION['akses']; ?>/" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
     <a href="http://localhost/absensi2/admin/jamngajar" class="tip-bottom">Jam Ngajar</a>
    <a href="http://localhost/absensi2/admin/jamngajar/add" class="current">Tambah</a> </div>
   <h1>Tambah Jam Ngajar</h1>
 </div>
 <div class="container-fluid">
   <hr>
   <div class="row-fluid">
     <div class="span12">

       <div class="widget-box">
         <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
           <h5>Tambah Jam Ngajar</h5>
         </div>
         <div class="widget-content nopadding">
           <form action="../../proses.php?kategori=jamngajar" method="post" class="form-horizontal">
             <div class="control-group">
               <label class="control-label">Pilih Guru :</label>
               <div class="controls">
                 <select name="id_guru">
                   <?php
                   $query=mysqli_query($konek,"SELECT * FROM guru");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_guru]'>$data[nama]</option>";
                   }
                   ?>
                 </select>
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Pilih Kelas :</label>
               <div class="controls">
                 <select name="id_kelas">
                   <?php
                   $query=mysqli_query($konek,"SELECT * FROM kelas");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_kelas]'>$data[nama_kelas]</option>";
                   }
                   ?>
                 </select>
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Pilih Pelajaran :</label>
               <div class="controls">
                 <select name="id_pelajaran">
                   <?php
                   $query=mysqli_query($konek,"SELECT * FROM pelajaran");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_pelajaran]'>$data[mata_pelajaran]</option>";
                   }
                   ?>
                 </select>
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Jumlah Jam Ngajar Perpekan :</label>
               <div class="controls">
                 <input type="number" class="span11" placeholder="Jumlah Jam Ngajar Perpekan"name="jamngajar" />
               </div>
             </div>
             <div class="form-actions">
               <button type="submit" class="btn btn-success">Save</button>
               <button type="reset" class="btn btn-warning">Reset</button>
             </div>
           </form>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>

 <?php include '../layout/footer.php'; ?>
