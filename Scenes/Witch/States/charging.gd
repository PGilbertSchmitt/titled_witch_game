extends "motion.gd"

export var speed = 150

func enter():
  owner.get_node("AnimatedSprite").play("charging")
  update_look_direction()

func handle_input(event: InputEvent):
  return .handle_input(event)

func run_update(delta: float):
  if Input.is_action_just_released("rmb"):
    print("released rmb")
    emit_signal("finished", "previous")
  update_look_direction()
  move(delta * speed)
