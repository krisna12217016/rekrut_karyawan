

<div class="row mt-4">
	<div class="col-md-9">
		<div class="container">
		<div class="row row-cols-3 row-cols-md-3 g-3">
			<?php foreach($careers as $c): ?>
			<div class="col">
				<div class="card h-100" id="<?= $c->id ?>">
					<img src="<?= base_url() ?>/assets/img/gm1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><?= $c->bagian ?></h5>
						<h6 class="card-subtitle mb-2 text-muted"><?= $c->jabatan ?></h6>
						<p class="card-text"><?= $c->info ?></p>
						<p class="card-text"><?= $c->tanggal_akhir ?></p>
						<a href="<?= base_url('pelamar/apply/'.$c->id) ?>" class="btn btn-primary">Apply</a>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
		</div>
	</div>
</div>