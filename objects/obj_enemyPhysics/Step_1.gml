//Quando o inimigo morre, dar um knockback
if (hp <= 0) {
	instance_create_layer(x, y, layer, obj_enemyDeadPhysics)
	instance_destroy();
	
}