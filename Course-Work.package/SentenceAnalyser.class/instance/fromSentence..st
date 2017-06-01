instance creation
fromSentence: aSentence
	| sortCol |
	sortCol := SortedCollection new.
	sortCol := (NLPsentences tokenizeLeavePeriods: (aSentence) asLowercase).
	sortCol := sortCol select: [ :a | a matchesRegex: '[a-zA-Z]+' ].
	^ (sortCol sorted)
	