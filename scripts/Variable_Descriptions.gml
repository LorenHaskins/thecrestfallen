/*

//DO NOT EXECUTE THIS SCRIPT.

grav //When defined will give a variable positive vertical speed
hsp //Current Horizontal Speed in Pixels Per Frame
vsp //Current Vertical Speed in Pixels Per Frame
movespeed //Potential speed
run_spd //Potential running speed - GLOBAL VARIABLE
spr_run_right //Define as the sprites "run right", and so on.
spr_walk_right
spr_idle_righ
spr_run_left
spr_walk_left
spr_idle_left

sprite_index //Current Objects Sprite
image_speed //Animation speed of current sprite

depth //0 is the screen, -X is towards the human, +X is away from the human

bg_mvmt //creates negative movement on Playing Characters if the background is moving.
        //define as 0 and give movespeed variable in Horiz Collision script.
        //GLOBAL VARIABLE
move_all //Adds Background HSP to all NPC and Objects
player_mov //defines if the player is moving to cause backgrounds to move


//STATE MACHINES
aggro_state //All enemies to be defined as aggro_states.XXXX
aggro_states //Enemy Aggrovation states
    idle
    patrol
        patrol_speed //what the default hsp will be for the patrol
        patrol_dist_max //how many radius of pixels the enemy will patrol
        patrol_dist_min //Negative radius of pixels the enemy will patrol
        patrol_dist_mid //Starting point of the patrol, typically 0
        cur_patrol_dist //Measures how many pixels the patrol has moved 
        patrol_dist //initialize as p_dist.d_mid, switch states to control patrol
    chase 
        chase_speed //hsp during a chase 

p_dist //Patrol Distances
    d_max
    d_mid
    d_min
    
key_right //during keyboard check gives this a positive or negative value
key_left //during keyboard check gives this a positive or negative value
move = key_left + key_right //adds the values, if both keys are pressed, zero move, 
                            //Mashke prevention
vk_right //right arrow (used for player movement)
vk_left //left arrow (used for player movement)
vk_lshift //Left shift (used for player run)

enemy_speed //defined by enemy's spd, controls the HSP of the enemy's battle icon

level // Characters or enemy's level
xp // the amout of XP a playing character has
xp_worth // how much XP you get when killing an enemy
max_hp //Maximum Health Points
cur_hp //Current health points
str //Variable for determining strength attacks
dex //Variable for determining dexterity attacks
def //Variable for counteracting strength attacks
agil //Variable for counteracting dexterity attacks
fear //Variable to weaken Character or Enemy
spd //Determines initiative speed

//Depth Variables
gui_fg_depth = -100000 //Foreground items on GUI
gui_bg_depth = -10000 //Background of each GUI
foreground_depth = -1000 //Foreground of the room
player_depth = 0 //Depth of the main player
NPC_depth = 10 //Depth of any NPCs
background_depth = -1000 //Depth of Background
backstage_depth = -10000 //Depth of Behind -Main- Background (ie, the sky)

Use +# to tweak multiples of each type of depth.
    
*/
