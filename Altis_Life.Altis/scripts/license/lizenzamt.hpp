////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Shinji, v1.063, #Byloki)
////////////////////////////////////////////////////////
class mp_license_maker {
	idd = 6779;
	name= "mp_license_maker";
	onLoad = "uiNamespace setVariable ['mp_license_maker', _this select 0];";
	onUnLoad = "uiNamespace setVariable ['mp_license_maker', nil]";
	movingEnable = false;
	enableSimulation = true;
	
class controlsBackground {
	class RscText_1000: Life_RscText
	{
	idc = 6781;
	x = 0.268889 * safezoneW + safezoneX;
	y = 0.125983 * safezoneH + safezoneY;
	w = 0.47816 * safezoneW;
	h = 0.714033 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.7};
	colorActive[] = {-1,-1,-1,0.7};
};
class RscText_1001: Life_RscText
{
	idc = 6780;
	text = "Lizenz-Amt"; //--- ToDo: ;
	x = 0.268889 * safezoneW + safezoneX;
	y = 0.125983 * safezoneH + safezoneY;
	w = 0.47816 * safezoneW;
	h = 0.0340016 * safezoneH;
	colorBackground[] = {1,0.6,0,1};
	colorText[] = {1,1,1,1};
};
};
class controls {
class RscStructuredText_1100: Life_RscStructuredText
{
	idc = 6782;
	text= "Du wirst immer kleinere Instruktionen erhalten. Halte diese und die vorgegebene Zeit ein, dann solltest du die Lizenzen spielend leicht erhalten. ACHTUNG: Solltest du während deiner Tests von anderen Spielern in irgendeiner Hinsicht blockiert, behindert werden, so wende dich direkt an die Polizei des Servers. Dies ist Strafbar und kann mit Freiheitsentzug bestraft werden!";
	x = 0.523908 * safezoneW + safezoneX;
	y = 0.210987 * safezoneH + safezoneY;
	w = 0.207203 * safezoneW;
	h = 0.595027 * safezoneH;
	colorBackground[] = {-1,-1,-1,-1};
	colorText[] = {1,1,1,1};
};
class RscButtonMenu_2400: Life_RscButtonMenu
{
	idc = 6783;
	text = "Auto - Schein"; //--- ToDo: ;
	action = "_nil=[""Car""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 4500$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.210987 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2401: Life_RscButtonMenu
{
	idc = 6784;
	text = "LKW - Schein"; //--- ToDo: ;
	action = "_nil=[""Trucker""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 35000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.27899 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2402: Life_RscButtonMenu
{
	idc = 6785;
	text = "Boots - Schein"; //--- ToDo: ;
	action = "_nil=[""Boating""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 10000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.346993 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2403: Life_RscButtonMenu
{
	idc = 6786;
	text = "Flug - Schein"; //--- ToDo: ;
	action = "_nil=[""Flying""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 160000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.414996 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2404: Life_RscButtonMenu
{
	idc = 6787;
	text = "Waffenschein"; //--- ToDo: ;
	action = "_nil=[""Weapons""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 35000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.482999 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2405: Life_RscButtonMenu
{
	idc = 6788;
	text = "Eigentumsurkunde"; //--- ToDo: ;
	action = "_nil=[""Housing""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 75000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.687009 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};

class RscButtonMenu_2406: Life_RscButtonMenu
{
	idc = 6789;
	text = "Jagdschein"; //--- ToDo: ;
	action = "_nil=[""hunting""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 30000$ Diese Lizenz erlaubt es dir legal Tiere zu jagen und sie auszuweiden.";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.551002 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscButtonMenu_2407: Life_RscButtonMenu
{
	idc = 6790;
	text = "Frachturkunde"; //--- ToDo: ;
	action = "_nil=[""cargo""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 550000$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.619005 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};
/*
class RscButtonMenu_2408: Life_RscButtonMenu
{
	idc = 6791;
	text = "LEER"; //--- ToDo: ;
//	action = "_nil=[""Placeholder""]ExecVM ""scripts\license\lizenzen_abfrage.sqf"";";
	tooltip ="Kosten: 500$";
	x = 0.284828 * safezoneW + safezoneX;
	y = 0.755012 * safezoneH + safezoneY;
	w = 0.135479 * safezoneW;
	h = 0.0510023 * safezoneH;
};*/
};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
