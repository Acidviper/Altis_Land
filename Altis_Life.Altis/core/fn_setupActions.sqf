/*
	File: fn_setupActions.sqf
	Author: 
	
	Description:
	Master addAction file handler for all client-based actions.
*/

//earplugs
life_actions = [player addAction["<t color='#ADFF2F'>Zatyczki do uszu</t>",{if (soundVolume == 1) then {1 fadeSound 0.1;}},"",-6,false,false,"",'soundVolume == 1']];
life_actions pushBack [player addAction["<t color='#ADFF2F'>Głośniej</t>",{0 fadeSound (soundVolume / 5)},"",-6,false,false,"",'soundVolume < 1']];
life_actions pushBack [player addAction["<t color='#ADFF2F'>Wyjąłeś zatyczki</t>",{if (soundVolume != 1) then {1 fadeSound 1;} },"",-6,false,false,"",'soundVolume != 1']];


switch (playerSide) do {
	case civilian: {
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Ausweis
		life_actions = life_actions + [player addAction["Pokaż dokument",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man"']];
	};

	
	if (playerSide == west) then {
	//COP ENter fahrerseite
	life_actions pushBack [player addAction["Siedzenie pasażera",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	//CopEnter - Passenger Seat
	life_actions pushBack [player addAction["Siedzenie pasażera",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	//CopEnter - Exit
	life_actions pushBack [player addAction["Wysiądź",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];	
	//Seize weapons
    life_actions = life_actions + [player addAction["Skonfiskuj broń",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
	// nano EMP Little Bird
	life_actions pushBack [player addAction["<t color='#FF0000'>EMP konsola</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
    //seize Objects
    life_actions = life_actions + [player addAction["Konfiskata",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
	//Ausweis 
		life_actions = life_actions + [player addAction["Pokaż odznakę",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man"']];
	};
	
	if (playerSide == independent) then {
	//Einsteigen FAhrerseite
	life_actions pushBack [player addAction["Siedzenie pasażera",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	//CopEnter - Passenger Seat
	life_actions pushBack [player addAction["Siedzenie pasażera",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
	//CopEnter - Exit
	life_actions pushBack [player addAction["Wysiądź",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];	
	//Seize weapons
    life_actions = life_actions + [player addAction["Skonfiskuj broń",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
    //seize Objects
    life_actions = life_actions + [player addAction["Konfiskata",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
	//Ausweis  
	life_actions = life_actions + [player addAction["Pokaż odznakę",life_fnc_Lizenzzeigen,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man"']];
};
};