<?php

class CartController extends Controller
{
    private $model;

    public function __construct()
    {
        $this->model = $this->model('Cart');
    }

    public function index($errors = [])
    {
        $session = new Session();

        if ($session->getLogin()) {

            $user_id = $session->getUserId();
            $cart = $this->model->getCart($user_id);

            $data = [
                'titulo' => 'Carrito',
                'menu' => true,
                'user_id' => $user_id,
                'data' => $cart,
                'errors' => $errors
            ];

            $this->view('carts/index', $data);

        } else {
            header('location:' . ROOT);
        }
    }

    public function addProduct($product_id, $user_id)
    {
        $errors = [];

        if ($this->model->verifyProduct($product_id, $user_id) == false) {
            if ($this->model->addProduct($product_id, $user_id) == false) {
                array_push($errors, 'Error al insertar el producto en el carrito');
            }
        }
        $this->index($errors);
    }

    public function update()
    {
        if (isset($_POST['rows']) && isset($_POST['user_id'])) {
            $errors = [];
            $rows = $_POST['rows'];
            $user_id = $_POST['user_id'];

            for ($i = 0; $i < $rows; $i++) {
                $product_id = $_POST['i'.$i];
                $quantity = $_POST['c'.$i];
                if ( ! $this->model->update($user_id, $product_id, $quantity)) {
                    array_push($errors, 'Error al actualizar el producto');
                }
            }
            $this->index($errors);
        }
    }

    public function delete($product, $user)
    {
        $errors = [];

        if( ! $this->model->delete($product, $user)) {
            array_push($errors, 'Error al borrar el registro del carrito');
        }

        $this->index($errors);
    }
		

