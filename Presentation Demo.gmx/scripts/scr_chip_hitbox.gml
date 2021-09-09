//Cannon
if sprite_index = spr_megaman_cannon1 && image_index >= 5 && Buster_HB{
    Buster_HB = false;
    audio_play_sound(sou_cannon,0,0);
    with(instance_create(x+40,y+15,obj_buster_hitbox)){
       Travel = true;
       Owner = other.id;
       Power = global.Slot_Power[1];
       Hurt = true;
       Buster_Sound = MegaBuster;
    }
}

//Gun Family
if sprite_index = spr_megaman_shot && image_index >= 3 && Buster_HB{
    Buster_HB = false;
    switch(global.Slot_Name[1]){
       case "ShotGun":
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = true;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_ShotGun;
         Buster_Effect = obj_yellowhitpure_effect;
         Buster_Sound = MegaBuster;
       }
       break;
       
       case "VGun":
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = true;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_VGun;
         Buster_Effect = obj_yellowhitpure_effect;
         Buster_Sound = MegaBuster;         
       }
       break;      
       
       case "LineGun":
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = true;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_LineGun;
         Buster_Effect = obj_yellowhitpure_effect;
         Buster_Sound = MegaBuster;
       }
       break;  
       
       case "Spreader":
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = true;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_Spreader;
         Buster_Effect = obj_yellowhitpure_effect;
         Buster_Sound = MegaBuster;
       }
       break;               
    }
}

//Vulcan
if sprite_index = spr_megaman_vulcan && image_index >= 2 && Buster_HB{
    audio_play_sound(sou_vulcan,0,0);
    Buster_HB = false;
    with(instance_create(x+40,y+15,obj_buster_hitbox)){
       Travel = true;
       Owner = other.id;
       Power = global.Slot_Power[1];
       Chip_Effect[1] = CE_ShotGun;
       Semi_Hurt = true;
       Buster_Sound = MegaBuster;
    }
}

//AirShot
if sprite_index = spr_megaman_airshot && image_index >= 3 && Buster_HB{
    Buster_HB = false;
    with(instance_create(x+40,y+15,obj_buster_hitbox)){
       Travel = true;
       Owner = other.id;
       Power = global.Slot_Power[1];
       Chip_Effect[1] = CE_BlowBack;
       Hurt = true;
       Buster_Sound = MegaBuster;
    }
}

//Swords
if sprite_index = spr_megaman_sword && image_index >= 4 || sprite_index = spr_megaman_hurt{
  if instance_exists(obj_buster_hitbox){
    with(obj_buster_hitbox){
       if !Travel {instance_destroy()}
    }
  }
}

if sprite_index = spr_megaman_sword && image_index >= 2 && Buster_HB{
  audio_play_sound(sou_sword_swing,0,0);
  if global.Slot_Name[1] = "LifeSword"{
     Buster_HB = false;
     with(instance_place(x+40,y,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }
     with(instance_place(x+40,y-24,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }
     with(instance_place(x+40,y+24,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }
     with(instance_place(x+80,y,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }
     
     with(instance_place(x+80,y-24,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }
     with(instance_place(x+80,y+24,obj_panel)){
        with(instance_create(x,y-3,obj_buster_hitbox)){
         Travel = false;
         Owner = obj_megaman.id;
         Power = global.Slot_Power[1];
         Hurt = true;
        }
     }                         
     instance_create(x+47,y+3,obj_lifesword_effect);
  }
  
  if global.Slot_Name[1] = "Sword"{
      Buster_HB = false;
      with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
      instance_create(x+40,y,obj_sword_effect);
  }
  
   if global.Slot_Name[1] = "LongSword"{
      Buster_HB = false;
      with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
      with(instance_create(x+40*2,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
      instance_create(x+54,y,obj_longsword_effect);
  }
  
   if global.Slot_Name[1] = "WideSword"{
      Buster_HB = false;
      if y = 99{
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
       with(instance_create(x+40,y+39,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
       with(instance_create(x+40,y-9,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
   }
   
   if y = (99+24){
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
       with(instance_create(x+40,y-9,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
   }
   
   if y = (99-24){
      with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
       with(instance_create(x+40,y+39,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
      }
   }
     
      instance_create(x+40,y,obj_widesword_effect);
  } 
  
   if global.Slot_Name[1] = "AirSword"{
      Buster_HB = false;
      if y = 99{
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
       with(instance_create(x+40,y+39,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
       with(instance_create(x+40,y-9,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
   }
   
   if y = (99+24){
       with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
       with(instance_create(x+40,y-9,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
   }
   
   if y = (99-24){
      with(instance_create(x+40,y+15,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
       with(instance_create(x+40,y+39,obj_buster_hitbox)){
         Travel = false;
         Owner = other.id;
         Power = global.Slot_Power[1];
         Hurt = true;
         Chip_Effect[1] = CE_BlowBack;
      }
   }
     
      instance_create(x+40,y,obj_widesword_effect);
  }     
}

//Throwable Chips
if sprite_index = spr_megaman_throw && image_index >= 1 && image_index <= 2{
audio_play_sound(sou_throwing,0,0);
//MiniBomb
with(instance_place(x,y,obj_minibomb)){
  Power = global.Slot_Power[1];
  Owner = other.id;
  Travel = false;  
  Hurt = true; 
}

}


