lbl_80C562D8:
/* 80C562D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C562DC  7C 08 02 A6 */	mflr r0
/* 80C562E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C562E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C562E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C562EC  7C 7E 1B 78 */	mr r30, r3
/* 80C562F0  3C 60 80 C5 */	lis r3, mCcDObjInfo__12daLv1Cdl00_c@ha
/* 80C562F4  3B E3 6A 50 */	addi r31, r3, mCcDObjInfo__12daLv1Cdl00_c@l
/* 80C562F8  88 1E 07 08 */	lbz r0, 0x708(r30)
/* 80C562FC  28 00 00 01 */	cmplwi r0, 1
/* 80C56300  41 82 00 70 */	beq lbl_80C56370
/* 80C56304  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80C56308  90 01 00 08 */	stw r0, 8(r1)
/* 80C5630C  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 80C56310  28 00 00 00 */	cmplwi r0, 0
/* 80C56314  41 82 00 20 */	beq lbl_80C56334
/* 80C56318  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80C5631C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C56320  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C56324  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C56328  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80C5632C  4B 61 96 50 */	b cLib_addCalc__FPfffff
/* 80C56330  48 00 00 1C */	b lbl_80C5634C
lbl_80C56334:
/* 80C56334  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80C56338  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C5633C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C56340  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C56344  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80C56348  4B 61 96 34 */	b cLib_addCalc__FPfffff
lbl_80C5634C:
/* 80C5634C  C0 3E 07 0C */	lfs f1, 0x70c(r30)
/* 80C56350  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C56354  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C56358  4C 41 13 82 */	cror 2, 1, 2
/* 80C5635C  40 82 00 14 */	bne lbl_80C56370
/* 80C56360  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 80C56364  38 81 00 08 */	addi r4, r1, 8
/* 80C56368  38 A0 00 00 */	li r5, 0
/* 80C5636C  4B 55 39 F4 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80C56370:
/* 80C56370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C56374  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C56378  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5637C  7C 08 03 A6 */	mtlr r0
/* 80C56380  38 21 00 20 */	addi r1, r1, 0x20
/* 80C56384  4E 80 00 20 */	blr 
