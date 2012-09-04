<?php
/**
 * micorreofacil.com
 * Vista:  Sesiones Agregar
 */

#sección metaDatos
$this->set('title_for_layout', 'Correo Facil - Sesiones Agregar');
$this->Html->meta('description', 'Sesiones Agregar', array('inline' => false));

#sección CSS
#$this->Html->css(array(
#						'sesiones.formulario',
#						'sesiones.agregar',
#						), 'stylesheet', array('inline' => false));

#sección Javascript
#$this->Html->script(array(
#											'sesiones.formulario',
#											'sesiones.agregar',
#											), array('inline' => false));
?>
<div class="row-fluid">

<div class="actions span3 well sidebar-nav">
	<h3>Acciones</h3>
	<ul class="nav nav-list">
		<li>
			<?php echo $this->Html->link('<i class="icon-home"></i> Listar sesiones', array('action' => 'index'), array('escape' => false)); ?>
		</li>
		<li class='divider'></li>
		<li class='nav-header'>Talleres</li>
		<li><?php echo $this->Html->link('<i class="icon-home"></i> Listar Talleres', array('controller' => 'talleres', 'action' => 'index'), array('escape' => false)); ?> </li>
		<li><?php echo $this->Html->link('<i class="icon-plus"></i> Agregar Taller', array('controller' => 'talleres', 'action' => 'agregar'), array('escape' => false)); ?> </li>
	</ul>
</div>

<div class="sesiones form span9">
<?php echo $this->Form->create('Sesion', array('class' => 'well')); ?>
	<fieldset>
		<legend>Agregar Sesion</legend>
	<?php
		echo $this->Form->input('taller_id');
		echo $this->Form->input('keywords');
		echo $this->Form->input('nombre');
		echo $this->Form->input('slug_dst');
		echo $this->Form->input('orden');
		echo $this->Form->input('descripcion');
		echo $this->Form->input('content');
		echo $this->Form->input('estrellas');
		echo $this->Form->input('fecha_publicacion');
	?>
	</fieldset>
<?php echo $this->Html->link('Cancelar', array('action' => 'index'), array('class'=>'btn btn-danger btn-large')); ?> | <?php echo $this->Form->end('Enviar'); ?>
</div>
</div>

