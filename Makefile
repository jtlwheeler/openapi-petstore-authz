.PHONY: test check format

OPA ?= opa
POLICY_DIR ?= policies

test:
	$(OPA) test $(POLICY_DIR)

check:
	$(OPA) check $(POLICY_DIR)

fmt:
	$(OPA) fmt $(POLICY_DIR) --write