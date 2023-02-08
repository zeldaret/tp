lbl_8028EB6C:
/* 8028EB6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028EB70  7C 08 02 A6 */	mflr r0
/* 8028EB74  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028EB78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028EB7C  7C 7F 1B 78 */	mr r31, r3
/* 8028EB80  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028EB84  41 82 00 08 */	beq lbl_8028EB8C
/* 8028EB88  48 00 00 3C */	b lbl_8028EBC4
lbl_8028EB8C:
/* 8028EB8C  38 00 00 00 */	li r0, 0
/* 8028EB90  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 8028EB94  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 8028EB98  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8028EB9C  38 81 00 08 */	addi r4, r1, 8
/* 8028EBA0  38 C0 00 00 */	li r6, 0
/* 8028EBA4  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EBA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8028EBAC  7D 89 03 A6 */	mtctr r12
/* 8028EBB0  4E 80 04 21 */	bctrl 
/* 8028EBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8028EBB8  40 82 00 0C */	bne lbl_8028EBC4
/* 8028EBBC  80 01 00 08 */	lwz r0, 8(r1)
/* 8028EBC0  90 1F 01 D0 */	stw r0, 0x1d0(r31)
lbl_8028EBC4:
/* 8028EBC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028EBC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028EBCC  7C 08 03 A6 */	mtlr r0
/* 8028EBD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028EBD4  4E 80 00 20 */	blr 
