//Objeto se destrói se passar do range
if (distance_to_object(obj_player) > range) {
	instance_destroy(self);
}
