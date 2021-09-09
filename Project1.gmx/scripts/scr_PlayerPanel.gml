//Lava
if PElement[0] != CElement.Fire && place_meeting(x,y,obj_panel) && FlashTimer = 0 && AirShoes = false{
    if instance_place(x,y,obj_panel).PanelType = "Lava"{
        PElement[1] = CElement.Null;
        scr_HitBoxCreation(x,y,"Player",30,CElement.Null,"",0,0,"Heavy",noone);
        with(instance_place(x,y,obj_panel)){
            Null = true;
        }
    }
}

//Wood
if place_meeting(x,y,obj_panel) && AirShoes = false{
    if instance_place(x,y,obj_panel).PanelType = "Grass"{
        if PElement[0] != CElement.Wood {PElement[1] = CElement.Wood;}
        if PElement[0] = CElement.Wood{
            ptimer++;
            if ptimer = room_speed{
                Damage++;
                ptimer = 0;
            }
        }
    }
}
