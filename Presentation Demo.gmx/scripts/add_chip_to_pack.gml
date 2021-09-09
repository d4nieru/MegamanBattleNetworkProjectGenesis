
Chip_Pack_Add = argument0;

for(t = 0; t < 99; t += 1){
    if CTO[t] = noone{
       CTO[t] = Chip_Pack_Add;
       CTA[t] += 1;
       break;
    }
    if CTO[t] = Chip_Pack_Add{
       CTA[t] += 1;
       break;
    }
}
