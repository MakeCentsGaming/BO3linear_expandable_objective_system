#using scripts\shared\flag_shared;
#insert scripts\zm\objectives\objectives.gsh;

function autoexec init()
{
	level flag::init(OBJECTIVE2);
	level flag::init(OBJECTIVE2 + "done");
	level thread WaitToStart();
}

function private WaitToStart()
{
	level flag::wait_till(OBJECTIVE2);
	//setup for this part of the objectives

}
//when objective is complete set the flag... could also be the flag for the next zone?
//level flag::set(OBJECTIVE2 + "done");