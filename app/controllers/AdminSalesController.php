<?php

class AdminSalesController extends Controller
{
	 private $model;
	 
	 public function __construct()
	 {
			$this->model = $this->model('AdminSales');
	 }
	 public function index()
	 {
			$session =new Session();
			$sales = $this->model->sales();  //devuelve el metodo creado en el modelo
			if($session ->getLogin()){
				 $data = [
					 'titulo' => 'Productos vendidos',
					 'menu' => false,
					 'admin' => true,
					 'carrito'=>$sales,
				 ];
				 $this->view('admin/sales/index', $data);
				 
			}else{
				 header('location:' . ROOT .'admin');
			}
	 }
	 
	 public function detailsSales($date, $id)
	 {
			$cart = $this->model->details($date, $id);
			$data = [
				'titulo'    => 'Detalle de ventas',
				'menu'      => false,
				'admin'     => true,
				'carrito'      => $cart,
			];
			$this->view('admin/sales/details', $data);
	 }
	 public function graficSales()
	 {
			$sales= $this->model->grafic();
			$data = [
				'titulo'    => 'Ventas Diarias',
				'menu'      => false,
				'admin'     => true,
				'data'      => $sales,
			];
			$this->view('admin/sales/dailySales', $data);
	 }
}