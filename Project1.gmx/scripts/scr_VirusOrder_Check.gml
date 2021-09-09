Virus = argument0;
VOrder = ds_list_create();
for(i=0; i<9; i+=1){
    with(Panel[Blue,i]){
        if place_meeting(x,y,other.Virus){
            ds_list_add(other.VOrder,instance_place(x,y,other.Virus));
        }
    }
}
V1 = ds_list_find_value(VOrder,0);
V1.Order = 1;
if instance_number(Virus) = 2 {V2 = ds_list_find_value(VOrder,1); V2.Order = 2;}
if instance_number(Virus) = 3 {V3 = ds_list_find_value(VOrder,2); V3.Order = 3;}
ds_list_destroy(VOrder);

