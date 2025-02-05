!classDefinition: #NumeroTest category: 'Numeros-Parte2-Ejercicio'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!
!NumeroTest commentStamp: '<historical>' prior: 0!
"| one two |
	
	one := Entero with: 1.
	two := Entero with: 2."
	
	"sacar"
	"self isNegative ifTrue: [self error: Entero negativeFibonacciErrorDescription ].	
	(self isZero or: [self isOne]) ifTrue: [^one].
		
	^ (self - one) fibonacci + (self - two) fibonacci"!


!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:50'!
test01isZeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:58'!
test02isZeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:39:57'!
test05EnteroAddsWithEnteroCorrectly

	self assert: two equals: one + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:10'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: four equals: two * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:22'!
test07EnteroDividesEnteroCorrectly

	self assert: one equals: two / two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:57'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: sevenTenths equals: oneFifth + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:20'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: twoTwentyfifth equals: oneFifth * twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:34'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: fiveHalfs equals: oneHalf / oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:58'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: (Entero with: 6) / (Entero with: 5) equals: one + oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:42:29'!
test12FraccionAddsEnteroCorrectly

	self assert: (Entero with: 6) / (Entero with: 5) equals: oneFifth + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:16'!
test13EnteroMultipliesFraccionCorrectly

	self assert: twoFifth equals: two * oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:27'!
test14FraccionMultipliesEnteroCorrectly

	self assert: twoFifth equals: oneFifth * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:40'!
test15EnteroDividesFraccionCorrectly

	self assert: fiveHalfs equals: one / twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:58'!
test16FraccionDividesEnteroCorrectly

	self assert: twoTwentyfifth equals: twoFifth / five! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:44:53'!
test19AddingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:13'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: one equals: (two/five) * (five/two)! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:27'!
test21DividingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf / oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:40'!
test22DividingEnterosCanReturnAFraccion

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:17'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:32'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:21'!
test27EnteroSubstractsEnteroCorrectly

	self assert: two equals: three - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:36'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: oneFifth equals: twoFifth - oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:50'!
test29EnteroSubstractsFraccionCorrectly

	self assert: oneHalf equals: one - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:11'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: oneFifth equals: sixFifth - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:25'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: one equals: threeHalfs - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:44'!
test32SubstractingSameEnterosReturnsZero

	self assert: zero equals: one - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:59'!
test33SubstractingSameFraccionesReturnsZero

	self assert: zero equals: oneHalf - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:16'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: negativeThreeHalfs equals: one - fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:45'!
test35FibonacciZeroIsOne

	self assert: one equals: zero fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:58'!
test36FibonacciOneIsOne

	self assert: one equals: one fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:24'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: five equals: four fibonacci.
	self assert: three equals: three fibonacci. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:40'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: Entero negativeFibonacciErrorDescription equals: anError messageText ]! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:17'!
test39NegationOfEnteroIsCorrect

	self assert: negativeTwo equals: two negated
		! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:53:27'!
test40NegationOfFraccionIsCorrect

	self assert: negativeOne / two equals: oneHalf negated ! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!NumeroTest methodsFor: 'setup' stamp: 'NR 9/23/2018 23:46:28'!
setUp

	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	three:= Entero with: 3.
	four := Entero with: 4.
	five := Entero with: 5.
	eight := Entero with: 8.
	negativeOne := Entero with: -1.
	negativeTwo := Entero with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #Numero category: 'Numeros-Parte2-Ejercicio'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 22:21:28'!
- aSubtrahend

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 23:37:13'!
negated
	
	^self * (Entero with: -1)! !


!Numero methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !


!Numero methodsFor: 'private' stamp: 'algo3 5/5/2022 17:38:37'!
beAddedToAFraction: anAugend
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'algo3 5/5/2022 17:09:20'!
beAddedToAnInteger: anAugend
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'algo3 5/8/2022 13:02:53'!
beSubstractedFromAFraction: aMinuend
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'algo3 5/8/2022 13:04:35'!
beSubstractedFromAnInteger: aMinuend
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'algo3 5/8/2022 13:02:05'!
divideAFraction: aDividend
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'algo3 5/8/2022 13:00:54'!
divideAnInteger: aDivisor
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !

