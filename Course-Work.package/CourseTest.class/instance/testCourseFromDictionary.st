tests
testCourseFromDictionary
    | dictionary course |

    dictionary := {
        'title' -> 'title' .
        'short_summary' -> 'description'.
		  'homepage' -> 'homepage'	} asDictionary.

   course := Course fromDictionary: dictionary.

   self assert: course title equals: 'title'.
	self assert: course description equals: 'description'.
	self assert: course homepage equals: 'homepage'