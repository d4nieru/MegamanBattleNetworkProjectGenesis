//Time Machine
if global.Slot_Name[1] = "TimeMachine"{
    TM_Placement = 1;
    SaveHp = obj_megaman.Hp;
}
if global.Slot_Name[2] = "TimeMachine"{
    TM_Placement = 2;
    SaveHp = obj_megaman.Hp;
    SaveChip_Name[1] = global.Slot_Name[1];
    SaveChip_Power[1] = global.Slot_Power[1];
    SaveChip_Element[1] = global.Slot_Element[1];
    SaveChip_Icon[1] = global.Slot_Icon[1]; 
}
if global.Slot_Name[3] = "TimeMachine"{
    TM_Placement = 3;
    SaveHp = obj_megaman.Hp;
    SaveChip_Name[1] = global.Slot_Name[1];
    SaveChip_Power[1] = global.Slot_Power[1];
    SaveChip_Element[1] = global.Slot_Element[1];
    SaveChip_Icon[1] = global.Slot_Icon[1]; 
    SaveChip_Name[2] = global.Slot_Name[2];
    SaveChip_Power[2] = global.Slot_Power[2];
    SaveChip_Element[2] = global.Slot_Element[2];
    SaveChip_Icon[2] = global.Slot_Icon[2];   
}
if global.Slot_Name[4] = "TimeMachine"{
    TM_Placement = 4;
    SaveHp = obj_megaman.Hp;
    SaveChip_Name[1] = global.Slot_Name[1];
    SaveChip_Power[1] = global.Slot_Power[1];
    SaveChip_Element[1] = global.Slot_Element[1];
    SaveChip_Icon[1] = global.Slot_Icon[1]; 
    SaveChip_Name[2] = global.Slot_Name[2];
    SaveChip_Power[2] = global.Slot_Power[2];
    SaveChip_Element[2] = global.Slot_Element[2];
    SaveChip_Icon[2] = global.Slot_Icon[2]; 
    SaveChip_Name[3] = global.Slot_Name[3];
    SaveChip_Power[3] = global.Slot_Power[3];
    SaveChip_Element[3] = global.Slot_Element[3];
    SaveChip_Icon[3] = global.Slot_Icon[3];        
}
if global.Slot_Name[5] = "TimeMachine"{
    TM_Placement = 5;
    SaveHp = obj_megaman.Hp;
    SaveChip_Name[1] = global.Slot_Name[1];
    SaveChip_Power[1] = global.Slot_Power[1];
    SaveChip_Element[1] = global.Slot_Element[1];
    SaveChip_Icon[1] = global.Slot_Icon[1]; 
    SaveChip_Name[2] = global.Slot_Name[2];
    SaveChip_Power[2] = global.Slot_Power[2];
    SaveChip_Element[2] = global.Slot_Element[2];
    SaveChip_Icon[2] = global.Slot_Icon[2]; 
    SaveChip_Name[3] = global.Slot_Name[3];
    SaveChip_Power[3] = global.Slot_Power[3];
    SaveChip_Element[3] = global.Slot_Element[3];
    SaveChip_Icon[3] = global.Slot_Icon[3]; 
    SaveChip_Name[4] = global.Slot_Name[4];
    SaveChip_Power[4] = global.Slot_Power[4];
    SaveChip_Element[4] = global.Slot_Element[4]; 
    SaveChip_Icon[4] = global.Slot_Icon[4];            
}


//Atk+10
repeat(4){

if global.Slot_Name[2] = "Atk+10"{
     if global.Slot_Power[1] > 0 {global.Slot_Power[1] += 10
    
      global.Slot_Name[2] = global.Slot_Name[3];
     global.Slot_Code[2] = global.Slot_Code[3];
     global.Slot_Code_A[2] = global.Slot_Code_A[3];
     global.Slot_Power[2] = global.Slot_Power[3];
     global.Slot_Element[2] = global.Slot_Element[3];
     global.Slot_Icon[2] = global.Slot_Icon[3];
     
     global.Slot_Name[3] = global.Slot_Name[4];
     global.Slot_Code[3] = global.Slot_Code[4];
     global.Slot_Code_A[3] = global.Slot_Code_A[4];
     global.Slot_Power[3] = global.Slot_Power[4];
     global.Slot_Element[3] = global.Slot_Element[4];
     global.Slot_Icon[3] = global.Slot_Icon[4];  
     
     global.Slot_Name[4] = global.Slot_Name[5];
     global.Slot_Code[4] = global.Slot_Code[5];
     global.Slot_Code_A[4] = global.Slot_Code_A[5];
     global.Slot_Power[4] = global.Slot_Power[5];
     global.Slot_Element[4] = global.Slot_Element[5];
     global.Slot_Icon[4] = global.Slot_Icon[5]; 
     
     global.Slot_Name[5] = "";
     global.Slot_Code[5] = -1;
     global.Slot_Code_A[5] = "";
     global.Slot_Power[5] = -1;
     global.Slot_Element[5] = -1;
     global.Slot_Icon[5] = -1;   
     }            
}

if global.Slot_Name[3] = "Atk+10"{
     if global.Slot_Power[2] > 0 {global.Slot_Power[2] += 10
     
     global.Slot_Name[3] = global.Slot_Name[4];
     global.Slot_Code[3] = global.Slot_Code[4];
     global.Slot_Code_A[3] = global.Slot_Code_A[4];
     global.Slot_Power[3] = global.Slot_Power[4];
     global.Slot_Element[3] = global.Slot_Element[4];
     global.Slot_Icon[3] = global.Slot_Icon[4];  
     
     global.Slot_Name[4] = global.Slot_Name[5];
     global.Slot_Code[4] = global.Slot_Code[5];
     global.Slot_Code_A[4] = global.Slot_Code_A[5];
     global.Slot_Power[4] = global.Slot_Power[5];
     global.Slot_Element[4] = global.Slot_Element[5];
     global.Slot_Icon[4] = global.Slot_Icon[5]; 
     
     global.Slot_Name[5] = "";
     global.Slot_Code[5] = -1;
     global.Slot_Code_A[5] = "";
     global.Slot_Power[5] = -1;
     global.Slot_Element[5] = -1;
     global.Slot_Icon[5] = -1;   
     }            
}

if global.Slot_Name[4] = "Atk+10"{
     if global.Slot_Power[3] > 0 {global.Slot_Power[3] += 10
     
     global.Slot_Name[4] = global.Slot_Name[5];
     global.Slot_Code[4] = global.Slot_Code[5];
     global.Slot_Code_A[4] = global.Slot_Code_A[5];
     global.Slot_Power[4] = global.Slot_Power[5];
     global.Slot_Element[4] = global.Slot_Element[5];
     global.Slot_Icon[4] = global.Slot_Icon[5]; 
     
     global.Slot_Name[5] = "";
     global.Slot_Code[5] = -1;
     global.Slot_Code_A[5] = "";
     global.Slot_Power[5] = -1;
     global.Slot_Element[5] = -1;
     global.Slot_Icon[5] = -1;      
     }         
}

if global.Slot_Name[5] = "Atk+10"{
     if global.Slot_Power[4] > 0 {global.Slot_Power[4] += 10
     
     global.Slot_Name[5] = "";
     global.Slot_Code[5] = -1;
     global.Slot_Code_A[5] = "";
     global.Slot_Power[5] = -1;
     global.Slot_Element[5] = -1;
     global.Slot_Icon[5] = -1; 
     }              
}

}
