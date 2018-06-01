if (room = rm_cutscene and (!audio_is_playing(snd_cutscene))){
	audio_play_sound(snd_cutscene, 3, false);	
}

if (room = rm_menu and (!audio_is_playing(snd_menu))){
	audio_stop_sound(snd_cutscene);
	audio_stop_sound(snd_credits);
	audio_stop_sound(snd_mangueiras);
	audio_stop_sound(snd_geologia);
	audio_stop_sound(snd_910);
	audio_play_sound(snd_menu, 3, false);
}

if (room = rm_mangueiras and (!audio_is_playing(snd_mangueiras))){
	audio_stop_sound(snd_menu);
	audio_play_sound(snd_mangueiras, 3, true);
}

if (room = rm_910 and (!audio_is_playing(snd_910))){
	audio_stop_sound(snd_mangueiras);
	audio_stop_sound(snd_menu);
	audio_play_sound(snd_910, 3, true);
}

if (room = rm_geologia and (!audio_is_playing(snd_geologia))){
	audio_stop_sound(snd_910);
	audio_stop_sound(snd_menu);
	audio_play_sound(snd_geologia, 3, true);
}

if (room = rm_credits and (!audio_is_playing(snd_credits))){
	audio_stop_sound(snd_geologia);
	audio_stop_sound(snd_menu);
	audio_play_sound(snd_credits, 3, false);
}