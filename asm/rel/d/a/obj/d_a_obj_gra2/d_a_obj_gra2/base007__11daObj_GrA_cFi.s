lbl_80C03D88:
/* 80C03D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03D8C  7C 08 02 A6 */	mflr r0
/* 80C03D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03D98  7C 7F 1B 78 */	mr r31, r3
/* 80C03D9C  2C 04 00 00 */	cmpwi r4, 0
/* 80C03DA0  41 82 00 38 */	beq lbl_80C03DD8
/* 80C03DA4  38 80 00 08 */	li r4, 8
/* 80C03DA8  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03DAC  4B FF D6 05 */	bl setBaseAnm__11daObj_GrA_cFif
/* 80C03DB0  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005008C@ha */
/* 80C03DB4  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0005008C@l */
/* 80C03DB8  90 01 00 08 */	stw r0, 8(r1)
/* 80C03DBC  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C03DC0  38 81 00 08 */	addi r4, r1, 8
/* 80C03DC4  38 A0 FF FF */	li r5, -1
/* 80C03DC8  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C03DCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C03DD0  7D 89 03 A6 */	mtctr r12
/* 80C03DD4  4E 80 04 21 */	bctrl 
lbl_80C03DD8:
/* 80C03DD8  38 60 00 01 */	li r3, 1
/* 80C03DDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C03DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C03DE4  7C 08 03 A6 */	mtlr r0
/* 80C03DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C03DEC  4E 80 00 20 */	blr 
