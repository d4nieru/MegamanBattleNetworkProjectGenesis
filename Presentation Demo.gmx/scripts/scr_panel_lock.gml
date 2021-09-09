///scr_panel_lock(Event)
Event = argument0;

if Event = "Create"{
    Lock_Timer = 0;
}

if Event = "Step"{
    if sprite_index = Base_S{
        if place_meeting(x,y,obj_panel_red_mask) && place_meeting(x+40,y,obj_panel_red_mask) && place_meeting(x-40,y,obj_panel_red_mask) && place_meeting(x,y+24,obj_panel_red_mask) && place_meeting(x,y-24,obj_panel_red_mask){
            Lock_Timer += 1;
            if Lock_Timer >= room_speed/3{
                if place_meeting(x+80,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 80;
                     exit;
                }
                if place_meeting(x+120,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 120;
                     exit;
                }
                if place_meeting(x+160,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 160;
                     exit;
                } 
                if place_meeting(x+200,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 200;
                     exit;
                }
                if place_meeting(x+240,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 240;
                     exit;
                }
                if place_meeting(x+280,y,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     x += 280;
                     exit;
                }
                if place_meeting(x,y+48,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     y += 48;
                     exit;
                }
                if place_meeting(x,y-48,obj_panel_blue_mask){
                     Lock_Timer = 0;
                     y -= 48;
                     exit;
                }                                                                                                                    
            }
        }
    }
}    
