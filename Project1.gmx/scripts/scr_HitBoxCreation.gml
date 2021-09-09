///scr_HitBoxCreation(xx,yy,Target,Power,Element,Effect[0],Stay,Travel,HitStun,ImpactSprite)

xx = argument0;
yy = argument1;
Target = argument2;
Power = argument3;
Element = argument4;
Effect[0] = argument5;
Stay = argument6;
Travel = argument7;
HitStunFake = argument8;
ImpactSprite = argument9;


with(instance_create(xx,yy,obj_hitbox)){
    Target = other.Target;
    Power = other.Power;
    Element = other.Element;
    Effect[0] = other.Effect[0];
    Effect[1] = "";
    Stay = other.Stay;
    Travel = other.Travel;
    HitStun = other.HitStunFake;
    ImpactSprite = other.ImpactSprite;
    Hit = noone;
    Owner = other.id;
}



