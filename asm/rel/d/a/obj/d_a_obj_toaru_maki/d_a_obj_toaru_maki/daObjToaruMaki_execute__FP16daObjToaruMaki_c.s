lbl_80D135BC:
/* 80D135BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D135C0  7C 08 02 A6 */	mflr r0
/* 80D135C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D135C8  4B FF FF 5D */	bl execute__16daObjToaruMaki_cFv
/* 80D135CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D135D0  7C 08 03 A6 */	mtlr r0
/* 80D135D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D135D8  4E 80 00 20 */	blr 
