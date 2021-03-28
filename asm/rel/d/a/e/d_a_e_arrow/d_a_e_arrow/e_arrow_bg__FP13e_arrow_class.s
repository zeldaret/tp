lbl_8067D40C:
/* 8067D40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8067D410  7C 08 02 A6 */	mflr r0
/* 8067D414  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067D418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8067D41C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8067D420  7C 7E 1B 78 */	mr r30, r3
/* 8067D424  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067D428  3B E3 E8 80 */	addi r31, r3, lit_3983@l
/* 8067D42C  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 8067D430  2C 00 00 01 */	cmpwi r0, 1
/* 8067D434  41 82 00 24 */	beq lbl_8067D458
/* 8067D438  40 80 00 E0 */	bge lbl_8067D518
/* 8067D43C  2C 00 00 00 */	cmpwi r0, 0
/* 8067D440  40 80 00 08 */	bge lbl_8067D448
/* 8067D444  48 00 00 D4 */	b lbl_8067D518
lbl_8067D448:
/* 8067D448  38 00 00 01 */	li r0, 1
/* 8067D44C  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 8067D450  38 00 00 64 */	li r0, 0x64
/* 8067D454  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
lbl_8067D458:
/* 8067D458  38 60 00 43 */	li r3, 0x43
/* 8067D45C  38 80 00 01 */	li r4, 1
/* 8067D460  4B A1 AA 80 */	b checkItemGet__FUci
/* 8067D464  2C 03 00 00 */	cmpwi r3, 0
/* 8067D468  41 82 00 9C */	beq lbl_8067D504
/* 8067D46C  7F C3 F3 78 */	mr r3, r30
/* 8067D470  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8067D474  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8067D478  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8067D47C  4B 99 D3 64 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8067D480  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8067D484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067D488  40 80 00 7C */	bge lbl_8067D504
/* 8067D48C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D490  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8067D494  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 8067D498  38 03 00 01 */	addi r0, r3, 1
/* 8067D49C  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 8067D4A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8067D4A4  38 80 00 11 */	li r4, 0x11
/* 8067D4A8  38 A0 FF FF */	li r5, -1
/* 8067D4AC  38 C0 00 00 */	li r6, 0
/* 8067D4B0  38 E0 00 00 */	li r7, 0
/* 8067D4B4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8067D4B8  FC 40 08 90 */	fmr f2, f1
/* 8067D4BC  4B 99 ED 40 */	b fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff
/* 8067D4C0  38 00 00 18 */	li r0, 0x18
/* 8067D4C4  90 01 00 08 */	stw r0, 8(r1)
/* 8067D4C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8067D4CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8067D4D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8067D4D4  38 81 00 08 */	addi r4, r1, 8
/* 8067D4D8  38 A0 00 00 */	li r5, 0
/* 8067D4DC  38 C0 00 00 */	li r6, 0
/* 8067D4E0  38 E0 00 00 */	li r7, 0
/* 8067D4E4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8067D4E8  FC 40 08 90 */	fmr f2, f1
/* 8067D4EC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8067D4F0  FC 80 18 90 */	fmr f4, f3
/* 8067D4F4  39 00 00 00 */	li r8, 0
/* 8067D4F8  4B C2 E4 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8067D4FC  38 00 00 00 */	li r0, 0
/* 8067D500  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
lbl_8067D504:
/* 8067D504  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 8067D508  2C 00 00 00 */	cmpwi r0, 0
/* 8067D50C  40 82 00 0C */	bne lbl_8067D518
/* 8067D510  7F C3 F3 78 */	mr r3, r30
/* 8067D514  4B 99 C7 68 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8067D518:
/* 8067D518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8067D51C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8067D520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067D524  7C 08 03 A6 */	mtlr r0
/* 8067D528  38 21 00 20 */	addi r1, r1, 0x20
/* 8067D52C  4E 80 00 20 */	blr 
