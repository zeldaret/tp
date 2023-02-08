lbl_80678818:
/* 80678818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067881C  7C 08 02 A6 */	mflr r0
/* 80678820  90 01 00 34 */	stw r0, 0x34(r1)
/* 80678824  39 61 00 30 */	addi r11, r1, 0x30
/* 80678828  4B CE 99 A9 */	bl _savegpr_26
/* 8067882C  7C 7C 1B 78 */	mr r28, r3
/* 80678830  3C 60 80 68 */	lis r3, lit_3688@ha /* 0x80678ECC@ha */
/* 80678834  3B E3 8E CC */	addi r31, r3, lit_3688@l /* 0x80678ECC@l */
/* 80678838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067883C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80678840  83 DA 5D AC */	lwz r30, 0x5dac(r26)
/* 80678844  3B BA 4F F8 */	addi r29, r26, 0x4ff8
/* 80678848  7F A3 EB 78 */	mr r3, r29
/* 8067884C  3C 80 80 68 */	lis r4, d_a_door_push__stringBase0@ha /* 0x80678F18@ha */
/* 80678850  38 84 8F 18 */	addi r4, r4, d_a_door_push__stringBase0@l /* 0x80678F18@l */
/* 80678854  38 84 00 2A */	addi r4, r4, 0x2a
/* 80678858  38 A0 00 00 */	li r5, 0
/* 8067885C  38 C0 00 00 */	li r6, 0
/* 80678860  4B 9C F2 BD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80678864  90 7C 06 44 */	stw r3, 0x644(r28)
/* 80678868  7F A3 EB 78 */	mr r3, r29
/* 8067886C  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 80678870  3C A0 80 68 */	lis r5, action_table@ha /* 0x80678FEC@ha */
/* 80678874  38 A5 8F EC */	addi r5, r5, action_table@l /* 0x80678FEC@l */
/* 80678878  38 C0 00 03 */	li r6, 3
/* 8067887C  38 E0 00 00 */	li r7, 0
/* 80678880  39 00 00 00 */	li r8, 0
/* 80678884  4B 9C F5 8D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80678888  7C 7B 1B 78 */	mr r27, r3
/* 8067888C  7F A3 EB 78 */	mr r3, r29
/* 80678890  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 80678894  4B 9C F4 B9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80678898  2C 03 00 00 */	cmpwi r3, 0
/* 8067889C  41 82 00 6C */	beq lbl_80678908
/* 806788A0  2C 1B 00 01 */	cmpwi r27, 1
/* 806788A4  41 82 00 54 */	beq lbl_806788F8
/* 806788A8  40 80 00 60 */	bge lbl_80678908
/* 806788AC  2C 1B 00 00 */	cmpwi r27, 0
/* 806788B0  40 80 00 0C */	bge lbl_806788BC
/* 806788B4  48 00 00 54 */	b lbl_80678908
/* 806788B8  48 00 00 50 */	b lbl_80678908
lbl_806788BC:
/* 806788BC  7F A3 EB 78 */	mr r3, r29
/* 806788C0  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 806788C4  3C A0 80 68 */	lis r5, d_a_door_push__stringBase0@ha /* 0x80678F18@ha */
/* 806788C8  38 A5 8F 18 */	addi r5, r5, d_a_door_push__stringBase0@l /* 0x80678F18@l */
/* 806788CC  38 A5 00 30 */	addi r5, r5, 0x30
/* 806788D0  38 C0 00 03 */	li r6, 3
/* 806788D4  4B 9C F8 19 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 806788D8  28 03 00 00 */	cmplwi r3, 0
/* 806788DC  40 82 00 10 */	bne lbl_806788EC
/* 806788E0  38 00 00 01 */	li r0, 1
/* 806788E4  98 1C 06 48 */	stb r0, 0x648(r28)
/* 806788E8  48 00 00 20 */	b lbl_80678908
lbl_806788EC:
/* 806788EC  80 03 00 00 */	lwz r0, 0(r3)
/* 806788F0  98 1C 06 48 */	stb r0, 0x648(r28)
/* 806788F4  48 00 00 14 */	b lbl_80678908
lbl_806788F8:
/* 806788F8  7F 83 E3 78 */	mr r3, r28
/* 806788FC  48 00 01 F1 */	bl rotateInit__12daDoorPush_cFv
/* 80678900  38 00 00 00 */	li r0, 0
/* 80678904  98 1C 06 41 */	stb r0, 0x641(r28)
lbl_80678908:
/* 80678908  2C 1B 00 01 */	cmpwi r27, 1
/* 8067890C  41 82 00 40 */	beq lbl_8067894C
/* 80678910  40 80 00 10 */	bge lbl_80678920
/* 80678914  2C 1B 00 00 */	cmpwi r27, 0
/* 80678918  40 80 00 14 */	bge lbl_8067892C
/* 8067891C  48 00 01 A8 */	b lbl_80678AC4
lbl_80678920:
/* 80678920  2C 1B 00 03 */	cmpwi r27, 3
/* 80678924  40 80 01 A0 */	bge lbl_80678AC4
/* 80678928  48 00 01 74 */	b lbl_80678A9C
lbl_8067892C:
/* 8067892C  38 7C 06 48 */	addi r3, r28, 0x648
/* 80678930  48 00 05 79 */	bl func_80678EA8
/* 80678934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80678938  40 82 01 98 */	bne lbl_80678AD0
/* 8067893C  7F A3 EB 78 */	mr r3, r29
/* 80678940  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 80678944  4B 9C F8 39 */	bl cutEnd__16dEvent_manager_cFi
/* 80678948  48 00 01 88 */	b lbl_80678AD0
lbl_8067894C:
/* 8067894C  7F 83 E3 78 */	mr r3, r28
/* 80678950  48 00 01 C1 */	bl rotate__12daDoorPush_cFv
/* 80678954  2C 03 00 00 */	cmpwi r3, 0
/* 80678958  41 82 00 80 */	beq lbl_806789D8
/* 8067895C  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80678960  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80678964  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80678968  90 03 05 70 */	stw r0, 0x570(r3)
/* 8067896C  7F 83 E3 78 */	mr r3, r28
/* 80678970  48 00 02 51 */	bl setGoal__12daDoorPush_cFv
/* 80678974  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80678978  7C 03 07 74 */	extsb r3, r0
/* 8067897C  4B 9B 46 F1 */	bl dComIfGp_getReverb__Fi
/* 80678980  7C 67 1B 78 */	mr r7, r3
/* 80678984  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080320@ha */
/* 80678988  38 03 03 20 */	addi r0, r3, 0x0320 /* 0x00080320@l */
/* 8067898C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80678990  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80678994  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80678998  80 63 00 00 */	lwz r3, 0(r3)
/* 8067899C  38 81 00 0C */	addi r4, r1, 0xc
/* 806789A0  38 BC 05 38 */	addi r5, r28, 0x538
/* 806789A4  38 C0 00 00 */	li r6, 0
/* 806789A8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806789AC  FC 40 08 90 */	fmr f2, f1
/* 806789B0  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 806789B4  FC 80 18 90 */	fmr f4, f3
/* 806789B8  39 00 00 00 */	li r8, 0
/* 806789BC  4B C3 2F C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806789C0  38 00 00 01 */	li r0, 1
/* 806789C4  98 1C 06 41 */	stb r0, 0x641(r28)
/* 806789C8  7F A3 EB 78 */	mr r3, r29
/* 806789CC  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 806789D0  4B 9C F7 AD */	bl cutEnd__16dEvent_manager_cFi
/* 806789D4  48 00 00 5C */	b lbl_80678A30
lbl_806789D8:
/* 806789D8  88 1C 06 41 */	lbz r0, 0x641(r28)
/* 806789DC  28 00 00 00 */	cmplwi r0, 0
/* 806789E0  40 82 00 50 */	bne lbl_80678A30
/* 806789E4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806789E8  7C 03 07 74 */	extsb r3, r0
/* 806789EC  4B 9B 46 81 */	bl dComIfGp_getReverb__Fi
/* 806789F0  7C 67 1B 78 */	mr r7, r3
/* 806789F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008031F@ha */
/* 806789F8  38 03 03 1F */	addi r0, r3, 0x031F /* 0x0008031F@l */
/* 806789FC  90 01 00 08 */	stw r0, 8(r1)
/* 80678A00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80678A04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80678A08  80 63 00 00 */	lwz r3, 0(r3)
/* 80678A0C  38 81 00 08 */	addi r4, r1, 8
/* 80678A10  38 BC 05 38 */	addi r5, r28, 0x538
/* 80678A14  38 C0 00 00 */	li r6, 0
/* 80678A18  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80678A1C  FC 40 08 90 */	fmr f2, f1
/* 80678A20  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80678A24  FC 80 18 90 */	fmr f4, f3
/* 80678A28  39 00 00 00 */	li r8, 0
/* 80678A2C  4B C3 3A E1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80678A30:
/* 80678A30  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 80678A34  28 00 00 00 */	cmplwi r0, 0
/* 80678A38  40 82 00 38 */	bne lbl_80678A70
/* 80678A3C  7F C3 F3 78 */	mr r3, r30
/* 80678A40  38 9C 06 54 */	addi r4, r28, 0x654
/* 80678A44  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80678A48  7C BC 02 14 */	add r5, r28, r0
/* 80678A4C  A8 A5 06 30 */	lha r5, 0x630(r5)
/* 80678A50  38 05 7F FF */	addi r0, r5, 0x7fff
/* 80678A54  7C 05 07 34 */	extsh r5, r0
/* 80678A58  38 C0 00 00 */	li r6, 0
/* 80678A5C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80678A60  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80678A64  7D 89 03 A6 */	mtctr r12
/* 80678A68  4E 80 04 21 */	bctrl 
/* 80678A6C  48 00 00 64 */	b lbl_80678AD0
lbl_80678A70:
/* 80678A70  7F C3 F3 78 */	mr r3, r30
/* 80678A74  38 9C 06 54 */	addi r4, r28, 0x654
/* 80678A78  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80678A7C  7C BC 02 14 */	add r5, r28, r0
/* 80678A80  A8 A5 06 30 */	lha r5, 0x630(r5)
/* 80678A84  38 C0 00 00 */	li r6, 0
/* 80678A88  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80678A8C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80678A90  7D 89 03 A6 */	mtctr r12
/* 80678A94  4E 80 04 21 */	bctrl 
/* 80678A98  48 00 00 38 */	b lbl_80678AD0
lbl_80678A9C:
/* 80678A9C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80678AA0  54 03 E6 BE */	rlwinm r3, r0, 0x1c, 0x1a, 0x1f
/* 80678AA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80678AA8  38 80 00 00 */	li r4, 0
/* 80678AAC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80678AB0  7C 05 07 74 */	extsb r5, r0
/* 80678AB4  38 C0 00 00 */	li r6, 0
/* 80678AB8  38 E0 FF FF */	li r7, -1
/* 80678ABC  4B 9A E6 B5 */	bl dStage_changeScene__FifUlScsi
/* 80678AC0  48 00 00 10 */	b lbl_80678AD0
lbl_80678AC4:
/* 80678AC4  7F A3 EB 78 */	mr r3, r29
/* 80678AC8  80 9C 06 44 */	lwz r4, 0x644(r28)
/* 80678ACC  4B 9C F6 B1 */	bl cutEnd__16dEvent_manager_cFi
lbl_80678AD0:
/* 80678AD0  38 60 00 00 */	li r3, 0
/* 80678AD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80678AD8  4B CE 97 45 */	bl _restgpr_26
/* 80678ADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80678AE0  7C 08 03 A6 */	mtlr r0
/* 80678AE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80678AE8  4E 80 00 20 */	blr 
