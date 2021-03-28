lbl_80B9F250:
/* 80B9F250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9F254  7C 08 02 A6 */	mflr r0
/* 80B9F258  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9F25C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9F260  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9F264  7C 7E 1B 78 */	mr r30, r3
/* 80B9F268  3C 60 80 BA */	lis r3, mCcDObjInfo__11daTvCdlst_c@ha
/* 80B9F26C  3B E3 F8 90 */	addi r31, r3, mCcDObjInfo__11daTvCdlst_c@l
/* 80B9F270  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 80B9F274  28 00 00 00 */	cmplwi r0, 0
/* 80B9F278  40 82 00 70 */	bne lbl_80B9F2E8
/* 80B9F27C  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80B9F280  90 01 00 08 */	stw r0, 8(r1)
/* 80B9F284  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 80B9F288  28 00 00 00 */	cmplwi r0, 0
/* 80B9F28C  41 82 00 20 */	beq lbl_80B9F2AC
/* 80B9F290  38 7E 07 10 */	addi r3, r30, 0x710
/* 80B9F294  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80B9F298  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80B9F29C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80B9F2A0  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80B9F2A4  4B 6D 06 D8 */	b cLib_addCalc__FPfffff
/* 80B9F2A8  48 00 00 1C */	b lbl_80B9F2C4
lbl_80B9F2AC:
/* 80B9F2AC  38 7E 07 10 */	addi r3, r30, 0x710
/* 80B9F2B0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80B9F2B4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80B9F2B8  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80B9F2BC  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80B9F2C0  4B 6D 06 BC */	b cLib_addCalc__FPfffff
lbl_80B9F2C4:
/* 80B9F2C4  C0 3E 07 10 */	lfs f1, 0x710(r30)
/* 80B9F2C8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80B9F2CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B9F2D0  4C 41 13 82 */	cror 2, 1, 2
/* 80B9F2D4  40 82 00 14 */	bne lbl_80B9F2E8
/* 80B9F2D8  38 7E 07 00 */	addi r3, r30, 0x700
/* 80B9F2DC  38 81 00 08 */	addi r4, r1, 8
/* 80B9F2E0  38 A0 00 00 */	li r5, 0
/* 80B9F2E4  4B 60 AA 7C */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80B9F2E8:
/* 80B9F2E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9F2EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9F2F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9F2F4  7C 08 03 A6 */	mtlr r0
/* 80B9F2F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9F2FC  4E 80 00 20 */	blr 
