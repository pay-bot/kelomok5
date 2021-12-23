<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Beranda
			<small>Halaman Utama User</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Utama</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="callout callout-info">
			<h4>Sistem Pakar</h4>
		</div>
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Welcome</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i></button>
				</div>
			</div>
			<div class="box-body mx-auto col-12">
				<div class="col-12">
					<h3 class="">Selamat Datang di aplikasi Sistem pakar diagnosa penyakit lambung</h3>
					<img src="<?= config_item('img_dir') ?>imageo.webp" class="img-fluid" alt="User Image" style='width: 100%'>
					</a>
				</div>

				<button type="button" class="btn btn-success mt-5 mx-auto" data-toggle="modal" data-target="#exampleModal">
					Data Kelompok
				</button>

				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h1 class="modal-title" id="exampleModalLabel">Kelompok 3</h1>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<h2 class="">1. Programmer : Dicky</h2>
								<h2 class="">2. Pencari Materi : April</h2>
								<h2 class="">3. Pembuat Flowchart : Dicky</h2>
								<h2 class="">4. Desainer Poster : Rizky </h2>
								<h2 class="">5. Desainer Poster : ikhsan</h2>
								<h2 class="">6. Editor Video : noval</h2>
								<h2 class="">7. editor Video : febryan</h2>
								<h2 class="">8. Edittor Video : tri</h2>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.box -->
	</section>
	<!-- /.content -->
</div>