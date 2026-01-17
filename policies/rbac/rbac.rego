package rbac

# Default deny
default allow := false

# Allow if user has the required permission
allow if {
	user := input.user
	action := input.action
	resource := input.resource

	# Get the user's role
	role := data.user_roles[user]

	# Get permissions for the role
	permissions := data.role_permissions[role]

	# Check if the action is allowed
	action in permissions
}

# Sample data (in a real setup, this would be loaded from external source)
user_roles := {
	"alice": "admin",
	"bob": "user",
	"charlie": "guest",
}

role_permissions := {
	"admin": ["read", "write", "delete"],
	"user": ["read", "write"],
	"guest": ["read"],
}
