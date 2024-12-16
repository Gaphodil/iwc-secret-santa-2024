///trg_sound(type/sound, [volume])
//Plays a sound when triggered
//Arguments:
//1. sound
//2. [volume] - undefined by default.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            sound = noone;
            volume = undefined;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            return (sound != noone);
            
        case "init":
            var snd = play_sound(sound, volume);
            break;
    }
}
else
{
    if (argument_count >= 1) { sound = argument[0]; }
    if (argument_count >= 2) { volume = argument[1]; }
}
