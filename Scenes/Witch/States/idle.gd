extends "motion.gd"

func enter():
  owner.get_node("AnimatedSprite").play("idle")

# func return_to(_state):
#   owner.get_node("AnimatedSprite").play("idle")

func handle_input(event: InputEvent):
  if Input.is_action_just_pressed("rmb"):
    emit_signal("finished", "charging")
  return .handle_input(event)

func run_update(_delta: float):
  var input_direction = get_input_direction()
  if input_direction:
    emit_signal("finished", "moving")
  update_look_direction()
