GUT_WIDTH = 122;
GUT_HEIGHT = 50;
WALL_THICKNESS = 2;
GUT_LIP = 10;

module smallpanel(){
difference(){
    union(){
        difference(){
            cylinder(h = WALL_THICKNESS, r = GUT_WIDTH / 2, center=false);
            translate([-(GUT_WIDTH / 2),0,-1]) {
                cube([GUT_WIDTH, GUT_WIDTH / 2, WALL_THICKNESS + 4]);
            }
        }

        translate([-(GUT_WIDTH / 2),0,0]) {
            cube([GUT_WIDTH, GUT_LIP, WALL_THICKNESS]);
            }
        }
    //create screw holes
    translate([((GUT_WIDTH / 2) - 20),(GUT_LIP - 10),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = 1.5,center=false);
}
translate([-(GUT_WIDTH / 2 - 20),(GUT_LIP - 10),-1]){
    cylinder(h = WALL_THICKNESS + 2, r = 1.5,center=false);
}
}
}

smallpanel();