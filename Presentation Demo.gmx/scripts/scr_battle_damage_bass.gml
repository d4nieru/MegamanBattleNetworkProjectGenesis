//Hurt Animation
if Hurt && !Damage_Flash && State = S_Normal{
  if sprite_index = Buster_S{
     with(obj_panel_indacator) {instance_destroy();}
  }  
  if sprite_index = Sword_S{
     with(obj_panel_indacator) {instance_destroy();}
     with(obj_bass_hitbox) {instance_destroy();}
  }
    if sprite_index = Gregar_S{
     with(obj_panel_indacator) {instance_destroy();}
     with(obj_gregar_flame) {instance_destroy();}
     with(obj_bass_hitbox) {instance_destroy();}
  }
    if sprite_index = Falzar_S{
     with(obj_panel_indacator) {instance_destroy();}
     with(obj_falzar_wind) {instance_destroy();}
     with(obj_bass_hitbox) {instance_destroy();}
  }
    if sprite_index = BeastCharge_S{
     with(obj_panel_indacator) {instance_destroy();}
  }     
  
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
if place_meeting(x,y,obj_buster_hitbox) && !Hurt && hspeed = 0 && vspeed = 0{
    Damage += instance_nearest(x,y,obj_buster_hitbox).Power * -1;
    if instance_place(x,y,obj_buster_hitbox).Hurt = true {Hurt = true; Move_Count += 2;}
    if instance_place(x,y,obj_buster_hitbox).Semi_Hurt = true {Semi_Hurt = true; Move_Count += 2;}
    if instance_place(x,y,obj_buster_hitbox).Stay = false{
     with(instance_place(x,y,obj_buster_hitbox)) {instance_destroy();}
    }
}


