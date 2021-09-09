NC = pc.ChipSlot[1,pc.Name];
CS_Name = 1;
CS_Code = 2;
CS_Power = 3;
CS_Element = 4;
CS_Icon = 5;
CS_Dim = 6;
CS_ID = 7;
CS_CBoost = 8;
if sprite_index = Base_S && image_index <= base_index && bc.key_a_p{
    if NC != ""{
        ChargeTimer = 0;
        Charge = "";
        TrueChipPower = pc.TrueChipPower;
        pc.ChipSlot[1,pc.CBoost] = 0;
        pc.FullSynchro = 1;
        
        CS_M[CS_Name] = pc.ChipSlot[1,pc.Name];
        CS_M[CS_Code] = pc.ChipSlot[1,pc.Code];
        CS_M[CS_Power] = pc.ChipSlot[1,pc.Power];
        CS_M[CS_Element] = pc.ChipSlot[1,pc.Element];
        CS_M[CS_Icon] = pc.ChipSlot[1,pc.Icon];
        CS_M[CS_Dim] = pc.ChipSlot[1,pc.Dim];
        CS_M[CS_ID] = pc.ChipSlot[1,pc.ID];
        CS_M[CS_CBoost] = pc.ChipSlot[1,pc.CBoost];
    }
    if NC = "Cannon" || NC = "Hi-Cannon" || NC = "M-Cannon" || NC = "TrndWhip" || NC = "MachGun1" || NC = "FireBrn1" || NC = "FireBrn2" || NC = "FireBrn3"{
        image_index = 0;
        sprite_index = Buster_Sep;
        hb_type = "Chip";
        if NC = "Cannon" {ChipWeapon = obj_cannon_green;}
        if NC = "Hi-Cannon" {ChipWeapon = obj_cannon_blue;}
        if NC = "M-Cannon" {ChipWeapon = obj_cannon_red;}
        if NC = "TrndWhip" {ChipWeapon = obj_tornadoarm_blue;}
        if NC = "MachGun1" {ChipWeapon = obj_machgun;}
        if NC = "FireBrn1" {ChipWeapon = obj_fireburn;}
        pc.ChipSlot[1,pc.Name] = "";
        exit;
    }
    if NC = "AirHoc" || NC = "TidalWave"{
        image_index = 0;
        sprite_index = Slide_S;
        hb_type = "Chip";
        if NC = "AirHoc" {ChipWeapon = obj_airhockey;}
        if NC = "TidalWave" {ChipWeapon = obj_tidalwave;}
        pc.ChipSlot[1,pc.Name] = "";
        exit;
    }
    if NC = "AreaGrab" || NC = "VrusCall1" || NC = "GhostHunt" || NC = "NapalmStrike"{
        hb_type = "Chip";
        pc.ScreenDim = true;
        pc.NC = other.NC;
        pc.ChipSlot[1,pc.Name] = "";
        exit;        
    }
    if NC = "Sword" || NC = "WideSword" || NC = "LongSword" || NC = "LifeSword"{
        hb_type = "Chip";
        image_index = 0;
        sprite_index = Sword_Sep;
        ChipWeapon = obj_sword_normal;
        sword_type = NC;
        pc.ChipSlot[1,pc.Name] = "";
        exit;
    }
    if NC = "MiniBomb"{
        hb_type = "Chip";
        image_index = 0;
        sprite_index = Throw_S;
        switch(NC){
            case "MiniBomb":
            ChipWeapon = obj_minibomb;
            break;
        }
        pc.ChipSlot[1,pc.Name] = "";
        exit;
    }
    if NC = "Attack+10" || NC = "Attack+30"{
        hb_type = "Chip";
        instance_create(x,y,obj_poof_effect);
        pc.ChipSlot[1,pc.Name] = "";
    }
    if NC = "Recover10" || NC = "Recover30"{
        hb_type = "Chip";
        instance_create(x,y,obj_recovery);
        switch(NC){
            case "Recover10":
            Damage += 10;
            break;
            
            case "Recover30":
            Damage += 30;
            break;            
        }
        pc.ChipSlot[1,pc.Name] = "";
    }
    if NC = "Invis"{
        hb_type = "Chip";
        HitStun = "Invis";
        pc.ChipSlot[1,pc.Name] = "";
    }         
}
