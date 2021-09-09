if ds_list_size(Test_Deck) > 0 && x > 0 && hspeed = 0{

if C_Slot[1] = false{
       instance_create(FirstSlotX,FirstSlotY,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[1] = true
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
   }
     if C_Slot[2] = false{
       instance_create(FirstSlotX+16,FirstSlotY,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[2] = true
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if C_Slot[3] = false{
       instance_create(FirstSlotX+32,FirstSlotY,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[3] = true;
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if C_Slot[4] = false{
       instance_create(FirstSlotX+48,FirstSlotY,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[4] = true
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if C_Slot[5] = false{
       instance_create(FirstSlotX+64,FirstSlotY,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[5] = true
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
     
   }
     if C_Slot[6] = false{
       instance_create(FirstSlotX,FirstSlotY+24,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[6] = true;
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if C_Slot[7] = false{
       instance_create(FirstSlotX+16,FirstSlotY+24,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[7] = true;
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if C_Slot[8] = false{
       instance_create(FirstSlotX+32,FirstSlotY+24,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       C_Slot[8] = true
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   /*if C_Slot[9] = false{
       instance_create(x+4,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if C_Slot[10] = false{
       instance_create(x+20,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }*/
}
else {Draw_Time = false; exit;}
