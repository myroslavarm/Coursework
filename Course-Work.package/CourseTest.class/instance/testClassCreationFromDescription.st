tests
testClassCreationFromDescription
    self assert: (Course withDescription: 'description') description = 'description'