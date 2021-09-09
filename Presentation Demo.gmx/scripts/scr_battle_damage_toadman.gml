//Hurt Animation
if !place_meeting(x,y,obj_buster_hitbox) {HitBox_Touch = false}
if Hurt && !Damage_Flash && State = S_Normal{     
  AT = 0;
  image_index = 0;
  sprite_index = Hurt_S;
  Damage_Flash = true;
  image_alpha = .5;
  
}
if Semi_Hurt{
   image_index = 0;
   sprite_index = Hurt_S
}
if Semi_Hurt && sprite_index = Hurt_S && State = S_Normal{
    Hurt_Timer += 1;
    if Hurt_Timer = 40 {Hurt_Timer = 0; Semi_Hurt = false; image_index = 0; sprite_index = Base_S}
}

if Hurt && Damage_Flash && State = S_Normal{
    Hurt_Timer += 1;
    if Hurt_Timer > 0{
       if image_alpha <= .25 {DF_Direction = 1.2}
       if image_alpha >= .5 {DF_Direction = 1.1}
       if DF_Direction = 1.1 {image_alpha -= .05}
       if DF_Direction = 1.2 {image_alpha += .05}
    }
    if Hurt_Timer = 40 {image_index = 0; sprite_index = Base_S;}
    if Hurt_Timer >= 180 {Hurt = false; Hurt_Timer = 0; Damage_Flash = false; image_alpha = 1; DF_Direction = 0;}
}

//Megaman
if place_meeting(x,y,obj_buster_hitbox) && !Hurt && sprite_index != JumpIn_S && !HitBox_Touch{
    scr_buster_events_moving();
    Damage += Power_E * -1;
    if Weakness[1] = Element_Save || Weakness[2] = Element_Save{
       Damage += Power_E * -1;
       with(instance_create(x,y-40,obj_weakness_sign)){
          Owner = other.id;
       }
    }    
    if Hurt_E = true {Hurt = true; audio_play_sound(sou_hurt,0,false);}
    if Semi_Hurt_E = true {Semi_Hurt = true; audio_play_sound(sou_hurt,0,false);}

    //End Phase
   Buster_Sound = 0;
   Chip_Effect[1] = 0;
   Chip_Effect[2] = 0;
   Hurt_E = -1;
   Semi_Hurt_E = -1;
   Stay = -1;
   Power_E = -1;
   Element_Save = -1;
   
   HitBox_Touch = true;
}
exit;



