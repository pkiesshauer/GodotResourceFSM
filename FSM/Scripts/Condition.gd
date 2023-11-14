extends Resource
class_name Condition

@export var ConditionName: String

func Compare(condition: Condition) -> bool:
	if condition.ConditionName == ConditionName: return true
	return false
