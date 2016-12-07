///scr_draw_highscore
draw_set_colour(c_black); 
draw_set_font(fnt_game);
draw_set_halign(fa_center); // Align text to center
draw_set_valign(fa_center);

// Highscore
draw_text(512, 150, "HIGHSCORE");
draw_set_font(fnt_highscore);   // Change to the smaller font.
draw_set_halign(fa_left); // Align text to center
draw_set_valign(fa_left);

// Nr of enemies hit.
draw_text(365, 192, global.nrEnemies); // 288

if (global.nrEnemies == 1){ // Fixes spelling depending on nr of enemies.
    draw_text(397, 192, "ENEMY HIT +");  //320
}
else{
    draw_text(397, 192, "ENEMIES HIT +");  //320
}
obj_llama01.enemyBonusEarned = global.nrEnemies * obj_llama01.enemyBonus;   // Calculate points by hitting enemies.
draw_text(612, 192, obj_llama01.enemyBonusEarned);  //545

// Nr of spit fired. The scr_highscore_spit_counter() is done in the llama object.
draw_text(365, 224, global.nrEnemies);
draw_text(397, 224, "SPIT FIRED  +");
draw_text(612, 224, global.spitCountEarned);

// Time bonus.
draw_text(365, 256, "TIME BONUS    +");
draw_text(612, 256, global.timeBonusEarned);

// Style points.
obj_llama01.spinningBonusEarned = global.spinningHitCounter * obj_llama01.spinningBonus;   // Calculate style points.
draw_text(365, 288, "STYLE BONUS   +");
draw_text(612, 288, obj_llama01.spinningBonusEarned);

// Spinning time bonus.
draw_text(365, 320, "SPINNING TIME +");
draw_text(612, 320, global.spinningTimeEarned);

/*
// Non preferred ability used.
// If the "wrong" ability or no ability has been used to complete a level.
    if (global.preferredAbility == 1){
        if (abilityUsed == 2){ 
            // Give points
            global.points = global.points + obj_llama01.nonPreferredAbilityBonus;
            obj_llama01.abilityBonusEarned = obj_llama01.nonPreferredAbilityBonus;
        }
    }
    else if (global.preferredAbility == 2){
        if (abilityUsed == 1){
            // Give points
            global.points = global.points + obj_llama01.nonPreferredAbilityBonus;
            obj_llama01.abilityBonusEarned = obj_llama01.nonPreferredAbilityBonus;
        }
    }else{
        obj_llama01.abilityBonusEarned = 0;
    } 

draw_text(365, 320, "WRONG ABILITY +");
draw_text(612, 320, obj_llama01.abilityBonusEarned);
*/

// Reset back to align to the center.
draw_set_halign(fa_center); // Align text to center
draw_set_valign(fa_center);
draw_set_font(fnt_game);    // Back to the normal font.

// Total points.
draw_text(455, 414, "Total:"); //382
draw_text(617, 414, global.points);


//draw_text(512, 384, "LEVEL COMPLETED"); // Don't hard code