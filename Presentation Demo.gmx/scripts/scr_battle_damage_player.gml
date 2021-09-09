//Hurt Animation
if Stun{
  sprite_index = Stun_S;
  Stun_Timer += 1;
  if Stun_Timer = room_speed*2{
     Stun_Timer = 0;
     Stun = false;
     image_index = 0;
     image_speed = 0;
     buster_charge = false;
     charge = false;
     charge_start = 60;
     sprite_index = Base_S;
     exit;
  }
}

if Hurt && !Damage_Flash && !Stun{
   if sprite_index = spr_megaman_base{
      sprite_index = spr_megaman_hurt;
      Damage_Flash = true;
      image_alpha = .5;
   }
   if sprite_index = spr_megaman_hurt{
      Hurt_Timer = 0;
      Semi_Hurt = false;
      Damage_Flash = true;
      image_alpha = .5;
      buster_charge = false;
      charge = false;
      charge_start = 60;
   }   
}
if Semi_Hurt && sprite_index = spr_megaman_base{
   sprite_index = spr_megaman_hurt;
   buster_charge = false;
   charge = false;
   charge_start = 60;
}
if Semi_Hurt && sprite_index = spr_megaman_hurt{
    Hurt_Timer += 1;
    if Hurt_Timer = 40 {Hurt_Timer = 0; Semi_Hurt = false; image_index = 0; sprite_index = spr_megaman_base;}
}

if Hurt && Damage_Flash{
    Hurt_Timer += 1;
    if Hurt_Timer > 0{
       if image_alpha <= .25 {DF_Direction = 1.2}
       if image_alpha >= .5 {DF_Direction = 1.1}
       if DF_Direction = 1.1 {image_alpha -= .05}
       if DF_Direction = 1.2 {image_alpha += .05}
    }
    if Hurt_Timer = 40 {image_index = 0; sprite_index = spr_megaman_base;}
    if Hurt_Timer >= 180 {Hurt = false; Hurt_Timer = 0; Damage_Flash = false; image_alpha = 1; DF_Direction = 0;}
}
if Invis && Damage_Flash{
    if Shield_Save = -4 {Shield_Save = Shield};
    Shield = 1;
    Invis_Timer += 1;
    if Invis_Timer > 0{
       if image_alpha <= .25 {DF_Direction = 1.2}
       if image_alpha >= .5 {DF_Direction = 1.1}
       if DF_Direction = 1.1 {image_alpha -= .05}
       if DF_Direction = 1.2 {image_alpha += .05}
    }
    if Invis_Timer >= room_speed*15 {Shield = Shield_Save; Shield_Save = -4; Invis = false; Invis_Timer = 0; Damage_Flash = false; image_alpha = 1; DF_Direction = 0;}
}

if BHurt{
    BHurt_Timer += 1;
    if BHurt_Timer = round(room_speed/2) {BHurt_Timer = 0; BHurt = false;}
}



if Shield = 0 && !BHurt{

//Mett
if place_meeting(x,y,obj_mett_shockwave) && !Hurt{
    Damage += instance_nearest(x,y,obj_mett_shockwave).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_mett_shockwave).Element || Weakness[2] = instance_place(x,y,obj_mett_shockwave).Element{
       Damage += instance_place(x,y,obj_mett_shockwave).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }
    Hurt = true;
    audio_play_sound(sou_hurt,0,0);
}

