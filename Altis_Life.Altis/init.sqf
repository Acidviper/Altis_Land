/*
	File: init.sqf
	Author: 
	
	Description:
	
*/
StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

[] execVM "scripts\safezone\safezone.sqf";
[] execVM "scripts\tool\HUD\liveAnzeige.sqf";
[] execVM "scripts\sidechat\nosidechat.sqf";
[] execVM "scripts\gas\gasmask.sqf";
[] execVM "scripts\screwpeta.sqf";
[] execVM "scripts\gas\teargasGL.sqf";
[] execVM "scripts\gas\teargas.sqf";
[] execVM "DynamicWeatherEffects.sqf";

StartProgress = true;

	
// MArker Menu Polizei
marker_Cop_Zones = [];


if (!IsServer) then {
	if (isNil "license_car_in_use") then {
		license_car_in_use = false;
		publicVariable "license_car_in_use"; };
	if (isNil "license_trucker_in_use") then {
		license_trucker_in_use = false;
		publicVariable "license_trucker_in_use"; };
	if (isNil "license_heli_in_use") then {
		license_heli_in_use = false;
		publicVariable "license_heli_in_use"; };
	if (isNil "license_waffen_in_use") then {
		license_waffen_in_use = false;
		publicVariable "license_waffen_in_use"; };
	if (isNil "license_boating_in_use") then {
		license_boating_in_use = false;
		publicVariable "license_boating_in_use"; };
};

//"Scheiß Nebel hau ab" (Warum hat jeder den selben text hier?)
[] spawn {
	while{true} do {
		sleep 10;
		200 setFog 0;
		sleep 590;
	};
};