/*

	Author Shinji
	Nya eigentlich was es ist und macht... erklärt sich, oder nicht!?

*//*
private["_text2","_result2"];

0 cutText["","BLACK OUT"];
sleep 1;
_text2 = parseText format ["<t><t size='1.35'>Pozwolenie na bron<br/><br/></t><t size='1.15'>%1,<br/></t><t><t size='1'>Jeœli u¿ywasz broni bez uprzedniego uprzedzenia ( RP) bêdzie to karane przez administratora!<br/><br/></t>",name player];
_result2 = [_text2, false,"Verstanden", false] call BIS_fnc_guiMessage;	
sleep 1;
_text2 = parseText format ["<t><t size='1.35'>Pozwolenie na bron<br/><br/></t><t size='1.15'>%1,<br/></t><t><t size='1'>Stosuj sie do RP!<br/><br/></t>",name player];
_result2 = [_text2, false,"Verstanden", false] call BIS_fnc_guiMessage;	
sleep 1;
playsound "made_it";
hint "Ukonczyles!"; 
license_civ_gun = true;
0 cutText ["","BLACK IN"];*/


private ["_sWeap","_pWeap","_hWeapon","_pist","_begin"];
_sWeap = secondaryWeapon player;
_pWeap = primaryWeapon player;
_hWeapon = handgunWeapon player;

waffenschein_firsthit = false;

execvm "scripts\license\tests\troller_prevent.sqf";

		if ( _sWeap != "" || _pWeap != "" || _hWeapon != "" ) exitwith { hint "Musisz umieœciæ wszystkie bronie przed!";};

		waffenschein_regal addWeaponCargoGlobal ["hgun_Rook40_F",1];
		waffenschein_regal addMagazineCargoGlobal ["16Rnd_9x21_Mag", 5];

		hintsilent "Gdy strzelisz w inne miejsce (w ramce z drewna), test zostaje przerwany!";

		sleep 5;

		hintsilent "Wyjmij broñ z pude³ka. Zaczynamy od ma³ych.";


		_pist = true;

		while {_pist} do {
			
			_hWeapon = handgunWeapon player;	
			
			if ( _hWeapon == "hgun_Rook40_F") then {wait_1 = true; _pist = false};
			
			sleep 1;
		};
		
		waituntil { sleep 1; wait_1 };
		
		sleep 2;
		hint "Przygotuj sie.";
		sleep 5;
		hint "Traf w cele!";
		sleep 2;
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_1");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		while { !waffenschein_firsthit } do {
			if (waffenschein_firsthit) exitwith {};
			
			sleep 1;
		};
		
		
		
		
		waffenschein_firsthit = false;
		hint "8 punktów 30 sek.";
		sleep 7;
		nul = execvm "scripts\license\tests\waffenschein_count.sqf";
		deletevehicle waffen_target1;
		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_2");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_3");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_4");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_5");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_6");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_7");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;	
		sleep 1;
		deletevehicle waffen_target1;
		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_8");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };
		
		waffenschein_firsthit = false;		
		sleep 1;
		deletevehicle waffen_target1;		
		waffen_target1 = "TargetP_Zom_F" createvehicle (getmarkerpos "waffen_target_6");
		waffen_target1 addEventHandler ["HitPart",  { waffenschein_firsthit = true;} ];
		waffen_target1 setdir 180;
		
		waituntil { sleep 1; waffenschein_firsthit };	
		waffenschein_best = true;
		sleep 2;
		deletevehicle waffen_target1;
		
		