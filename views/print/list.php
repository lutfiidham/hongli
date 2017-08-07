<?php
/*
$outprint = "Just the test printer";
$printer = printer_open("58 Printer(1)");
printer_set_option($printer, PRINTER_MODE, "RAW");
printer_start_doc($printer, "Tes Printer");
printer_start_page($printer);
printer_write($printer, $outprint);
printer_end_page($printer);
printer_end_doc($printer);
printer_close($printer);
*/
?>
<style type="text/css">
body{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
.frame{
	border:1px solid #000;
	width:10%;
	margin-left:auto;
	margin-right:auto;
	padding:10px;
}
table{
	font-size:14px;
	
}
.header{
	text-align:center;
	font-weight:bold;
	font-size:11px;
	
}
.header_img{

	width:164px;
	height:79px;
	margin-left:auto;
	margin-right:auto;
	margin-bottom:10px;
}

.back_to_order{
	width:10%;
	margin-left:auto;
	margin-right:auto;
	color:#fff;
	font-weight:bold;
	background:#09F;
	text-align:center;
	border-radius:10px;
	margin-top:10px;
	padding:5px;height:30px;
}
.back_to_order:hover{
	background:#069;
}
</style>
<body  onload=print()>
<!--<body>-->

<div class="header">
<span style="font-size:14px;">Hong Li Huo Guo Cheng<br>
Resto </span><br>
Manyar Kertoarjo 45 Surabaya<br />
(031) 591 74 777

</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-top: 5;">
	<tr>
		<td>No. <?= $row['transaction_id'] ?></td>
		<td align="right" >cashier: <?= $row['user_name'] ?></td>
	</tr>
	<tr>
		<td>Meja: <?= $row['table_name']?></td>
		<td align="right" ><?= $row['transaction_date'] ?></td>
	</tr>
</table>
<?php $bank = array('Mandiri', 'BCA', 'BRI');?>
<?php if($row['payment_method_id'] != 1){?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-top: 5;">
  <tr>
    <td>Bank: <?= $bank[$row['bank_id']]?></td>
    <td align="right" >Account Number: <?= $row['bank_account_number'] ?></td>
  </tr>
</table>
<?php }?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-top: 5;">
<?php
  $no_item = 1;
  $total_price = 0;
 
  while($row_item = mysql_fetch_array($query_item)){
  ?>
  <tr>
    <td><?= $row_item['menu_name'] ?></td>
    <td align="right">&nbsp;</td>
  </tr>
  <tr>
    <td><?= $row_item['transaction_detail_qty']." x ".number_format($row_item['transaction_detail_price'])?></td>
    <td align="right"><?= number_format($row_item['transaction_detail_total'])?></td>
  </tr>
  <?php
 $no_item++;
 $total_price = $total_price + $row_item['transaction_detail_total'];
  }
 ?>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size:15px; padding-top: 5;">
	<tr>
		<td>Total</td>
		<td align="right"><?= number_format($row['transaction_total'])?></td>
	</tr>
	<?
	$disc = 0;
	  if($row['transaction_discount'] != 0){
	?>
	  <tr>
		<td>Diskon(<?= number_format($row['transaction_discount'])?>%)</td>
		<td align="right">-<?= number_format($row['transaction_discount']/100*$row['transaction_total'])?></td>
	  </tr>
  <?
  $disc = $row['transaction_discount']/100*$row['transaction_total'];
  }
	$totalawal  = $row['transaction_total'];
	$svc	    = 5/100*$totalawal;
	$tax	    = 10/100*($totalawal+$svc);
	$totalkedua =	$totalawal+$svc+$tax;
	$totalkedua	=ceil($totalkedua);
	if (substr($totalkedua,-2)!=00){
		if(substr($totalkedua,-2)<50){
			$totalkedua=round($totalkedua,-2)+100;
		}else{
			$totalkedua=round($totalkedua,-2);
		}
	}
	$grand = $totalkedua-$disc;
	$grand	=ceil($grand);
	if (substr($grand,-2)!=00){
		if(substr($grand,-2)<50){
			$grand=round($grand,-2)+100;
		}else{
			$grand=round($grand,-2);
		}
	}
  ?>
	<tr>
		<td>Service Charge(5%)</td>
		<td align="right"><?= number_format($svc)?></td>
	</tr>
	<tr>
		<td>Tax(10%)</td>
		<td align="right"><?= number_format($tax)?></td>
	</tr>
  <tr>
    <td style="font-size:16px"><strong>Grand Total</strong></td>
    <td style="font-size:16px" align="right"><strong><?= number_format($grand)?></strong></td>
  </tr>
  <tr>
    <td>Bayar</td>
    <td align="right"><?= number_format($row['transaction_payment'])?></td>
  </tr>
  <tr>
    <td><strong>Kembali</strong></td>
    <td align="right"><strong><?= number_format($row['transaction_payment']-$grand)?></strong></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-top: 5;">
  <tr>
    <td align="center" style="font-size: 12px;">TERIMA KASIH ATAS KUNJUNGAN ANDA</td>
  </tr>
  <!--tr>
    <td align="center" style="font-size: 12px;">- Powered By Jasasoftwaresurabaya.com -</td>
  </tr-->
</table>
<a href="order.php" style="text-decoration:none"><div class="back_to_order"></div></a>
</body>