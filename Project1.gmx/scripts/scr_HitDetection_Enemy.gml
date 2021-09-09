if place_meeting(x,y,obj_hitbox){
    hb = instance_place(x,y,obj_hitbox);
    if hb.Target = "Enemy" && hb.Hit != id{
        switch(Protection){
            case "None":
            Damage -= hb.Power;
            //element damage
            //Counter
            if obj_player.hb_type = "Chip" && obj_player.CS_M[obj_player.CS_Dim] = false{
                if Counter{
                    pc.FullSynchro = 2;
                    bc.rank_ch += 1;
                    //Stun them;
                }
            }
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
            exit;         
            break;
            
            case "Guard":
            //Damage & Element Damage
            //effect[0] & effect[1]
            //sound
            instance_create(x,y,obj_impacteffect_guard); //Create an if statement for when they take damage through the guard
            //HitStun
            with(hb) {Hit = other.id;}
            if hb.Stay <= 0{
                with(hb){
                    instance_destroy();
                    with(Owner){
                        if Object_Index = obj_projectile {instance_destroy();}
                    }
                }
            }   
            exit;         
            break;
            
            case "ProtoShield":
            PShield = true;
            instance_create(x,y,obj_impacteffect_guard);
            with(hb) {Hit = other.id;}
            if hb.Stay <= 0{
                with(hb){
                    instance_destroy();
                    with(Owner){
                        if Object_Index = obj_projectile {instance_destroy();}
                    }
                }
            }
            exit;
            break;               
        }
    }
}
