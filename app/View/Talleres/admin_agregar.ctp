<?php
#iniciando la autenticación
$this->Html->initAuth($userAuth);

?>
<div class="row-fluid">
	<div class="actions span3 sidebar-nav">
	<?php
	echo $this->Html->menu_navegacion_general();
	echo $this->Html->menu_talleres();
	echo $this->Html->menu_usuario();
	?>
</div>

<div class="talleres span9 formulario">
<?php echo $this->Form->create('Taller', array('type' => 'file'));?>
	<fieldset>
		<legend>Agregar Taller</legend>
	<?php
		echo $this->Form->input('user_id', array('label'=>'Tallerista'));
		echo $this->Form->input('nombre', array('value'=>'Introducción al Software Libre'));
		echo $this->Form->input('horario', array('value'=>'11pm-13pm de lunes a viernes'));
		echo $this->Form->input('fecha_inicio');
		echo $this->Form->input('fecha_final');
		echo $this->Form->input('numero_total_horas', array('value'=>20));
		echo $this->Form->input('costo', array('value'=>500));
		echo $this->Form->input('cupo', array('value'=>15));
		echo $this->Form->input('num_sesiones', array('value'=>1));
		echo $this->Form->input('requisitos', array('type'=>'textarea','value'=>'Lista de requisitos'));
		echo $this->Form->input('resumen', array('type'=>'textarea','value'=>'Escriba aquí un breve resumen'));
		echo '<div class="input text required">';
		echo "<label for='TallerContenido'>Contenido</label>";
		echo $this->Wysiwyg->textarea('contenido');
		echo '</div>';
		echo '<div class="input text required">';
		echo $this->Form->label('Taller.slide', 'Archivo para el slide(925x250 jpeg)');
		echo '<input id="TallerSlide" type="file" name="data[Taller][slide]">';
		echo '</div>';
	?>
	</fieldset>
<?php echo $this->Form->end('Crear taller');?>
</div>
</div>
