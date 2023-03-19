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
            <h1>Datos de envío</h1>
            <p>Por favor, compruebe los datos de envío y cambie lo que considere necesario</p>
        </div>
        <div class="card-body">
            <form action="<?= ROOT ?>cart/paymentmode/" method="POST">
                <input type="hidden" name="id" value="<?= $data['user']->id?>"/>
                <div class="form-group text-left">
                    <label for="first_name">Nombre:</label>
                    <input type="text" name="first_name" id="first_name" class="form-control"
                           required placeholder="Escriba su nombre"
                           value="<?= $data['user']->first_name ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="last_name_1">Primer apellido:</label>
                    <input type="text" name="last_name_1" id="last_name_1" class="form-control"
                           required placeholder="Escriba su primer apellido"
                           value="<?= $data['user']->last_name_1 ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="last_name_2">Segundo apellido:</label>
                    <input type="text" name="last_name_2" id="last_name_2" class="form-control"
                           placeholder="Escriba su segundo apellido"
                           value="<?= $data['user']->last_name_2 ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="email">Correo electrónico:</label>
                    <input type="email" name="email" id="email" class="form-control"
                           required placeholder="Escriba su correo electrónico"
                           value="<?= $data['user']->email ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="address">Dirección:</label>
                    <input type="text" name="address" id="address" class="form-control"
                           required placeholder="Escriba su dirección"
                           value="<?= $data['user']->address ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="city">Ciudad:</label>
                    <input type="text" name="city" id="city" class="form-control"
                           required placeholder="Escriba su ciudad"
                           value="<?= $data['user']->city ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="state">Provincia:</label>
                    <input type="text" name="state" id="state" class="form-control"
                           required placeholder="Escriba su provincia"
                           value="<?= $data['user']->state ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="postcode">Código postal:</label>
                    <input type="text" name="postcode" id="postcode" class="form-control"
                           required placeholder="Escriba su código postal"
                           value="<?= $data['user']->zipcode ?? '' ?>">
                </div>
                <div class="form-group text-left">
                    <label for="country">País:</label>
                    <input type="text" name="country" id="country" class="form-control"
                           required placeholder="Escriba su país"
                           value="<?= $data['user']->country ?? '' ?>">
                </div>
   
            </form>
    <div class="form-group text-left">
        <div class="form-group text-left">
            <a href="<?= ROOT . "cart/paymentmode"?>" class="btn btn-success">Continuar</a>
            <div class="form-group text-left">
                <a href="<?= ROOT . "cart/address"?>" class="btn btn-warning">Editar datos</a>
            </div>
        </div>

    </div>

<?php include_once(VIEWS . 'footer.php') ?>