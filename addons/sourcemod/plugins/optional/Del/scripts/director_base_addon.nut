Msg("\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n载入脚本 武器转换\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n\n");

/* 导演设置 */
DirectorOptions <-
{
	/* 转换相关武器 */
	weaponsToConvert =
	{
		// weapon_first_aid_kit 		= "weapon_pain_pills_spawn"
		weapon_defibrillator 		= "weapon_pain_pills_spawn"
		weapon_pistol 				= "weapon_pistol_magnum"
	}
	function ConvertWeaponSpawn( classname )
	{
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
		return 0;
	}

    /* 移除武器清单 注释掉的武器允许生成 */
	weaponsToRemove =
	{
		weapon_pistol 						= 0
		// weapon_pistol_magnum 			= 0
		// weapon_smg 						= 0
		// weapon_pumpshotgun 				= 0
		// weapon_autoshotgun 				= 0 //连喷
		// weapon_rifle 					= 0
		// weapon_hunting_rifle 			= 0
		// weapon_smg_silenced 				= 0
		// weapon_shotgun_chrome 			= 0
		// weapon_rifle_desert 				= 0
		// weapon_sniper_military 			= 0
		// weapon_shotgun_spas 				= 0 //连喷
		// weapon_grenade_launcher 			= 0
		// weapon_rifle_ak47 				= 0
		// weapon_smg_mp5 					= 0
		// weapon_rifle_sg552 				= 0
		// weapon_sniper_awp 				= 0
		// weapon_sniper_scout 				= 0
		// weapon_rifle_m60 				= 0
		// weapon_melee 					= 0
		// weapon_chainsaw 					= 0
		// weapon_upgradepack_incendiary 	= 0
		// weapon_upgradepack_explosive 	= 0
		// ammo								= 0 /* 子弹堆 */
	}
	function AllowWeaponSpawn( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return false;
		}
		return true;
	}

    /* 修改默认武器 */
	DefaultItems =
	[
		"weapon_pistol"
	]
	function GetDefaultItem( idx )
	{
		if ( idx < DefaultItems.len() )
		{
			return DefaultItems[idx];
		}
		return 0;
	}
}