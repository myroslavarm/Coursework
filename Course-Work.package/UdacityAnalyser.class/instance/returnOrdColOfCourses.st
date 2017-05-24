as yet unclassified
returnOrdColOfCourses
	^ (self getData at: 'courses') collect: [ :course | course at: 'title' ]