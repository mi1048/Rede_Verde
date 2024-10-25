// verifica chao
if(!place_meeting(x,y + 10,Obj_ground)){
grounded = false;
}
else{
grounded = true;
}
show_debug_message(grav);

// sobe e desce no ar
if(!grounded){
	y = y - (jump - grav);
	if(subindo){
	
	
		if(grav >= jump){
			
		subindo = false;
		image_blend = c_yellow;
		}
		else{
		grav += 0.5;
		}
	}
	else{
	grav += 0.4;
	}
}
else{
	if(keyboard_check(vk_space)){
	 y = y - 11
	 subindo = true;
	 grounded = false;
	}
grav = 0;
}


// movimentação
if(keyboard_check(ord("A") || vk_left)){
	x -= veloc;
}
if(keyboard_check(ord("D") || vk_right)){
	x += veloc;
}

if(keyboard_check(vk_lshift)){
	tiro = instance_create_layer(x+ 48, y,self.layer, Obj_tiro);
	
	
}


