lbl_8059E508:
/* 8059E508  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059E50C  7C 08 02 A6 */	mflr r0
/* 8059E510  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059E514  39 61 00 30 */	addi r11, r1, 0x30
/* 8059E518  4B DC 3C BD */	bl _savegpr_27
/* 8059E51C  7C 7C 1B 78 */	mr r28, r3
/* 8059E520  3C 60 80 5A */	lis r3, lit_3659@ha /* 0x8059E7F4@ha */
/* 8059E524  3B C3 E7 F4 */	addi r30, r3, lit_3659@l /* 0x8059E7F4@l */
/* 8059E528  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8059E52C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8059E530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059E534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059E538  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8059E53C  7F A3 EB 78 */	mr r3, r29
/* 8059E540  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E544  3C A0 80 5A */	lis r5, action_table@ha /* 0x8059E8C0@ha */
/* 8059E548  38 A5 E8 C0 */	addi r5, r5, action_table@l /* 0x8059E8C0@l */
/* 8059E54C  38 C0 00 03 */	li r6, 3
/* 8059E550  38 E0 00 00 */	li r7, 0
/* 8059E554  39 00 00 00 */	li r8, 0
/* 8059E558  4B AA 98 B9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8059E55C  7C 7B 1B 78 */	mr r27, r3
/* 8059E560  7F A3 EB 78 */	mr r3, r29
/* 8059E564  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E568  4B AA 97 E5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8059E56C  2C 03 00 00 */	cmpwi r3, 0
/* 8059E570  41 82 00 BC */	beq lbl_8059E62C
/* 8059E574  2C 1B 00 01 */	cmpwi r27, 1
/* 8059E578  41 82 00 54 */	beq lbl_8059E5CC
/* 8059E57C  40 80 00 B0 */	bge lbl_8059E62C
/* 8059E580  2C 1B 00 00 */	cmpwi r27, 0
/* 8059E584  40 80 00 0C */	bge lbl_8059E590
/* 8059E588  48 00 00 A4 */	b lbl_8059E62C
/* 8059E58C  48 00 00 A0 */	b lbl_8059E62C
lbl_8059E590:
/* 8059E590  7F A3 EB 78 */	mr r3, r29
/* 8059E594  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E598  3C A0 80 5A */	lis r5, d_a_scene_exit2__stringBase0@ha /* 0x8059E808@ha */
/* 8059E59C  38 A5 E8 08 */	addi r5, r5, d_a_scene_exit2__stringBase0@l /* 0x8059E808@l */
/* 8059E5A0  38 A5 00 2A */	addi r5, r5, 0x2a
/* 8059E5A4  38 C0 00 03 */	li r6, 3
/* 8059E5A8  4B AA 9B 45 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8059E5AC  28 03 00 00 */	cmplwi r3, 0
/* 8059E5B0  40 82 00 10 */	bne lbl_8059E5C0
/* 8059E5B4  38 00 00 01 */	li r0, 1
/* 8059E5B8  98 1C 05 7C */	stb r0, 0x57c(r28)
/* 8059E5BC  48 00 00 70 */	b lbl_8059E62C
lbl_8059E5C0:
/* 8059E5C0  80 03 00 00 */	lwz r0, 0(r3)
/* 8059E5C4  98 1C 05 7C */	stb r0, 0x57c(r28)
/* 8059E5C8  48 00 00 64 */	b lbl_8059E62C
lbl_8059E5CC:
/* 8059E5CC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8059E5D0  7C 03 07 74 */	extsb r3, r0
/* 8059E5D4  4B A8 EA 99 */	bl dComIfGp_getReverb__Fi
/* 8059E5D8  7C 67 1B 78 */	mr r7, r3
/* 8059E5DC  38 00 00 86 */	li r0, 0x86
/* 8059E5E0  90 01 00 08 */	stw r0, 8(r1)
/* 8059E5E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8059E5E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8059E5EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8059E5F0  38 81 00 08 */	addi r4, r1, 8
/* 8059E5F4  38 BC 05 38 */	addi r5, r28, 0x538
/* 8059E5F8  38 C0 00 00 */	li r6, 0
/* 8059E5FC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8059E600  FC 40 08 90 */	fmr f2, f1
/* 8059E604  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8059E608  FC 80 18 90 */	fmr f4, f3
/* 8059E60C  39 00 00 00 */	li r8, 0
/* 8059E610  4B D0 D3 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8059E614  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8059E618  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8059E61C  EC 01 00 2A */	fadds f0, f1, f0
/* 8059E620  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8059E624  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 8059E628  D0 1C 05 3C */	stfs f0, 0x53c(r28)
lbl_8059E62C:
/* 8059E62C  2C 1B 00 01 */	cmpwi r27, 1
/* 8059E630  41 82 00 40 */	beq lbl_8059E670
/* 8059E634  40 80 00 10 */	bge lbl_8059E644
/* 8059E638  2C 1B 00 00 */	cmpwi r27, 0
/* 8059E63C  40 80 00 14 */	bge lbl_8059E650
/* 8059E640  48 00 00 64 */	b lbl_8059E6A4
lbl_8059E644:
/* 8059E644  2C 1B 00 03 */	cmpwi r27, 3
/* 8059E648  40 80 00 5C */	bge lbl_8059E6A4
/* 8059E64C  48 00 00 34 */	b lbl_8059E680
lbl_8059E650:
/* 8059E650  38 7C 05 7C */	addi r3, r28, 0x57c
/* 8059E654  48 00 01 7D */	bl func_8059E7D0
/* 8059E658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059E65C  40 82 00 54 */	bne lbl_8059E6B0
/* 8059E660  7F A3 EB 78 */	mr r3, r29
/* 8059E664  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E668  4B AA 9B 15 */	bl cutEnd__16dEvent_manager_cFi
/* 8059E66C  48 00 00 44 */	b lbl_8059E6B0
lbl_8059E670:
/* 8059E670  7F A3 EB 78 */	mr r3, r29
/* 8059E674  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E678  4B AA 9B 05 */	bl cutEnd__16dEvent_manager_cFi
/* 8059E67C  48 00 00 34 */	b lbl_8059E6B0
lbl_8059E680:
/* 8059E680  7F E3 FB 78 */	mr r3, r31
/* 8059E684  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8059E688  38 80 00 00 */	li r4, 0
/* 8059E68C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8059E690  7C 05 07 74 */	extsb r5, r0
/* 8059E694  38 C0 00 00 */	li r6, 0
/* 8059E698  38 E0 FF FF */	li r7, -1
/* 8059E69C  4B A8 8A D5 */	bl dStage_changeScene__FifUlScsi
/* 8059E6A0  48 00 00 10 */	b lbl_8059E6B0
lbl_8059E6A4:
/* 8059E6A4  7F A3 EB 78 */	mr r3, r29
/* 8059E6A8  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 8059E6AC  4B AA 9A D1 */	bl cutEnd__16dEvent_manager_cFi
lbl_8059E6B0:
/* 8059E6B0  38 60 00 00 */	li r3, 0
/* 8059E6B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8059E6B8  4B DC 3B 69 */	bl _restgpr_27
/* 8059E6BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059E6C0  7C 08 03 A6 */	mtlr r0
/* 8059E6C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8059E6C8  4E 80 00 20 */	blr 
