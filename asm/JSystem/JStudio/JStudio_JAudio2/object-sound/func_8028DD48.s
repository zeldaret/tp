lbl_8028DD48:
/* 8028DD48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028DD4C  7C 08 02 A6 */	mflr r0
/* 8028DD50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028DD54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028DD58  7C 7F 1B 78 */	mr r31, r3
/* 8028DD5C  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028DD60  41 82 00 08 */	beq lbl_8028DD68
/* 8028DD64  48 00 00 3C */	b lbl_8028DDA0
lbl_8028DD68:
/* 8028DD68  38 00 00 00 */	li r0, 0
/* 8028DD6C  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 8028DD70  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 8028DD74  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8028DD78  38 81 00 08 */	addi r4, r1, 8
/* 8028DD7C  38 C0 00 00 */	li r6, 0
/* 8028DD80  81 83 00 00 */	lwz r12, 0(r3)
/* 8028DD84  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8028DD88  7D 89 03 A6 */	mtctr r12
/* 8028DD8C  4E 80 04 21 */	bctrl 
/* 8028DD90  2C 03 00 00 */	cmpwi r3, 0
/* 8028DD94  40 82 00 0C */	bne lbl_8028DDA0
/* 8028DD98  80 01 00 08 */	lwz r0, 8(r1)
/* 8028DD9C  90 1F 01 3C */	stw r0, 0x13c(r31)
lbl_8028DDA0:
/* 8028DDA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028DDA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028DDA8  7C 08 03 A6 */	mtlr r0
/* 8028DDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8028DDB0  4E 80 00 20 */	blr 