!Numero methodsFor: 'private' stamp: 'algo3 5/8/2022 12:14:55'!
multiplyAFraction: aMultiplier
	self subclassResponsibility.! !

!Numero methodsFor: 'private' stamp: 'va 5/7/2022 17:30:04'!
multiplyAnInteger: aMultiplier
	self subclassResponsibility .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numeros-Parte2-Ejercicio'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:46:56'!
invalidNumberTypeErrorDescription
	^ 'Tipo de N�mero Inv�lido'! !


!classDefinition: #Entero category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Entero methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 12:13:59'!
* aMultiplier 

	^aMultiplier multiplyAnInteger: self.
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'algo3 5/5/2022 17:16:58'!
+ anAdder 

	^anAdder beAddedToAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 13:04:35'!
- aSubtrahend 
	"(aSubtrahend isKindOf: Fraction) ifTrue: [:negativeOne| negativeOne := self class with: -1. ^ (negativeOne *aSubtrahend ) beAddedToAnInteger: self]. Error cannot store"
	
	"(aSubtrahend isKindOf: Fraction) ifTrue: [
		newNumerator := self class with: (value * aSubtrahend denominator integerValue) - aSubtrahend numerator integerValue.
		^ newNumerator / aSubtrahend  denominator].
	(aSubtrahend isKindOf: Entero ) ifTrue: [^self class with: value - aSubtrahend integerValue.]."
	
	^aSubtrahend  beSubstractedFromAnInteger: self.
	
	
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 17:39:15'!
/ aDivisor 
	
	^ aDivisor divideAnInteger: self.
	
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'va 5/8/2022 14:42:27'!
fibonacci

	self subclassResponsibility.
		! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'JS 5/5/2022 03:55:37'!
initializeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !


!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 18:15:04'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/5/2022 18:00:49'!
beAddedToAFraction: aFraction
	^aFraction beAddedToAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/5/2022 17:18:50'!
beAddedToAnInteger: anAugend
	^ self class with: anAugend integerValue + self integerValue .! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 21:14:57'!
beDividendWithDivisor: aDivisor
	| greatestCommonDivisor numerator denominator|
	
	greatestCommonDivisor := self greatestCommonDivisorWith: aDivisor. 
	numerator := self // greatestCommonDivisor.
	denominator := aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^Fraccion new initializeWith: numerator over: denominator
	! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 21:01:24'!
beDivisorWithDividend: aDividend

	self subclassResponsibility.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 13:04:35'!
beSubstractedFromAFraction: aMinuend
	| negativeOne |
	negativeOne := self class with: -1.
	
	^negativeOne * (aMinuend  beSubstractedFromAnInteger: self).! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 13:04:35'!
beSubstractedFromAnInteger: aMinuend
	^ self class with: aMinuend integerValue - value.
 ! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 13:00:37'!
divideAFraction: aDivisor
	^ (aDivisor numerator / (aDivisor denominator * self )).! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 13:00:54'!
divideAnInteger: aDividend

	^Fraccion with: aDividend over: self.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'algo3 5/8/2022 12:14:55'!
multiplyAFraction: aMultiplier
	^ aMultiplier multiplyAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'va 5/7/2022 17:31:07'!
multiplyAnInteger: aMultiplier
	^self class with: value * aMultiplier integerValue.! !


!Entero methodsFor: 'error' stamp: 'algo3 5/8/2022 21:48:13'!
errorOneCanNotBeADenominator! !

!Entero methodsFor: 'error' stamp: 'algo3 5/8/2022 21:48:02'!
errorZeroCanNotBeAFraction! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numeros-Parte2-Ejercicio'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'NR 4/8/2019 02:57:57'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no est� definido aqu� para Enteros Negativos'! !

