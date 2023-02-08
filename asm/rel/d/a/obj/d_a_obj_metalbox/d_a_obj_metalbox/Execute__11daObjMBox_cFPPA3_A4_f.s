lbl_805932C4:
/* 805932C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805932C8  7C 08 02 A6 */	mflr r0
/* 805932CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805932D0  38 03 05 6C */	addi r0, r3, 0x56c
/* 805932D4  90 04 00 00 */	stw r0, 0(r4)
/* 805932D8  4B FF FB FD */	bl setBaseMtx__11daObjMBox_cFv
/* 805932DC  38 60 00 01 */	li r3, 1
/* 805932E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805932E4  7C 08 03 A6 */	mtlr r0
/* 805932E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805932EC  4E 80 00 20 */	blr 
