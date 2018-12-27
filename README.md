# BO3linear_expandable_objective_system
BO3 linear objective script template using flags 

Create folder named objectives in scripts folder
Place scripts in objectives folder

Edit gsh for settings
Edit setup for order
Edit each numbered one for your objectives
Add more as needed

Add to top of mapname.gsc
#using scripts\zm\objectives\objectives_setup;

Add to zone file
scriptparsetree,scripts/zm/objectives/objectives_setup.gsc
scriptparsetree,scripts/zm/objectives/objectives_1.gsc
scriptparsetree,scripts/zm/objectives/objectives_2.gsc
//scriptparsetree,scripts/zm/objectives/objectives_3.gsc //more as needed
