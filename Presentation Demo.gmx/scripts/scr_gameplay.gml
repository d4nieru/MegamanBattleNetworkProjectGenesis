//Movement
if button_right && !button_left && !button_up && !button_down && !Move_Cancel{
  if sprite_index = spr_megaman_base && image_index = 0{  
    if place_meeting(x+39,y,obj_panel_red_mask){ 
    image_speed = spd;
    Direction = D_right;
  }
 }
 if sprite_index = spr_megaman_buster{
   if place_meeting(x+39,y,obj_panel_red_mask){
     if image_index < 1.9{
     image_speed = spd;
     sprite_index = spr_megaman_base;
     Direction = D_right;
     quick_buster = true;
     }
   }
 }  
}

if button_left && !button_right && !button_up && !button_down && !Move_Cancel{
 if sprite_index = spr_megaman_base && image_index = 0{ 
  if place_meeting(x-39,y,obj_panel_red_mask){  
    image_speed = spd;
    Direction = D_left;
  }
 }
 if sprite_index = spr_megaman_buster{
   if place_meeting(x-39,y,obj_panel_red_mask){
     if image_index < 1.9{
     image_speed = spd;
     sprite_index = spr_megaman_base;
     Direction = D_left;
     quick_buster = true;
     }
   }
 }   
}

if button_up && !button_right && !button_left && !button_down && !Move_Cancel{
 if sprite_index = spr_megaman_base && image_index = 0{ 
  if place_meeting(x,y-24,obj_panel_red_mask){  
    image_speed = spd;
    Direction = D_up;
  } 
 }
 if sprite_index = spr_megaman_buster{
   if place_meeting(x,y-24,obj_panel_red_mask){
     if image_index < 1.9{
     image_speed = spd;
     sprite_index = spr_megaman_base;
     Direction = D_up;
     quick_buster = true;
    }
   }
 }  
}

if button_down && !button_right && !button_left && !button_up && !Move_Cancel{
 if sprite_index = spr_megaman_base && image_index = 0{ 
  if place_meeting(x,y+24,obj_panel_red_mask){  
    image_speed = spd;
    Direction = D_down;
  }
 }
 if sprite_index = spr_megaman_buster{
   if place_meeting(x,y+24,obj_panel_red_mask){
     if image_index < 1.9{
     image_speed = spd;
     sprite_index = spr_megaman_base;
     Direction = D_down;
     quick_buster = true;
    }
   }
 } 
}

if Move_Cancel != false{
 Move_Cancel += 1;
 if Move_Cancel >= 5{
    Move_Cancel = false;
 }
}


//Buster
if instance_exists(obj_buster_charge) && !button_b{
  if Buster_Arm = BA_MegaBuster {sprite_index = spr_megaman_buster;}
  if Buster_Arm = BA_SwordMode[0] || Buster_Arm = BA_SwordMode[1] || Buster_Arm = BA_SwordMode[2]{
   if charge{  
     image_index = 0;
     sprite_index = Sword_Sep;
     ChargeBuster_Use = true;
     buster_charge = false;
     charge = false; 
     }      
  }
  if Buster_Arm = BA_WonderWand[0] || Buster_Arm = BA_WonderWand[1] || Buster_Arm = BA_WonderWand[2]{
   if charge{  
     image_index = 0;
     sprite_index = Buster_Sep;
     ChargeBuster_Use = true;
     buster_charge = false;
     charge = false; 
     }      
  }  
}
if sprite_index = spr_megaman_buster && image_index >= 2 {bstr_spd = .4}
if sprite_index != spr_megaman_base{
  if instance_exists(obj_buster_charge){
    with(obj_buster_charge) {instance_destroy();}
   }
}
if button_b && sprite_index = spr_megaman_base{
   if sprite_index = spr_megaman_base && !charge{
     charge_start -= 1
     if charge_start <= 30{
        if !instance_exists(obj_buster_charge) {instance_create(x+4,y-4,obj_buster_charge); charge_start = 50; audio_play_sound(snd_buster_charge, 0, 0);}
     }
     if charge_start = 0 && !charge{
        charge = true
        with(obj_buster_charge) {
        audio_play_sound(snd_buster_full, 0, 0);
        image_index = 8;
        }
     }
   }
}

if button_b_release{
   charge_start = chrg_spd; // <---- change this.
  if sprite_index = spr_megaman_base && image_index = 0{ 
     if !charge {sprite_index = spr_megaman_buster;}
     if charge && Buster_Arm = BA_MegaBuster {sprite_index = spr_megaman_buster;}
 } 
  if sprite_index = spr_megaman_base && image_index >= 1{ 
  switch(Direction){
     case D_right:
     x += 40;
     //Direction = 0;
     image_index = 3;
     sprite_index = spr_megaman_buster;
     break;
     case D_left:
     x -= 40;
     //Direction = 0;
     image_index = 3;
     sprite_index = spr_megaman_buster;
     break;
     case D_up:
     y -= 24;
     //Direction = 0;
     image_index = 3;
     sprite_index = spr_megaman_buster;
     break;
     case D_down:
     y += 24;
     //Direction = 0;
     image_index = 3;
     sprite_index = spr_megaman_buster;
     break;
     
   }
 }  
  /*if sprite_index = spr_megaman_buster && image_index >= 4{
    image_index = 0;
  } */ 
} 

if quick_buster && sprite_index = spr_megaman_base && image_index = 0{
  image_index = 3;
  sprite_index = spr_megaman_buster;
  quick_buster = false;
}
if charge && !button_b{
  //charge = false;
  //image_index = 0;
  sprite_index = spr_megaman_buster;
}
if sprite_index = spr_megaman_buster && image_index >= 3 && Buster_HB{
  Buster_HB = false;
  if !buster_charge{
      with(instance_create(x,y+15,obj_buster_hitbox)){
         audio_play_sound(snd_buster_shot, 0, 0);
         Travel = true
         Owner = other.id
         Power = Owner.atk
         Buster_Sound = MegaBuster;         
      }
  }
  if buster_charge && Buster_Arm = BA_MegaBuster{
      with(instance_create(x,y+15,obj_buster_hitbox)){
         audio_play_sound(snd_buster_shot, 0, 0);
         Travel = true
         Owner = other.id
         Power = Owner.chrg_atk
         Buster_Sound = MegaBuster;
      }
      buster_charge = false;
      charge = false;
  }  
}
  if buster_charge && button_b_release{
      if Buster_Arm = BA_SwordMode[0] || Buster_Arm = BA_SwordMode[1] || Buster_Arm = BA_SwordMode[2]{
           image_index = 0;
           sprite_index = Sword_Sep;
           ChargeBuster_Use = true;
           buster_charge = false;
           charge = false;
           }
      if Buster_Arm = BA_WonderWand[0] || Buster_Arm = BA_WonderWand[1] || Buster_Arm = BA_WonderWand[2]{
           image_index = 0;
           sprite_index = Buster_Sep;
           ChargeBuster_Use = true;
           buster_charge = false;
           charge = false;
           }           
  } 
if charge {buster_charge = true}

//Damage
if sprite_index = spr_megaman_hurt && (Hp - Damage) > 0{
  image_speed = 0;
  image_index = 0;
}
if sprite_index = spr_megaman_hurt && (Hp - Damage) <= 0{
  image_speed = 0;
  image_index = 1;
}






