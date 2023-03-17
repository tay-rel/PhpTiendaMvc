<?php include_once(VIEWS . 'header.php')?>

	 <div class="card p-4 bg-light">
			<div class="card-header">
				 <h1 class="text-center">Registro venta de Productos</h1>
			</div>
			<div class="card-body">
				 <table class="table table-stripped" width="100%">
						<tr>
                            <th>Id</th>
							 <th class="text-center">Producto</th>
                            <th>Fecha de pago </th>
							 <th>Valor</th>
							 <th>Descuento</th>
							 <th>Envio</th>
							 <th>Total</th>
                            <th>Detalle</th>
						</tr>
						
						<tbody>
                        <?php $cost = 0; $discount = 0; $send = 0; $total = 0 ?>
						<?php foreach ($data['carrito'] as $carrito): ?>
							 <tr>
                                    <td class="text-center"><?= $carrito->idProduct ?></td>
									<td class="text-center"><?= $carrito->product ?></td>
                                    <td class="text-center"><?= date('D-M-Y', strtotime($carrito->date))?></td>
									<td class="text-center"><?= number_format($carrito->cost,2)?></td>
									<td class="text-center"><?= number_format($carrito->discount,2)?></td>
									<td class="text-center"><?= number_format($carrito->send,2)?></td>
									<td class="text-center"><?= number_format($carrito->cost - $carrito->discount + $carrito->send)?></td>
                                 <td class="text-center">
                                     <a href="<?= ROOT ?>adminSales/detailsSales/<?= substr($carrito->date, 0, 10) ?>/<?= $carrito->idUser ?>"
                                        class="btn btn-info">Detalle</a>
                                 </td>
							 </tr>
                           <?php $cost += $carrito->cost; $discount += $carrito->discount; $send += $carrito->send; $total += $carrito->cost - $carrito->discount + $carrito->send ?>
						<?php endforeach; ?>
                        <tr class="text-center bg-dark text-white">
                            <td></td>
                            <td></td>
                            <td>Totales:</td>
                            <td class="text-right"><?= number_format($cost ,2) ?></td>
                            <td class="text-right"><?= number_format($discount, 2) ?></td>
                            <td class="text-right"><?= number_format($send, 2) ?></td>
                            <td class="text-right"><?= number_format($total, 2) ?></td>
                            <td></td>
                        </tr>
						</tbody>
				 </table>
			</div>
			<div class="card-footer">
				 <div class="row">
                     <div class="col-sm-6">
                         <a href="<?= ROOT ?>adminSales/graficSales" class="btn btn-success">Gráfico de ventas por día</a>
                     </div>
				 </div>
			</div>
	 </div>
<?php include_once(VIEWS . 'footer.php')?>