//Canodumb
if place_meeting(x,y,obj_canodumb_hitbox) && !Hurt{
  Damage += instance_place(x,y,obj_canodumb_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_canodumb_hitbox).Element || Weakness[2] = instance_place(x,y,obj_canodumb_hitbox).Element{
       Damage += instance_place(x,y,obj_canodumb_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }  
  Hurt = true
  audio_play_sound(sou_hurt,0,0);
  with(instance_place(x,y,obj_canodumb_hitbox)){
    instance_destroy();
  }
}
//Champy
if place_meeting(x,y,obj_champy_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_champy_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_champy_hitbox).Element || Weakness[2] = instance_place(x,y,obj_champy_hitbox).Element{
       Damage += instance_place(x,y,obj_champy_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
  if instance_place(x,y,obj_champy_hitbox).Semi = false {Hurt = true;}
  if instance_place(x,y,obj_champy_hitbox).Semi = true {Semi_Hurt = true;}
  audio_play_sound(sou_hurt,0,0);
  with(instance_place(x,y,obj_champy_hitbox)){
    instance_destroy();
  }   
} 
if place_meeting(x,y,obj_champy) && !Hurt{
   Damage += instance_place(x,y,obj_champy).Power * -1;
   Hurt = true;  
   audio_play_sound(sou_hurt,0,0);
}

//Boomer
if place_meeting(x,y,obj_boomer_hitbox) && !Hurt{
    Damage += instance_place(x,y,obj_boomer_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_boomer_hitbox).Element || Weakness[2] = instance_place(x,y,obj_boomer_hitbox).Element{
       Damage += instance_place(x,y,obj_boomer_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }    
    Hurt = true;
    audio_play_sound(sou_hurt,0,0);
}

//Powie
if place_meeting(x,y,obj_powie_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_powie_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_powie_hitbox).Element || Weakness[2] = instance_place(x,y,obj_powie_hitbox).Element{
       Damage += instance_place(x,y,obj_powie_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
   Hurt = true;
   audio_play_sound(sou_hurt,0,0);
}

//Navis
//CrashMan
if place_meeting(x,y,obj_crashman_hitbox) && !Hurt{
    Damage += instance_place(x,y,obj_crashman_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_crashman_hitbox).Element || Weakness[2] = instance_place(x,y,obj_crashman_hitbox).Element{
        Damage += instance_place(x,y,obj_crashman_hitbox).Power * -1;
        with(instance_create(x,y-40,obj_weakness_sign)){
            Owner = other.id;
        }
    }
   if instance_place(x,y,obj_crashman_hitbox).Hurt = true {Hurt = true;}
   if instance_place(x,y,obj_crashman_hitbox).Semi = true {Semi_Hurt = true;}
   if instance_place(x,y,obj_crashman_hitbox).Tank_Cannon = true{
       if !instance_exists(obj_screenshake){  
          with(instance_create(0,0,obj_screenshake)) {alarm[0] = 25;}
        }       
       instance_create(IP.x,IP.y-12,obj_expolsion_doted_effect);
       //Create the hibox
       if instance_place(x,y,obj_panel).Panel_Status != 3 && instance_place(x,y,obj_panel).Panel_Status != 4{
           with(instance_place(x,y,obj_panel)){
               Cracked = true;
           }
       }
       
       if place_meeting(x,y+24,obj_panel){
           instance_create(IP.x,IP.y+24-12,obj_expolsion_doted_effect);
             with(instance_create(IP.x,IP.y+24-3,obj_crashman_hitbox)){
                 Hurt = true;
                 Element = E_Crack;
                 Timer = 1;
                 Power = obj_crashman_boss.Power[4];
                 Travel = false;
             };
           if instance_place(x,y+24,obj_panel).Panel_Status != 3 && instance_place(x,y+24,obj_panel).Panel_Status != 4{
                if instance_place(x,y+24,obj_panel).Panel_Status = 2{
                   with(instance_place(x,y+24,obj_panel)) {Broke = true};
                }
                if instance_place(x,y+24,obj_panel).Panel_Status != 2{
                   with(instance_place(x,y+24,obj_panel)) {Cracked = true; Broke = true};
                }                
           }           
       }
       
       if place_meeting(x,y-24,obj_panel){
           instance_create(IP.x,IP.y-24-12,obj_expolsion_doted_effect);
             with(instance_create(IP.x,IP.y-24-3,obj_crashman_hitbox)){
                 Semi = true;
                 Element = E_Crack;
                 Timer = 1;
                 Power = obj_crashman_boss.Power[4];
                 Travel = false;
             };
           if instance_place(x,y-24,obj_panel).Panel_Status != 3 && instance_place(x,y-24,obj_panel).Panel_Status != 4{
                if instance_place(x,y-24,obj_panel).Panel_Status = 2{
                   with(instance_place(x,y-24,obj_panel)) {Broke = true};
                }
                if instance_place(x,y-24,obj_panel).Panel_Status != 2{
                   with(instance_place(x,y-24,obj_panel)) {Cracked = true; Broke = true};
                }                
           }           
       }   
   }
   if instance_place(x,y,obj_crashman_hitbox).Stay = false {with(instance_place(x,y,obj_crashman_hitbox)) {instance_destroy()} };
   audio_play_sound(sou_hurt,0,0);    
}

//MegaManSF
if place_meeting(x,y,obj_megamanSF_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_megamanSF_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_megamanSF_hitbox).Element || Weakness[2] = instance_place(x,y,obj_megamanSF_hitbox).Element{
       Damage += instance_place(x,y,obj_megamanSF_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
   if instance_place(x,y,obj_megamanSF_hitbox).Hurt = true {Hurt = true;}
   if instance_place(x,y,obj_megamanSF_hitbox).Semi = true {Semi_Hurt = true;}
   if instance_place(x,y,obj_megamanSF_hitbox).Stun = true{
      if !Stun {Stun = true;}
      with(instance_place(x,y,obj_megamanSF_hitbox)) {instance_destroy();}
   }
   audio_play_sound(sou_hurt,0,0);
}

//ToadMan
if place_meeting(x,y,obj_toadman_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_toadman_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_toadman_hitbox).Element || Weakness[2] = instance_place(x,y,obj_toadman_hitbox).Element{
       Damage += instance_place(x,y,obj_toadman_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
   if instance_place(x,y,obj_toadman_hitbox).Stun = false {Hurt = true;}
   if instance_place(x,y,obj_toadman_hitbox).Stun = true{
      Stun = true;
      with(instance_place(x,y,obj_toadman_hitbox)) {instance_destroy();}
   }
   audio_play_sound(sou_hurt,0,0);
}

//GutsMan
if place_meeting(x,y,obj_gutsman) && !Hurt{
   Damage += -25;
   Hurt = true;
   audio_play_sound(sou_hurt,0,0);
}

if place_meeting(x,y,obj_bullet_hitbox) && !Hurt{
    Damage += instance_place(x,y,obj_bullet_hitbox).Power * -1;
    Semi_Hurt = true;
    Hurt_Timer = -10;
    audio_play_sound(sou_hurt,0,0);
    with(instance_place(x,y,obj_bullet_hitbox)){
        Owner.Destroy = true;
        instance_destroy();
    }
}
if place_meeting(x,y,obj_gutsman_hitbox) && !Hurt{
    Damage += instance_place(x,y,obj_gutsman_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_gutsman_hitbox).Element || Weakness[2] = instance_place(x,y,obj_gutsman_hitbox).Element{
       Damage += instance_place(x,y,obj_gutsman_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }    
    Hurt = true;
    audio_play_sound(sou_hurt,0,0);
    if instance_place(x,y,obj_gutsman_hitbox).Chip_Effect = CE_BlowBack{
        if place_meeting(x-40,y,obj_panel_red_mask){
            if !place_meeting(x-40,y,obj_object) && !place_meeting(x-40,y,obj_virus){
                 x -= 40;
            }
        }
    }
}

//Bass
if place_meeting(x,y,obj_bass_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_bass_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_bass_hitbox).Element || Weakness[2] = instance_place(x,y,obj_bass_hitbox).Element{
       Damage += instance_place(x,y,obj_bass_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
   if instance_place(x,y,obj_bass_hitbox).Hurt = true {Hurt = true;}
   audio_play_sound(sou_hurt,0,0);
   if instance_place(x,y,obj_bass_hitbox).Stay = false{
     with(instance_place(x,y,obj_bass_hitbox)) {instance_destroy()}
   }
}

//CrashMan
if place_meeting(x,y,obj_crashman_boss) && !Hurt{
    Damage += -20;
    Hurt = true;
    audio_play_sound(sou_hurt,0,0);
}

//Zero
if place_meeting(x,y,obj_zero_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_zero_hitbox).Power * -1;
    if Weakness[1] = instance_place(x,y,obj_zero_hitbox).Element || Weakness[2] = instance_place(x,y,obj_zero_hitbox).Element{
       Damage += instance_place(x,y,obj_zero_hitbox).Power * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }   
   if instance_place(x,y,obj_zero_hitbox).Hurt = true {Hurt = true;}
   if instance_place(x,y,obj_zero_hitbox).Semi = true {Semi_Hurt = true;}
   if instance_place(x,y,obj_zero_hitbox).Stay = false{
       with(instance_place(x,y,obj_zero_hitbox)) {instance_destroy();}
   }
   audio_play_sound(sou_hurt,0,0);
}
if place_meeting(x,y,obj_zero_boss) && !Hurt{
    Damage += -20;
    Hurt = true;
    audio_play_sound(sou_hurt,0,0);
}

/*if place_meeting(x,y,obj_crashman_hitbox) && !Hurt{
 if instance_place(x,y,obj_crashman_hitbox).Semi{ 
  Damage += instance_place(x,y,obj_crashman_hitbox).Power * -1;
  Semi_Hurt = true;
  audio_play_sound(sou_hurt,0,0);
  with(instance_place(x,y,obj_crashman_hitbox)){
      instance_destroy();
  }
  exit;
  }
  
   if instance_place(x,y,obj_crashman_hitbox).Semi = false{ 
  Damage += instance_place(x,y,obj_crashman_hitbox).Power * -1;
  Hurt = true;
  audio_play_sound(sou_hurt,0,0);
  with(instance_place(x,y,obj_crashman_hitbox)){
      instance_destroy();
  }
  exit;
  }
}*/

/*/GeminiMan
if place_meeting(x,y,obj_geminibuster_hitbox) && !Hurt{
   Damage += instance_place(x,y,obj_geminibuster_hitbox).Power * -1;
   Semi_Hurt = true;
   with(instance_place(x,y,obj_geminibuster_hitbox)){
     instance_destroy();
   }
}

if place_meeting(x,y,obj_geminilaser_small) && !Hurt{
    Damage += instance_place(x,y,obj_geminilaser_small).Power * -1;
    Hurt = true;
}*/

}

if Shield = 2{

//Mett
if place_meeting(x,y,obj_mett_shockwave) && !BHurt{
    BDamage += instance_nearest(x,y,obj_mett_shockwave).Power * -1;
    BHurt = true;
}

//Canodumb
if place_meeting(x,y,obj_canodumb_hitbox) && !BHurt{
  BDamage += instance_place(x,y,obj_canodumb_hitbox).Power * -1;  
  with(instance_place(x,y,obj_canodumb_hitbox)){
    instance_destroy();
  }
  BHurt = true;
}
//Champy
if place_meeting(x,y,obj_champy_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_champy_hitbox).Power * -1;   
  with(instance_place(x,y,obj_champy_hitbox)){
    instance_destroy();
  }  
  BHurt = true; 
} 
if place_meeting(x,y,obj_champy) && !BHurt{
   BDamage += instance_place(x,y,obj_champy).Power * -1;
   BHurt = true;
}

//Boomer
if place_meeting(x,y,obj_boomer_hitbox) && !BHurt{
    BDamage += instance_place(x,y,obj_boomer_hitbox).Power * -1;
    BHurt = true;    
}

//Powie
if place_meeting(x,y,obj_powie_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_powie_hitbox).Power * -1;
   BHurt = true;
}

//Navis
//CrashMan
if place_meeting(x,y,obj_crashman_hitbox) && !BHurt{
    BDamage += instance_place(x,y,obj_crashman_hitbox).Power * -1;
   if instance_place(x,y,obj_crashman_hitbox).Tank_Cannon = true{
       if !instance_exists(obj_screenshake){  
          with(instance_create(0,0,obj_screenshake)) {alarm[0] = 25;}
        }       
       instance_create(IP.x,IP.y-12,obj_expolsion_doted_effect);
       //Create the hibox
       if instance_place(x,y,obj_panel).Panel_Status != 3 && instance_place(x,y,obj_panel).Panel_Status != 4{
           with(instance_place(x,y,obj_panel)){
               Cracked = true;
           }
       }
       
       if place_meeting(x,y+24,obj_panel){
           instance_create(IP.x,IP.y+24-12,obj_expolsion_doted_effect);
             with(instance_create(IP.x,IP.y+24-3,obj_crashman_hitbox)){
                 Hurt = true;
                 Element = E_Crack;
                 Timer = 1;
                 Power = obj_crashman_boss.Power[4];
                 Travel = false;
             };
           if instance_place(x,y+24,obj_panel).Panel_Status != 3 && instance_place(x,y+24,obj_panel).Panel_Status != 4{
                if instance_place(x,y+24,obj_panel).Panel_Status = 2{
                   with(instance_place(x,y+24,obj_panel)) {Broke = true};
                }
                if instance_place(x,y+24,obj_panel).Panel_Status != 2{
                   with(instance_place(x,y+24,obj_panel)) {Cracked = true; Broke = true};
                }                
           }           
       }
       
       if place_meeting(x,y-24,obj_panel){
           instance_create(IP.x,IP.y-24-12,obj_expolsion_doted_effect);
             with(instance_create(IP.x,IP.y-24-3,obj_crashman_hitbox)){
                 Semi = true;
                 Element = E_Crack;
                 Timer = 1;
                 Power = obj_crashman_boss.Power[4];
                 Travel = false;
             };
           if instance_place(x,y-24,obj_panel).Panel_Status != 3 && instance_place(x,y-24,obj_panel).Panel_Status != 4{
                if instance_place(x,y-24,obj_panel).Panel_Status = 2{
                   with(instance_place(x,y-24,obj_panel)) {Broke = true};
                }
                if instance_place(x,y-24,obj_panel).Panel_Status != 2{
                   with(instance_place(x,y-24,obj_panel)) {Cracked = true; Broke = true};
                }                
           }           
       }   
   }
   if instance_place(x,y,obj_crashman_hitbox).Stay = false {with(instance_place(x,y,obj_crashman_hitbox)) {instance_destroy()} }; 
   BHurt = true;  
}

//MegaManSF
if place_meeting(x,y,obj_megamanSF_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_megamanSF_hitbox).Power * -1;
   BHurt = true;  
}

//ToadMan
if place_meeting(x,y,obj_toadman_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_toadman_hitbox).Power * -1;
   BHurt = true;  
}

//GutsMan
if place_meeting(x,y,obj_gutsman) && !BHurt{
   BDamage += -25;
   BHurt = true;
}

if place_meeting(x,y,obj_bullet_hitbox) && !BHurt{
    BDamage += instance_place(x,y,obj_bullet_hitbox).Power * -1;
    with(instance_place(x,y,obj_bullet_hitbox)){
        Owner.Destroy = true;
        instance_destroy();
    }
    BHurt = true;
}
if place_meeting(x,y,obj_gutsman_hitbox) && !BHurt{
    BDamage += instance_place(x,y,obj_gutsman_hitbox).Power * -1;
    BHurt = true;    
}

//Bass
if place_meeting(x,y,obj_bass_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_bass_hitbox).Power * -1;   
   if instance_place(x,y,obj_bass_hitbox).Stay = false{
     with(instance_place(x,y,obj_bass_hitbox)) {instance_destroy()}
   }
   BHurt = true;
}

//CrashMan
if place_meeting(x,y,obj_crashman_boss) && !BHurt{
    BDamage += -20;
    BHurt = true;
}

//Zero
if place_meeting(x,y,obj_zero_hitbox) && !BHurt{
   BDamage += instance_place(x,y,obj_zero_hitbox).Power * -1;   
   BHurt = true;
   with(instance_place(x,y,obj_zero_hitbox)) {instance_destroy();}
}

}

