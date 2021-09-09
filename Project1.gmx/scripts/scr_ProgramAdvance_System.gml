for(i=1;i<4;i++){
    //LifeSword
    if pc.ChipSlot[i,pc.Name] = "Sword" && pc.ChipSlot[i+1,pc.Name] = "WideSword" && pc.ChipSlot[i+2,pc.Name] = "LongSword"{
        if pc.ChipSlot[i,pc.Code] = pc.ChipSlot[i+1,pc.Code] && pc.ChipSlot[i,pc.Code] = pc.ChipSlot[i+2,pc.Code]{
            PA = true;
            with(instance_create(0,0,obj_programadvance_screen)){
                flash[1] = -1;
                flash[2] = -1;
                flash[3] = -1;
                flash[4] = -1;
                flash[5] = -1;
                PA_Name = "LifeSword"
                PA_Power = 400;
                PA_Element = CElement.Sword;
                PA_Icon = ChipI.PA;
                PA_Dim = false;
                PA_Code = other.pc.ChipSlot[other.i,other.pc.Code];
                PA_ID = noone;
                flash[other.i] = other.i;
                flash[other.i+1] = other.i+1;
                flash[other.i+2] = other.i+2;
            }
            exit;
        }
    }
}
