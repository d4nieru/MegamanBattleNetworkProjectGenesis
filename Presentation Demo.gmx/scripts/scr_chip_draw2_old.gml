if ds_list_size(Test_Deck) > 0 && x > 0{

if Slot[1] = false{
       instance_create(x-44,y+32,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
   }
     if Slot[2] = false{
       instance_create(x-28,y+32,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if Slot[3] = false{
       instance_create(x-12,y+32,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if Slot[4] = false{
       instance_create(x+4,y+32,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
     if Slot[5] = false{
       instance_create(x+20,y+32,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
     
   }
     if Slot[6] = false{
       instance_create(x-44,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if Slot[7] = false{
       instance_create(x-28,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if Slot[8] = false{
       instance_create(x-12,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if Slot[9] = false{
       instance_create(x+4,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
   if Slot[10] = false{
       instance_create(x+20,y+56,ds_list_find_value(Test_Deck,0));
       ds_list_delete(Test_Deck,0);
       Draw_Timer = 0;
       Chip_Draw -= 1;
       exit;
       
   }
}
else {Draw_Time = false; exit;}
