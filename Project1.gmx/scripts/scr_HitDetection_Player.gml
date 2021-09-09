if place_meeting(x,y,obj_hitbox){
    hb = instance_place(x,y,obj_hitbox);
    if hb.Target = "Player" && hb.Hit != id{
        switch(Protection){
            case "None":
            Damage -= hb.Power;
            bc.rank_hits += 1;
            //element damage
            //effect[0] && effect[1]
            //sound
            if hb.ImpactSprite != noone{
                instance_create(x,y,hb.ImpactSprite);
                with(hb) {ImpactSprite = noone;}
            }
            HitStun = hb.HitStun;
            with(hb) {Hit = other.id;}
            if hb.Stay <= 0{
                with(hb){
                    instance_destroy();
                    with(Owner){
                        if Object_Index = obj_projectile {instance_destroy();}
                    }
                }
            }            
            break;
        }
    }
}
