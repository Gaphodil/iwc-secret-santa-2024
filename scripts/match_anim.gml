/// match_anim(type)

// Syncs the calling object's image speed and index.
// Assumes the sprite index is equivalent.
var type = argument0;

var syncer;
switch (type) {
    case "cherry":
        syncer = objWorld.animSyncCherry; break;
    case "spike":
        syncer = objWorld.animSyncSpike; break;
    default: exit;
}

with (syncer) {
    other.image_speed = image_speed;
    other.image_index = image_index;
}
