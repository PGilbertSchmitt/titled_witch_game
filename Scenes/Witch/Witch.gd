extends KinematicBody2D

# var facing_right = true

# var charging = false

func _ready():
  pass

func _process(_delta: float):
  pass
  # animate(direction, mouse_pos - canvas_witch_pos)
  # face_cursor(mouse_pos, canvas_witch_pos)

# func face_cursor(mouse_pos: Vector2, witch_pos: Vector2):
#   if mouse_pos.x > witch_pos.x && facing_right == false:
#     $AnimatedSprite.flip_h = false
#     facing_right = true
#   if mouse_pos.x < witch_pos.x && facing_right:
#     $AnimatedSprite.flip_h = true
#     facing_right = false

# func animate(direction: Vector2, aim: Vector2):
#   if charging == false:
#     animate_movement(direction)
#   handle_magic_state(direction, aim)

# func animate_movement(direction: Vector2):
#   if direction != Vector2.ZERO:
#     $AnimatedSprite.play("move")
#   else:
#     $AnimatedSprite.play("idle")

# func handle_magic_state(direction, _fire_dir: Vector2):
#   if Input.get_action_strength("rmb") == 1 && charging == false:
#     charging = true
#     $AnimatedSprite.play("charge")
#   if Input.get_action_strength("rmb") == 0 && charging == true:
#     charging = false
#     animate_movement(direction)

