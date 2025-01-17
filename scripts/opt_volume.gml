///opt_volume(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "init":
        volumeTimer = 0;
        volumeDelay = 10;
        break;
        
    case "step":
        //Called every frame the option is selected
        var hPress = input_check_pressed(KEY.MENU_RIGHT) - input_check_pressed(KEY.MENU_LEFT);
        var h = input_check(KEY.MENU_RIGHT) - input_check(KEY.MENU_LEFT);
        if (hPress != 0)
        {
            global.volumeLevel += hPress;
            volumeTimer = volumeDelay;
        }
        if (h != 0)
        {
            if (volumeTimer <= 0)
            {
                global.volumeLevel += h;
            }
            volumeTimer--;
        }
        global.volumeLevel = clamp(global.volumeLevel, 0, 100);
        audio_master_gain(global.volumeLevel/100);
        break;
        
    case "name":
        return "Global Volume";
        
    case "value":
        return string(global.volumeLevel) + "%";
}
