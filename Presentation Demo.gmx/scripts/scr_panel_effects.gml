/*PS_Normal = 1;
PS_Cracked = 2;
PS_Broke = 3;
PS_Clear = 4;
PS_Ice = 5;
PS_Lava = 6;
PS_Grass = 7;
PS_Metal = 8;
PS_Poison = 9;
PS_Holy = 10;
PS_Water = 11*/
Create_Event = argument0;

if Create_Event{
Panel_Timer = 0
}

if !Create_Event{

if place_meeting(x,y,obj_panel){
//Normal && Cracked
if instance_place(x,y,obj_panel).Panel_Status < 3{
   Element[2] = E_None;
   Panel_Timer = 0;
}

//Poison
  if instance_place(x,y,obj_panel).Panel_Status = 9{
     Element[2] = E_None;
     Panel_Timer += 1
     if Panel_Timer = 30{
       if Object_Type = 1 && Hp != 1 {Damage -= 1;}
       if Object_Type = 0 {Damage -= 1;}
        Panel_Timer = 0;
     }
  }
//Grass
   if instance_place(x,y,obj_panel).Panel_Status = 7{  
      if Element[1] != E_Wood {Element[2] = E_Wood};
      if Element[1] = E_Wood{
         Panel_Timer += 1;
         if Panel_Timer = 30 && Object_Type = 1{
           if Hp != MaxHp {Damage += 1;}
           Panel_Timer = 0;
         }
       if Object_Type = 0{  
       
       if Hp >= MaxHp * .25{  
         if Panel_Timer = 30{
           if Hp != MaxHp {Damage += 1;}
           Panel_Timer = 0;
         }
           }
           
       if Hp < MaxHp * .25{  
         if Panel_Timer = 90{
           if Hp != MaxHp {Damage += 1;}
           Panel_Timer = 0;
         }
           }           
         }         
      }
   }
//Ice
if instance_place(x,y,obj_panel).Panel_Status = 5{
    if Element[1] != E_Aqua {Element[2] = E_Aqua}
    if Object_Type = 1 && Element[1] != E_Aqua{
       switch(Direction){
           case D_right:
           if place_meeting(x+40,y,obj_panel_red_mask){
             image_speed = spd*2;
           }
           break; 
           
           case D_left:
           if place_meeting(x-40,y,obj_panel_red_mask){
             image_speed = spd*2;
           }
           break;  
           
           case D_up:
           if place_meeting(x,y-24,obj_panel_red_mask){
             image_speed = spd*2;
           }
           break;
           
           case D_down:
           if place_meeting(x,y+24,obj_panel_red_mask){
             image_speed = spd*2;
           }
           break;                                  
       }
    }
}   
//Lava
if instance_place(x,y,obj_panel).Panel_Status = 6{
    if Element[1] != E_Fire{
       if Object_Type = 1 && !Hurt{
          with(instance_place(x,y,obj_panel)) {Normal = true}
          Damage -= 30;
          audio_play_sound(sou_hurt,0,0);
          Hurt = true;
          Hurt_Timer = 20;
       }
    }
}
//Water
if instance_place(x,y,obj_panel).Panel_Status = 11{
   if Element[1] != E_Aqua {Element[2] = E_Aqua;}
}
//Normal
if instance_place(x,y,obj_panel).Panel_Status = 1 || instance_place(x,y,obj_panel).Panel_Status = 2 || instance_place(x,y,obj_panel).Panel_Status = 3 || instance_place(x,y,obj_panel).Panel_Status = 4{
    Element[2] = E_None;
    Panel_Timer = 0;
}
}
}
