///scr_highscore_time
if (time <= global.levelTime){
    
    // Give more points depending on how much faster the level was completed.
    difference = global.levelTime - time;
    
    // Points before the time bonus is given.
    obj_llama01.pointsBeforeTimeBonus = global.points;
    
    // Award the points.
    global.points = round(global.points * (difference + 2)); 
    
    // For highscore, count how much points was earned from the time bonus. (Fult med globalvariabel men men)  
    global.timeBonusEarned = global.points - obj_llama01.pointsBeforeTimeBonus;
}
else{ // If the player didn't earn any time bonus.
    global.timeBonusEarned = 0;
}
