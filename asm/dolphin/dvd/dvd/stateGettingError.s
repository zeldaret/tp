lbl_803493BC:
/* 803493BC  7C 08 02 A6 */	mflr r0
/* 803493C0  3C 60 80 35 */	lis r3, cbForStateGettingError@ha
/* 803493C4  90 01 00 04 */	stw r0, 4(r1)
/* 803493C8  38 63 94 98 */	addi r3, r3, cbForStateGettingError@l
/* 803493CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 803493D0  4B FF EC D1 */	bl DVDLowRequestError
/* 803493D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803493D8  38 21 00 08 */	addi r1, r1, 8
/* 803493DC  7C 08 03 A6 */	mtlr r0
/* 803493E0  4E 80 00 20 */	blr 
