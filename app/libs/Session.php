<?php

class Session
{
	 private $login = false;
	 private $user;
	 private $cartTotal;
	 
	 public function __construct()
	 {
			session_start();
			
			if (isset($_SESSION['user'])) {
				 $this->user = $_SESSION['user'];
				 $this->login = true;
				 $_SESSION['cartTotal'] = $this->cartTotal();
				 $this->cartTotal = $_SESSION['cartTotal'];
	
			} else {
				 unset($this->user);
				 $this->login = false;
			}
	 }
	 
	 public function login($user)
	 {
			if ($user) {
				 $this->user = $user;
				 $_SESSION['user'] = $user;
				 $_SESSION['isAdmin'] = $this->checkIsAdmin();
				 $this->login = true;
			}
	 }
	 
	 public function logout()
	 {
			unset($_SESSION['user'], $_SESSION['isAdmin']);
			unset($this->user, $this->isAdmin);
		
			session_destroy();
			$this->login = false;
	 }
	 
	 public function getLogin()
	 {
			return $this->login;
	 }
	 
	 public function getUser()
	 {
			return $this->user;
	 }
	 
	 public function getUserId()
	 {
			return $this->user->id;
			
	 }
	 public function checkIsAdmin()
	 {
			if (!$this->user) {
				 return false;
			}
		 
			try {
				 $db = Mysqldb::getInstance()->getDatabase();
				 $sql = 'SELECT is_admin FROM users WHERE id=:user_id';
				 $query = $db->prepare($sql);
				 $query->execute([':user_id' => $this->getUserId()]);
				 $data = $query->fetch(PDO::FETCH_OBJ);
				 unset($db);
				
				 return $data->is_admin ?? false;
			} catch (PDOException $e) {
				 // Manejar la excepción adecuadamente, por ejemplo, registrarla y devolver un valor predeterminado.
				 return false;
			}
	 }
	 
	 public function cartTotal()
	 {
			$db = Mysqldb::getInstance()->getDatabase();
			
			$sql = 'SELECT sum(p.price * c.quantity) - sum(c.discount) + sum(c.send) as total
                FROM carts as c, products as p
                WHERE c.user_id=:user_id AND c.product_id=p.id AND c.state=0';
			$query = $db->prepare($sql);
			$query->execute([':user_id' => $this->getUserId()]);
			$data = $query->fetch(PDO::FETCH_OBJ);
			unset($db);
			
			return ($data->total ?? 0);
	 }
}