    public function checkout()
    {
        $session = new Session();

        if ($session->getLogin()) {

            $user = $session->getUser();

            $data = [
                'titulo' => 'Carrito | Datos de envío',
                'subtitle' => ' Verificar dirección de envío',
                'menu' => true,
                'user' => $user,
            ];
            $this->view('carts/show', $data);

        } else {
					 header('location:' . ROOT);
        }
    }
	 public function address()
	 {
			$session = new Session();
			
			if ($session->getLogin()) {
				 header('location' . ROOT);
			}
				 $user = $session->getUser();

				 $data = [
					 'titulo' => 'Carrito | Datos de envío',
					 'subtitle' => 'Rellenar dirección de envío',
					 'menu'      => true,
						'data'=>$user,
				 ];
				 $this->view('carts/address', $data);
			
	 }
    public function paymentmode()
    {
			 $session = new Session();
			 
			 if(!$session->getLogin()){
					header('location' . ROOT);
			 }
			 $errors = [];
			 $user=$session->getUser();
			 $userData =(array) $user;
			 $addressDetails = [];
			 //solo se accede por post
					if ($_SERVER['REQUEST_METHOD'] == 'POST') {
						 //valida datos del formulario vista address
						 $firstName = Validate::text($_POST['first_name'] ?? '');
						 $lastName1 = Validate::text($_POST['last_name_1'] ?? '');
						 $lastName2 = Validate::text($_POST['last_name_2'] ?? '');
						 $email = filter_var($_POST['email'] ?? '', FILTER_SANITIZE_EMAIL);//remueve los caracteres validos
						 $address = Validate::text($_POST['address'] ?? '');
						 $city = Validate::text($_POST['city'] ?? '');
						 $state = Validate::text($_POST['state'] ?? '');
						 $postcode = Validate::text($_POST['zipcode'] ?? '');//postcode
						 $country = Validate::text($_POST['country'] ?? '');
						 //comprobamos con los valores del usuario de session que ya estan validados
						 //si el dato cambia vuelve hacer una validacion
						 //se asignan los datos al array userData cambien o para no modificar el objeto de session
						 
						 if ($user->first_name != $firstName) {
								if (empty($firstName || !is_string($firstName))) {
									 $errors[] = 'Ingresa un nombre valido';
									 $userData['first_name'] = $user->first_name;//memoria del formulario con datoos base
								} else {
									 $userData['first_name'] = $firstName;
								}
						 }
						 if ($user->last_name_1 != $lastName1) {
								if (empty($lastName1 || !is_string($lastName1))) {
									 $errors[] = 'apellido 1 no cumple';
									 $userData['last_name_1'] = $user->last_name_1;
								} else {
									 $userData['last_name_1'] = $lastName1;
								}
						 }
						 if ($user->last_name_2 != $lastName2) {
								if (empty($lastName2 || !is_string($lastName2))) {
									 $errors[] = 'apellido 2 no cumple';
									 $userData['last_name_2'] = $user->last_name_2;
								} else {
									 $userData['last_name_2'] = $lastName2;
								}
						 }
						 
						 if ($user->email != $email) {
								if (empty($email)) {
									 $errors[] = 'El email es obligatorio';
									 $userData['email'] = $user->email;
								} elseif (!is_string($email || !filter_var($email, FILTER_VALIDATE_EMAIL))) {
									 $errors[] = 'El email no es correcto';
									 $userData['email'] = $user->email;
								} else {
									 $userData['email'] = $email;
								}
						 }
						 
						 if ($user->address != $address) {
								if (empty($address || !is_string($address))) {
									 $errors[] = 'direccion no cumple';
									 $userData['address'] = $user->address;
								} else {
									 $userData['address'] = $address;
								}
						 }
						 if ($user->city != $city) {
								if (empty($city || !is_string($city))) {
									 $errors[] = 'ciudad no cumple';
									 $userData['city'] = $user->city;
								} else {
									 $userData['city'] = $city;
								}
						 }
						 if ($user->state != $state) {
								if (empty($state || !is_string($state))) {
									 $errors[] = 'state no cumple';
									 $userData['state'] = $user->state;
								} else {
									 $userData['state'] = $state;
								}
						 }
						 if (!empty($postcode) && is_string($postcode) && $user->zipcode != $postcode) {
								$userData['zipcode'] = $postcode;
						 } else {
								$userData['zipcode'] = $user->zipcode;
								$errors[] = 'El código postal no es válido o es igual al actual';
						 }
						 
						 
						 if ($user->country != $country) {
								if (empty($country || !is_string($country))) {
									 $errors[] = 'state no cumple';
									 $userData['country'] = $user->country;
								} else {
									 $userData['country'] = $country;
								}
						 }
						 
						 //array de nuevos datos para la insercion de la direccion en el carrito
						 $addressDetails = [
							 'first_name' => $userData['first_name'],
							 'last_name_1' => $userData['last_name_1'],
							 'last_name_2' => $userData['last_name_2'],
							 'email' => $userData['email'],
							 'address' => $userData['address'],
							 'city' => $userData['city'],
							 'state' => $userData['state'],
							 'zipcode' => $userData['zipcode'],
							 'country' => $userData['country'],
							 
							 ];
					}else{
						 //se vene por get , por lo que no se ha modificado el formulario y el formulario y los campos son los mismos
						 $addressDetails = [
							 'first_name' => $user->first_name,
							 'last_name_1' => $user->last_name_1,
							 'last_name_2' => $user->last_name_2,
							 'email' => $user->email,
							 'address' => $user->address,
							 'city' => $user->city,
							 'state' => $user->state,
							 'zipcode' => $user->zipcode,
							 'country' => $user->country,
						 ];
					}
			 if (count($errors) == 0) {
					$data = [
						'titulo' => 'Carrito | Forma de pago',
						'subtitle' => 'checkout | Forma de pago',
						'menu' => true,
					];
					$errors = $this->model->addAddress($user->id, $addressDetails);
					$this->model->addAddress($user->id,$addressDetails);//inserta datos envio en base de datos
					$this->view('carts/paymentmode',$data);
			 }else{
					$data = [
						'titulo' => 'Datos de envio',
						'subtitle' => 'compruebeee datos de envio',
						'menu' => true,
						 'userData'=>$userData,
						 'errors'=>$errors,
						];
					//redirecciona a la vista con errores
					$this->view('carts/address',$data);
			 }
	
    }

    public function verify()
    {
        $session = new Session();
			 if(!$session->getLogin()){
					header('location' . ROOT);
			 }
        $user = $session->getUser();
        $cart = $this->model->getCart($user->id);
        $payment = $_POST['payment'] ?? '';

        $data = [
            'titulo' => 'Carrito | Verificar los datos',
            'menu' => true,
            'payment' => $payment,
            'user' => $user,
            'data' => $cart,
        ];

        $this->view('carts/verify', $data);
    }

    public function thanks()
    {
        $session = new Session();
        $user = $session->getUser();
	 
			 if ($session->getLogin()) {
					 if ($this->model->closeCart($user->id, 1)) {
	 
							 $data = [
									 'titulo' => 'Carrito | Gracias por su compra',
									 'data' => $user,
									 'menu' => true,
							 ];
	 
							 $this->view('carts/thanks', $data);
					 } else {
							 $data = [
									 'titulo' => 'Error en la actualización del carrito',
									 'menu' => false,
									 'subtitle' => 'Error en la actualización de los productos del carrito',
									 'text' => 'Existió un problema al actualizar el estado del carrito. Por favor, pruebe más tarde o comuníquese con nuestro servicio de soporte',
									 'color' => 'alert-danger',
									 'url' => 'login',
									 'colorButton' => 'btn-danger',
									 'textButton' => 'Regresar',
							 ];
	 
							 $this->view('mensaje', $data);
					 }
			 }else{
					header('location:' . ROOT);
			 }

    }
}