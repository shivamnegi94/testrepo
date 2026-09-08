package release

deny[msg] {
    input.release.process.identifier != "processProd"

    msg := sprintf(
        "Release '%s' auto-executes on schedule but must use process 'processProd'. Found '%s'.",
        [
            input.release.process.identifier,
            input.release.process.identifier
        ]
    )
}