!Entero class methodsFor: 'instance creation' stamp: 'algo3 5/8/2022 17:37:27'!
with: aValue 
	
	|correspondentSubclass|
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	
	correspondentSubclass := Entero subclasses detect: [ :subclass | subclass canStore: aValue ].
	^correspondentSubclass new initializeWith: aValue.! !


!classDefinition: #Cero category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Cero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Cero methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 17:45:17'!
+ anAdder
	^anAdder.! !

!Cero methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 13:23:16'!
fibonacci

	^ Entero with: 1.! !


!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 21:03:18'!
beDividendWithDivisor: aDivisor

	^self.! !

!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 21:03:26'!
beDivisorWithDividend: aDividend
	^self error: self class canNotDivideByZeroErrorDescription! !

!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 20:55:09'!
canNotDivideByZero
	self error: self class canNotDivideByZeroErrorDescription.! !

!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 17:57:17'!
canNotDivideByZeroErrorDescription
	self error: self class canNotDivideByZeroErrorDescription.! !

!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 20:55:18'!
errorCanNotDivideByZero
	self error: self class canNotDivideByZeroErrorDescription.! !

!Cero methodsFor: 'error' stamp: 'algo3 5/8/2022 21:56:10'!
errorZeroCanNotBeAFraction
	Fraccion error: Fraccion errorZeroCanNotBeAFractionDescription.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cero class' category: 'Numeros-Parte2-Ejercicio'!
Cero class
	instanceVariableNames: ''!

!Cero class methodsFor: 'instance creation' stamp: 'algo3 5/8/2022 17:15:11'!
canStore: aValue
	^aValue = 0.
	! !


!classDefinition: #MayorAUno category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #MayorAUno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!MayorAUno methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 21:02:57'!
beDivisorWithDividend: aDividend

	^aDividend beDividendWithDivisor: self.! !

!MayorAUno methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 17:22:32'!
fibonacci
	
	| one two |
	one := Entero with: 1.
	two := Entero with: 2.
	
	^(self - one) fibonacci + (self - two) fibonacci.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MayorAUno class' category: 'Numeros-Parte2-Ejercicio'!
MayorAUno class
	instanceVariableNames: ''!

!MayorAUno class methodsFor: 'instance creation' stamp: 'algo3 5/8/2022 17:35:03'!
canStore: aValue
	^aValue > 1.! !


!classDefinition: #Negativo category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Negativo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Negativo methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 21:04:28'!
beDivisorWithDividend: aDividend
	^aDividend negated beDividendWithDivisor: self negated.! !

!Negativo methodsFor: 'arithmetic operations' stamp: 'va 5/8/2022 14:42:38'!
fibonacci

	self error: Entero negativeFibonacciErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Negativo class' category: 'Numeros-Parte2-Ejercicio'!
Negativo class
	instanceVariableNames: ''!

!Negativo class methodsFor: 'instance creation' stamp: 'algo3 5/8/2022 17:25:48'!
canStore: aValue
	^aValue < 0.! !


!classDefinition: #Uno category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Uno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Uno methodsFor: 'error' stamp: 'algo3 5/8/2022 21:56:03'!
errorOneCanNotBeADenominator
	Fraccion error: Fraccion errorOneCanNotBeADenominatorDescription.! !


!Uno methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 21:10:03'!
beDivisorWithDividend: aDividend

	^self.! !

!Uno methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 17:23:25'!
fibonacci
	^self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Uno class' category: 'Numeros-Parte2-Ejercicio'!
Uno class
	instanceVariableNames: ''!

!Uno class methodsFor: 'instance creation' stamp: 'algo3 5/8/2022 17:26:05'!
canStore: aValue
	^aValue = 1.! !


