/* 

	Author Shinji
	
*/
_allgemein_abfrage = _this select 0;
current_position_p = getpos Player;

if ( playerSide != civilian) exitwith { hint "Only Civillians allowed here!"; closedialog 0; };

switch (_allgemein_abfrage) do {
    case "Car": {
							if (life_cash < 4500 ) exitwith { hint "Nie masz 4500$.";};
							if (license_civ_driver) exitwith { hint"Posiadasz juz ta licencje";};
								if ( license_car_in_use ) exitwith { hint "Someone is allready in that license, please wait a little time."; closedialog 0;	}; 
									license_car_in_use =  true;
									publicVariable "license_car_in_use";									
									
									_uid = getplayeruid player;
									
["car", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									["car", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									
									player setpos (getmarkerpos "license_car_positioning");
									closedialog 0;						
											life_cash = life_cash - 4500;
									hint "Auto-Szkoła: przeniesiesz sie bezpośrednio do samochodu i zacznij od razu.";
									sleep 5;
									execvm "scripts\license\tests\auto_schein.sqf";								
									
						};
    case "Trucker": { 
							if (life_cash < 35000 ) exitwith { hint "Nie masz 35000$.";};							
							if (license_civ_trucking) exitwith { hint"Posiadasz juz licencje";};
							if ( license_trucker_in_use ) exitwith { hint "Ktoś jest już w tej licencji, należy odczekać trochę czasu."; closedialog 0;	}; 
									license_trucker_in_use =  true;
									publicVariable "license_trucker_in_use";
									
									
									_uid = getplayeruid player;
["truck", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									["truck", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									
									player setpos (getmarkerpos "license_truck_positioning");
									closedialog 0;						
											life_cash = life_cash - 35000;
									execvm "scripts\license\tests\trucker_schein.sqf";
				
						};
	case "Boating": { 
							if (life_cash < 10000 ) exitwith { hint "Nie posiadasz 1000$.";};
								if (license_civ_boat) exitwith { hint"Posiadasz juz licencje";};
								if ( license_boating_in_use ) exitwith { hint "Ktoś jest już w tej licencji, należy odczekać trochę czasu."; closedialog 0;	}; 
									life_cash = life_cash - 10000;									
									license_boating_in_use = true;
									publicVariable "license_boating_in_use"; 
									
									_uid = getplayeruid player;
["boat", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									["boat", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									
									
									player setpos (getmarkerpos "boating_start");
									closedialog 0;					
									
									execvm "scripts\license\tests\boating.sqf";
									
						};
	 case "Flying": { 							
							if (life_cash < 160000 ) exitwith { hint "Nie posiadasz 160000$.";};							
							if (license_civ_pilot) exitwith { hint"DPosiadasz juz licencje";};
							if ( license_heli_in_use ) exitwith { hint "Ktoś jest już w tej licencji, należy odczekać trochę czasu."; closedialog 0;	}; 
									license_heli_in_use =  true;
									publicVariable "license_heli_in_use";
									
									
									_uid = getplayeruid player;
["heli", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									["heli", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
									
									player setpos (getmarkerpos "license_heli_positioning");
									closedialog 0;						
									life_cash = life_cash - 160000;
									execvm "scripts\license\tests\heli_schein.sqf";
						};
	 case "Weapons": { 
							
							if (life_cash < 35000 ) exitwith { hint "Nie posiadasz 35000$.";};
							if (license_civ_gun) exitwith { hint"Posiadasz juz licencje";};
							_sWeap = secondaryWeapon player;
							_pWeap = primaryWeapon player;
							_hWeapon = handgunWeapon player;
							if ( _sWeap != "" || _pWeap != "" || _hWeapon != "" ) exitwith { hint "Ktoś jest już w tej licencji, należy odczekać trochę czasu.";};
							
							license_waffen_in_use =  true;
							publicVariable "license_waffen_in_use";
								
							life_cash = life_cash -35000;
							
							_uid = getplayeruid player;
["waffen", player, _uid] remoteExec ["DB_fnc_fahrschulen",2];
							
							closedialog 0;									
							player setpos (getmarkerpos "waffenschein_lizenzs");
							execvm "scripts\license\tests\waffenschein.sqf";
							
							
							
						};
	 case "Housing": { 
							if (life_cash < 750000 ) exitwith { hint "Nie posiadasz 750000$ dabei.";};
							if (license_civ_home) exitwith { hint"Posiadasz juz licencje";};
							license_civ_home = true;
							life_cash = life_cash -750000;
							hint "Du hast die Lizenz erhalten";
			
						};
	 case "cargo": { 
							if (life_cash < 550000 ) exitwith { hint "Nie posiadasz 550000$.";};
							if (license_civ_cargo) exitwith { hint"Posiadasz juz licencje";};
							license_civ_cargo = true;
							life_cash = life_cash -550000;
							hint "Du hast die Lizenz erhalten";	
							};
	 case "hunting": { 
							if (life_cash < 75000 ) exitwith { hint "Nie posiadasz 75000$.";};
							if (license_civ_jagd) exitwith { hint"Posiadasz juz licencje";};
							license_civ_jagd = true;
							life_cash = life_cash -75000;
							hint "Możesz otrzymać licencję";
			
						};	
	 case "Placeholder": { 
				hint "Cos sie dzieje...!" 
						};								
    default { hint "default" };
};
