lbl_801E5260:
/* 801E5260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E5264  7C 08 02 A6 */	mflr r0
/* 801E5268  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E526C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E5270  7C 7F 1B 78 */	mr r31, r3
/* 801E5274  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801E5278  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801E527C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801E5280  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 801E5284  40 82 00 0C */	bne lbl_801E5290
/* 801E5288  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801E528C  41 82 00 60 */	beq lbl_801E52EC
lbl_801E5290:
/* 801E5290  38 00 00 A2 */	li r0, 0xa2
/* 801E5294  90 01 00 08 */	stw r0, 8(r1)
/* 801E5298  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E529C  38 81 00 08 */	addi r4, r1, 8
/* 801E52A0  38 A0 00 00 */	li r5, 0
/* 801E52A4  38 C0 00 00 */	li r6, 0
/* 801E52A8  38 E0 00 00 */	li r7, 0
/* 801E52AC  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E52B0  FC 40 08 90 */	fmr f2, f1
/* 801E52B4  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E52B8  FC 80 18 90 */	fmr f4, f3
/* 801E52BC  39 00 00 00 */	li r8, 0
/* 801E52C0  48 0C 66 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E52C4  38 00 00 03 */	li r0, 3
/* 801E52C8  98 1F 03 F3 */	stb r0, 0x3f3(r31)
/* 801E52CC  7F E3 FB 78 */	mr r3, r31
/* 801E52D0  38 80 04 0C */	li r4, 0x40c
/* 801E52D4  48 00 2B C5 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E52D8  7F E3 FB 78 */	mr r3, r31
/* 801E52DC  38 80 03 F9 */	li r4, 0x3f9
/* 801E52E0  48 00 2C BD */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E52E4  48 01 7B 25 */	bl dMw_fade_out__5dMw_cFv
/* 801E52E8  48 03 96 E9 */	bl dMeter2Info_set2DVibration__Fv
lbl_801E52EC:
/* 801E52EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E52F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E52F4  7C 08 03 A6 */	mtlr r0
/* 801E52F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801E52FC  4E 80 00 20 */	blr 
