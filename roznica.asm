.686
.model flat

public _roznica

.data

.code
_roznica	PROC
		push	ebp
		mov		ebp, esp
		push	edx
		push	ebx

		mov		eax, [ebp + 8]		; odjemna, ktora jest wskaznikiem
		mov		ebx, [ebp + 12]		; odjemnik - wskaznik na wskaznik

		push	[eax]				; zawartosc pierwszego parametru
		push	[ebx]
		pop		ebx
		push	[ebx]
		pop		edx
		pop		eax

		sub		eax, edx
			
		pop		ebx
		pop		edx
		pop		ebp
		ret
_roznica	ENDP
END