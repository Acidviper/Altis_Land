class agb
{
 idd = 32154;
 name = "agb";
 movingEnable = false;
 enableSimulation = false;
 
 class controlsBackground
 {
 class RscTitleBackground : Life_RscText
 {
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 idc = -1;
 x = 0.0875;
 y = 0.06;
 w = 0.825;
 h = 0.04;
 };
 
 class RscBackground : Life_RscText
 {
 colorBackground[] = {0.31,0.31,0.31,1};
 idc = -1;
 x = 0.0875;
 y = 0.12;
 w = 0.825;
 h = 0.82;
 };
 
 class RscTitleText : Life_RscTitle
 {
 colorBackground[] = {0, 0, 0, 0};
 idc = -1;
 text = "Zasady serwera Altisland Best:";
 x = 0.0875;
 y = 0.06;
 w = 0.825;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 };
 };
 
 class RsclolStatus : Life_RscStructuredText
 {
 idc = -1;
 colorBackground[] = {0, 0, 0, 0};
 sizeEx = 0.0001;
 text = "<t size = '0.8'>Zasady podstawowe serwera <br /> �1: /> �1.1 Hacking / Oszukiwanie / duping / Belleidigungen <br: aby unikn�� samob�jstwo / WY��CZY� do RPG /> <br �1.2: wykorzysta� b��dy / Exploites -. w razie w�tpliwo�ci zapyta� Admin <br /> <br /> �2: RP jest dla nas priorytetem du�y. Haellst prawda w RP, masz tu straci� nic <br /> <br /> �3. RDM / VDM b�dzie karane i zakaza�a <br /> <br /> sprawca Kontakt <br / > TSL ts3.altisland.pl <br /> <br g��wna www.altisland.pl /> Altis Life: <br /> Admin Acid <br /> <br /> Uwaga: Jeste�my wynaj�cie MTD i policji oraz wzmocnienie naszego zespo�u pomocy technicznej. Aplikacje na forum. <br /> </ T> <t font = 'PuristaBold "size =" 0.9 "> Aby gra� na Altisland Best musisz zgodzi� si� z tymi zasadami i zgadzaj� si� niezgodne z nimi i maj� przepisy Przeczyta�em na forum i rozumie� </ t> ";
 x = 0.1125;
 y = 0.16;
 w = 0.775;
 h = 0.66;
 }; 
 };
 
 class Controls
 {
 class naz : Life_RscButtonMenu
 {
 idc = -1;
 text = "Nie Akceptuje";
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 onButtonClick = "closeDialog 0;";
 x = 0.1075;
 y = 0.88;
 w = 0.3;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 };
 };
 
 
 class az : Life_RscButtonMenu
 {
 idc = -1;
 text = "Akceptuje";
 colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
 onButtonClick = "rulesok = true; closeDialog 0;";
 x = 0.5825;
 y = 0.88;
 w = 0.3;
 h = 0.04;
 class Attributes 
 {
 align = "center";
 }; 
 };
 };
};