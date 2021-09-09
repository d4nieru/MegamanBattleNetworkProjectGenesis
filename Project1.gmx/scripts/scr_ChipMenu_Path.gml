///scr_ChipMenu_Path(Direction) 1 = Right, -1 = Left

Direction = argument0

if Direction = 1{

with(obj_panel){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_player){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_virus){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_virus_ally){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_fieldobject){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_projectile){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_impacteffect){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
with(obj_explosion){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}
/*with(obj_hitbox){
    path_start(ph_turn_start_f,2,path_action_stop,0);
}*/

with(obj_chip_menu){
    path_start(ph_chip_menu_f,9,path_action_stop,0);
}
with(obj_health_border){
    path_start(ph_chip_menu_f,9,path_action_stop,0);
}

}

if Direction = -1{

with(obj_panel){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
with(obj_player){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
with(obj_virus){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
with(obj_virus_ally){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
with(obj_impacteffect){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
with(obj_explosion){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}
/*with(obj_hitbox){
    path_start(ph_turn_start_b,2,path_action_stop,0);
}*/

with(obj_chip_menu){
    path_start(ph_chip_menu_b,9,path_action_stop,0);
}
with(obj_stream_power_button){
    path_start(ph_chip_menu_b,9,path_action_stop,0);
}
with(obj_health_border){
    path_start(ph_chip_menu_b,9,path_action_stop,0);
}

}
