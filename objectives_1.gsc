#using scripts\shared\flag_shared;
#insert scripts\zm\objectives\objectives.gsh;

function autoexec init()
{
	level flag::init(OBJECTIVE1);
	level flag::init(OBJECTIVE1 + "done");
	level thread WaitToStart();
}

function private WaitToStart()
{
	level flag::wait_till(OBJECTIVE1);
	//setup for this part of the objectives

}
//when objective is complete set the flag... could also be the flag for the next zone?
//level flag::set(OBJECTIVE1 + "done");