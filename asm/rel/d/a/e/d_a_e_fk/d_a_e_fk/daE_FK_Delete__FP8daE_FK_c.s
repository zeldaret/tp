lbl_806BAF54:
/* 806BAF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BAF58  7C 08 02 A6 */	mflr r0
/* 806BAF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BAF60  4B FF FE 55 */	bl Delete__8daE_FK_cFv
/* 806BAF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BAF68  7C 08 03 A6 */	mtlr r0
/* 806BAF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 806BAF70  4E 80 00 20 */	blr 
