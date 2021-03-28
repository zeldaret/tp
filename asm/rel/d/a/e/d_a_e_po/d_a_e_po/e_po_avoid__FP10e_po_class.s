lbl_8074D338:
/* 8074D338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074D33C  7C 08 02 A6 */	mflr r0
/* 8074D340  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074D344  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8074D348  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8074D34C  7C 7E 1B 78 */	mr r30, r3
/* 8074D350  3C 80 80 75 */	lis r4, lit_3917@ha
/* 8074D354  3B E4 76 FC */	addi r31, r4, lit_3917@l
/* 8074D358  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8074D35C  2C 00 00 01 */	cmpwi r0, 1
/* 8074D360  41 82 00 B0 */	beq lbl_8074D410
/* 8074D364  40 80 01 40 */	bge lbl_8074D4A4
/* 8074D368  2C 00 00 00 */	cmpwi r0, 0
/* 8074D36C  40 80 00 08 */	bge lbl_8074D374
/* 8074D370  48 00 01 34 */	b lbl_8074D4A4
lbl_8074D374:
/* 8074D374  38 80 00 14 */	li r4, 0x14
/* 8074D378  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074D37C  38 A0 00 00 */	li r5, 0
/* 8074D380  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074D384  4B FF F2 DD */	bl anm_init__FP10e_po_classifUcf
/* 8074D388  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D2@ha */
/* 8074D38C  38 03 00 D2 */	addi r0, r3, 0x00D2 /* 0x000700D2@l */
/* 8074D390  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074D394  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074D398  38 81 00 0C */	addi r4, r1, 0xc
/* 8074D39C  38 A0 FF FF */	li r5, -1
/* 8074D3A0  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074D3A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074D3A8  7D 89 03 A6 */	mtctr r12
/* 8074D3AC  4E 80 04 21 */	bctrl 
/* 8074D3B0  7F C3 F3 78 */	mr r3, r30
/* 8074D3B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8074D3B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8074D3BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8074D3C0  4B 8C D3 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074D3C4  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8074D3C8  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8074D3CC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8074D3D0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8074D3D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8074D3D8  4B B1 A5 7C */	b cM_rndF__Ff
/* 8074D3DC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8074D3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8074D3E4  40 80 00 14 */	bge lbl_8074D3F8
/* 8074D3E8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8074D3EC  38 03 40 00 */	addi r0, r3, 0x4000
/* 8074D3F0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8074D3F4  48 00 00 10 */	b lbl_8074D404
lbl_8074D3F8:
/* 8074D3F8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8074D3FC  38 03 C0 00 */	addi r0, r3, -16384
/* 8074D400  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8074D404:
/* 8074D404  38 00 00 01 */	li r0, 1
/* 8074D408  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 8074D40C  48 00 00 98 */	b lbl_8074D4A4
lbl_8074D410:
/* 8074D410  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8074D414  38 80 00 01 */	li r4, 1
/* 8074D418  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8074D41C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074D420  40 82 00 18 */	bne lbl_8074D438
/* 8074D424  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8074D428  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8074D42C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074D430  41 82 00 08 */	beq lbl_8074D438
/* 8074D434  38 80 00 00 */	li r4, 0
lbl_8074D438:
/* 8074D438  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8074D43C  41 82 00 68 */	beq lbl_8074D4A4
/* 8074D440  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CC@ha */
/* 8074D444  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000700CC@l */
/* 8074D448  90 01 00 08 */	stw r0, 8(r1)
/* 8074D44C  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8074D450  38 81 00 08 */	addi r4, r1, 8
/* 8074D454  38 A0 FF FF */	li r5, -1
/* 8074D458  81 9E 05 F8 */	lwz r12, 0x5f8(r30)
/* 8074D45C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074D460  7D 89 03 A6 */	mtctr r12
/* 8074D464  4E 80 04 21 */	bctrl 
/* 8074D468  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8074D46C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8074D470  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8074D474  60 00 00 04 */	ori r0, r0, 4
/* 8074D478  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8074D47C  38 00 00 03 */	li r0, 3
/* 8074D480  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 8074D484  7F C3 F3 78 */	mr r3, r30
/* 8074D488  38 80 00 13 */	li r4, 0x13
/* 8074D48C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8074D490  38 A0 00 02 */	li r5, 2
/* 8074D494  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074D498  4B FF F1 C9 */	bl anm_init__FP10e_po_classifUcf
/* 8074D49C  38 00 00 02 */	li r0, 2
/* 8074D4A0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_8074D4A4:
/* 8074D4A4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8074D4A8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8074D4AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8074D4B0  FC 60 10 90 */	fmr f3, f2
/* 8074D4B4  4B B2 25 88 */	b cLib_addCalc2__FPffff
/* 8074D4B8  7F C3 F3 78 */	mr r3, r30
/* 8074D4BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8074D4C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8074D4C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8074D4C8  4B 8C D2 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074D4CC  7C 64 1B 78 */	mr r4, r3
/* 8074D4D0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8074D4D4  38 A0 00 02 */	li r5, 2
/* 8074D4D8  38 C0 20 00 */	li r6, 0x2000
/* 8074D4DC  4B B2 31 2C */	b cLib_addCalcAngleS2__FPssss
/* 8074D4E0  38 00 00 14 */	li r0, 0x14
/* 8074D4E4  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 8074D4E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8074D4EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8074D4F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074D4F4  7C 08 03 A6 */	mtlr r0
/* 8074D4F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8074D4FC  4E 80 00 20 */	blr 
