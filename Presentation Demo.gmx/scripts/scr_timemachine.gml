Field = obj_field
instance_create(+2,y,obj_recover2);
Damage += (Field.SaveHp - Hp);

//Placement
if Field.TM_Placement = 1{
  global.Slot_Name[1] = "";
  global.Slot_Code[1] = -1;
  global.Slot_Code_A[1] = "";
  global.Slot_Power[1] = -1;
  global.Slot_Element[1] = -1;
  global.Slot_Icon[1] = -1;
}

if Field.TM_Placement = 2{
  global.Slot_Name[1] = Field.SaveChip_Name[1];
  global.Slot_Power[1] = Field.SaveChip_Power[1];
  global.Slot_Element[1] = Field.SaveChip_Element[1];
  global.Slot_Icon[1] = Field.SaveChip_Icon[1];
}

if Field.TM_Placement = 3{
  Hand_Name[2] = global.Slot_Name[2];
  Hand_Power[2] = global.Slot_Power[2]
  Hand_Element[2] = global.Slot_Element[2];
  Hand_Icon[2] = global.Slot_Icon[2];
  Hand_Name[3] = global.Slot_Name[3];
  Hand_Power[3] = global.Slot_Power[3]
  Hand_Element[3] = global.Slot_Element[3];
  Hand_Icon[3] = global.Slot_Icon[3];  
  
   
  global.Slot_Name[3] = Hand_Name[2];
  global.Slot_Power[3] = Hand_Power[2];
  global.Slot_Element[3] = Hand_Element[2]; 
  global.Slot_Icon[3] = Hand_Icon[2];
  
  global.Slot_Name[4] = Hand_Name[3];
  global.Slot_Power[4] = Hand_Power[3];
  global.Slot_Element[4] = Hand_Element[3]; 
  global.Slot_Icon[4] = Hand_Icon[3]; 
  
  global.Slot_Name[2] = Field.SaveChip_Name[2];
  global.Slot_Power[2] = Field.SaveChip_Power[2];
  global.Slot_Element[2] = Field.SaveChip_Element[2];
  global.Slot_Icon[2] = Field.SaveChip_Icon[2]; 
  
  global.Slot_Name[1] = Field.SaveChip_Name[1];
  global.Slot_Power[1] = Field.SaveChip_Power[1];
  global.Slot_Element[1] = Field.SaveChip_Element[1];
  global.Slot_Icon[1] = Field.SaveChip_Icon[1];       
}

if Field.TM_Placement = 4{
  Hand_Name[2] = global.Slot_Name[2];
  Hand_Power[2] = global.Slot_Power[2]
  Hand_Element[2] = global.Slot_Element[2];
  Hand_Icon[2] = global.Slot_Icon[2];
  
  global.Slot_Name[1] = Field.SaveChip_Name[1];
  global.Slot_Power[1] = Field.SaveChip_Power[1];
  global.Slot_Element[1] = Field.SaveChip_Element[1];
  global.Slot_Icon[1] = Field.SaveChip_Icon[1];
  
  global.Slot_Name[2] = Field.SaveChip_Name[2];
  global.Slot_Power[2] = Field.SaveChip_Power[2];
  global.Slot_Element[2] = Field.SaveChip_Element[2];
  global.Slot_Icon[2] = Field.SaveChip_Icon[2]; 
  
  global.Slot_Name[3] = Field.SaveChip_Name[3];
  global.Slot_Power[3] = Field.SaveChip_Power[3];
  global.Slot_Element[3] = Field.SaveChip_Element[3]; 
  global.Slot_Icon[3] = Field.SaveChip_Icon[3];
  
  global.Slot_Name[4] = Hand_Name[2];
  global.Slot_Power[4] = Hand_Power[2];
  global.Slot_Element[4] = Hand_Element[2]; 
  global.Slot_Icon[4] = Hand_Icon[2];    
}

if Field.TM_Placement = 5{
  global.Slot_Name[1] = Field.SaveChip_Name[1];
  global.Slot_Power[1] = Field.SaveChip_Power[1];
  global.Slot_Element[1] = Field.SaveChip_Element[1];
  global.Slot_Icon[1] = Field.SaveChip_Icon[1];
  
  global.Slot_Name[2] = Field.SaveChip_Name[2];
  global.Slot_Power[2] = Field.SaveChip_Power[2];
  global.Slot_Element[2] = Field.SaveChip_Element[2];
  global.Slot_Icon[2] = Field.SaveChip_Icon[2]; 
  
  global.Slot_Name[3] = Field.SaveChip_Name[3];
  global.Slot_Power[3] = Field.SaveChip_Power[3];
  global.Slot_Element[3] = Field.SaveChip_Element[3]; 
  global.Slot_Icon[3] = Field.SaveChip_Icon[3];  
  
  global.Slot_Name[4] = Field.SaveChip_Name[4];
  global.Slot_Power[4] = Field.SaveChip_Power[4];
  global.Slot_Element[4] = Field.SaveChip_Element[4]; 
  global.Slot_Icon[4] = Field.SaveChip_Icon[4];   
}
TimeMachine = false;
with(obj_field) {Fade = false}
with(obj_megaman) {State = S_Normal; image_alpha = 1; image_index = 0; image_speed = 0}
with(obj_virus) {State = Normal; mask_index = Mask;}

