#include "..\..\script_macros.hpp"
if (joinmode==0) then {
_PUID = getPlayerUID player;
_spielerGeld = life_cash;
hint "Żądanie zdarzenie zostało wysłane do serwera, należy odczekać chwilę";
[_PUID,_spielerGeld] remoteExec ["TON_fnc_paintball",RSERV];
joinmode = 1;
} else {
hint "Spróbuj ponownie w innym czasie!";
};