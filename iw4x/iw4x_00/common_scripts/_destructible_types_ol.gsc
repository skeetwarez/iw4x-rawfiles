#include common_scripts\utility;
#include common_scripts\_destructible;
#include common_scripts\_destructible_types;
#using_animtree( "destructibles_ol" );

makeType_ol( destructibleType ) 
{
	//println( destructibleType );

	// if it's already been created dont create it again
	infoIndex = getInfoIndex( destructibleType );
	if ( infoIndex >= 0 )
		return infoIndex;

	found_ol_destructible = true;
	switch ( destructibleType )
	{
		// add new destructibles here, you can write new functions for them or call the old ones
		case "toy_security_camera":
			toy_security_camera( destructibleType );
			break;
		case "toy_locker_1x1":
			toy_locker_1x1( destructibleType );
			break;
		case "toy_console_mp_mountain_a":
			toy_console_mp_mountain_a( destructibleType );
			break;	
		case "toy_console_mp_mountain_med_b":
			toy_console_mp_mountain_med_b( destructibleType );
			break;		
		case "toy_console_mp_mountain_corner_01":
			toy_console_mp_mountain_corner_01( destructibleType );
			break;
		case "toy_tv_mp_mountain_security_monitor_01":
			toy_tv_mp_mountain_security_monitor_01( destructibleType );
			break;	
		case "toy_tv_mp_mountain_security_monitor_02":
			toy_tv_mp_mountain_security_monitor_02( destructibleType );
			break;	
		case "toy_tv_mp_mountain_security_monitor_03":
			toy_tv_mp_mountain_security_monitor_03( destructibleType );
			break;	
		case "toy_tv_mp_mountain_security_monitor_04":
			toy_tv_mp_mountain_security_monitor_04( destructibleType );
			break;	
		case "toy_tv_mp_mountain_security_monitor_05":
			toy_tv_mp_mountain_security_monitor_05( destructibleType );
			break;	
		case "toy_tv_mp_mountain_security_monitor_06":
			toy_tv_mp_mountain_security_monitor_06( destructibleType );
			break;	
		case "toy_server_rack_mp_mountain_01":
			toy_server_rack_mp_mountain_01( destructibleType );
			break;		
		default:
			found_ol_destructible = false;
			break;
	}
	
	if ( !found_ol_destructible )
	{
		return undefined;
	}

	infoIndex = getInfoIndex( destructibleType );
	assert( infoIndex >= 0 );
	return infoIndex;
}
toy_security_camera( destructibleType )
{
	//---------------------------------------------------------------------
	// Rotating security camera
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_camera", 0, undefined, 32 );
			destructible_anim( get_precached_anim( "security_camera_idle" ), #animtree, "setanimknob", undefined, undefined, "security_camera_idle" );
		destructible_state( "tag_camera", "com_security_camera_tilt_animated", 75 );
			destructible_anim( get_precached_anim( "security_camera_destroy" ), #animtree, "setanimknob", undefined, undefined, "security_camera_destroy" );
			destructible_fx( "tag_fx", "props/security_camera_explosion_moving" );
			destructible_sound( "security_camera_sparks" );
		destructible_state( undefined, "com_security_camera_d_tilt_animated", undefined, undefined, "no_melee" );
}
toy_locker_1x1( destructibleType )
{
	//---------------------------------------------------------------------
	// Locker Double
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin_1x1", 150, undefined, 32, "no_melee" );
				
				destructible_anim( get_precached_anim( "mp_mountain_lockers_tall_1x1_open" ), #animtree, "setanimknob", undefined, 0, "mp_mountain_lockers_tall_1x1_open" );
				destructible_sound( "lockers_fast", undefined, 0 );
				
		destructible_state( undefined, "lockers_tall01_iw6_1x1_open", undefined, undefined, "no_melee" );
}
toy_console_mp_mountain_a( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console b
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 250, undefined, 32, "no_melee" );;
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_glass_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "mtn_console_a_dmg_destructible", undefined, undefined, "no_melee" );
		// door
}
toy_console_mp_mountain_med_b( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console b
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 250, undefined, 32, "no_melee" );;
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_glass_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "mtn_console_med_b_dmg_destructible", undefined, undefined, "no_melee" );
		// door
}
toy_console_mp_mountain_corner_01( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 250, undefined, 32, "no_melee" );;
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_glass_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "mtn_console_corner_01_dmg_destructible", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_01( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_origin", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_02( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_origin", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_03( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_04( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_05( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_tv_mp_mountain_security_monitor_06( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 1, undefined, 32);;
		destructible_splash_damage_scaler( 1 );
			destructible_fx( "tag_fx", "explosions/tv_flatscreen_explosion" );
			destructible_sound( "tv_shot_burst" );
			destructible_explode( 20, 2000, 9, 9, 3, 3, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage
		destructible_state( undefined, "saf_atc_screen_broken_lcd01", undefined, undefined, "no_melee" );
		// door
}
toy_server_rack_mp_mountain_01( destructibleType )
{
	//---------------------------------------------------------------------
	// mp_mountain console corner 01
	//---------------------------------------------------------------------
	destructible_create( destructibleType, "tag_origin", 250, undefined, 32, "no_melee" );;
			destructible_fx( "tag_fx", "destructibles/fx_dest_console_mp_mountain", undefined, undefined, undefined, 0 );
			destructible_sound( "exp_fusebox_sparks" );
			destructible_explode( 20, 2000, 32, 32, 32, 48, undefined, 0 ); 	// force_min, force_max, rangeSP, rangeMP, mindamage, maxdamage, continue damage, originoffset
		destructible_state( undefined, "clk_lab_gas_analyzer_tower01a_dmg_destructible", undefined, undefined, "no_melee" );
		// door
}
