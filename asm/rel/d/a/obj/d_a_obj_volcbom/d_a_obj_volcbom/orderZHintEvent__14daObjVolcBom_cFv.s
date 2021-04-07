lbl_80D25914:
/* 80D25914  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D25918  7C 08 02 A6 */	mflr r0
/* 80D2591C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D25920  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D25924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D25928  7C 7F 1B 78 */	mr r31, r3
/* 80D2592C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D25930  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25934  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80D25938  4B FF F9 91 */	bl checkTalkDistance__14daObjVolcBom_cFv
/* 80D2593C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D25940  41 82 00 B0 */	beq lbl_80D259F0
/* 80D25944  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D25948  60 00 00 01 */	ori r0, r0, 1
/* 80D2594C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D25950  7F C3 F3 78 */	mr r3, r30
/* 80D25954  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D25958  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D2595C  7D 89 03 A6 */	mtctr r12
/* 80D25960  4E 80 04 21 */	bctrl 
/* 80D25964  28 03 00 00 */	cmplwi r3, 0
/* 80D25968  40 82 00 88 */	bne lbl_80D259F0
/* 80D2596C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D25970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25974  38 63 5B 48 */	addi r3, r3, 0x5b48
/* 80D25978  7F E4 FB 78 */	mr r4, r31
/* 80D2597C  38 A0 01 FF */	li r5, 0x1ff
/* 80D25980  4B 34 DF 7D */	bl request__10dAttHint_cFP10fopAc_ac_ci
/* 80D25984  88 1F 0A 1A */	lbz r0, 0xa1a(r31)
/* 80D25988  28 00 00 00 */	cmplwi r0, 0
/* 80D2598C  40 82 00 64 */	bne lbl_80D259F0
/* 80D25990  38 00 00 01 */	li r0, 1
/* 80D25994  98 1F 0A 1A */	stb r0, 0xa1a(r31)
/* 80D25998  88 1F 0A 1B */	lbz r0, 0xa1b(r31)
/* 80D2599C  28 00 00 00 */	cmplwi r0, 0
/* 80D259A0  40 82 00 48 */	bne lbl_80D259E8
/* 80D259A4  38 00 00 0E */	li r0, 0xe
/* 80D259A8  90 01 00 08 */	stw r0, 8(r1)
/* 80D259AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D259B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D259B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D259B8  38 81 00 08 */	addi r4, r1, 8
/* 80D259BC  38 A0 00 00 */	li r5, 0
/* 80D259C0  38 C0 00 00 */	li r6, 0
/* 80D259C4  38 E0 00 00 */	li r7, 0
/* 80D259C8  3D 00 80 D2 */	lis r8, lit_3785@ha /* 0x80D26B7C@ha */
/* 80D259CC  C0 28 6B 7C */	lfs f1, lit_3785@l(r8)  /* 0x80D26B7C@l */
/* 80D259D0  FC 40 08 90 */	fmr f2, f1
/* 80D259D4  3D 00 80 D2 */	lis r8, lit_4000@ha /* 0x80D26BA0@ha */
/* 80D259D8  C0 68 6B A0 */	lfs f3, lit_4000@l(r8)  /* 0x80D26BA0@l */
/* 80D259DC  FC 80 18 90 */	fmr f4, f3
/* 80D259E0  39 00 00 00 */	li r8, 0
/* 80D259E4  4B 58 5F A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D259E8:
/* 80D259E8  38 00 00 3C */	li r0, 0x3c
/* 80D259EC  98 1F 0A 1B */	stb r0, 0xa1b(r31)
lbl_80D259F0:
/* 80D259F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D259F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D259F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D259FC  7C 08 03 A6 */	mtlr r0
/* 80D25A00  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25A04  4E 80 00 20 */	blr 
