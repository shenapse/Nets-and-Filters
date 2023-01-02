BRANCH_SUB=$(git rev-parse --abbrev-ref HEAD)

ifeq ($(OS),Windows_NT)
	PWD=$(CURDIR)
endif

.PHONY pr:
pr:
	gh pr create \
	-B main \
	-t ${BRANCH_SUB} \
	-b 

.PHONY accept:
accept:
	gh pr merge ${BRANCH_SUB} -m