<?php include("header.php"); /*load admin header page */?>

<?php include("menu.php"); /* load admin menu page */ ?>

<?php $this->load->view($file); /* load  main file */?>

<?php include("footer.php"); /* load admin footer page */ ?>

<?php include("js.php"); /* load admin js page */ ?>

<?php if(isset($table_js) && ! empty($table_js)){
	$this->load->view($table_js); /* load admin table library*/}?>

<?php if(isset($custom_js) && ! empty($custom_js)){
	$this->load->view($custom_js);} /* load admin custom js */ ?>

<?php if(isset($editor_js) && ! empty($editor_js)){
	$this->load->view($editor_js);} /* load admin custom js */ ?>

<?php if(isset($validation_js) && ! empty($validation_js)){
$this->load->view($validation_js);} /* load admin front end validations */?>