//Dano da bala
with (other) {
	hp --;
	flash = 3;
	hitfrom = other.direction;
}

//Destruir a bala quando bater no inimigo
instance_destroy();