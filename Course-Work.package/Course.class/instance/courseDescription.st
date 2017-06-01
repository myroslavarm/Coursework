initialization
courseDescription
	| c |
	c := self new.
	c description: (description at: 'short_summary').
	