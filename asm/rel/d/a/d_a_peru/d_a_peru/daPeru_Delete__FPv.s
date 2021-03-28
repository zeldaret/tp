lbl_80D4AB28:
/* 80D4AB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4AB2C  7C 08 02 A6 */	mflr r0
/* 80D4AB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4AB34  4B FF CC 1D */	bl Delete__8daPeru_cFv
/* 80D4AB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4AB3C  7C 08 03 A6 */	mtlr r0
/* 80D4AB40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4AB44  4E 80 00 20 */	blr 
