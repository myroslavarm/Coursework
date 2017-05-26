loading
mostPopular
	| bag |
	NLPsentences loadData.
	bag := Bag new.
	(self courseCatalog) collect: [ :course |
    	bag addAll: (NLPsentences tokenizeLeavePeriods: (course description) asLowercase)].
		bag := bag select: [ :a | a matchesRegex: '[a-zA-Z]+' ].
	^ (bag sortedCounts first: 100)