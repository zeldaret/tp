lbl_80074F90:
/* 80074F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074F94  7C 08 02 A6 */	mflr r0
/* 80074F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074F9C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80074FA0  1C C0 00 14 */	mulli r6, r0, 0x14
/* 80074FA4  7C A3 32 14 */	add r5, r3, r6
/* 80074FA8  88 05 00 04 */	lbz r0, 4(r5)
/* 80074FAC  28 00 00 00 */	cmplwi r0, 0
/* 80074FB0  41 82 00 1C */	beq lbl_80074FCC
/* 80074FB4  7C 63 30 2E */	lwzx r3, r3, r6
/* 80074FB8  81 83 00 04 */	lwz r12, 4(r3)
/* 80074FBC  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 80074FC0  7D 89 03 A6 */	mtctr r12
/* 80074FC4  4E 80 04 21 */	bctrl 
/* 80074FC8  48 00 00 08 */	b lbl_80074FD0
lbl_80074FCC:
/* 80074FCC  38 60 00 FF */	li r3, 0xff
lbl_80074FD0:
/* 80074FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80074FD4  7C 08 03 A6 */	mtlr r0
/* 80074FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80074FDC  4E 80 00 20 */	blr 
