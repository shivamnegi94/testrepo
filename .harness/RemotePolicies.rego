package release

# Standalone process runs skip the release group's cadence, conflict checks, version, and audit record.
# directProcessExecution is present only on the onrun payload.
deny[msg] {
	input.process.directProcessExecution == true
	msg := sprintf("process '%s' cannot be run directly; execute it through a release so the run is scheduled, conflict-checked and auditable", [input.process.identifier])
}
