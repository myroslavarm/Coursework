tests
testCourseCatalog
    | dictionary course |

    dictionary := {
        'title' -> 'title' .
        'short_summary' -> 'description'} asDictionary.

   course := Course fromDictionary: dictionary.

   self assert: course title equals: 'title'.
	self assert: course description equals: 'description'.