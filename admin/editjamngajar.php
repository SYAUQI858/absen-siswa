<?php
 include '../db/koneksi.php';
 include 'akses.php';
 include '../layout/header.php'; ?>

 <div id="content">
 <div id="content-header">
   <div id="breadcrumb"> <a href="http://localhost/absensi2/<?php echo $_SESSION['akses']; ?>/" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
     <a href="http://localhost/absensi2/admin/jamngajar" class="tip-bottom">Jam Ngajar</a>
    <a href="http://localhost/absensi2/admin/jamngajar/add" class="current">Edit</a> </div>
   <h1>Edit Jam Ngajar</h1>
 </div>
 <div class="container-fluid">
   <hr>
   <div class="row-fluid">
     <div class="span12">

       <div class="widget-box">
         <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
           <h5>Edit Jam Ngajar</h5>
         </div>
         <div class="widget-content nopadding">
           <?php
           $query_pilih_tampil=mysqli_query($konek,"select * from jam_mengajar where id_jam_mengajar=$_GET[edit]");
           while($data_utama=mysqli_fetch_array($query_pilih_tampil)){
             ?>
           <form action="../../proses.php?edit_jamngajar=<?php echo $_GET['edit']; ?>" method="post" class="form-horizontal">
             <div class="control-group">
               <label class="control-label">Pilih Guru :</label>
               <div class="controls">
                 <select name="id_guru">
                   <?php
                   $query=mysqli_query($konek,"SELECT * FROM guru WHERE id_guru=$data_utama[id_guru]");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_guru]'>$data[nama]</option>";
                   }
                   $query=mysqli_query($konek,"SELECT * FROM guru");
                   while ($data=mysqli_fetch_array($query)) {
                     if ($data['id_guru']==$data_utama['id_guru']) {
                       continue;
                     }
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
                   $query=mysqli_query($konek,"SELECT * FROM kelas WHERE id_kelas=$data_utama[id_kelas]");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_kelas]'>$data[nama_kelas]</option>";
                   }
                   $query=mysqli_query($konek,"SELECT * FROM kelas");
                   while ($data=mysqli_fetch_array($query)) {
                     if ($data['id_kelas']==$data_utama['id_kelas']) {
                       continue;
                     }
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
                   $query=mysqli_query($konek,"SELECT * FROM pelajaran WHERE id_pelajaran=$data_utama[id_pelajaran]");
                   while ($data=mysqli_fetch_array($query)) {
                     echo "<option value='$data[id_pelajaran]'>$data[mata_pelajaran]</option>";
                   }
                   $query=mysqli_query($konek,"SELECT * FROM pelajaran");
                   while ($data=mysqli_fetch_array($query)) {
                     if ($data['id_pelajaran']==$data_utama['id_pelajaran']) {
                       continue;
                     }
                     echo "<option value='$data[id_pelajaran]'>$data[mata_pelajaran]</option>";
                   }
                   ?>
                 </select>
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Jumlah Jam Ngajar Perpekan :</label>
               <div class="controls">
                 <input type="number" class="span11" placeholder="Jumlah Jam Ngajar Perpekan"name="jamngajar" value="<?PHP echo $data_utama['jam']; ?>"/>
               </div>
             </div>
             <div class="form-actions">
               <button type="submit" class="btn btn-success">Save</button>
               <button type="reset" class="btn btn-warning">Reset</button>
             </div>
           </form>
           <?php } ?>
         </div>
       </div>
     </div>
   </div>
 </div>
</div>

 <?php include '../layout/footer.php'; ?>
