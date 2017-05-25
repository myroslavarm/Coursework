as yet unclassified
allDescriptionWordOccurrences
	| data bag |
	data := self getData.

	bag := Bag new.
	(data at: 'courses') do: [ :course |
    	bag add: (course at: 'short_summary')].
	^ bag