!classDefinition: #Fraccion category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Fraccion methodsFor: 'private' stamp: 'va 5/7/2022 17:43:32'!
beAddedToAFraction: aFraction
	|newNumerator newDenominator|
	newNumerator := (numerator * aFraction denominator) + (denominator * aFraction numerator). "falla xq usa el *"
	newDenominator := denominator * aFraction denominator. 
	^newNumerator / newDenominator! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/5/2022 17:42:19'!
beAddedToAnInteger: anAugend
	^(anAugend * denominator +  numerator) /  denominator.! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/8/2022 13:03:29'!
beSubstractedFromAFraction: aMinuend


"	| newNumerator newDenominator |
	
	newNumerator := (numerator * aSubtrahend denominator) - (denominator * aSubtrahend numerator).
	newDenominator := denominator * aSubtrahend denominator.
	
	^newNumerator / newDenominator."



	| newNumerator newDenominator |
	
	newNumerator :=  (denominator * aMinuend numerator) -  (numerator * aMinuend denominator).
	newDenominator := denominator * aMinuend denominator.
	
	^newNumerator / newDenominator.! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/8/2022 13:04:35'!
beSubstractedFromAnInteger: aMinuend
	^ (aMinuend  * denominator  - numerator)/ denominator.! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/8/2022 13:00:37'!
divideAFraction: aDividend

	^((aDividend numerator * denominator) / (aDividend denominator * numerator )).! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/8/2022 13:00:54'!
divideAnInteger: aDividend

	^((aDividend * self denominator ) / self numerator).
	
	! !

!Fraccion methodsFor: 'private' stamp: 'algo3 5/8/2022 12:14:55'!
multiplyAFraction: aMultiplier

	^ (numerator * aMultiplier numerator) / (denominator * aMultiplier denominator).
	! !

!Fraccion methodsFor: 'private' stamp: 'va 5/7/2022 17:30:06'!
multiplyAnInteger: aMultiplier

	^ ((aMultiplier *  numerator) / denominator) .! !


!Fraccion methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 12:14:56'!
* aMultiplier 

	^aMultiplier multiplyAFraction: self.
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'va 5/7/2022 17:42:01'!
+ anAdder 
	
	^anAdder beAddedToAFraction: self.
	
	

	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 13:03:29'!
- aSubtrahend 
	
	"| newNumerator newDenominator |
	
	newNumerator := (numerator * aSubtrahend denominator) - (denominator * aSubtrahend numerator).
	newDenominator := denominator * aSubtrahend denominator.
	
	^newNumerator / newDenominator."
	
	^aSubtrahend beSubstractedFromAFraction: self.
! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'algo3 5/8/2022 13:00:38'!
/ aDivisor 

	^aDivisor divideAFraction: self.! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'initialization' stamp: 'algo3 5/8/2022 21:49:00'!
initializeWith: aNumerator over: aDenominator


	aNumerator errorZeroCanNotBeAFraction.
	aDenominator errorOneCanNotBeADenominator.
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'testing' stamp: 'NR 9/23/2018 23:41:38'!
isNegative
	
	^numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: 'Numeros-Parte2-Ejercicio'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'algo3 5/8/2022 21:55:24'!
errorOneCanNotBeADenominatorDescription
	^'una fraccion no puede tener denominador 1 porque sino es un entero'! !

!Fraccion class methodsFor: 'intance creation' stamp: 'algo3 5/8/2022 21:54:23'!
errorOneCanNotBeANumeratorDescription
	^'una fraccion no puede tener denominador 1 porque sino es un entero'! !

!Fraccion class methodsFor: 'intance creation' stamp: 'algo3 5/8/2022 21:53:40'!
errorZeroCanNotBeAFractionDescription
	^'una fraccion no puede ser cero'! !

!Fraccion class methodsFor: 'intance creation' stamp: 'algo3 5/8/2022 21:06:33'!
with: aDividend over: aDivisor
	^aDivisor beDivisorWithDividend: aDividend.! !
