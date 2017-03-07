//Damage Rolls
    
    //IF CRIT
    if ( attack_name.d_20 == 20 )
    {
        cur_hp += -attack_name.crit_dmg;
    }
    
    //IF EPIC FAIL
    if ( attack_name.d_20 == 1 )
    {
        //Add in Missed
        cur_hp += 0
    }
    
    //IF DEF CRIT, BUT NOT ATTACK CRIT
    if ( defend_d_20 == 20 && attack_name.d_20 != 20)
    {
            //Add in BLOCKED
            cur_hp += 0
    }
    
    //IF DEF FAIL, BUT NOT CRIT, AND NOT EPIC FAIL
    if ( defend_d_20 == 1 && attack_name.d_20 != 1)
    {
        cur_hp += -attack_name.full_dmg
    }
    
    //If attack D20 is neither crit nor fail, and Defender D20 is neither Crit Nor Fail
    if ( attack_name.d_20 > 1 && attack_name.d_20 < 20 )
    {
        if (defend_d_20 > 1 && defend_d_20 < 20 )
        {
            if ( attack_name.hit_roll > def_roll )
            {
                cur_hp += -attack_name.full_dmg
            }
            else
            {
                cur_hp += -attack_name.part_dmg
            }
        }
    }
