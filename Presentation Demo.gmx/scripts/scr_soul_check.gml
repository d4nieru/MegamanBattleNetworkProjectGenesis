if Soul != ""{
    Soul_Check = true;
    MM = obj_megaman;
}

if Soul_Check{
    switch(Soul){
        case "Search":
        Mega_Soul = Soul;
        if !instance_exists(obj_soul_transform){    
            instance_create(MM.x,MM.y,obj_soul_transform_searchman);
        }
        if !instance_exists(obj_soul_background){
            instance_create(0,0,obj_soul_background);
        }
        break;
    }
}


