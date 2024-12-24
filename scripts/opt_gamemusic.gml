///opt_gamemusic(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return false;

    case "init":
        //Called when the menu gets created
        break;
        
    case "step":
        //Called every frame the option is selected
        var hPress = input_check_pressed(KEY.MENU_RIGHT) - input_check_pressed(KEY.MENU_LEFT);
        if (hPress != 0)
        {
            //Adjust option
            global.musicChoiceOption += hPress;
            global.musicChoiceOption = clamp(global.musicChoiceOption, 0, 2);
            global.musicChoice = global.musicChoiceOption;
            if (global.musicChoice == 0) {
                global.musicChoice = 1+irandom(1);
            }
        }
        break;
        
    case "name":
        return "Music Track";
        
    case "value":
        return ternary(
            global.musicChoiceOption,
            global.musicChoiceOption,
            "Random"
        );
    
    case "end":
        //Called when the option is deselected
        break;
}
