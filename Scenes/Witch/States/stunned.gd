extends "res://StateMachine/state.gd"

func enter():
  owner.get_node("AnimatedSprite").play("stunned")

func _on_animation_finished(anim_name):
  if anim_name == "stunned":
    print("Done being stunned")
    emit_signal("finished", "previous")

