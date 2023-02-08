lbl_8028AB68:
/* 8028AB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AB6C  7C 08 02 A6 */	mflr r0
/* 8028AB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AB74  2C 04 00 02 */	cmpwi r4, 2
/* 8028AB78  41 82 00 08 */	beq lbl_8028AB80
/* 8028AB7C  48 00 00 64 */	b lbl_8028ABE0
lbl_8028AB80:
/* 8028AB80  80 85 00 00 */	lwz r4, 0(r5)
/* 8028AB84  30 04 FF FF */	addic r0, r4, -1
/* 8028AB88  7C 80 21 10 */	subfe r4, r0, r4
/* 8028AB8C  88 03 01 44 */	lbz r0, 0x144(r3)
/* 8028AB90  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 8028AB94  7C 00 30 40 */	cmplw r0, r6
/* 8028AB98  41 82 00 48 */	beq lbl_8028ABE0
/* 8028AB9C  98 83 01 44 */	stb r4, 0x144(r3)
/* 8028ABA0  80 03 01 38 */	lwz r0, 0x138(r3)
/* 8028ABA4  2C 00 00 01 */	cmpwi r0, 1
/* 8028ABA8  41 82 00 0C */	beq lbl_8028ABB4
/* 8028ABAC  40 80 00 34 */	bge lbl_8028ABE0
/* 8028ABB0  48 00 00 30 */	b lbl_8028ABE0
lbl_8028ABB4:
/* 8028ABB4  38 80 00 00 */	li r4, 0
/* 8028ABB8  38 A0 FF FF */	li r5, -1
/* 8028ABBC  28 06 00 00 */	cmplwi r6, 0
/* 8028ABC0  41 82 00 0C */	beq lbl_8028ABCC
/* 8028ABC4  80 83 01 3C */	lwz r4, 0x13c(r3)
/* 8028ABC8  80 A3 01 40 */	lwz r5, 0x140(r3)
lbl_8028ABCC:
/* 8028ABCC  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 8028ABD0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028ABD4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8028ABD8  7D 89 03 A6 */	mtctr r12
/* 8028ABDC  4E 80 04 21 */	bctrl 
lbl_8028ABE0:
/* 8028ABE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028ABE4  7C 08 03 A6 */	mtlr r0
/* 8028ABE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ABEC  4E 80 00 20 */	blr 
