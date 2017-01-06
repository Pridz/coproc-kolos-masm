.686
.model flat

public _sred_artm

.data
dzielnik	dd	?
liczba		dd	?
suma		dd	?
.code
_sred_artm	PROC
	
	push	ebp
	mov		ebp, esp
	push	eax
	push	ecx
	push	edx
	
	mov		eax, 0
	mov		ecx, [ebp + 8]
	cmp		ecx, 1
	jbe		koniec
	mov		dzielnik, ecx

	finit
	mov		edx, [ebp + 8 + 4*ecx]
	mov		liczba,	edx
	dec		ecx
	fild	dword PTR liczba
ptl:
	mov		edx, [ebp + 8 + 4*ecx]
	mov		liczba, edx
	dec		ecx
	fild	dword PTR liczba
	faddp	st(1), st(0)
	cmp		ecx, 1
	jae		ptl

	fild	dzielnik
	fdivp	st(1), st(0)

koniec:
	pop		edx
	pop		ecx
	pop		eax
	pop		ebp
	ret
_sred_artm	ENDP

END