package rbac

default allow := false

allow if {
	user := input.user
	action := input.action
	resource := input.resource

	role := data.user_roles[user]

	permissions := data.role_permissions[role]

	action in permissions
}
