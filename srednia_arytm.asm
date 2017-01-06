.686
.model flat
public _srd_artm

.data
liczba_elementow	dd	?

.code
_srd_artm	PROC
; funkcja wylicza �redni� arytmetyczn�. Jej parametrami s�
; liczba element�w ci�gu i elementy sk�adaj�ce si� na ci�g arytmetyczny
; wypisane po liczbie element�w ci�gu
	
	push	ebp
	mov		ebp, esp
	push	ecx
	push	edx	
	
	mov		eax, 0
	mov		ecx, [ebp + 8]	; zmienna z liczb� elementow ciagu arytmetycznego
	mov		liczba_elementow, ecx

ptl:
	mov		edx, [ebp + 8 + ecx*4]	; wczytaj nast�pny element ci�gu
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