switch(Element[1]){
      case E_None:
      Weakness[1] = -1;
      break;
      
      case E_Crack:
      Weakness[1] = -1;
      break;
      
      case E_Fire:
      Weakness[1] = E_Aqua;
      break;
      
      case E_Aqua:
      Weakness[1] = E_Elec;
      break;
      
      case E_Elec:
      Weakness[1] = E_Wood;
      break;
      
      case E_Wood:
      Weakness[1] = E_Fire;
      break;
      
      case E_Sword:
      Weakness[1] = E_Crack;
      break;      
}

switch(Element[2]){
      case E_None:
      Weakness[2] = -1;
      break;
      
      case E_Crack:
      Weakness[2] = -1;
      break;      
      
      case E_Fire:
      Weakness[2] = E_Aqua;
      break;
      
      case E_Aqua:
      Weakness[2] = E_Elec;
      break;
      
      case E_Elec:
      Weakness[2] = E_Wood;
      break;
      
      case E_Wood:
      Weakness[2] = E_Fire;
      break;
      
      case E_Sword:
      Weakness[2] = E_Crack;
      break;      
}
