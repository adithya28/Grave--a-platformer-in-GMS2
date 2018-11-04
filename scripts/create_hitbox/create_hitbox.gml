///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg damage
///@arg lifespan


var creator=argument2
var sprite=argument3
var knockback=argument4
var damage=argument5
var lifespan=argument6

var hitbox=instance_create_layer(argument0,argument1,"instances",o_hitbox)
hitbox.creator=creator
hitbox.knockback=knockback
hitbox.lifespan=lifespan
hitbox.sprite_index=sprite
hitbox.image_xscale=image_xscale