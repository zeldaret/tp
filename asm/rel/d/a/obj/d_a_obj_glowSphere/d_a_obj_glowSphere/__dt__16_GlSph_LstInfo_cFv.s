lbl_80BFA900:
/* 80BFA900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA904  7C 08 02 A6 */	mflr r0
/* 80BFA908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA910  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFA914  41 82 00 10 */	beq lbl_80BFA924
/* 80BFA918  7C 80 07 35 */	extsh. r0, r4
/* 80BFA91C  40 81 00 08 */	ble lbl_80BFA924
/* 80BFA920  4B 6D 44 1D */	bl __dl__FPv
lbl_80BFA924:
/* 80BFA924  7F E3 FB 78 */	mr r3, r31
/* 80BFA928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA930  7C 08 03 A6 */	mtlr r0
/* 80BFA934  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA938  4E 80 00 20 */	blr 
