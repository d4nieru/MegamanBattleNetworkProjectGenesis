//Buster SFX Variables
MegaBuster = 1;

//Megaman Buster Hitbox
if place_meeting(x,y,obj_buster_hitbox) && mask_index = Mask{
  Buster_Sound = instance_place(x,y,obj_buster_hitbox).Buster_Sound
  Buster_Effect = instance_place(x,y,obj_buster_hitbox).Buster_Effect;
  Stay = instance_place(x,y,obj_buster_hitbox).Stay;
  Power_Damage = instance_place(x,y,obj_buster_hitbox).Power * -1;
  Element_Save = instance_place(x,y,obj_buster_hitbox).Element;
  Chip_Effect[1] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[1];
  Chip_Effect[2] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[2];
  if !Stay {with(instance_place(x,y,obj_buster_hitbox)) {instance_destroy();}}
  if Stay {mask_index = 0}
  if Chip_Effect[1] = CE_ShotGun || Chip_Effect[2] = CE_ShotGun{
     if place_meeting(x+40,y,obj_panel){ 
     with(instance_place(x+40,y,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
if Chip_Effect[1] = CE_VGun || Chip_Effect[2] = CE_VGun{
     if place_meeting(x+40,y+24,obj_panel){ 
     with(instance_place(x+40,y+24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}  
     if place_meeting(x+40,y-24,obj_panel){ 
     with(instance_place(x+40,y-24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}              
}
if Chip_Effect[1] = CE_LineGun || Chip_Effect[2] = CE_LineGun{
     if place_meeting(x,y+24,obj_panel){ 
     with(instance_place(x,y+24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}  
     if place_meeting(x,y-24,obj_panel){ 
     with(instance_place(x,y-24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}              
}
if Chip_Effect[1] = CE_Spreader || Chip_Effect[2] = CE_Spreader{
     if place_meeting(x,y+24,obj_panel){ 
     with(instance_place(x,y+24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}  
     if place_meeting(x,y-24,obj_panel){ 
     with(instance_place(x,y-24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
} 
     if place_meeting(x+40,y,obj_panel){ 
     with(instance_place(x+40,y,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
} 
     if place_meeting(x+40,y+24,obj_panel){ 
     with(instance_place(x+40,y+24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
} 
     if place_meeting(x+40,y-24,obj_panel){ 
     with(instance_place(x+40,y-24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}
     if place_meeting(x-40,y,obj_panel){ 
     with(instance_place(x-40,y,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
} 
     if place_meeting(x-40,y+24,obj_panel){ 
     with(instance_place(x-40,y+24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
} 
     if place_meeting(x-40,y-24,obj_panel){ 
     with(instance_place(x-40,y-24,obj_panel)){
     if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}               
}  
  if Shield = false{
    if Buster_Effect != -1 {instance_create(x,y,Buster_Effect)} 
 if Chip_Effect[1] = CE_BlowBack || Chip_Effect[2] = CE_BlowBack{
     if place_meeting(x+40,y,obj_panel_blue) && !place_meeting(x+40,y,obj_virus) && !place_meeting(x+40,y,obj_virus){ 
    if instance_place(x+40,y,obj_panel_blue).sprite_index = spr_panel_blue{ 
     x += 40;
}
}           
}
    switch(Buster_Sound){
      case MegaBuster:
      audio_play_sound(snd_buster_impact, 0, 0);
      break;
    }
Damage += Power_Damage;
    if Weakness[1] = Element_Save || Weakness[2] = Element_Save{
       Damage += Power_Damage;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }
}
}
Power_Damage = 0;
Chip_Effect[1] = 0;
Chip_Effect[2] = 0;
Stay = false;
Buster_Effect = -1;
Buster_Sound = 0;
Element_Save = -1;


