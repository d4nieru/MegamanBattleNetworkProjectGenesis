//Megaman
if place_meeting(x,y,obj_buster_hitbox) && mask_index = Mask{
  Power_Damage = instance_place(x,y,obj_buster_hitbox).Power * -1;
  Chip_Effect[1] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[1];
  Chip_Effect[2] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[2];
  with(instance_place(x,y,obj_buster_hitbox)) {instance_destroy();}
  if Shield = false{
if Chip_Effect[1] = CE_BlowBack || Chip_Effect[2] = CE_BlowBack{
     if place_meeting(x+40,y,obj_panel_blue) && !place_meeting(x+40,y,obj_virus) && !place_meeting(x+40,y,obj_virus){ 
    if instance_place(x+40,y,obj_panel_blue).sprite_index = spr_panel_blue{ 
     x += 40;
}
}           
}
if Chip_Effect[1] = CE_ShotGun || Chip_Effect[2] = CE_ShotGun{
     if place_meeting(x+40,y,obj_panel){ 
     with(instance_place(x+40,y,obj_panel)){
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Semi_Hurt = true; 
               Timer = 1;
         }
     }
}           
}
Damage += Power_Damage;
}
}
Power_Damage = 0;
Chip_Effect[1] = 0;
Chip_Effect[2] = 0;
