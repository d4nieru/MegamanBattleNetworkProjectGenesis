///scr_PlayerStats(HPBoost,AtkBoost,CAtkBoost,DefBoost,SpdBoost,CSpdBoost,Element,AirShoes)

HPBoost = argument0;
AtkBoost = argument1;
ChrgAtkBoost = argument2;
DefBoost = argument3;
SpdBoost = argument4;
ChrgSpdBoost = argument5;
PElement[0] = argument6;
AirShoes = argument7;

PElement[1] = CElement.Null;
PElement[2] = CElement.Null;

with(pc){
    Atk = 1;
    ChrgAtk = 10;
    Def = 0;
    Spd = 0;
    ChrgSpd = 0;
    
    //HP += other.HPBoost;
    Atk += other.AtkBoost;
    ChrgAtk += other.ChrgAtkBoost;
    Def += other.DefBoost;
    Spd += other.SpdBoost;
    ChrgSpd += other.ChrgSpdBoost;
}
