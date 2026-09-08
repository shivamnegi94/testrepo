package release

# A missing or empty timeout leaves no automatic escape if the activity hangs.
deny[msg] {
	input.process.identifier != "deploy_pipeline2"
	msg := sprintf("activity '%s' must declare a timeout so a stuck activity cannot block the release", [input.activity.identifier])
}

deny[msg] {
	input.activity.timeout == ""
	msg := sprintf("activity '%s' must declare a non-empty timeout", [input.activity.identifier])
}
