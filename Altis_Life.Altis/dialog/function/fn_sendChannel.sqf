#include "..\..\script_macros.hpp"
/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Erm?glicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (CASH < 100000 && playerSide == civilian) exitWith { systemChat "Trzeba € 100.000, aby wysłać wiadomość!"; };
if (!(playerSide in [civilian, east]) ) exitWith { systemChat "Du musst Zivilist sein!"; };
if (life_channel_send) exitWith { systemChat "Odczekaj 10 minut przed wysłaniem nowej wiadomości!"; };

if (playerSide == civilian) then {
	SUB(CASH, 100000);
};

_message = ctrlText 9001;

[3,format ["Insel News %1",_message]] remoteExec ["life_fnc_broadcast",0];
life_channel_send = true;

[] spawn
{
	sleep 600;
	life_channel_send = false;
};
[] call life_fnc_hudUpdate;