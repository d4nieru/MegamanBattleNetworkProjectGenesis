VScan = ds_list_create();
for(i=0; i<9; i+=1){
    with(Panel[Blue,i]){
        if place_meeting(x,y,obj_virus){
            ds_list_add(other.VScan,instance_place(x,y,obj_virus));
        }
    }
}
V1 = ds_list_find_value(VScan,0).id;
if instance_number(obj_virus) >= 2 {V2 = ds_list_find_value(VScan,1).id;}
if instance_number(obj_virus) = 3 {V3 = ds_list_find_value(VScan,2).id;}
ds_list_destroy(VScan);

