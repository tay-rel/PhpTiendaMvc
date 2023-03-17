<?php include_once(VIEWS . 'header.php')?>
	 
	 <div class="card p-4 bg-light">
			<div class="card-header">
				 <h1 class="text-center">Detalles</h1>
			</div>
         <div class="card-body">
             <table class="table table-stripped" width="100%">
                 <tr>
                     <th>Usuario</th>
                     <th class="text-center">Producto</th>
                     <th>Fecha </th>
                     <th>Precio</th>
                     <th>Cantidad</th>
                     <th>Descuento</th>
                     <th>Envio</th>
                     <th>Total</th>
         
                 </tr>
                 <tbody>
								 <?php $quantity = 0; $discount = 0; $send = 0; $total = 0 ?>
								 <?php foreach ($data['carrito'] as $carrito): ?>
                     <tr>
                         <td class="text-center"><?= $carrito->name ?></td>
                         <td class="text-center"><?= $carrito->nameProduct ?></td>
                         <td class="text-center"><?= date('D-M-Y', strtotime($carrito->date))?></td>
                         <td class="text-center"><?= number_format($carrito->price,2) ?></td>
                         <td class="text-center"><?= number_format($carrito->quantity,2)?></td>
                         <td class="text-center"><?= number_format($carrito->discount,2)?></td>
                         <td class="text-center"><?= number_format($carrito->send,2)?></td>
                         <td class="text-center"><?= number_format($carrito->total,2)?></td><!--$carrito->price * $carrito->quantity - $carrito->discount +  $carrito->send-->
                     </tr>
                                    <?php
                                    $quantity += $carrito->quantity;
                                    $discount += $carrito->discount;
                                    $send += $carrito->send;
                                    $total += $carrito->total ?>
                                 <?php endforeach; ?>
                 <tr class="text-center bg-dark text-white">
                     <td></td>
                     <td></td>
                     <td>Totales:</td>
                     <td></td>
                     <td class="text-right"><?= number_format($quantity ,2) ?></td>
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
                            <a href="<?= ROOT ?>adminSales" class="btn btn-info">Volver</a>
						</div>
				 </div>
			</div>
	 </div>
<?php include_once(VIEWS . 'footer.php')?>