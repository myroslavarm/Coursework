loading
loadCourseCatalog
	| data |
	data := self getData.
	courseCatalog := OrderedCollection new.
	(data at: 'courses') do: [ :course |
    	courseCatalog add: (Course fromDictionary: course) ].
	^ courseCatalog