/// @function		Aura_Get_AA();
/// @description	Returns the current anti-aliasing shadow setting

// This getter script returns the anti-aliasing setting that is currently used
// for shadows. The script will return 0 for no AA, greater than 0 for the AA
// level, "noone" (-4) if there is no light controller or -1 if the variable
// doesn't exist in the controller instance.

if instance_exists(obj_Aura_Control)
{
if variable_instance_exists(obj_Aura_Control, "aura_aa")
	{
	return obj_Aura_Control.aura_aa;
	}
else return -1;
}
else return noone;