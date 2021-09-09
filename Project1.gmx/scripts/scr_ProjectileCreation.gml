///scr_ProjectileCreation(Projectile,x,y,hspeed,vspeed,imagescale,imagespeed,attackpower,element,target)

Projectile = argument0;
px = argument1;
py = argument2;
hsp = argument3;
vsp = argument4;
piscale = argument5
pispeed = argument6
ap = argument7;
element = argument8;
target = argument9;

with(instance_create(px,py,Projectile)){
    bc = obj_battlecontroller;
    hsp = other.hsp;
    vsp = other.vsp;
    piscale = other.piscale;
    pispeed = other.pispeed;
    ap = other.ap;
    element = other.element;
    target = other.target;
    Owner = other.id;
}
