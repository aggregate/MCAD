// Library: boxes.scad
// Version: 1.0
// Author: Marius Kintel
// Copyright: 2010
// License: BSD

// roundedBox([width, height, depth], float radius, bool sidesonly);

// EXAMPLE USAGE:
// roundedBox([20, 30, 40], 5, true);

// size is a vector [w, h, d]
module roundedBox(size, radius, sidesonly)
{
  off=[size[0]/2-radius, size[1]/2-radius, size[2]/2-radius];
  hull()
  if (sidesonly) {
    for(x=[-1,1], y=[-1,1])
    translate([x*off[0], y*off[1], 0])
    cylinder(r=radius, h=size[2], center=true);
  } else {
    for(x=[-1,1], y=[-1,1], z=[-1,1])
    translate([x*off[0], y*off[1], z*off[2]])
    sphere(r=radius);
  }
}
