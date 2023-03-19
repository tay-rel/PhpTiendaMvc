<?php include_once(VIEWS . 'header.php') ?>
<div class="card" id="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Iniciar sesión</a></li>
            <li class="breadcrumb-item">Datos de envío</li>
            <li class="breadcrumb-item"><a href="#">Forma de pago</a></li>
            <li class="breadcrumb-item"><a href="#">Verifica los datos</a></li>
        </ol>
    </nav>
    <div class="card-header">
        <h1><?= $data['titulo'] ?></h1>
        <p><?= $data['subtitle'] ?></p>
    </div>
    <div class="card-body">
        <form action="<?= ROOT ?>cart/paymentmode/" method="POST">
            <div class="form-group text-left">
                <label for="first_name">Nombre:</label>
                <input type="text" name="first_name" id="first_name" class="form-control"
                       required placeholder="Escriba su primer apellido"
                       value="<?= $data['data']->first_name ?? $data['userData']['first_name'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="last_name_1">Primer apellido:</label>
                <input type="text" name="last_name_1" id="last_name_1" class="form-control"
                       required placeholder="Escriba su primer apellido"
                       value="<?= $data['data']->last_name_1 ?? $data['userData']['last_name_1'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="last_name_2">Segundo apellido:</label>
                <input type="text" name="last_name_2" id="last_name_2" class="form-control"
                       placeholder="Escriba su segundo apellido"
                       value="<?= $data['data']->last_name_2 ?? $data['userData']['last_name_2'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="email">Correo electrónico:</label>
                <input type="email" name="email" id="email" class="form-control"
                       required placeholder="Escriba su correo electrónico"
                       value="<?= $data['data']->email ?? $data['userData']['email'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="address">Dirección:</label>
                <input type="text" name="address" id="address" class="form-control"
                       required placeholder="Escriba su dirección"
                       value="<?= $data['data']->address ?? $data['userData']['address'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="city">Ciudad:</label>
                <input type="text" name="city" id="city" class="form-control"
                       required placeholder="Escriba su ciudad"
                       value="<?= $data['data']->city ?? $data['userData']['city'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="state">Provincia:</label>
                <input type="text" name="state" id="state" class="form-control"
                       required placeholder="Escriba su provincia"
                       value="<?= $data['data']->state ?? $data['userData']['state'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="zipcode">Código postal:</label>
                <input type="text" name="zipcode" id="zipcode" class="form-control"
                       required placeholder="Escriba su código postal"
                       value="<?= $data['data']->zipcode ?? $data['userData']['zipcode'] ?>">
            </div>
            <div class="form-group text-left">
                <label for="country">País:</label>
                <input type="text" name="country" id="country" class="form-control"
                       required placeholder="Escriba su país"
                       value="<?= $data['data']->country ?? $data['userData']['country'] ?>">
            </div>
            <div class="form-group text-left">
                <input type="submit" value="Enviar datos" class="btn btn-success">
            </div>
        </form>
        <a href="<?= ROOT ?>cart/checkout" class="btn btn-success">Volver</a>
    </div>

</div>

<?php include_once(VIEWS . 'footer.php') ?>
