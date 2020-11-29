Class {
	#name : #PharoDawnTheme,
	#superclass : #PharoDarkTheme,
	#category : #PharoDawnTheme
}

{ #category : #accessing }
PharoDawnTheme class >> baseColor [
	^ Color fromHexString: '3e3d32'
]

{ #category : #accessing }
PharoDawnTheme class >> baseSelectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #installing }
PharoDawnTheme class >> installFullTheme [
	"Installs full theme: 
		this theme
		dark forts
		desktop background
		completion list colors"

	self beCurrent.
	SHPreferences setStyleTable: SHRBTextStyler dawnStyleTable.
	PolymorphSystemSettings desktopColor: Color darkGray darker.
	NECPreferences backgroundColor: UITheme current windowColor.
	Paragraph insertionPointColor: UITheme current caretColor
]

{ #category : #accessing }
PharoDawnTheme class >> lightSelectionColor [
	^ Color fromHexString: '49483E'
]

{ #category : #accessing }
PharoDawnTheme class >> menuSelectionTextColor [
 	^ Color white darker
]

{ #category : #accessing }
PharoDawnTheme class >> themeName [
	^ 'Pharo Dawn'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> backgroundColor [
	^ Color fromHexString: '262720'
]

{ #category : #'accessing colors' }
PharoDawnTheme >> balloonBackgroundColor [
	^ self backgroundColor

]

{ #category : #'accessing colors' }
PharoDawnTheme >> caretColor [
	^ self backgroundColor muchLighter
]

{ #category : #initialization }
PharoDawnTheme >> initialize [

	super initialize.
	(self respondsTo: #windowActiveDropShadowStyle:) ifTrue:[
		self windowActiveDropShadowStyle: #diffuse].
	self settings preferGradientFill: false.
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> menuItemNormalTextColorFor: aMenuItem [
	"Answer the color to use for normal menu item text."

	^ self textColor
]

{ #category : #'fill-styles-buttons' }
PharoDawnTheme >> menuItemSelectedFillStyleFor: aMenuItem [
	"Answer the selected fill style to use for the given menu item."

	^ SolidFillStyle color: self selectionColor
]

{ #category : #defaults }
PharoDawnTheme >> menuItemSelectedTextColorFor: aMenuItem [
	"Answer the color to use for selected menu item text."

	^ self class menuSelectionTextColor
]

{ #category : #'fill-styles-menubar' }
PharoDawnTheme >> menubarItemSelectionTextColorFor: aMenubarItem [
	^ self class menuSelectionTextColor
]

{ #category : #'fill-styles-scrollbars' }
PharoDawnTheme >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."

	^ SolidFillStyle color: self backgroundColor lighter lighter
]

{ #category : #'accessing colors' }
PharoDawnTheme >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : #'accessing colors' }
PharoDawnTheme >> selectionColor [
	^ self class baseSelectionColor
]

{ #category : #defaults }
PharoDawnTheme >> shStyleTableName [

	^ #dawnStyleTable
]

{ #category : #'accessing colors' }
PharoDawnTheme >> textColor [
	^ Color fromHexString: 'FCF3D7'
]
