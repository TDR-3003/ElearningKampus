<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> E-Learning</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content='width=device-width, initial-scale=1, maximum-scale=10, user-scalable=yes' name='viewport'>
	<meta name="description" content="E-Learning">
	<meta name="keywords" content="E-Learning">
	<meta name="author" content="Dedi Rosadi">
    <!-- Bootstrap 3.3.4 -->
    <link href="<?php echo base_url(); ?>public/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="<?php echo base_url(); ?>public/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="<?php echo base_url(); ?>public/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<?php echo base_url(); ?>public/plugins/adminlte/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to #ed1e28uce the load. -->
    <link href="<?php echo base_url(); ?>public/plugins/adminlte/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- DATA TABLES -->
    <link href="<?php echo base_url(); ?>public/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url(); ?>public/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet" type="text/css" />

    <link href="<?php echo base_url(); ?>public/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url(); ?>public/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />

    <!-- summernote dimatikan
    <link href="<?php echo base_url(); ?>public/plugins/summernote/summernote.css" rel="stylesheet" type="text/css" />
    -->

    <link href="<?php echo base_url(); ?>public/plugins/pnotify/pnotify.custom.min.css" rel="stylesheet" type="text/css" />
    <!-- daterange picker -->
    <link href="<?php echo base_url(); ?>public/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />

    <!-- select2 -->
    <link href="<?php echo base_url(); ?>public/plugins/select2-4.0.5/css/select2.min.css" rel="stylesheet" type="text/css" />


    
    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url(); ?>public/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<?php echo base_url(); ?>public/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='<?php echo base_url(); ?>public/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url(); ?>public/plugins/adminlte/js/app.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="<?php echo base_url(); ?>public/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="<?php echo base_url(); ?>public/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	
	 <!-- ChartJS 1.0.1 -->
    <script src="<?php echo base_url(); ?>public/app.js" type="text/javascript"></script>

    <script src="<?php echo base_url(); ?>public/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>public/plugins/datatables/dataTables.reload.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>public/plugins/datatables/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>public/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <script src="<?php echo base_url(); ?>public/plugins/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>public/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url(); ?>public/plugins/adminlte/js/demo.js" type="text/javascript"></script>
    
    <!-- summernote dimatikan
    <script src="<?php echo base_url(); ?>public/plugins/summernote/summernote.js" type="text/javascript"></script>
    -->

    <script src="<?php echo base_url(); ?>public/plugins/pnotify/pnotify.custom.min.js" type="text/javascript"></script>

    <!-- datetimerange -->
    <script src="<?php echo base_url(); ?>public/plugins/daterangepicker/moment.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>public/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

    <!-- ckeditor -->
    <script src="<?php echo base_url(); ?>public/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
    
    <!-- select2 -->
    <script src="<?php echo base_url(); ?>public/plugins/select2-4.0.5/js/select2.min.js" type="text/javascript"></script>

    <!-- membuat gambar responsive pada table -->
    <style type="text/css">
      table img {
        display: block;
        max-width: 100%;
        height: auto;
      }
    </style>

    <script type="text/javascript">
		function notify_success(pesan){
			new PNotify({
				title: 'Berhasil',
				text: pesan,
				type: 'success',
				history: false,
				delay:4000
			});
		}
        
        function notify_info(pesan){
			new PNotify({
				title: 'Informasi',
				text: pesan,
				type: 'info',
				history: false,
				delay:2000
			});
		}
    
		function notify_error(pesan){
			new PNotify({
				title: 'Error',
				text: pesan,
				type: 'error',
				history: false,
				delay:2000
			});
		} 
  </script>
  </head>
  <body class="skin-black sidebar-mini"  >
    <div class="wrapper">

      <header class="main-header"  >

        <!-- Logo -->
        <a href="<?php echo site_url(); ?>/manager" class="logo" style="background-color: #ed1e28; color: white;">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini" ><b>LMS</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg" style="background-color: #ed1e28; color: white;"><b>E-Learning</b></span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation" style="background-color: #ed1e28; color: white;" >
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu" >
            <ul class="nav navbar-nav" >
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<?php echo base_url(); ?>public/plugins/adminlte/img/logo2.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs" style="color:white";><?php if(!empty($nama)){ echo $nama; }else{ echo 'Administrator'; } ?></span>
                </a>
                <ul class="dropdown-menu" >
                  <!-- User image -->
                  <li class="user-header" style="background-color: #ed1e28; color: white;">
                    <img src="<?php echo base_url(); ?>public/plugins/adminlte/img/logo2.jpg" class="img-circle" alt="User Image" />
                    <p>
                      <?php if(!empty($nama)){ echo $nama; }else{ echo 'Administrator'; } ?>
                      <small>Selamat Datang</small>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a data-toggle="modal" href="#modal-password" class="btn btn-default btn-flat">Password</a>
                    </div>
                    <div class="pull-right">
                      <a href="<?php echo site_url(); ?>/manager/welcome/logout" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>

        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo base_url(); ?>public/plugins/adminlte/img/logo2.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><?php if(!empty($nama)){ echo $nama; }else{ echo 'Administrator'; } ?></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
			<li><a href="<?php echo site_url(); ?>/manager"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
    
      <li class="treeview ">
          <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-book"></i>
        					<span>Data Modul</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/manager/modul_topik"><i class="fa fa-circle-o"></i> <span>Topik</span></a></li>
                            
                            <li><a href="<?php echo site_url(); ?>/manager/modul_soal"><i class="fa fa-circle-o"></i> <span>Soal</span></a></li>
                        
                            <li><a href="<?php echo site_url(); ?>/manager/modul_import_word"><i class="fa fa-circle-o"></i> <span>Import Soal Word</span></a></li>
                        
                            <li><a href="<?php echo site_url(); ?>/manager/modul_import"><i class="fa fa-circle-o"></i> <span>Import Soal Spreadsheet</span></a></li>
                        
                            <li><a href="<?php echo site_url(); ?>/manager/modul_daftar"><i class="fa fa-circle-o"></i> <span>Daftar Soal</span></a></li>
                        
                            <li><a href="<?php echo site_url(); ?>/manager/modul_filemanager"><i class="fa fa-circle-o"></i> <span>File manager</span></a></li>
                        </ul></li>
                    <li class="treeview ">
                    <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-users"></i>
        					<span>Data Peserta</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/manager/peserta_group"><i class="fa fa-circle-o"></i> <span>Daftar Kelas</span></a></li>
                            
                            <li><a href="<?php echo site_url(); ?>/manager/peserta_daftar"><i class="fa fa-circle-o"></i> <span>Daftar Peserta</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/peserta_import"><i class="fa fa-circle-o"></i> <span>Import Data Peserta</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/peserta_kartu"><i class="fa fa-circle-o"></i> <span>Cetak Kartu</span></a></li>
                        </ul></li>
                    <li class="treeview ">
                    <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-tasks"></i>
        					<span>Data Tes</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/manager/tes_tambah"><i class="fa fa-circle-o"></i> <span>Tambah Tes</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/tes_daftar"><i class="fa fa-circle-o"></i> <span>Daftar Tes</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/tes_evaluasi"><i class="fa fa-circle-o"></i> <span>Evaluasi Tes</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/tes_hasil"><i class="fa fa-circle-o"></i> <span>Hasil Tes</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/tes_token"><i class="fa fa-circle-o"></i> <span>Token</span></a></li>
                        </ul></li>
                    <li class="treeview ">
                    <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-print"></i>
        					<span>Laporan</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/Laporan_siswa/index"><i class="fa fa-circle-o"></i> <span>Filter Table</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/Chart/index"><i class="fa fa-circle-o"></i> <span>Chart Grafik</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/laporan_analisis_butir_soal"><i class="fa fa-circle-o"></i> <span>Analisis Butir Soal</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/laporan_rekap_hasil"><i class="fa fa-circle-o"></i> <span>Rekap Hasil Tes</span></a></li>
                        </ul></li>
                    <li class="treeview ">
                    <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-wrench"></i>
        					<span>Tool</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/manager/tool_backup"><i class="fa fa-circle-o"></i> <span>Database</span></a></li>

                        </ul></li>
                        <li class="treeview ">
                    <a href="<?php echo site_url(); ?>/manager/index/#">
        					<i class="fa fa-user"></i>
        					<span>Pengaturan</span><i class="fa fa-angle-left pull-right"></i></a>
                    <ul class="treeview-menu">
                            <li><a href="<?php echo site_url(); ?>/manager/pengaturan_zyacbt"><i class="fa fa-circle-o"></i> <span>Pengaturan E-Learning</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/useratur"><i class="fa fa-circle-o"></i> <span>Pengaturan User</span></a></li>

                            <li><a href="<?php echo site_url(); ?>/manager/userlevel"><i class="fa fa-circle-o"></i> <span>Pengaturan Level</span></a></li>

                        </ul></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
		<?php 
			if(!empty($content)){
				echo $content;
			}
		?>
      </div><!-- /.content-wrapper -->

      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version 0.1</b>
        </div>
        <strong>&copy; 2023 DediRosadi</strong>
      </footer>

    </div><!-- ./wrapper -->
	
	<div class="modal" id="modal-password" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Change Password</h4>
				</div>
				<div class="modal-body">
						<span id="form-pesan-password">
                        </span>
						<?php echo form_open('manager/dashboard/password','id="form-password"')?>
                            <div class="box-body">
                                <div class="form-group">
                                    <label>Old Password</label>
                                    <input type="password" class="form-control" id="password-old" name="password-old" placeholder="Old Password">
                                </div>
                                <div class="form-group">
                                    <label>New Password</label>
                                    <input type="password" class="form-control" id="password-new" name="password-new" placeholder="New Password">
                                </div>
                                <div class="form-group">
                                    <label>Confirm Password</label>
                                    <input type="password" class="form-control" id="password-confirm" name="password-confirm" placeholder="Confirm Password">
                                </div>
                            </div>
                        <?php echo form_close(); ?>   
				</div>
				<div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success" id="password-submit">Change</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
    
    <div class="modal" id="modal-proses" data-backdrop="static">
  		<div class="modal-dialog">
  			<div class="modal-content">
  				<div class="modal-body">
            <div style="text-align: center;">
              <img width="50" src="<?php echo base_url(); ?>public/images/loading.gif" /> <br />Data Sedang diproses...              
            </div>
            <br />
            Catatan : Refresh Halaman jika proses terlalu Lama.
  				</div>
  			</div><!-- /.modal-content -->
  		</div><!-- /.modal-dialog -->
  	</div><!-- /.modal -->
	
	<script>
    $(function () {
                        
      //Form Ubah Password
			$('#modal-password').on('shown.bs.modal', function (e) {
				$('#form-pesan-password').html('');
				$('#password-old').val('');
				$('#password-new').val('');
				$('#password-confirm').val('');
				$('#password-old').focus();
			});
			
			$('#password-submit').click(function(){
        $('#form-password').submit();
			});
			
			$('#form-password').submit(function(){        
        $.ajax({
          url:"<?php echo site_url(); ?>/manager/dashboard/password",
          type:"POST",
          data:$('#form-password').serialize(),
          cache: false,
          success:function(respon){
            var obj = $.parseJSON(respon);
            if(obj.status==1){
              $('#form-pesan-password').html(pesan_succ('Password berhasil diubah !'));
              setTimeout(function(){$('#modal-password').modal('hide')}, 1500);
            }else{
              $('#form-pesan-password').html(pesan_err(obj.error));
            }
          }
        });
        return false;
			});
    });
  </script>
  </body>
</html>
