#define scr_Background_System
///scr_Background_System(background,hsp,vsp,enumtype,endaction)
background = argument0;
b_hsp = argument1;
b_vsp = argument2;
b_type = argument3;
b_endaction = argument4;
b = 0;
d = 1;
bgtimer = 0;


background_index[0] = background;
background_hspeed[0] = b_hsp;
background_vspeed[0] = b_vsp;



#define scr_Background_System2
///scr_Background_System2(image_speed,starting_max,ending_max)
b_isp = argument0;
b_max = argument1;
d_max = argument2

bgtimer += 1;
background_index[0] = BG[b_type,b];
if bgtimer = b_isp{
    bgtimer = 0;
    switch(b_endaction){
        case 0:
        if b != d_max {b+=1;} else {b = 0;}
        break;
        
        case 1:
        if b != d_max && d = 1 {b+=d}   
        if b != b_max && d = -1 {b+=d}  
        
        if b = d_max && d = 1 {d = -1; exit;}
        if b = b_max && d = -1 {d = 1; exit;}
        break;
    }
}