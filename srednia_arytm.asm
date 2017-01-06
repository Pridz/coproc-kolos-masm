.686
.model flat
public _srd_artm

.data
liczba_elementow	dd	?

.code
_srd_artm	PROC
; funkcja wylicza œredni¹ arytmetyczn¹. Jej parametrami s¹
; liczba elementów ci¹gu i elementy sk³adaj¹ce siê na ci¹g arytmetyczny
; wypisane po liczbie elementów ci¹gu
	
	push	ebp
	mov		ebp, esp
	push	ecx
	push	edx	
	
	mov		eax, 0
	mov		ecx, [ebp + 8]	; zmienna z liczb¹ elementow ciagu arytmetycznego
	mov		liczba_elementow, ecx

ptl:
	mov		edx, [ebp + 8 + ecx*4]	; wczytaj nastêpny element ci¹gu
	dec		ecx
	add		eax, edx				; dodaj do sumy
	cmp		ecx, 1
	jae		ptl

	mov		edx, 0
	div		liczba_elementow

	pop		edx
	pop		ecx
	pop		ebp

	ret								; nie zapominaj!
_srd_artm	ENDP

END