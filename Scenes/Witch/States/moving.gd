extends "motion.gd"

export var speed = 300

func enter():
  owner.get_node("AnimatedSprite").play("move")

# func return_to(_state):
#   owner.get_node("AnimatedSprite").play("move")

func handle_input(event: InputEvent):
  if Input.is_action_just_pressed("rmb"):
    emit_signal("finished", "charging")
  return .handle_input(event)

func run_update(delta):
  var input_direction = get_input_direction()
  if not input_direction:
    emit_signal("finished", "idle")
  update_look_direction()
  move(delta * speed)
