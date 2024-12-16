/// play_sound(snd, [gain])

// Plays a sound, with lower volume if
// the same effect is already playing.
var sndId = argument[0];
var gain; if (argument_count > 1) gain = argument[1]; else gain = undefined;

if (is_undefined(gain)) {
    if (audio_is_playing(sndId))
        gain = 0.4;
    else gain = 1;
}

var snd = audio_play_sound(sndId, 0, false);
audio_sound_gain(snd, gain, 0);
return snd;
