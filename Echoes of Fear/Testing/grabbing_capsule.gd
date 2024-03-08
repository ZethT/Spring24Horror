extends RigidBody3D


func grab(object):
	reparent(object)
	position = Vector3.ZERO
	rotation = Vector3.ZERO
	freeze = true

func release(object):
	reparent(object.get_parent())
	freeze = false

