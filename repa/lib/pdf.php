<?php
require "./fpdf/fpdf.php";
include './class_mysql.php';
include './config.php';

$id = MysqlQuery::RequestGet('id');
$sql = Mysql::consulta("SELECT * FROM ticket WHERE id= '$id'");
$reg = mysqli_fetch_array($sql, MYSQLI_ASSOC);

class PDF extends FPDF
{
}

$pdf=new PDF('P','mm','Letter');
$pdf->SetMargins(10,15);
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->SetTextColor(0,0,128);
$pdf->SetFillColor(0,255,255);
$pdf->SetDrawColor(0,0,0);
$pdf->SetFont("Arial","b",9);

$pdf->Cell (0,5,utf8_decode('Ciber la Plazita'),0,1,'C');


$pdf->Ln();


$pdf->Cell (0,5,utf8_decode('Información de ID Ticket '.utf8_decode($reg['serie'])),0,1,'C');

$pdf->Cell (35,10,'Fecha',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['fecha']),1,1,'L');
$pdf->Cell (35,10,'Serie',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['serie']),1,1,'L');


$pdf->Cell (35,10,'Nombre',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['nombre_usuario']),1,1,'L');
$pdf->Cell (35,10,'Email',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['email_cliente']),1,1,'L');
$pdf->Cell (35,10,'Departamento',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['departamento']),1,1,'L');
$pdf->Cell (35,10,'Marca y modelo',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['asunto']),1,1,'L');
$pdf->Cell (35,10,'Problema',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['mensaje']),1,1,'L');
$pdf->Cell (35,15,'Solucion',1,0,'C',true);
$pdf->Cell (0,15,utf8_decode($reg['solucion']),1,1,'L');
$pdf->Cell (35,10,'Cotizacion',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['cotizacion']),1,1,'L');
$pdf->Cell (35,10,'Informacion',1,0,'C',true);
$pdf->Cell (0,10,'maraca al 3111618126 o visitanos http://wow-destynepvp.com/repa/index.php?view=soporte',1,1,'L');


$pdf->Ln(3);

$pdf->Cell (0,5,utf8_decode('Firma de entregado __________________________________________'),0,1,'C');
$pdf->Cell (0,5,utf8_decode('________________________________________________________________________________________________________________________'),0,1,'C');


$pdf->Cell (0,5,utf8_decode('Información de ID Ticket '.utf8_decode($reg['serie'])),0,1,'C');

$pdf->Cell (35,10,'Fecha',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['fecha']),1,1,'L');
$pdf->Cell (35,10,'Serie',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['serie']),1,1,'L');


$pdf->Cell (35,10,'Nombre',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['nombre_usuario']),1,1,'L');
$pdf->Cell (35,10,'Email',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['email_cliente']),1,1,'L');
$pdf->Cell (35,10,'Departamento',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['departamento']),1,1,'L');
$pdf->Cell (35,10,'Marca y modelo',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['asunto']),1,1,'L');
$pdf->Cell (35,10,'Problema',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['mensaje']),1,1,'L');
$pdf->Cell (35,15,'Solucion',1,0,'C',true);
$pdf->Cell (0,15,utf8_decode($reg['solucion']),1,1,'L');
$pdf->Cell (35,10,'Cotizacion',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['cotizacion']),1,1,'L');
$pdf->Cell (35,10,'Informacion',1,0,'C',true);
$pdf->Cell (0,10,'maraca al 3111618126 o visitanos http://wow-destynepvp.com/repa/index.php?view=soporte',1,1,'L');



$pdf->output();