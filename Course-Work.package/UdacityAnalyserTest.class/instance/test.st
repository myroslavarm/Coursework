tests
test
	self assert: 'one two two' wordOccurrences equals: { 2 -> 'two' . 1 -> 'one' }