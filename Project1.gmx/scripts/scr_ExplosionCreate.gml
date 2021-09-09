///scr_ExplosionCreate(Explosion,x,y,Number,Destroy,Owner)

ExplosionType = argument0;
xx = argument1;
yy = argument2;
Number = argument3;
Owner = argument5;
Destroy = argument4;

with(instance_create(xx,yy,ExplosionType)){
    Number = other.Number;
    Owner = other.Owner;
    Destroy = other.Destroy;
}
