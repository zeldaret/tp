lbl_804BD91C:
/* 804BD91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD920  7C 08 02 A6 */	mflr r0
/* 804BD924  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD928  4B FF F9 4D */	bl create__9daMidna_cFv
/* 804BD92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD930  7C 08 03 A6 */	mtlr r0
/* 804BD934  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD938  4E 80 00 20 */	blr 
