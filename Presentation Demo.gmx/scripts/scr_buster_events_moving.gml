//Buster Event Variables
Chip_Effect[1] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[1];
Chip_Effect[2] = instance_place(x,y,obj_buster_hitbox).Chip_Effect[2];
MegaBuster = 1;
Buster_Sound = instance_place(x,y,obj_buster_hitbox).Buster_Sound;
Hurt_E = instance_place(x,y,obj_buster_hitbox).Hurt;
Semi_Hurt_E = instance_place(x,y,obj_buster_hitbox).Semi_Hurt;
Stay = instance_place(x,y,obj_buster_hitbox).Stay;
Power_E = instance_place(x,y,obj_buster_hitbox).Power;
Element_Save = instance_place(x,y,obj_buster_hitbox).Element;

//Destroy the Hitbox
if Stay = false{
    with(instance_place(x,y,obj_buster_hitbox)) {instance_destroy();}
}   

//Chip Effects
if Chip_Effect[1] = CE_ShotGun || Chip_Effect[2] = CE_ShotGun{
     if place_meeting(x+40,y,obj_panel){ 
     with(instance_place(x+40,y,obj_panel)){
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Semi_Hurt = true; 
               Timer = 1;
         }
     }
} 
    Chip_Effect[1] = 0;
    Chip_Effect[2] = 0;          
}

if Chip_Effect[1] = CE_VGun || Chip_Effect[2] = CE_VGun{
     if place_meeting(x+40,y+24,obj_panel){ 
     with(instance_place(x+40,y+24,obj_panel)){
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}
    Chip_Effect[1] = 0;
    Chip_Effect[2] = 0;                
}

if Chip_Effect[1] = CE_LineGun || Chip_Effect[2] = CE_LineGun{
     if place_meeting(x,y+24,obj_panel){ 
     with(instance_place(x,y+24,obj_panel)){
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}
    Chip_Effect[1] = 0;
    Chip_Effect[2] = 0;                
}

if Chip_Effect[1] = CE_Spreader || Chip_Effect[2] = CE_Spreader{
     if place_meeting(x,y+24,obj_panel){ 
     with(instance_place(x,y+24,obj_panel)){
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
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
     //if other.Buster_Effect != -1 {instance_create(x,y-4,other.Buster_Effect)}
         with(instance_create(x,y-3,obj_buster_hitbox)){
               Power = global.Slot_Power[1];
               Owner = obj_megaman.id;
               Travel = false;  
               Hurt = true; 
               Timer = 1;
         }
     }
}   
    Chip_Effect[1] = 0;
    Chip_Effect[2] = 0;              
}

//Buster SFX
if Buster_Sound = MegaBuster{
 audio_play_sound(snd_buster_impact,0,0);
}

exit;





