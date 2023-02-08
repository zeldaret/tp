lbl_80D1359C:
/* 80D1359C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D135A0  7C 08 02 A6 */	mflr r0
/* 80D135A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D135A8  4B FF FE 19 */	bl Delete__16daObjToaruMaki_cFv
/* 80D135AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D135B0  7C 08 03 A6 */	mtlr r0
/* 80D135B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D135B8  4E 80 00 20 */	blr 
