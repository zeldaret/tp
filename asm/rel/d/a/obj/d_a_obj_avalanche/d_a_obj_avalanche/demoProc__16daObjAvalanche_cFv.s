lbl_80BA788C:
/* 80BA788C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA7890  7C 08 02 A6 */	mflr r0
/* 80BA7894  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA7898  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA789C  4B 7B A9 41 */	bl _savegpr_29
/* 80BA78A0  7C 7D 1B 78 */	mr r29, r3
/* 80BA78A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA78A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA78AC  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80BA78B0  7F C3 F3 78 */	mr r3, r30
/* 80BA78B4  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA78B8  3C A0 80 BA */	lis r5, action_table@ha /* 0x80BA7E14@ha */
/* 80BA78BC  38 A5 7E 14 */	addi r5, r5, action_table@l /* 0x80BA7E14@l */
/* 80BA78C0  38 C0 00 02 */	li r6, 2
/* 80BA78C4  38 E0 00 00 */	li r7, 0
/* 80BA78C8  39 00 00 00 */	li r8, 0
/* 80BA78CC  4B 4A 05 45 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80BA78D0  7C 7F 1B 78 */	mr r31, r3
/* 80BA78D4  7F C3 F3 78 */	mr r3, r30
/* 80BA78D8  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA78DC  4B 4A 04 71 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80BA78E0  2C 03 00 00 */	cmpwi r3, 0
/* 80BA78E4  41 82 00 DC */	beq lbl_80BA79C0
/* 80BA78E8  2C 1F 00 01 */	cmpwi r31, 1
/* 80BA78EC  41 82 00 50 */	beq lbl_80BA793C
/* 80BA78F0  40 80 00 D0 */	bge lbl_80BA79C0
/* 80BA78F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80BA78F8  40 80 00 08 */	bge lbl_80BA7900
/* 80BA78FC  48 00 00 C4 */	b lbl_80BA79C0
lbl_80BA7900:
/* 80BA7900  7F C3 F3 78 */	mr r3, r30
/* 80BA7904  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA7908  3C A0 80 BA */	lis r5, d_a_obj_avalanche__stringBase0@ha /* 0x80BA7D3C@ha */
/* 80BA790C  38 A5 7D 3C */	addi r5, r5, d_a_obj_avalanche__stringBase0@l /* 0x80BA7D3C@l */
/* 80BA7910  38 A5 00 2B */	addi r5, r5, 0x2b
/* 80BA7914  38 C0 00 03 */	li r6, 3
/* 80BA7918  4B 4A 07 D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80BA791C  28 03 00 00 */	cmplwi r3, 0
/* 80BA7920  40 82 00 10 */	bne lbl_80BA7930
/* 80BA7924  38 00 00 01 */	li r0, 1
/* 80BA7928  98 1D 05 EA */	stb r0, 0x5ea(r29)
/* 80BA792C  48 00 00 94 */	b lbl_80BA79C0
lbl_80BA7930:
/* 80BA7930  80 03 00 00 */	lwz r0, 0(r3)
/* 80BA7934  98 1D 05 EA */	stb r0, 0x5ea(r29)
/* 80BA7938  48 00 00 88 */	b lbl_80BA79C0
lbl_80BA793C:
/* 80BA793C  3C 60 80 BA */	lis r3, lit_3762@ha /* 0x80BA7D2C@ha */
/* 80BA7940  C0 03 7D 2C */	lfs f0, lit_3762@l(r3)  /* 0x80BA7D2C@l */
/* 80BA7944  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80BA7948  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BA794C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BA7950  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BA7954  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BA7958  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BA795C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BA7960  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BA7964  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BA7968  7C 03 07 74 */	extsb r3, r0
/* 80BA796C  4B 48 57 01 */	bl dComIfGp_getReverb__Fi
/* 80BA7970  7C 67 1B 78 */	mr r7, r3
/* 80BA7974  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A3@ha */
/* 80BA7978  38 03 02 A3 */	addi r0, r3, 0x02A3 /* 0x000802A3@l */
/* 80BA797C  90 01 00 08 */	stw r0, 8(r1)
/* 80BA7980  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BA7984  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BA7988  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA798C  38 81 00 08 */	addi r4, r1, 8
/* 80BA7990  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BA7994  38 C0 00 00 */	li r6, 0
/* 80BA7998  3D 00 80 BA */	lis r8, lit_3762@ha /* 0x80BA7D2C@ha */
/* 80BA799C  C0 28 7D 2C */	lfs f1, lit_3762@l(r8)  /* 0x80BA7D2C@l */
/* 80BA79A0  FC 40 08 90 */	fmr f2, f1
/* 80BA79A4  3D 00 80 BA */	lis r8, lit_3964@ha /* 0x80BA7D38@ha */
/* 80BA79A8  C0 68 7D 38 */	lfs f3, lit_3964@l(r8)  /* 0x80BA7D38@l */
/* 80BA79AC  FC 80 18 90 */	fmr f4, f3
/* 80BA79B0  39 00 00 00 */	li r8, 0
/* 80BA79B4  4B 70 3F D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA79B8  7F A3 EB 78 */	mr r3, r29
/* 80BA79BC  48 00 00 95 */	bl setEffect__16daObjAvalanche_cFv
lbl_80BA79C0:
/* 80BA79C0  2C 1F 00 01 */	cmpwi r31, 1
/* 80BA79C4  41 82 00 34 */	beq lbl_80BA79F8
/* 80BA79C8  40 80 00 60 */	bge lbl_80BA7A28
/* 80BA79CC  2C 1F 00 00 */	cmpwi r31, 0
/* 80BA79D0  40 80 00 08 */	bge lbl_80BA79D8
/* 80BA79D4  48 00 00 54 */	b lbl_80BA7A28
lbl_80BA79D8:
/* 80BA79D8  38 7D 05 EA */	addi r3, r29, 0x5ea
/* 80BA79DC  48 00 02 FD */	bl func_80BA7CD8
/* 80BA79E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA79E4  40 82 00 50 */	bne lbl_80BA7A34
/* 80BA79E8  7F C3 F3 78 */	mr r3, r30
/* 80BA79EC  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA79F0  4B 4A 07 8D */	bl cutEnd__16dEvent_manager_cFi
/* 80BA79F4  48 00 00 40 */	b lbl_80BA7A34
lbl_80BA79F8:
/* 80BA79F8  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80BA79FC  4B 46 5A 2D */	bl play__14mDoExt_baseAnmFv
/* 80BA7A00  2C 03 00 00 */	cmpwi r3, 0
/* 80BA7A04  41 82 00 30 */	beq lbl_80BA7A34
/* 80BA7A08  7F A3 EB 78 */	mr r3, r29
/* 80BA7A0C  4B FF FB 99 */	bl move__16daObjAvalanche_cFv
/* 80BA7A10  2C 03 00 00 */	cmpwi r3, 0
/* 80BA7A14  41 82 00 20 */	beq lbl_80BA7A34
/* 80BA7A18  7F C3 F3 78 */	mr r3, r30
/* 80BA7A1C  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA7A20  4B 4A 07 5D */	bl cutEnd__16dEvent_manager_cFi
/* 80BA7A24  48 00 00 10 */	b lbl_80BA7A34
lbl_80BA7A28:
/* 80BA7A28  7F C3 F3 78 */	mr r3, r30
/* 80BA7A2C  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80BA7A30  4B 4A 07 4D */	bl cutEnd__16dEvent_manager_cFi
lbl_80BA7A34:
/* 80BA7A34  38 60 00 00 */	li r3, 0
/* 80BA7A38  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA7A3C  4B 7B A7 ED */	bl _restgpr_29
/* 80BA7A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA7A44  7C 08 03 A6 */	mtlr r0
/* 80BA7A48  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA7A4C  4E 80 00 20 */	blr 
