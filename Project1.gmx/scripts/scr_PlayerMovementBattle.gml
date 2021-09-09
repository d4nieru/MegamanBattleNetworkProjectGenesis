move[0] = (bc.key_left * -1) + bc.key_right;
move[1] = (bc.key_up * -1) + bc.key_down;

if sprite_index = Base_S && image_index <= base_move && Wait = id || sprite_index = Buster_S && image_index >= 0 && Wait = id{

if bc.key_right_p && !bc.key_left_p && !bc.key_up_p && !bc.key_down_p{
    if place_meeting(x+40,y,obj_panel){
        NP = instance_place(x+40,y,obj_panel);
        event_user(0);
    }
}
if !bc.key_right_p && bc.key_left_p && !bc.key_up_p && !bc.key_down_p{
    if place_meeting(x-40,y,obj_panel){
        NP = instance_place(x-40,y,obj_panel);
        event_user(0);
    }
}
if !bc.key_right_p && !bc.key_left_p && bc.key_up_p && !bc.key_down_p{
    if place_meeting(x,y-24,obj_panel){
        NP = instance_place(x,y-24,obj_panel);
        event_user(0);
    }
}
if !bc.key_right_p && !bc.key_left_p && !bc.key_up_p && bc.key_down_p{
    if place_meeting(x,y+24,obj_panel){
        NP = instance_place(x,y+24,obj_panel);
        event_user(0);
    }
}

}

if sprite_index = Base_S && image_index <= base_move && Wait = id || sprite_index = Buster_S && image_index >= 0 && Wait = id{

switch(move[0]){
    case 0:
    movetimer[0] = 0;
    break;    

    case 1:
    movetimer[0] += 1;
    if movetimer[0] >= round(room_speed/5){
        if place_meeting(x+40,y,obj_panel){
            NP = instance_place(x+40,y,obj_panel);
            event_user(0);
            exit;
        }
    }
    break;
    
    case -1:
    movetimer[0] -= 1;
    if movetimer[0] <= round((-1 * room_speed/5)){
        if place_meeting(x-40,y,obj_panel){
            NP = instance_place(x-40,y,obj_panel);
            event_user(0);
            exit;
        }
    }
    break;
} 

switch(move[1]){
    case 0:
    movetimer[1] = 0;
    break;    

    case 1:
    movetimer[1] += 1;
    if movetimer[1] >= round(room_speed/7){
        if place_meeting(x,y+24,obj_panel){
            NP = instance_place(x,y+24,obj_panel);
            event_user(0);
            exit;
        }
    }
    break;
    
    case -1:
    movetimer[1] -= 1;
    if movetimer[1] <= round((-1 * room_speed/7)){
        if place_meeting(x,y-24,obj_panel){
            NP = instance_place(x,y-24,obj_panel);
            event_user(0);
            exit;
        }
    }
    break;
} 

}
