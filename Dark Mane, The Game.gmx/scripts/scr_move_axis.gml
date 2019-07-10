///scr_move_axis(xaxis, yaxis, threshold, spd)

var xaxis = argument0;
var yaxis = argument1;
var threshold = argument2;
var global.magnitude = point_distance(0, 0, xaxis, yaxis);
var global.sped = argument3;



// move the character if you can
if (global.magnitude >= threshold)
{
    if(!place_meeting(x+xaxis * global.sped, y +yaxis * global.sped, par_wall)) 
    {
        x += xaxis * global.sped;
        y += yaxis * global.sped;
    } 
else if (!place_meeting(x + xaxis * global.sped, y, par_wall))
    {
    x += xaxis * global.sped;
    }
else if (!place_meeting(x, y + yaxis * global.sped, par_wall)) 
    {
    y += yaxis * global.sped;
    }
}
