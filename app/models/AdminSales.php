<?php

class AdminSales{
	 
	 private $db;
	 
	 public function __construct()
	 {
			$this->db = Mysqldb::getInstance()->getDatabase();
	 }
	 
	 public function sales()
	 {
			$sql = "SELECT c.user_id AS idUser,  c.product_id AS idProduct,
       						GROUP_CONCAT(p.name , ' ') as product ,
       					sum(c.discount) AS discount  ,
       					sum(c.send )AS send,
       					sum(p.price * c.quantity) as cost,
                c.date AS date
                FROM carts as c
                INNER JOIN products as p ON  p.id = c.product_id
                INNER JOIN users as u on u.id = c.user_id
                WHERE c.state=1
                GROUP BY c.date;";
			$query = $this->db->prepare($sql);
			$query->execute();
			return $query->fetchAll(PDO::FETCH_OBJ);
	 }
	 public function details($date,$id)
	 {
			$sql = "SELECT c.user_id AS idUser, u.first_name AS name , c.product_id AS idProduct,
       						p.name  AS nameProduct ,
                p.price AS price ,  c.quantity AS quantity , c.discount AS discount  , c.send AS send,
                ( p.price * c.quantity  -c.discount + c.send) as total ,
                c.date AS date
                FROM carts as c
                INNER JOIN products as p ON  p.id = c.product_id
                INNER JOIN users as u on u.id = c.user_id
                WHERE c.state=1
                AND date(date)=:date
                AND c.user_id=:user_id;";
			$query = $this->db->prepare($sql);
			$params = [
				':user_id' => $id,
				':date'    => $date,
			];
			$query->execute($params);
			return $query->fetchAll(PDO::FETCH_OBJ);
	 }
	 public function grafic()
	 {
			$sql = 'SELECT sum(p.price * c.quantity) - sum(c.discount) + sum(c.send) as sale,
                        date(c.date) as date
                FROM carts as c, products as p
                WHERE c.product_id = p.id
                AND c.state = 1
                GROUP BY date(c.date)';
			$query = $this->db->prepare($sql);
			$query->execute();
			return $query->fetchAll(PDO::FETCH_OBJ);
	 }
}
