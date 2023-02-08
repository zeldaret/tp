lbl_80CEB01C:
/* 80CEB01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEB020  7C 08 02 A6 */	mflr r0
/* 80CEB024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEB028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEB02C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEB030  7C 7E 1B 78 */	mr r30, r3
/* 80CEB034  3C 80 80 CF */	lis r4, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CEB038  3B E4 CA B4 */	addi r31, r4, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CEB03C  80 83 09 0C */	lwz r4, 0x90c(r3)
/* 80CEB040  38 04 00 01 */	addi r0, r4, 1
/* 80CEB044  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB048  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80CEB04C  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80CEB050  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEB054  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80CEB058  38 9E 07 8C */	addi r4, r30, 0x78c
/* 80CEB05C  4B 32 F6 71 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CEB060  38 7E 09 40 */	addi r3, r30, 0x940
/* 80CEB064  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEB068  54 00 10 3A */	slwi r0, r0, 2
/* 80CEB06C  38 9F 00 68 */	addi r4, r31, 0x68
/* 80CEB070  7C 24 04 2E */	lfsx f1, r4, r0
/* 80CEB074  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 80CEB078  4B 58 56 C9 */	bl cLib_chaseF__FPfff
/* 80CEB07C  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80CEB080  28 00 00 05 */	cmplwi r0, 5
/* 80CEB084  40 81 00 1C */	ble lbl_80CEB0A0
/* 80CEB088  7F C3 F3 78 */	mr r3, r30
/* 80CEB08C  48 00 15 31 */	bl checkRollAngle__12daObjStone_cFv
/* 80CEB090  2C 03 00 00 */	cmpwi r3, 0
/* 80CEB094  41 82 00 0C */	beq lbl_80CEB0A0
/* 80CEB098  7F C3 F3 78 */	mr r3, r30
/* 80CEB09C  48 00 06 4D */	bl init_modeWalk__12daObjStone_cFv
lbl_80CEB0A0:
/* 80CEB0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEB0A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEB0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEB0AC  7C 08 03 A6 */	mtlr r0
/* 80CEB0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEB0B4  4E 80 00 20 */	blr 
