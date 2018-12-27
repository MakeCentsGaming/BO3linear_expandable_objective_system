#using scripts\shared\flag_shared;
#using scripts\zm\objectives\objectives_1;
#using scripts\zm\objectives\objectives_2;
//add more objectives here

#insert scripts\zm\objectives\objectives.gsh;
/*
#####################
by: M.A.K.E C E N T S
#####################
Script:

Add to top of mapname.gsc
#using scripts\zm\objectives\objectives_setup;

Add to zone file
scriptparsetree,scripts/zm/objectives/objectives_setup.gsc
scriptparsetree,scripts/zm/objectives/objectives_1.gsc
scriptparsetree,scripts/zm/objectives/objectives_2.gsc

###############################################################################
*/


function autoexec init()
{
	level thread OrderEE();
}

function private OrderEE()
{
	Step(OBJECTIVE1);
	Step(OBJECTIVE2);
	//add more steps and objections

	FinalEEReward();
}

function private Step(myflag)
{
	//wait for the part to be placed
	level flag::set(myflag);
	//the part has been placed notify next step
	level flag::wait_till(myflag+"done");
}

function private FinalEEReward()
{
	//the ee is over, do something here, example for power:
	level flag::set("power_on");
	level notify("power_on");
}