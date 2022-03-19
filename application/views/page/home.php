<div class="row mt-4">
	<div class="col-md-9">
		<div class="card">
			<div class="card-body">
				<img src="<?= base_url() ?>/assets/img/home.jpg" width="100%">
				<?php if($this->session->has_userdata('nama_lengkap')): ?>
				<h4 class="mt-3">Halo <?= $profil->nama_lengkap ?></h4>
				<?php else: ?>
				<h4 class="mt-3">Halo Selamat Datang</h4>
				<?php endif;?>
				Temukan Lowongan kerja impianmu hanya di Disini. Tersedia Info lowongan kerja Terbaru khusus untuk anak muda Indonesia.
			</div>
		</div>
	</div>
</div>
