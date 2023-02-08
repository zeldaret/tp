lbl_8072E670:
/* 8072E670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072E674  7C 08 02 A6 */	mflr r0
/* 8072E678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072E67C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072E680  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8072E684  7C 7E 1B 78 */	mr r30, r3
/* 8072E688  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 8072E68C  3B E4 5B 28 */	addi r31, r4, lit_3911@l /* 0x80735B28@l */
/* 8072E690  38 80 00 1E */	li r4, 0x1e
/* 8072E694  4B FF FC 89 */	bl checkBck__8daE_OC_cFi
/* 8072E698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072E69C  41 82 00 D4 */	beq lbl_8072E770
/* 8072E6A0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E6A4  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E6A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072E6AC  4B BF 9D 81 */	bl checkPass__12J3DFrameCtrlFf
/* 8072E6B0  2C 03 00 00 */	cmpwi r3, 0
/* 8072E6B4  41 82 00 30 */	beq lbl_8072E6E4
/* 8072E6B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018E@ha */
/* 8072E6BC  38 03 01 8E */	addi r0, r3, 0x018E /* 0x0007018E@l */
/* 8072E6C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072E6C4  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E6C8  38 81 00 10 */	addi r4, r1, 0x10
/* 8072E6CC  38 A0 FF FF */	li r5, -1
/* 8072E6D0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E6D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072E6D8  7D 89 03 A6 */	mtctr r12
/* 8072E6DC  4E 80 04 21 */	bctrl 
/* 8072E6E0  48 00 00 90 */	b lbl_8072E770
lbl_8072E6E4:
/* 8072E6E4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E6E8  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E6EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8072E6F0  4B BF 9D 3D */	bl checkPass__12J3DFrameCtrlFf
/* 8072E6F4  2C 03 00 00 */	cmpwi r3, 0
/* 8072E6F8  41 82 00 34 */	beq lbl_8072E72C
/* 8072E6FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070178@ha */
/* 8072E700  38 03 01 78 */	addi r0, r3, 0x0178 /* 0x00070178@l */
/* 8072E704  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072E708  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E70C  38 81 00 0C */	addi r4, r1, 0xc
/* 8072E710  38 A0 00 00 */	li r5, 0
/* 8072E714  38 C0 FF FF */	li r6, -1
/* 8072E718  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E71C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E720  7D 89 03 A6 */	mtctr r12
/* 8072E724  4E 80 04 21 */	bctrl 
/* 8072E728  48 00 00 48 */	b lbl_8072E770
lbl_8072E72C:
/* 8072E72C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8072E730  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E734  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8072E738  4B BF 9C F5 */	bl checkPass__12J3DFrameCtrlFf
/* 8072E73C  2C 03 00 00 */	cmpwi r3, 0
/* 8072E740  41 82 00 30 */	beq lbl_8072E770
/* 8072E744  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070179@ha */
/* 8072E748  38 03 01 79 */	addi r0, r3, 0x0179 /* 0x00070179@l */
/* 8072E74C  90 01 00 08 */	stw r0, 8(r1)
/* 8072E750  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8072E754  38 81 00 08 */	addi r4, r1, 8
/* 8072E758  38 A0 00 00 */	li r5, 0
/* 8072E75C  38 C0 FF FF */	li r6, -1
/* 8072E760  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8072E764  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E768  7D 89 03 A6 */	mtctr r12
/* 8072E76C  4E 80 04 21 */	bctrl 
lbl_8072E770:
/* 8072E770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072E774  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072E778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072E77C  7C 08 03 A6 */	mtlr r0
/* 8072E780  38 21 00 20 */	addi r1, r1, 0x20
/* 8072E784  4E 80 00 20 */	blr 
