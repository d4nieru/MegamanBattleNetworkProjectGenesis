//Arm Change
//Sword Mode
if Buster_Arm = BA_SwordMode[0]{
    if keyboard_check_pressed(ord("A")) && !instance_exists(obj_recover){
        instance_create(x+2,y,obj_arm_change);
        Buster_Arm = BA_SwordMode[1];
        exit;
    }
    if keyboard_check_pressed(ord("S")) && !instance_exists(obj_recover){
        instance_create(x+2,y,obj_arm_change);
        Buster_Arm = BA_SwordMode[2];
        exit;
    }    
}

//WonderWand
if Buster_Arm = BA_WonderWand[0]{
    if keyboard_check_pressed(ord("S")) && !instance_exists(obj_recover){
        instance_create(x+2,y,obj_arm_change);
        Buster_Arm = BA_WonderWand[1];
        exit;
    }
}
if Buster_Arm = BA_WonderWand[1]{
    if keyboard_check_pressed(ord("S")) && !instance_exists(obj_recover){
        instance_create(x+2,y,obj_arm_change);
        Buster_Arm = BA_WonderWand[2];
        exit;
    }
}
if Buster_Arm = BA_WonderWand[2]{
    if keyboard_check_pressed(ord("S")) && !instance_exists(obj_recover){
        instance_create(x+2,y,obj_arm_change);
        Buster_Arm = BA_WonderWand[0];
        exit;
    }
}

    
//Chip Arms    
if sprite_index = BusterC_Sep{
  if image_index >= 1 && !instance_exists(obj_ingamechip_player){
      //Cannon
      if global.Slot_Name[1] = "Cannon"{
            with(instance_create(x+14,y-58,obj_cannon)){
                Cannon_Type = 1;
                Owner = other.id;
                other.WChild = id;
            }
      }
      if global.Slot_Name[1] = "HiCannon"{
            with(instance_create(x+14,y-58,obj_cannon)){
                Cannon_Type = 2;
                Owner = other.id;
                other.WChild = id;
            }
      } 
      if global.Slot_Name[1] = "M-Cannon"{
            with(instance_create(x+14,y-58,obj_cannon)){
                Cannon_Type = 3;
                Owner = other.id;
                other.WChild = id;
            }
      } 
      //YoYo
      if global.Slot_Name[1] = "YoYo"{
          with(instance_create(x+26,y-11,obj_yoyo_holder)){
            Owner = other.id;
            other.WChild = id;
          }
      }          
  }
  
}

if sprite_index = Buster_Sep{
      if !instance_exists(obj_ingamechip_player){
     if ChargeBuster_Use{
         with(instance_create(x+13,y-18,obj_wonderwand)){
             if other.Buster_Arm = 5 {Name = "Wisp";}
             if other.Buster_Arm = 6 {Name = "IceTower";}
             if other.Buster_Arm = 7 {Name = "Tornado";}
             Owner = other.id
             other.WChild = id;
         }
      exit;   
     }          
          //AirShot
         if global.Slot_Name[1] = "AirShot"{
            with(instance_create(x+14,y-60,obj_airshot)){
                Owner = other.id;
                other.WChild = id;
            }
         }   
         //Vulcan
         if global.Slot_Name[1] = "Vulcan1" || global.Slot_Name[1] = "Vulcan2" || global.Slot_Name[1] = "Vulcan3" || global.Slot_Name[1] = "SuprVulcan"{
             with(instance_create(x+12,y-61,obj_vulcan)){
                Owner = other.id;
                other.WChild = id;
             }
         } 
         //Spreader Family
         if global.Slot_Name[1] = "ShotGun"{
             with(instance_create(x+12,y-60,obj_spreader)){
                Spreader_Type = 1;
                Owner = other.id;
                other.WChild = id;
             }
         } 
         if global.Slot_Name[1] = "VGun"{
             with(instance_create(x+12,y-60,obj_spreader)){
                Spreader_Type = 2;
                Owner = other.id;
                other.WChild = id;
             }
         }
         if global.Slot_Name[1] = "LineGun"{
             with(instance_create(x+12,y-60,obj_spreader)){
                Spreader_Type = 3;
                Owner = other.id;
                other.WChild = id;
             }
         }
         if global.Slot_Name[1] = "Spreader"{
             with(instance_create(x+12,y-60,obj_spreader)){
                Spreader_Type = 4;
                Owner = other.id;
                other.WChild = id;
             }
         }                               
      }
}

//Sword
if sprite_index = Sword_Sep{
  if image_index >= 1 && !instance_exists(obj_ingamechip_player){
     if ChargeBuster_Use{
         with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 1;
             if other.Buster_Arm = 2 {Name = "Sword";}
             if other.Buster_Arm = 3 {Name = "WideSword";}
             if other.Buster_Arm = 4 {Name = "LongSword";}
             Owner = other.id
             other.WChild = id;
         }
      exit;   
     }
     if global.Slot_Name[1] = "Sword" || global.Slot_Name[1] = "WideSword" || global.Slot_Name[1] = "LongSword" || global.Slot_Name[1] = "AirSword" || global.Slot_Name[1] = "LifeSword" || global.Slot_Name[1] = "StepSword" || global.Slot_Name[1] = "StepCross"{
         with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 1;
             Owner = other.id;
             other.WChild = id;
         }
     } 
     if global.Slot_Name[1] = "FireSword"{
        with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 2;
             Owner = other.id;
             other.WChild = id;
        }
     }
     if global.Slot_Name[1] = "AquaSword"{
        with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 3;
             Owner = other.id;
             other.WChild = id;
        }
     }
     if global.Slot_Name[1] = "ElecSword"{
        with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 4;
             Owner = other.id;
             other.WChild = id;
        }
     }
     if global.Slot_Name[1] = "BambooSword"{
        with(instance_create(x-17,y-14,obj_sword)){
             Sword_Type = 5;
             Owner = other.id;
             other.WChild = id;
        }
     }               
  }
}

if sprite_index = Punch_Sep && image_index >= 2 && !instance_exists(obj_ingamechip_player){
     if global.Slot_Name[1] = "GutPunch"{
        with(instance_create(x-28,y-44,obj_gutfist)){
            Owner = other.id;
            other.WChild = id;
        }
     }
}

//StoneBody
if StoneBody < 200 && StoneBody != 0{
   StoneBody += 1;
   if StoneBody = 200{
        StoneBody = 0;
        Shield = 0;
        sprite_index = spr_megaman_base;
   }
}
