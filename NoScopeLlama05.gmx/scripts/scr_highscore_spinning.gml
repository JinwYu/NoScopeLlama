///scr_highscore_spinning
// If the llama is spinning, then award style points.
if (obj_llama01.spinning){    
    global.spinningHitCounter += 1;    // For highscore, count how many enemies hit while spinning.
    global.points = global.points + obj_llama01.spinningBonus; 
    // Draw text "Incredible 360+ spit scope!" 
    
    // Play different sounds depending on the random number.
    if (global.spinningHitCounter <= 2){        
        
        number = irandom_range(0, 7); // Values between 0-7.
        
        switch (number){
            case 1:
                audio_play_sound(s_smokeWeed, 7, false);
                number = irandom_range(0, 7);   // To get another sound when the next enemy hit.
                break;
            case 2:
                audio_play_sound(s_getTheCamera, 7, false);
                number = irandom_range(0, 7);
                break;
            case 3:
                audio_play_sound(s_damnSon, 7, false);
                number = irandom_range(0, 7);
                break;
            case 4:
                audio_play_sound(s_getNoScoped, 7, false);
                number = irandom_range(0, 7);
                break;
            case 5:
                audio_play_sound(s_airhorn, 7, false);
                number = irandom_range(0, 7);
                break;
            case 6:
                // 1/6 chance of getting no sound to avoid annoying sounds.
                number = irandom_range(0, 7);
                break;
            default: break;
       }
   }
}
