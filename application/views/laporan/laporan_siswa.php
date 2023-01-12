<!DOCTYPE html>
<html>
<body>
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="box">
              <div class="box-header" style="background:red; color:white">
                <h3 class="box-title text-white">Data Mahasiswa</h3>
            </div>

	<!-- Search filter -->
	<div>
	<div class="box-body">
		<select id='sel_program'>
			<option value=''>-- Select program --</option>
			<?php 
			foreach($programs as $program_id){
				echo "<option value='".$program_id."'>".$program_id."</option>";
			}
			?>
		</select>

		<select id='sel_semester'>
			<option value=''>-- Select semester --</option>
			<?php 
			foreach($semesters as $semester_id){
				echo "<option value='".$semester_id."'>".$semester_id."</option>";
			}
			?>
		</select>

		<select id='sel_nama'>
			<option value=''>-- Select nama --</option>
			<?php 
			foreach($namas as $nama){
				echo "<option value='".$nama."'>".$nama."</option>";
			}
			?>
		</select>

		<select id='sel_kelas'>
			<option value=''>-- Select kelas --</option>
			<?php 
			foreach($kelass as $kelas){
				echo "<option value='".$kelas."'>".$kelas."</option>";
			}
			?>
		</select>

		<select id='sel_activity'>
			<option value=''>-- Select activity --</option>
			<?php 
			foreach($activitys as $activity){
				echo "<option value='".$activity."'>".$activity."</option>";
			}
			?>
		</select>

		<select id='sel_total'>
			<option value=''>-- Select total activity --</option>
			<?php 
			foreach($totals as $total){
				echo "<option value='".$total."'>".$total."</option>";
			}
			?>
		</select>

		<!-- Name -->
	</div>
	<!-- Table -->
	
<div class="box-body">
	<table id='userTable' class='table table-bordered table-striped display dataTable'>

	  <thead>
	    <tr>
	      <th>Faculty id</th>
	      <th>Program id</th>
	      <th>Semester id</th>
	      <th>Nama</th>
	      <th>Kelas</th>
		  <th>Activity</th>
	      <th>Total Activiy</th>
	    </tr>
	  </thead>
	  <tbody>
	  <tfoot>
	    <tr>
	      <th>Faculty id</th>
	      <th>Program id</th>
	      <th>Semester id</th>
	      <th>Nama</th>
	      <th>Kelas</th>
		  <th>Activity</th>
	      <th>Total Activiy</th>
	    </tr>
	  </tfoot>
	</table>
    </div>
    </div>
	<!-- Script -->
	<script type="text/javascript">
	$(document).ready(function(){
	   	var userDataTable = $('#userTable').DataTable({
	      	'processing': true,
	      	'serverSide': true,
	      	'serverMethod': 'post',
	      	//'searching': false, // Remove default Search Control
	      	'ajax': {
	          'url':'<?=base_url()?>index.php/Laporan_siswa/userList',
	          'data': function(data){
	          		data.searchCity = $('#sel_city').val();
					data.searchProgram = $('#sel_program').val();
					data.searchSemester = $('#sel_semester').val();
					data.searchNamas = $('#sel_nama').val();
					data.searchKelas = $('#sel_kelas').val();
					data.searchActivity = $('#sel_activity').val();
					data.searchTotal = $('#sel_total').val();
	          		data.searchName = $('#searchName').val();
	          }
	      	},
	      	'columns': [
	         	{ data: 'faculty_id' },
	         	{ data: 'program_id' },
				{ data: 'semester_id' },
	         	{ data: 'nama' },
	         	{ data: 'kelas' },
				{ data: 'activity' },
				{ data: 'total' },
	      	]
	   	});

	   	$('#sel_semester,#sel_program,#sel_nama,#sel_kelas,#sel_activity,#sel_total').change(function(){
	   		userDataTable.draw();
	   	});
	});

	</script>
</body>
</html>