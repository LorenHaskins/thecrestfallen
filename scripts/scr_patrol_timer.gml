//All this is to make a object move left and right, variables are determined in object "create"

switch (patrol_dist) 
{
    case p_dist.d_mid:
    {
        dir = 1;
        hsp = (dir * patrol_speed);
        cur_patrol_dist += (hsp);       
        if (cur_patrol_dist >= patrol_dist_max)
        {
            patrol_dist = p_dist.d_max
        }
        break;
    }
    case p_dist.d_max:
    {
        dir = (-1);
        hsp = (dir * patrol_speed);
        cur_patrol_dist += (hsp);        
        if (cur_patrol_dist <= patrol_dist_min) 
        {
            patrol_dist = p_dist.d_min
        }
        break;
    }
    case p_dist.d_min:
    {
        dir = 1;
        hsp = (dir * patrol_speed);
        cur_patrol_dist += (hsp);
        if (cur_patrol_dist >= patrol_dist_max)
        {
            patrol_dist = p_dist.d_max
        }
    }
}

