lbl_806E3724:
/* 806E3724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E3728  7C 08 02 A6 */	mflr r0
/* 806E372C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E3730  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806E3734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806E3738  7C 7E 1B 78 */	mr r30, r3
/* 806E373C  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E3740  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E3744  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 806E3748  2C 00 00 01 */	cmpwi r0, 1
/* 806E374C  41 82 00 44 */	beq lbl_806E3790
/* 806E3750  40 80 00 8C */	bge lbl_806E37DC
/* 806E3754  2C 00 00 00 */	cmpwi r0, 0
/* 806E3758  40 80 00 08 */	bge lbl_806E3760
/* 806E375C  48 00 00 80 */	b lbl_806E37DC
lbl_806E3760:
/* 806E3760  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E3764  38 80 00 00 */	li r4, 0
/* 806E3768  4B BD E4 14 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806E376C  7F C3 F3 78 */	mr r3, r30
/* 806E3770  38 80 00 0E */	li r4, 0xe
/* 806E3774  38 A0 00 02 */	li r5, 2
/* 806E3778  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E377C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E3780  4B FF D7 0D */	bl SetAnm__8daE_HM_cFiiff
/* 806E3784  38 00 00 01 */	li r0, 1
/* 806E3788  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E378C  48 00 00 50 */	b lbl_806E37DC
lbl_806E3790:
/* 806E3790  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E3794  38 63 00 0C */	addi r3, r3, 0xc
/* 806E3798  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E379C  4B C4 4C 90 */	b checkPass__12J3DFrameCtrlFf
/* 806E37A0  2C 03 00 00 */	cmpwi r3, 0
/* 806E37A4  41 82 00 30 */	beq lbl_806E37D4
/* 806E37A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070241@ha */
/* 806E37AC  38 03 02 41 */	addi r0, r3, 0x0241 /* 0x00070241@l */
/* 806E37B0  90 01 00 08 */	stw r0, 8(r1)
/* 806E37B4  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E37B8  38 81 00 08 */	addi r4, r1, 8
/* 806E37BC  38 A0 00 00 */	li r5, 0
/* 806E37C0  38 C0 FF FF */	li r6, -1
/* 806E37C4  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E37C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E37CC  7D 89 03 A6 */	mtctr r12
/* 806E37D0  4E 80 04 21 */	bctrl 
lbl_806E37D4:
/* 806E37D4  7F C3 F3 78 */	mr r3, r30
/* 806E37D8  4B FF FE B9 */	bl LinkSearch__8daE_HM_cFv
lbl_806E37DC:
/* 806E37DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E37E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806E37E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E37E8  7C 08 03 A6 */	mtlr r0
/* 806E37EC  38 21 00 20 */	addi r1, r1, 0x20
/* 806E37F0  4E 80 00 20 */	blr 
