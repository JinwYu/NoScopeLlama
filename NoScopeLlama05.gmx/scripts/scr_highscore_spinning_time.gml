///scr_highscore_spinning_time
// Award points depending on how long the player has been spinning.
global.spinningTimeEarned = round(obj_llama01.spinningTime * obj_llama01.spinningTimeBonus);
global.points = global.points + global.spinningTimeEarned;
