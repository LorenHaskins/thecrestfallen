//All this is to make a object move left and right, variables are determined in object "create"

switch (patrol_dist) {
case p_dist.d_mid:
{
cur_patrol_dist += (hsp + move_all);
dir = 1;
hsp = dir * patrol_speed;
if (cur_patrol_dist == patrol_dist_max) patrol_dist = p_dist.d_max
}
break;
case p_dist.d_max:
{
cur_patrol_dist += -(hsp + move_all);
dir = (-1);
hsp = dir * patrol_speed;
if (cur_patrol_dist == patrol_dist_min) patrol_dist = p_dist.d_min
}
case p_dist.d_min:
{
cur_patrol_dist += (hsp + move_all);
dir = 1;
hsp = dir * patrol_speed;
if (cur_patrol_dist == patrol_dist_mid) patrol_dist = p_dist.d_mid
}
}

