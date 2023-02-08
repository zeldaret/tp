lbl_80BCD69C:
/* 80BCD69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD6A0  7C 08 02 A6 */	mflr r0
/* 80BCD6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD6A8  38 80 FF FF */	li r4, -1
/* 80BCD6AC  4B FF FE 79 */	bl __dt__12daObjCrope_cFv
/* 80BCD6B0  38 60 00 01 */	li r3, 1
/* 80BCD6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD6B8  7C 08 03 A6 */	mtlr r0
/* 80BCD6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD6C0  4E 80 00 20 */	blr 
