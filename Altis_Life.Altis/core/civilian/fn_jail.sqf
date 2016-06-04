#include "..\..\script_macros.hpp"
/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
private["_bad","_unit","_time"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
//if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param;


player SVAR ["restrained",false,true];
player SVAR ["Escorting",false,true];
player SVAR ["transporting",false,true];

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos (getMarkerPos "jail_marker");

if(_bad) then {
	waitUntil {alive player};
	sleep 1;
};

//Check to make sure they goto check
if(player distance (getMarkerPos "jail_marker") > 70) then {
	player setPos (getMarkerPos "jail_marker");
};

[1] call life_fnc_removeLicenses;

{
	_amount = ITEM_VALUE(_x);
	if(_amount > 0) then {
		[false,_x,_amount] call life_fnc_handleInv;
	};
} forEach ["spikeStrip","lockpick","goldbar","blastingcharge","boltcutter","defusekit", "toolkit", "defibrillator","heroin_unprocessed","heroin_processed","cannabis","pilze","mash","marijuana","cocaine_unprocessed","cocaine_processed","turtle_raw"];

life_is_arrested = true;

removeAllWeapons player;
{player removeMagazine _x} forEach (magazines player);
removeHeadgear player:
removeGoggles player;
removeVest player;
removeUniform player;
removeBackpack player;
player addUniform "U_C_WorkerCoveralls";
[] spawn life_fnc_playerSkins;

if(life_HC_isActive) then {
	[player,_bad,_time] remoteExecCall ["HC_fnc_jailSys",HC_Life];
} else {
	[player,_bad,_time] remoteExecCall ["life_fnc_jailSys",RSERV];
};

[5] call SOCK_fnc_updatePartial;