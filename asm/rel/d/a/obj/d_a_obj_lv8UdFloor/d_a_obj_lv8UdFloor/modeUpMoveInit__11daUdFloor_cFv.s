lbl_80C8C310:
/* 80C8C310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8C314  7C 08 02 A6 */	mflr r0
/* 80C8C318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8C31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8C320  7C 7F 1B 78 */	mr r31, r3
/* 80C8C324  38 80 00 01 */	li r4, 1
/* 80C8C328  48 00 00 2D */	bl colorAnm__11daUdFloor_cFi
/* 80C8C32C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C8C330  28 00 00 01 */	cmplwi r0, 1
/* 80C8C334  40 82 00 0C */	bne lbl_80C8C340
/* 80C8C338  7F E3 FB 78 */	mr r3, r31
/* 80C8C33C  48 00 02 A9 */	bl init_modeUpMove__11daUdFloor_cFv
lbl_80C8C340:
/* 80C8C340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8C344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8C348  7C 08 03 A6 */	mtlr r0
/* 80C8C34C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8C350  4E 80 00 20 */	blr 
