//Life Sword
//S
if global.Slot_Name[1] = "Sword" && global.Slot_Code[1] = C_S{
    if global.Slot_Name[2] = "WideSword" && global.Slot_Code[2] = C_S{
        if global.Slot_Name[3] = "LongSword" && global.Slot_Code[3] = C_S{
             PA_Check = true;
             PA_Placement = 1;
             PA_Object = obj_lifesword_star;
             PA_Name = "LifeSword";
             PA_Power = 400;
             PA_Element = E_Sword;
             PA_Icon = I_ProgramAdvance;
        }
    }
}
if global.Slot_Name[2] = "Sword" && global.Slot_Code[2] = C_S{
    if global.Slot_Name[3] = "WideSword" && global.Slot_Code[3] = C_S{
        if global.Slot_Name[4] = "LongSword" && global.Slot_Code[4] = C_S{
             PA_Check = true;
             PA_Placement = 2;
             PA_Object = obj_lifesword_star;
             PA_Name = "LifeSword";
             PA_Power = 400;
             PA_Element = E_Sword;
             PA_Icon = I_ProgramAdvance;             
             
        }
    }
}
if global.Slot_Name[3] = "Sword" && global.Slot_Code[3] = C_S{
    if global.Slot_Name[4] = "WideSword" && global.Slot_Code[4] = C_S{
        if global.Slot_Name[5] = "LongSword" && global.Slot_Code[5] = C_S{
             PA_Check = true;
             PA_Placement = 3;
             PA_Object = obj_lifesword_star;
             PA_Name = "LifeSword";
             PA_Power = 400;
             PA_Element = E_Sword;
             PA_Icon = I_ProgramAdvance;             
        }
    }
}

//Giga Cannon
if global.Slot_Name[1] = "Cannon" && global.Slot_Code[1] = C_A{
    if global.Slot_Name[2] = "Cannon" && global.Slot_Code[2] = C_B{
        if global.Slot_Name[3] = "Cannon" && global.Slot_Code[3] = C_C{
             PA_Check = true;
             PA_Placement = 1;
             //PA_Object = obj_lifesword_star;
             PA_Name = "Giga Cannon";
             PA_Power = 300;
             PA_Element = E_None;
             PA_Icon = I_ProgramAdvance;
        }
    }
}
if global.Slot_Name[2] = "Cannon" && global.Slot_Code[2] = C_A{
    if global.Slot_Name[3] = "Cannon" && global.Slot_Code[3] = C_B{
        if global.Slot_Name[4] = "Cannon" && global.Slot_Code[4] = C_C{
             PA_Check = true;
             PA_Placement = 2;
             //PA_Object = obj_lifesword_star;
             PA_Name = "Giga Cannon";
             PA_Power = 300;
             PA_Element = E_None;
             PA_Icon = I_ProgramAdvance;             
             
        }
    }
}
if global.Slot_Name[3] = "Cannon" && global.Slot_Code[3] = C_A{
    if global.Slot_Name[4] = "Cannon" && global.Slot_Code[4] = C_B{
        if global.Slot_Name[5] = "Cannon" && global.Slot_Code[5] = C_C{
             PA_Check = true;
             PA_Placement = 3;
             //PA_Object = obj_lifesword_star;
             PA_Name = "Giga Cannon";
             PA_Power = 300;
             PA_Element = E_None;
             PA_Icon = I_ProgramAdvance;             
        }
    }
}
