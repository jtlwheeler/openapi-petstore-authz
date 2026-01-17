package policies.rbac_test

import data.rbac

test_allow_admin_write if {
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
	rbac.allow with input as {
		"user": "alice",
		"action": "write",
		"resource": "document",
	}
		with data.user_roles as user_roles
		with data.role_permissions as role_permissions
}
