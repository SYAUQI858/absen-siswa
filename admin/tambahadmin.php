<?php
 include '../db/koneksi.php';
 include 'akses.php';
 include '../layout/header.php'; ?>

 <div id="content">
 <div id="content-header">
   <div id="breadcrumb"> <a href="http://localhost/absensi2/<?php echo $_SESSION['akses']; ?>/" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
     <a href="http://localhost/absensi2/admin/admin" class="tip-bottom">Admin</a>
     <a href="http://localhost/absensi2/admin/add" class="current">Tambah</a> </div>
   <h1>Tambah Admin</h1>
 </div>
 <div class="container-fluid">
   <hr>
   <div class="row-fluid">
     <div class="span12">

       <div class="widget-box">
         <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
           <h5>Personal-info</h5>
         </div>
         <div class="widget-content nopadding">
           <form action="../proses.php?kategori=admin" method="post" class="form-horizontal">
             <div class="control-group">
               <label class="control-label">Name Lengkap:</label>
               <div class="controls">
                 <input type="text" class="span11" placeholder="Nama Lengkap"name="nama" />
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Username:</label>
               <div class="controls">
                 <input type="text" class="span11" placeholder="Username"name="username" />
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Password:</label>
               <div class="controls">
                 <input type="password" class="span11" placeholder="Password"name="password" />
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Email:</label>
               <div class="controls">
                 <input type="email" class="span11" placeholder="Email"name="email" />
               </div>
             </div>
             <div class="control-group">
               <label class="control-label">Hak Akses:</label>
               <div class="controls">
                 <select  name="akses">
                   <option value="admin">Admin</option>
                   <option value="petugas_piket">Petugas piket</option>
                   <option value="kesiswaan">Kesiswaan</option>
                   <option value="koordinator">Koordinator</option>
                 </select>
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
