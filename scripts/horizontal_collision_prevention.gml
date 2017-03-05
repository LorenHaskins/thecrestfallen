//Prevents Horizontal movement when collided with any "obj_wall_objects"

if (place_meeting(x + hsp, y, obj_wall_objects))
{
    while(!place_meeting(x + sign(hsp), y, obj_wall_objects))
    {
        x += sign(hsp);        
    }
    hsp=0;
}
