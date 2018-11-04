/// @description Change Room

switch(room)
{
case rm_Aura_Dynamic: room_goto(rm_Aura_Static); break;
case rm_Aura_Static: room_goto(rm_Aura_Demo); break;
case rm_Aura_Demo: room_goto(rm_Aura_Dynamic); break;
}


