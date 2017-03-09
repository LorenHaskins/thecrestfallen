//Damage Rolls

    d_20 = irandom_range(1, 20);
    defend_d_20 = irandom_range(1, 20);
    hit_roll = (d_20 + round(level / 2) + damage_type);
    full_dmg = round(((irandom_range(75,100)/100)* damage_type));
    part_dmg = round(((irandom_range(50,75)/100)* damage_type));
    crit_dmg = round(((irandom_range(100,200)/100)* damage_type));
    
    if ( damage_type = cqc )
    {
        defender_roll = defend_d_20 + round(defender.level/2) + defender.def;
    }
    
    if ( damage_type = aim )
    {
        defender_roll = defend_d_20 + round(defender.level/2) + defender.agi;
    }  
        
    //IF CRIT
    if ( d_20 == 20 )
    {
        defender.cur_hp += -crit_dmg
    }
    
    //IF EPIC FAIL
    if ( d_20 == 1 )
    {
        //Add in Missed
        defender.cur_hp += 0
    }
    
    //IF DEF CRIT, BUT NOT ATTACK CRIT
    if ( defend_d_20 == 20 && d_20 != 20)
    {
        //Add in BLOCKED
        defender.cur_hp += 0
    }
    
    //IF DEF FAIL, BUT NOT CRIT, AND NOT EPIC FAIL
    if ( defend_d_20 == 1 && d_20 != 1)
    {
        defender.cur_hp += -full_dmg
    }
    
    //If attack D20 is neither crit nor fail, and Defender D20 is neither Crit Nor Fail
    if ( d_20 > 1 && d_20 < 20 )
    {
        if (defend_d_20 > 1 && defend_d_20 < 20 )
        {
            if ( hit_roll > defender_roll )
            {
                cur_hp += -full_dmg
            }
            else
            {
                cur_hp += -part_dmg
            }
        }
    }
