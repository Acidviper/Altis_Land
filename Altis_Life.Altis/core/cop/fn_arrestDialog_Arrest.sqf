/*	
	Player clicked arrest/ok
*/
private ["_time"];
if !(playerSide == west || playerSide == east) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Falsches Ziel."};

//Get minutes
_time = ctrlText 1400;
if(! ([_time] call TON_fnc_isnumber)) exitWith{	hint "Musisz wprowadzić czas.";};
_time = parseNumber _time; //requested number
_time = round _time;
if(_time < 1 || _time > 90) exitWith { hint hint "Można ustawić czas między 1-90 minut!"; };
closeDialog 0;
 [life_pInact_curTarget, _time] call life_fnc_arrestAction;