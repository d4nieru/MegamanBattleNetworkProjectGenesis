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
if obj_custom_gague.image_speed != 0 && button_l_press || obj_custom_gague.image_speed != 0 && button_r_press{
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
if sprite_index = spr_megaman_base && image_index = 0 && button_a_press{
   if global.Slot_Name[1] = "Sword" || global.Slot_Name[1] = "WideSword" || global.Slot_Name[1] = "LongSword" || global.Slot_Name[1] = "AirSword" || global.Slot_Name[1] = "LifeSword" || global.Slot_Name[1] = "FireSword" || global.Slot_Name[1] = "AquaSword" || global.Slot_Name[1] = "ElecSword" || global.Slot_Name[1] = "BambooSword" {
       image_index = 0;
       sprite_index = Sword_Sep;
   }
   if global.Slot_Name[1] = "StepSword" || global.Slot_Name[1] = "StepCross"{
      image_index = 0.1;
      Direction = StepSword;
   }
   if global.Slot_Name[1] = "Cannon" || global.Slot_Name[1] = "HiCannon" || global.Slot_Name[1] = "M-Cannon" || global.Slot_Name[1] = "YoYo"{
      image_index = 0;
     sprite_index = BusterC_Sep;
   }  
   if global.Slot_Name[1] = "AirShot" || global.Slot_Name[1] = "Vulcan1" || global.Slot_Name[1] = "Vulcan2" || global.Slot_Name[1] = "Vulcan3" || global.Slot_Name[1] = "SuprVulcan" || global.Slot_Name[1] = "ShotGun" || global.Slot_Name[1] = "VGun" || global.Slot_Name[1] = "LineGun" || global.Slot_Name[1] = "Spreader"{
      image_index = 0;
     sprite_index = Buster_Sep;
   }
   if global.Slot_Name[1] = "GutPunch"{
       image_index = 0;
       sprite_index = Punch_Sep;
   }
   if global.Slot_Name[1] = "MiniBomb"{
       image_index = 0;
      sprite_index = Throw_Sep;
      with(instance_create(x-13,y+1,obj_minibomb)){
          Power = global.Slot_Power[1];
      }
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
   if global.Slot_Name[1] = "Invis"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover2);
       Invis = true;
       Invis_Timer = 0;
       Hurt = false;
       Hurt_Timer = 0;
       Damage_Flash = true;
       global.Slot_Name[1] = "";
       global.Slot_Code[1] = -1;
       global.Slot_Power[1] = -1;
       global.Slot_Element[1] = -1;
       global.Slot_Icon[1] = -1;       
       }
   }
if global.Slot_Name[1] = "Barrier"{
    with(obj_barrier) {instance_destroy()};
    instance_create(x+1,y+1,obj_barrier_10);
    if Damage < 0{
        Hp += Damage;
        player_hp = Hp;
        Damage = 0;
    }
    Shield = 2;
    Barrier_Hp = 10;
    global.Slot_Name[1] = "";
    global.Slot_Code[1] = -1;
    global.Slot_Power[1] = -1;
    global.Slot_Element[1] = -1;
    global.Slot_Icon[1] = -1;    
}           
   if global.Slot_Name[1] = "HP10"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover);
       Damage += 10;
       }
   }
   if global.Slot_Name[1] = "HP30"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover);
       Damage += 30;
       }
   }
   if global.Slot_Name[1] = "HP50"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_recover);
       Damage += 50;
       }
   }      
   if global.Slot_Name[1] = "SwordMode"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_arm_change);
       Buster_Arm = BA_SwordMode[0];
       global.Slot_Name[1] = "";
       global.Slot_Code[1] = -1;
       global.Slot_Power[1] = -1;
       global.Slot_Element[1] = -1;
       global.Slot_Icon[1] = -1;       
       }
   }  
   if global.Slot_Name[1] = "WonderWand"{
     if !instance_exists(obj_recover){  
       instance_create(x+2,y,obj_arm_change);
       Buster_Arm = BA_WonderWand[0];
       global.Slot_Name[1] = "";
       global.Slot_Code[1] = -1;
       global.Slot_Power[1] = -1;
       global.Slot_Element[1] = -1;
       global.Slot_Icon[1] = -1;       
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
   if global.Slot_Name[1] = "FldrBack"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     FolderBack = true;
   }   
      
   //Navi Chips//
   if global.Slot_Name[1] = "GutsMan"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     //Direction = GutsMan;
     GutsMan_Summon = true;
   }
   if global.Slot_Name[1] = "CrashMan"{
     with(obj_field){ Fade = true; Move_Mega = false}
     with(obj_virus){ State = Frozen}
     State = S_Frozen;
     CrashMan_Summon = true;
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
