//Chip Replacement

if global.Slot_Name[1] = "" && global.Slot_Code[1] = -1 && global.Slot_Power[1] = -1 && global.Slot_Element[1] = -1 && global.Slot_Icon[1] = -1{
   if global.Slot_Name[2] != "" && global.Slot_Power[2] != -1 && global.Slot_Element[2] != -1 && global.Slot_Icon[2] != -1{
        global.Slot_Name[1] = global.Slot_Name[2];
        global.Slot_Code[1] = global.Slot_Code[2];
        global.Slot_Power[1] = global.Slot_Power[2];
        global.Slot_Element[1] = global.Slot_Element[2];
        global.Slot_Icon[1] = global.Slot_Icon[2];
        
        global.Slot_Name[2] = global.Slot_Name[3];
        global.Slot_Code[2] = global.Slot_Code[3];
        global.Slot_Power[2] = global.Slot_Power[3];
        global.Slot_Element[2] = global.Slot_Element[3];
        global.Slot_Icon[2] = global.Slot_Icon[3];
        
        global.Slot_Name[3] = global.Slot_Name[4];
        global.Slot_Code[3] = global.Slot_Code[4];
        global.Slot_Power[3] = global.Slot_Power[4];
        global.Slot_Element[3] = global.Slot_Element[4];
        global.Slot_Icon[3] = global.Slot_Icon[4];
        
        global.Slot_Name[4] = global.Slot_Name[5];
        global.Slot_Code[4] = global.Slot_Code[5];
        global.Slot_Power[4] = global.Slot_Power[5];
        global.Slot_Element[4] = global.Slot_Element[5];
        global.Slot_Icon[4] = global.Slot_Icon[5];
        
        global.Slot_Name[5] = "";
        global.Slot_Code[5] = -1;
        global.Slot_Power[5] = -1;
        global.Slot_Element[5] = -1;
        global.Slot_Icon[5] = -1;
   }
}

//Chip Turn
if obj_custom_gague.image_speed != 0 && key_l || obj_custom_gague.image_speed != 0 && key_r{
  with(obj_custom_gague){
  global.Slot_Name[1] = "";
  global.Slot_Code[1] = -1;
  global.Slot_Power[1] = -1;
  global.Slot_Element[1] = -1;
  global.Slot_Icon[1] = -1;
 
  global.Slot_Name[2] = "";
  global.Slot_Code[2] = -1;
  global.Slot_Power[2] = -1;
  global.Slot_Element[2] = -1;
  global.Slot_Icon[2] = -1;   
  
  global.Slot_Name[3] = "";
  global.Slot_Code[3] = -1;
  global.Slot_Power[3] = -1;
  global.Slot_Element[3] = -1;
  global.Slot_Icon[3] = -1; 
  
  global.Slot_Name[4] = "";
  global.Slot_Code[4] = -1;
  global.Slot_Power[4] = -1;
  global.Slot_Element[4] = -1;
  global.Slot_Icon[4] = -1;  
  
  global.Slot_Name[5] = "";
  global.Slot_Code[5] = -1;
  global.Slot_Power[5] = -1;
  global.Slot_Element[5] = -1;
  global.Slot_Icon[5] = -1;   
     
     Gague = 0;
     image_speed = 0;
     image_index = 0;
  }
  obj_chip_holder.Move_In = true;
  obj_chip_holder.Draw_Time = true;
  State = S_Paused;
  with(obj_custom_gague) {image_alpha = 0;}
  with(obj_virus){
    State = Paused;
  }
  obj_health_border.Move = true;
  obj_megaman_emotion.Move = true;
} 

//Chip Usage
if sprite_index = spr_megaman_base && image_index = 0 && key_chip{
   if global.Slot_Name[1] = "Sword" || global.Slot_Name[1] = "WideSword" || global.Slot_Name[1] = "LongSword" || global.Slot_Name[1] = "AirSword" || global.Slot_Name[1] = "LifeSword" {
       image_index = 0;
       sprite_index = spr_megaman_sword;
   }
   if global.Slot_Name[1] = "Cannon"{
      image_index = 0;
     sprite_index = spr_megaman_cannon1;
   }
   if global.Slot_Name[1] = "ShotGun" || global.Slot_Name[1] = "VGun" || global.Slot_Name[1] = "LineGun" || global.Slot_Name[1] = "Spreader"{
      image_index = 0;
     sprite_index = spr_megaman_shot;
   }   
   if global.Slot_Name[1] = "Vulcan1"{
      image_index = 0;
     sprite_index = spr_megaman_vulcan;
   }   
   if global.Slot_Name[1] = "AirShot"{
      image_index = 0;
     sprite_index = spr_megaman_airshot;
   }
   if global.Slot_Name[1] = "MiniBomb"{
       image_index = 0;
      sprite_index = spr_megaman_throw;
      instance_create(x-13,y+1,obj_minibomb);
   }
   if global.Slot_Name[1] = "Atk+10"{
      instance_create(x+7,y-29,obj_poof_effect);
      global.Slot_Name[1] = "";
      global.Slot_Code[1] = -1;
      global.Slot_Power[1] = -1;
      global.Slot_Element[1] = -1;
      global.Slot_Icon[1] = -1;      
   }
   if global.Slot_Name[1] = "StoneBody"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover2);
       sprite_index = spr_megaman_stone;
       Shield = 1;
       StoneBody = 1;
       global.Slot_Name[1] = "";
       global.Slot_Code[1] = -1;
       global.Slot_Power[1] = -1;
       global.Slot_Element[1] = -1;
       global.Slot_Icon[1] = -1;       
       }
   }      
   if global.Slot_Name[1] = "HP10"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover);
       Damage += 10;
       }
   }
   if global.Slot_Name[1] = "BusterUp"{
    if !instance_exists(obj_recover){   
       instance_create(x+2,y,obj_recover);
       atk += 1;
       chrg_atk += 10;
       }
   }      
   if global.Slot_Name[1] = "AreaGrab"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     AreaGrab = true;
   }
      
   //Navi Chips//
   if global.Slot_Name[1] = "GutsMan"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     //Direction = GutsMan;
     GutsMan_Summon = true;
   }
   if global.Slot_Name[1] = "Roll"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     //Direction = Roll;
     Roll_Summon = true;
   }
   if global.Slot_Name[1] = "Roll Plus"{ //TEST CHIP ONLY
     with(obj_field){ Fade = true; Move_Mega = true}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     Direction = RollP;
   }   
   if global.Slot_Name[1] = "ZeroSoul"{ //TEST CHIP ONLY
     with(obj_field){ Fade = true; Move_Mega = true}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     Direction = ZeroSoul;
   }
   if global.Slot_Name[1] = "BlastShot"{
     with(obj_field){ Fade = true; Move_Mega = true}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     Direction = BlastShot;
   }
   
   //TEST CHIP Section
   if global.Slot_Name[1] = "TimeMachine"{
     with(obj_field) {Fade = true; Move_Mega = false}
     with(obj_virus) {State = Frozen}
     State = S_Frozen;
     TimeMachine = true;
   }
   if global.Slot_Name[1] = "Reprogram"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     Reprogram = true;       
   }       
}
