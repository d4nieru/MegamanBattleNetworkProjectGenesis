if place_meeting(x,y,obj_panel) && !AirShoes{
    PC = instance_place(x,y,obj_panel);
    if PC.PanelType = "Normal" || PC.PanelType = "Broke" || PC.PanelType = "Clear" || PC.PanelType = "Poison" || PC.PanelType = "Holy" || PC.PanelType = "Lava"{
        Element[1] = CElement.Null;
    }
    if PC.PanelType = "Cracked"{
        Element[1] = CElement.Cracking;
    }
    if PC.PanelType = "Ice" || PC.PanelType = "Water" || PC.PanelType = "Metal"{
        Element[1] = CElement.Aqua;
    }
    if PC.PanelType = "Grass"{
        Element[1] = CElement.Wood
    }
}

if AirShoes{
    Element[1] = CElement.Null;
}
