///scr_highscore_ability
// If the "wrong" ability or no ability has been used to complete a level.
var i;
for (i = 0; i < 2; i++){

    if (global.preferredAbility == "dash"){
        if (abilityUsed[i] == "freeze"){ 
            // Give points
            global.points = global.points + obj_llama01.nonPreferredAbilityBonus;
            obj_llama01.abilityBonusEarned = obj_llama01.nonPreferredAbilityBonus;
        }
    }
    else if (global.preferredAbility == "freeze"){
        if (abilityUsed[i] == "dash"){
            // Give points
            global.points = global.points + obj_llama01.nonPreferredAbilityBonus;
            obj_llama01.abilityBonusEarned = obj_llama01.nonPreferredAbilityBonus;
        }
    }
    /*else if (abilityUsed[i] == "none" && abilityUsed[i+1] == "none"){
        // Give points
        global.points = global.points + obj_llama01.nonPreferredAbilityBonus;
        obj_llama01.abilityBonusEarned = obj_llama01.nonPreferredAbilityBonus;  */  
    else{
        obj_llama01.abilityBonusEarned = 0;
    } 
}
