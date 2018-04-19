/// @description slide_trans(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets the target room when using the goto.

with (obj_transer)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
	
}