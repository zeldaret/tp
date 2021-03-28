lbl_80C33AB4:
/* 80C33AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33AB8  7C 08 02 A6 */	mflr r0
/* 80C33ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33AC0  4B FF E2 9D */	bl create__12daObj_Kago_cFv
/* 80C33AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33AC8  7C 08 03 A6 */	mtlr r0
/* 80C33ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33AD0  4E 80 00 20 */	blr 
