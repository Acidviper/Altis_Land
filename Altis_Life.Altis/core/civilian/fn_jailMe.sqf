#include "..\..\script_macros.hpp"
/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*//*
private["_time","_bail","_esc","_countDown"];

params [
	["_ret",[],[[]]],
	["_bad",false,[false]]
];


if(_bad) then { _time = time + 1100; } else { _time = time + (15 * 60); };

if(count _ret > 0) then { life_bail_amount = SEL(_ret,3); } else { life_bail_amount = 20000; _time = time + (10 * 60); };
_esc = false;
_bail = false;

[_bad] spawn {
	life_canpay_bail = false;
	if(_this select 0) then {
		sleep (10 * 60);
	} else {
		sleep (5 * 60);
	};
	life_canpay_bail = nil;
};

while {true} do {
	if((round(_time - time)) > 0) then {
		_countDown = [(_time - time),"MM:SS"] call BIS_fnc_secondsToString;
		hintSilent parseText format[(localize "STR_Jail_Time")+ "<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>" +(localize "STR_Jail_Pay")+ " %3<br/>" +(localize "STR_Jail_Price")+ " $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 100) exitWith {
		_esc = true;
	};
	
	if(life_bail_paid) exitWith {
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};


switch (true) do {
	case (_bail): {
		life_is_arrested = false;
		life_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		
		if(life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (_esc): {
		life_is_arrested = false;
		hint localize "STR_Jail_EscapeSelf";
		[0,"STR_Jail_EscapeNOTF",true,[profileName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
		
		if(life_HC_isActive) then {
			[getPlayerUID player,profileName,"79"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
		} else {
			[getPlayerUID player,profileName,"79"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
		};
		
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail): {
		life_is_arrested = false;
		hint localize "STR_Jail_Released";
		
		if(life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		
		player setPos (getMarkerPos "jail_release");
		[5] call SOCK_fnc_updatePartial;
	};
};*/


private["_ret","_bad","_time","_bail","_esc","_countDown","_time","_brokenout"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param; //##80//

_time = time + (_time * 60); //x Minutes

//if(_bad) then { _time = time + 1100; } else { _time = time + (15 * 60); }; //##80 (time loaded from DB)

if(count _ret > 0) then { life_bail_amount = (_ret select 3); } else { life_bail_amount = 20000; /*_time = time + (10 * 60); */};
_esc = false;
_bail = false;
_brokenout = false;
if(_time <= 0) then { _time = time + (15 * 60); hintC "Please Report to Admin: JAIL_FALLBACK_15, time is zero!"; };

[_bad,_time] spawn
{
	life_canpay_bail = false;
	life_bail_amount = life_bail_amount * 5;
	if(_this select 0) then
	{
		//sleep (10 * 60);
		//50% of time
		sleep ( (_this select 1) * 0.5 );
	}
		else
	{
		//sleep (5 * 60);
		//20% of time
		sleep ( (_this select 1) * 0.2 );
	};
	life_canpay_bail = nil;
};

while {true} do {
	if((round(_time - time)) > 0) then {
		_countDown = [(_time - time),"MM:SS"] call BIS_fnc_secondsToString;
		hintSilent parseText format[(localize "STR_Jail_Time")+ "<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>" +(localize "STR_Jail_Pay")+ " %3<br/>" +(localize "STR_Jail_Price")+ " $%2",_countDown,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 100) exitWith {
		_esc = true;
	};
	
	if(life_bail_paid) exitWith {
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};


switch (true) do {
	case (_bail): {
		life_is_arrested = false;
		life_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		
		if(life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (_esc): {
		life_is_arrested = false;
		hint localize "STR_Jail_EscapeSelf";
		[0,"STR_Jail_EscapeNOTF",true,[profileName]] remoteExecCall ["life_fnc_broadcast",RCLIENT];
		
		if(life_HC_isActive) then {
			[getPlayerUID player,profileName,"79"] remoteExecCall ["HC_fnc_wantedAdd",HC_Life];
		} else {
			[getPlayerUID player,profileName,"79"] remoteExecCall ["life_fnc_wantedAdd",RSERV];
		};
		
		[5] call SOCK_fnc_updatePartial;
	};
	
	case (alive player && !_esc && !_bail): {
		life_is_arrested = false;
		hint localize "STR_Jail_Released";
		
		if(life_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_Life];
		} else {
			[getPlayerUID player] remoteExecCall ["life_fnc_wantedRemove",RSERV];
		};
		
		player setPos (getMarkerPos "jail_release");
		[5] call SOCK_fnc_updatePartial;
	};
};
