if Chip_Draw > 0 && Draw_Time{
   Draw_Timer += 1
   if Draw_Timer >= 2 {
   scr_chip_draw2();
   }
}

if ds_exists(Test_Deck,ds_type_list){
if Chip_Draw > 0 && ds_list_size(Test_Deck) <= 0{
  if Draw_Time{
     Draw_Time = false;
     Chip_Draw = Max_Chip_Draw;
     Ready = true;
  }   
}
}

if Chip_Draw <= 0{
  if Draw_Time{
     Draw_Time = false;
     Chip_Draw = Max_Chip_Draw;
     Ready = true;
  }
}
