/***************************************************
*** (c) 2016 by saarbastler.de
***************************************************/

// Stepcraft Exhaust Adapter Washer
$fn=100;

difference()
{
  union()
  {
    cylinder(d=20, h=2);
    translate([0,0,2]) cylinder(d= 14.5, h=3.25);
  }
  
  translate([0,0,-1]) cylinder( d=6.26, h=20);
  
  translate([52/2+15/2,0,-1]) cylinder(d=53, h=15);
}