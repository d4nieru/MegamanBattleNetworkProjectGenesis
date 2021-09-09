//virus
if place_meeting(x,y,obj_buster_hitbox) && mask_index = Mask{
    with(instance_place(x,y,obj_buster_hitbox)){
      if sprite_index = spr_mett_shockwave{
        other.mask_index = spr_no_mask;
      }
    }
    Damage += instance_nearest(x,y,obj_buster_hitbox).Power * -1;
     if instance_place(x,y,obj_buster_hitbox).Chip_Effect[1] = CE_BlowBack || instance_place(x,y,obj_buster_hitbox).Chip_Effect[2] = CE_BlowBack{
     if place_meeting(x+40,y,obj_panel_blue_mask) && !place_meeting(x+40,y,obj_virus){ 
    if instance_place(x+40,y,obj_panel_blue).Panel_Status < 3{ 
     
    if Virus_Type = 1{
     image_index = 1;
     sprite_index = Base;
     Direction = Right;
     State = Halt;
     }
     
     if Virus_Type = 0{
    with(instance_place(x,y,obj_buster_hitbox)){
      instance_destroy();
    }       
       x += 40;
       exit;
     }
     
     }
   }
}
    with(instance_place(x,y,obj_buster_hitbox)){
      if sprite_index != spr_mett_shockwave {instance_destroy();}
    }
} 


