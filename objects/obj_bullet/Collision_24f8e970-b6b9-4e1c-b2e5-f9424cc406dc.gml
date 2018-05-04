//Dano da bala
with (other) {
	hp --;
	hitfrom = other.direction;
}

//Destruir a bala quando bater no inimigo
instance_destroy();