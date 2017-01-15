$fn=100;

module korpus( add )
{
  difference()
  {
    translate([-(42+add)/2,-(42+add)/2,0])  cube([42+add,42+add,37.5]);
    
    rotate([0,0,45]) difference()
    {
      translate([-35,-35,-1]) cube([70,70,40]);
      
      translate([-(53+add)/2,-(53+add)/2,-2]) cube([53+add,53+add,42]);
    }
  }
  
}

module schrittmotor()
{
  difference()
  {
    korpus(0);
    
    translate([0,0,37.5-3]) cylinder(d=10,h=4);    
  }
  translate([0,0,37.5-3]) cylinder(d=5,h=8.5+3);
}

module schlauchHalter()
{
  difference()
  {
    for(i=[0:90:270])
    {
      rotate([0,0,45+i]) translate([23,-6,37.5-10]) cube([5,12,55]);
    
      rotate([0,0,i]) translate([20,-15.5565,37.5-10]) cube([4.0415,2*15.5565, 55 ]);
    }
    korpus(0.75);
    translate([-25,0,37.5-5])rotate([0,90,0]) cylinder(d=10,h=10);
    translate([-25,-5,37.5-5-10]) cube([10,10,10]);
    
    translate([0,-25,63]) rotate([-90,0,0]) cylinder(d=30,h= 50);
    translate([-25,0,63]) rotate([0,90,0]) cylinder(d=30,h= 50);
    
    translate([-15,-25,63]) cube([30,50,50]);
    translate([-25,-15,63]) cube([50,30,50]);
    
    rotate([0,0,45]) translate([0,-30,78]) rotate([-90,0,0]) cylinder(d=5,h= 60);
    rotate([0,0,-45]) translate([0,-30,78]) rotate([-90,0,0]) cylinder(d=5,h= 60);
  }
}

*translate([0,-25,63]) rotate([-90,0,0]) cylinder(d=29,h= 50);

*schrittmotor();

rotate([180,0,0])
schlauchHalter();