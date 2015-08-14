//rad1o laptop hook
//suitable for the simple lasercut case
//chris007
//150812

thick  = 3;
width  = 13;

length = 20;

thickness_case   = 4;
length_hook_case = 2.5; // +1.5 = 5 = size of the hole

thickness_laptop = 10;
length_hook_laptop = 10;


rotate([0,-90,0])
difference()
{
	union()
	{
		translate([0, 0, 0]) cube([width, thick, length]);

		translate([0, 0, -thick]) cube([width, thickness_laptop+(2*thick), thick]);
		translate([0, thickness_laptop+thick, -thick]) cube([width, thick, length_hook_laptop+thick]);
		
		translate([0, -thickness_case-thick, length]) cube([width, thickness_case+(2*thick), 1.5]);
		translate([0, -thickness_case-thick, length-length_hook_case]) cube([width, thick, length_hook_case]);
	}
}
