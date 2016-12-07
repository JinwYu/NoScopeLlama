///scr_highscore_spit_counter

// Check how many times spit was fired then award points.
if (obj_head.spitCounter == global.nrEnemies){
    global.points = global.points + obj_llama01.spitBonus;
    global.spitCountEarned = obj_llama01.spitBonus;    // For drawing highscore.
}else{
    global.spitCountEarned = 0;
}
