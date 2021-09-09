if place_meeting(x,y,obj_hitbox){
    hb = instance_place(x,y,obj_hitbox);
    if hb.Hit != id{
            HP -= hb.Power;
            //effect[0] && effect[1]
            //sound
            if hb.ImpactSprite != noone{
                instance_create(x,y,hb.ImpactSprite);
                with(hb) {ImpactSprite = noone;}
            }
            with(hb) {Hit = other.id;}
            if hb.Stay = false{
                with(hb){
                    instance_destroy();
                    with(Owner){
                        if Object_Index = obj_projectile {instance_destroy();}
                    }
                }
            }            
    }
}
