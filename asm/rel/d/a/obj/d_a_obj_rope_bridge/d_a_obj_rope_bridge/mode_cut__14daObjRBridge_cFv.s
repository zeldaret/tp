lbl_805973E4:
/* 805973E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805973E8  7C 08 02 A6 */	mflr r0
/* 805973EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805973F0  39 61 00 40 */	addi r11, r1, 0x40
/* 805973F4  4B DC AD E9 */	bl _savegpr_29
/* 805973F8  7C 7E 1B 78 */	mr r30, r3
/* 805973FC  3C 80 80 59 */	lis r4, l_brgBmdIdx@ha /* 0x80597D7C@ha */
/* 80597400  3B E4 7D 7C */	addi r31, r4, l_brgBmdIdx@l /* 0x80597D7C@l */
/* 80597404  88 83 0A F3 */	lbz r4, 0xaf3(r3)
/* 80597408  7C 80 07 75 */	extsb. r0, r4
/* 8059740C  41 80 00 80 */	blt lbl_8059748C
/* 80597410  7C 80 07 75 */	extsb. r0, r4
/* 80597414  40 82 00 68 */	bne lbl_8059747C
/* 80597418  4B FF EB 6D */	bl checkE3Special__14daObjRBridge_cFv
/* 8059741C  2C 03 00 00 */	cmpwi r3, 0
/* 80597420  40 82 00 5C */	bne lbl_8059747C
/* 80597424  88 1E 0A F0 */	lbz r0, 0xaf0(r30)
/* 80597428  54 00 10 3A */	slwi r0, r0, 2
/* 8059742C  3C 60 80 5A */	lis r3, l_fall_start_se@ha /* 0x8059802C@ha */
/* 80597430  38 63 80 2C */	addi r3, r3, l_fall_start_se@l /* 0x8059802C@l */
/* 80597434  7F A3 00 2E */	lwzx r29, r3, r0
/* 80597438  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8059743C  7C 03 07 74 */	extsb r3, r0
/* 80597440  4B A9 5C 2D */	bl dComIfGp_getReverb__Fi
/* 80597444  7C 67 1B 78 */	mr r7, r3
/* 80597448  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8059744C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80597450  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80597454  80 63 00 00 */	lwz r3, 0(r3)
/* 80597458  38 81 00 0C */	addi r4, r1, 0xc
/* 8059745C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80597460  38 C0 00 00 */	li r6, 0
/* 80597464  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80597468  FC 40 08 90 */	fmr f2, f1
/* 8059746C  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80597470  FC 80 18 90 */	fmr f4, f3
/* 80597474  39 00 00 00 */	li r8, 0
/* 80597478  4B D1 45 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8059747C:
/* 8059747C  88 7E 0A F3 */	lbz r3, 0xaf3(r30)
/* 80597480  38 03 FF FF */	addi r0, r3, -1
/* 80597484  98 1E 0A F3 */	stb r0, 0xaf3(r30)
/* 80597488  48 00 01 48 */	b lbl_805975D0
lbl_8059748C:
/* 8059748C  38 7E 0B 18 */	addi r3, r30, 0xb18
/* 80597490  38 80 00 32 */	li r4, 0x32
/* 80597494  38 A0 00 3C */	li r5, 0x3c
/* 80597498  38 C0 00 04 */	li r6, 4
/* 8059749C  38 E0 00 01 */	li r7, 1
/* 805974A0  4B CD 90 A1 */	bl cLib_addCalcAngleS__FPsssss
/* 805974A4  38 7E 0A F8 */	addi r3, r30, 0xaf8
/* 805974A8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 805974AC  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 805974B0  4B CD 85 D1 */	bl cLib_addCalc0__FPfff
/* 805974B4  A8 7E 0B 1A */	lha r3, 0xb1a(r30)
/* 805974B8  A8 1E 0B 18 */	lha r0, 0xb18(r30)
/* 805974BC  7C 03 02 14 */	add r0, r3, r0
/* 805974C0  B0 1E 0B 1A */	sth r0, 0xb1a(r30)
/* 805974C4  A8 1E 0B 1A */	lha r0, 0xb1a(r30)
/* 805974C8  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 805974CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805974D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805974D4  3C 00 43 30 */	lis r0, 0x4330
/* 805974D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805974DC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805974E0  EC 40 08 28 */	fsubs f2, f0, f1
/* 805974E4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805974E8  C0 1E 0A F8 */	lfs f0, 0xaf8(r30)
/* 805974EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805974F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805974F4  FC 00 00 1E */	fctiwz f0, f0
/* 805974F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805974FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80597500  B0 1E 0B 1A */	sth r0, 0xb1a(r30)
/* 80597504  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80597508  A8 1E 0B 1A */	lha r0, 0xb1a(r30)
/* 8059750C  7C 03 02 14 */	add r0, r3, r0
/* 80597510  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80597514  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80597518  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8059751C  40 81 00 B4 */	ble lbl_805975D0
/* 80597520  38 00 00 00 */	li r0, 0
/* 80597524  B0 1E 0B 1A */	sth r0, 0xb1a(r30)
/* 80597528  38 00 40 00 */	li r0, 0x4000
/* 8059752C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80597530  7F C3 F3 78 */	mr r3, r30
/* 80597534  4B FF EA 51 */	bl checkE3Special__14daObjRBridge_cFv
/* 80597538  2C 03 00 00 */	cmpwi r3, 0
/* 8059753C  40 82 00 8C */	bne lbl_805975C8
/* 80597540  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80597544  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80597548  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8059754C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80597550  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80597554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80597558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059755C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80597560  38 80 00 04 */	li r4, 4
/* 80597564  38 A0 00 1F */	li r5, 0x1f
/* 80597568  38 C1 00 10 */	addi r6, r1, 0x10
/* 8059756C  4B AD 84 B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80597570  88 1E 0A F0 */	lbz r0, 0xaf0(r30)
/* 80597574  54 00 10 3A */	slwi r0, r0, 2
/* 80597578  3C 60 80 5A */	lis r3, l_fall_end_se@ha /* 0x80598034@ha */
/* 8059757C  38 63 80 34 */	addi r3, r3, l_fall_end_se@l /* 0x80598034@l */
/* 80597580  7F A3 00 2E */	lwzx r29, r3, r0
/* 80597584  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80597588  7C 03 07 74 */	extsb r3, r0
/* 8059758C  4B A9 5A E1 */	bl dComIfGp_getReverb__Fi
/* 80597590  7C 67 1B 78 */	mr r7, r3
/* 80597594  93 A1 00 08 */	stw r29, 8(r1)
/* 80597598  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059759C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805975A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805975A4  38 81 00 08 */	addi r4, r1, 8
/* 805975A8  38 BE 05 38 */	addi r5, r30, 0x538
/* 805975AC  38 C0 00 00 */	li r6, 0
/* 805975B0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805975B4  FC 40 08 90 */	fmr f2, f1
/* 805975B8  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 805975BC  FC 80 18 90 */	fmr f4, f3
/* 805975C0  39 00 00 00 */	li r8, 0
/* 805975C4  4B D1 43 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805975C8:
/* 805975C8  7F C3 F3 78 */	mr r3, r30
/* 805975CC  48 00 00 1D */	bl init_end__14daObjRBridge_cFv
lbl_805975D0:
/* 805975D0  39 61 00 40 */	addi r11, r1, 0x40
/* 805975D4  4B DC AC 55 */	bl _restgpr_29
/* 805975D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805975DC  7C 08 03 A6 */	mtlr r0
/* 805975E0  38 21 00 40 */	addi r1, r1, 0x40
/* 805975E4  4E 80 00 20 */	blr 
