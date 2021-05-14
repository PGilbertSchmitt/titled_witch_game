extends "motion.gd"

export var speed = 100

func enter():
  print("BLAST READY!")
  owner.get_node("AnimatedSprite").play("charged")
  update_look_direction()

func run_update(delta: float):
  update_look_direction()
  move(delta * speed)

func handle_input(event: InputEvent):
  if Input.is_action_just_released("rmb"):
    print("Cancel charge")
    emit_signal("finished", "previous")
  if Input.is_action_just_pressed("lmb"):
    print("BLAST FIRED!")
    emit_signal("finished", "stunned")
  return .handle_input(event)