as yet unclassified
allDescriptionWordOccurrences
	| data bag |
	data := self getData.
	NLPsentences loadData.
	bag := Bag new.
	(data at: 'courses') do: [ :course |
    	bag addAll: (NLPsentences tokenizeLeavePeriods: (course at: 'short_summary') asLowercase)].
		bag := bag select: [ :a | a matchesRegex: '[a-zA-Z]+' ].
	^ (bag sortedCounts first: 100)