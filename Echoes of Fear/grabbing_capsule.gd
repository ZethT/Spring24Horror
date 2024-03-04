extends StaticBody3D


func grab(object):
	reparent(object)

func release(object):
	reparent(object.get_parent())

