#include <sourcemod>
#include <colors>

public Plugin myinfo =
{
	name = "practice mode",
	author = "Flowing",
	description = "practice mode for sovserver",
	version = "0.1b",
	url = "https://lo3.jp"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_practice", Command_practice);
}
 
public Action Command_practice(int client, int args)
{
	ServerCommand("sm_show_activity 0"); 
	ServerCommand("exec lo3_practice.cfg"); 
	CPrintToChatAll(" {green}[LO3] {default} practice config excuted!");
	ServerCommand("sm_show_activity 15"); 
}