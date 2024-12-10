/// init_centered_spike

// duplicate sprite
if (not variable_global_exists("centeredSpikeUp"))
{
    var newSprite = sprite_duplicate(sprSpikeUp);
    sprite_set_offset(newSprite, 16, 16);
    sprite_collision_mask(
        newSprite, false, 0,
        0, 0, 32, 32,
        0, 0
    );
    global.centeredSpikeUp = newSprite;
}
