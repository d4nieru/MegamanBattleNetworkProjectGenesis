if sprite_index = Base_S{
    if bc.key_b{
        ChargeTimer += 1;
        if ChargeTimer = 10{
            Charge = "Blue";
        }
        if ChargeTimer = room_speed*2{//or change the 2 to the variable of the player's Charge Speed
            Charge = "Purple";
        }
    }
    if bc.key_b_r{
        ChargeTimer = 0;
        if image_index <= base_move{
        switch(Charge){
            case "":
            image_index = 0;
            sprite_index = Buster_S;
            hb_type = "Buster";
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;
            break;    
        
            case "Blue":
            image_index = 0;
            sprite_index = Buster_S;
            hb_type = "Buster";
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;            
            break;
            
            case "Purple":
            image_index = 0;
            sprite_index = ChargeBuster_S;
            hb_type = "Buster";
            C = true;
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;            
            break;
        }
        Charge = "";        
        exit;
        }
        
        if image_index >= base_move+2{
        switch(Charge){
            case "":
            x = NextPanel.x;
            y = NextPanel.y;
            image_index = 0;
            sprite_index = Buster_S;
            hb_type = "Buster";
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;            
            break;    
        
            case "Blue":
            x = NextPanel.x;
            y = NextPanel.y;
            image_index = 0;
            sprite_index = Buster_S;
            hb_type = "Buster";
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;            
            break;
            
            case "Purple":
            x = NextPanel.x;
            y = NextPanel.y;
            image_index = 0;
            sprite_index = ChargeBuster_S;
            hb_type = "Buster";
            CS_M[1] = "";
            CS_M[2] = "";
            CS_M[3] = -1;
            CS_M[4] = -1;
            CS_M[5] = -1;
            CS_M[6] = -1;
            CS_M[7] = -1;            
            break;
        }
        }        
        Charge = "";
    }
}else{
    ChargeTimer = 0;
    Charge = "";
}
