if sprite_index = spr_megaman_buster{
  if !place_meeting(x+40,y,obj_virus) {image_speed = bstr_spd;} 
  if place_meeting(x+40,y,obj_virus) {image_speed = bstr_spd+.3;} 
}
if sprite_index = spr_megaman_base && image_index > 0 && !instance_exists(obj_fade){
  image_speed = spd;
}
if sprite_index = spr_megaman_sword{
  image_speed = .4;
} 
if sprite_index = spr_megaman_cannon1{
  image_speed = .4;
} 
if sprite_index = spr_megaman_airshot{
  image_speed = .4;
} 
if sprite_index = spr_megaman_throw{
  image_speed = .2;
} 
if sprite_index = spr_megaman_vulcan{
  image_speed = .5;
}
if sprite_index = spr_megaman_shot{
  image_speed = .4;
}  

if sprite_index = Sword_Sep && image_index < 1 {image_speed = .4;}
if sprite_index = Sword_Sep && image_index >= 1 {image_speed = 0;}
if sprite_index = Buster_Sep {image_speed = .4;}
if sprite_index = BusterC_Sep && image_index < 1 {image_speed = .4;}  
if sprite_index = BusterC_Sep && image_index >= 1 {image_speed = 0;} 
if sprite_index = Punch_Sep && image_index < 2 {image_speed = .4;}
if sprite_index = Punch_Sep && image_index >= 2 {image_speed = 0;}
if sprite_index = Stun_S {image_speed = .25;}
