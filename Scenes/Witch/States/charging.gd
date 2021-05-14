extends "motion.gd"

export var speed = 150

func enter():
  print("start playing charging")
  owner.get_node("AnimatedSprite").play("charging")
  $ChargeTimer.start()

func exit():
  $ChargeTimer.stop()

func handle_input(event: InputEvent):
  if event.is_action_released("rmb"):
    print("released rmb")
    emit_signal("finished", "previous")
  return .handle_input(event)

func run_update(delta: float):
  update_look_direction()
  move(delta * speed)

func _on_ChargeTimer_timeout():
  emit_signal("finished", "charged")