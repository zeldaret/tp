lbl_8078EC04:
/* 8078EC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078EC08  7C 08 02 A6 */	mflr r0
/* 8078EC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078EC10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8078EC14  7C 7F 1B 78 */	mr r31, r3
/* 8078EC18  38 00 00 06 */	li r0, 6
/* 8078EC1C  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 8078EC20  A8 03 06 78 */	lha r0, 0x678(r3)
/* 8078EC24  2C 00 00 00 */	cmpwi r0, 0
/* 8078EC28  41 82 00 08 */	beq lbl_8078EC30
/* 8078EC2C  48 00 00 8C */	b lbl_8078ECB8
lbl_8078EC30:
/* 8078EC30  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8078EC34  38 63 00 0C */	addi r3, r3, 0xc
/* 8078EC38  3C 80 80 79 */	lis r4, lit_4237@ha /* 0x80791DD4@ha */
/* 8078EC3C  C0 24 1D D4 */	lfs f1, lit_4237@l(r4)  /* 0x80791DD4@l */
/* 8078EC40  4B B9 97 ED */	bl checkPass__12J3DFrameCtrlFf
/* 8078EC44  2C 03 00 00 */	cmpwi r3, 0
/* 8078EC48  41 82 00 2C */	beq lbl_8078EC74
/* 8078EC4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009E@ha */
/* 8078EC50  38 03 00 9E */	addi r0, r3, 0x009E /* 0x0007009E@l */
/* 8078EC54  90 01 00 08 */	stw r0, 8(r1)
/* 8078EC58  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078EC5C  38 81 00 08 */	addi r4, r1, 8
/* 8078EC60  38 A0 FF FF */	li r5, -1
/* 8078EC64  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078EC68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078EC6C  7D 89 03 A6 */	mtctr r12
/* 8078EC70  4E 80 04 21 */	bctrl 
lbl_8078EC74:
/* 8078EC74  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8078EC78  38 A0 00 01 */	li r5, 1
/* 8078EC7C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8078EC80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8078EC84  40 82 00 1C */	bne lbl_8078ECA0
/* 8078EC88  3C 60 80 79 */	lis r3, lit_3903@ha /* 0x80791D74@ha */
/* 8078EC8C  C0 23 1D 74 */	lfs f1, lit_3903@l(r3)  /* 0x80791D74@l */
/* 8078EC90  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8078EC94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8078EC98  41 82 00 08 */	beq lbl_8078ECA0
/* 8078EC9C  38 A0 00 00 */	li r5, 0
lbl_8078ECA0:
/* 8078ECA0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8078ECA4  41 82 00 14 */	beq lbl_8078ECB8
/* 8078ECA8  38 00 00 02 */	li r0, 2
/* 8078ECAC  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 8078ECB0  38 00 00 00 */	li r0, 0
/* 8078ECB4  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_8078ECB8:
/* 8078ECB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8078ECBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078ECC0  7C 08 03 A6 */	mtlr r0
/* 8078ECC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8078ECC8  4E 80 00 20 */	blr 
