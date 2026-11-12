Class {
	#name : 'FASTCSSImporter',
	#superclass : 'TSFASTAbstractImporter',
	#category : 'FAST-CSS-Tools',
	#package : 'FAST-CSS-Tools'
}

{ #category : 'accessing' }
FASTCSSImporter class >> extensions [
	"File extensions without the dot that the importer handles"

	^ #( 'css' )
]

{ #category : 'as yet unclassified' }
FASTCSSImporter >> importToFAST: tsTree usingSourceCode: aString [

	| tsLanguage importer |
	
	"needs cleaning"
	
	tsLanguage := TSLanguage css.
	importer := TSFASTImporter new.
	importer tsLanguage: tsLanguage.
	importer languageName: 'CSS'.
	importer originString: aString. 
	
	^ importer import: tsTree .
]

{ #category : 'as yet unclassified' }
FASTCSSImporter >> tsLanguage [

	^ TSLanguage css
]
