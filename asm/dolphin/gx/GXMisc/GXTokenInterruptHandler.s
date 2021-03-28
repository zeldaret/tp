lbl_8035C524:
/* 8035C524  7C 08 02 A6 */	mflr r0
/* 8035C528  90 01 00 04 */	stw r0, 4(r1)
/* 8035C52C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8035C530  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8035C534  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8035C538  7C 9E 23 78 */	mr r30, r4
/* 8035C53C  80 0D 93 E8 */	lwz r0, TokenCB(r13)
/* 8035C540  80 6D 93 A8 */	lwz r3, __peReg(r13)
/* 8035C544  28 00 00 00 */	cmplwi r0, 0
/* 8035C548  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 8035C54C  41 82 00 34 */	beq lbl_8035C580
/* 8035C550  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C554  4B FD FA AD */	bl OSClearContext
/* 8035C558  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C55C  4B FD F8 DD */	bl OSSetCurrentContext
/* 8035C560  81 8D 93 E8 */	lwz r12, TokenCB(r13)
/* 8035C564  38 7F 00 00 */	addi r3, r31, 0
/* 8035C568  7D 88 03 A6 */	mtlr r12
/* 8035C56C  4E 80 00 21 */	blrl 
/* 8035C570  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C574  4B FD FA 8D */	bl OSClearContext
/* 8035C578  7F C3 F3 78 */	mr r3, r30
/* 8035C57C  4B FD F8 BD */	bl OSSetCurrentContext
lbl_8035C580:
/* 8035C580  80 6D 93 A8 */	lwz r3, __peReg(r13)
/* 8035C584  38 00 00 01 */	li r0, 1
/* 8035C588  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8035C58C  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8035C590  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8035C594  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8035C598  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035C59C  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8035C5A0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8035C5A4  7C 08 03 A6 */	mtlr r0
/* 8035C5A8  4E 80 00 20 */	blr 
