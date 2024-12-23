///music_get_room_bgm()

// Gets which song is supposed to be playing for the current room.

switch (room)
{
    case rTitle:            //Add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
    case rSample:                                                                                                            
        return "musHoliday1";
    case r1_1:
    case rFallingTrap:
    case rPaperTrap:
        return "musPeaks" + string(global.musicChoice);
    case rSpring:
        return "musPeaks3";
    case rEnd:
    case rClear:
        return "musHoliday2";
    case rMoonCutscene:
        return -2;
    default:
        return -1;          //Play nothing
}
