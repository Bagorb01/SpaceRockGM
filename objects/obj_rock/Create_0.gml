speed = 1;
direction = random(360);
image_angle = random(360);

// Methods
function destroy()
{
	instance_destroy()
}

function destroyRock(rockType) {
    playExplosion();
    givePoints(rockType);
    splitIfNeeded(rockType);
    instance_destroy();
};

function playExplosion() {
    effect_create_layer(layer, ef_explosion, x, y, 1, c_white);
};

function givePoints(rockType) {
    if (rockType == spr_rock_big)
        obj_game.addPoints(100);
    else
        obj_game.addPoints(50);
};

function splitIfNeeded(rockType) {
    if (rockType != spr_rock_big) return;

    for (var i = 0; i < 2; i++) {
        var r = instance_create_layer(x, y, layer, obj_rock);
        r.sprite_index = spr_rock_small;
        r.direction = irandom(359);
        r.speed = 2;

        r.x += lengthdir_x(8, r.direction);
        r.y += lengthdir_y(8, r.direction);
    }
};