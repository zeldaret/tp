lbl_80C03E74:
/* 80C03E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03E78  7C 08 02 A6 */	mflr r0
/* 80C03E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03E80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03E84  7C 7F 1B 78 */	mr r31, r3
/* 80C03E88  2C 04 00 00 */	cmpwi r4, 0
/* 80C03E8C  41 82 00 10 */	beq lbl_80C03E9C
/* 80C03E90  38 80 00 01 */	li r4, 1
/* 80C03E94  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03E98  4B FF D5 19 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03E9C:
/* 80C03E9C  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C03EA0  38 63 00 0C */	addi r3, r3, 0xc
/* 80C03EA4  3C 80 80 C1 */	lis r4, lit_6874@ha
/* 80C03EA8  C0 24 FD 0C */	lfs f1, lit_6874@l(r4)
/* 80C03EAC  4B 72 45 80 */	b checkPass__12J3DFrameCtrlFf
/* 80C03EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80C03EB4  40 82 00 20 */	bne lbl_80C03ED4
/* 80C03EB8  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C03EBC  38 63 00 0C */	addi r3, r3, 0xc
/* 80C03EC0  3C 80 80 C1 */	lis r4, lit_7999@ha
/* 80C03EC4  C0 24 FD 44 */	lfs f1, lit_7999@l(r4)
/* 80C03EC8  4B 72 45 64 */	b checkPass__12J3DFrameCtrlFf
/* 80C03ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80C03ED0  41 82 00 2C */	beq lbl_80C03EFC
lbl_80C03ED4:
/* 80C03ED4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050086@ha */
/* 80C03ED8  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00050086@l */
/* 80C03EDC  90 01 00 08 */	stw r0, 8(r1)
/* 80C03EE0  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C03EE4  38 81 00 08 */	addi r4, r1, 8
/* 80C03EE8  38 A0 FF FF */	li r5, -1
/* 80C03EEC  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C03EF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C03EF4  7D 89 03 A6 */	mtctr r12
/* 80C03EF8  4E 80 04 21 */	bctrl 
lbl_80C03EFC:
/* 80C03EFC  38 60 00 01 */	li r3, 1
/* 80C03F00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C03F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C03F08  7C 08 03 A6 */	mtlr r0
/* 80C03F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C03F10  4E 80 00 20 */	blr 
