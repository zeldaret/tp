lbl_80D2C3A0:
/* 80D2C3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C3A4  7C 08 02 A6 */	mflr r0
/* 80D2C3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C3AC  4B FF F9 55 */	bl create__10daWtGate_cFv
/* 80D2C3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C3B4  7C 08 03 A6 */	mtlr r0
/* 80D2C3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C3BC  4E 80 00 20 */	blr 
