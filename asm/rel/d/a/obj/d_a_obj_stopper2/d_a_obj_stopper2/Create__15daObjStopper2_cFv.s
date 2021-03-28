lbl_80CEF44C:
/* 80CEF44C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEF450  7C 08 02 A6 */	mflr r0
/* 80CEF454  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEF458  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEF45C  4B 67 2D 74 */	b _savegpr_26
/* 80CEF460  7C 7F 1B 78 */	mr r31, r3
/* 80CEF464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEF468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEF46C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CEF470  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CEF474  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CEF478  7C 05 07 74 */	extsb r5, r0
/* 80CEF47C  4B 34 5E E4 */	b isSwitch__10dSv_info_cCFii
/* 80CEF480  2C 03 00 00 */	cmpwi r3, 0
/* 80CEF484  40 82 00 1C */	bne lbl_80CEF4A0
/* 80CEF488  3C 60 80 CF */	lis r3, lit_3722@ha
/* 80CEF48C  C0 03 FE 90 */	lfs f0, lit_3722@l(r3)
/* 80CEF490  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 80CEF494  38 00 00 01 */	li r0, 1
/* 80CEF498  98 1F 05 88 */	stb r0, 0x588(r31)
/* 80CEF49C  48 00 00 18 */	b lbl_80CEF4B4
lbl_80CEF4A0:
/* 80CEF4A0  7F E3 FB 78 */	mr r3, r31
/* 80CEF4A4  4B FF FF 91 */	bl getMaxOffsetY__15daObjStopper2_cFv
/* 80CEF4A8  D0 3F 05 74 */	stfs f1, 0x574(r31)
/* 80CEF4AC  38 00 00 00 */	li r0, 0
/* 80CEF4B0  98 1F 05 88 */	stb r0, 0x588(r31)
lbl_80CEF4B4:
/* 80CEF4B4  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80CEF4B8  3C 60 80 CF */	lis r3, lit_3723@ha
/* 80CEF4BC  C0 23 FE 94 */	lfs f1, lit_3723@l(r3)
/* 80CEF4C0  EC 00 08 2A */	fadds f0, f0, f1
/* 80CEF4C4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CEF4C8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80CEF4CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80CEF4D0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CEF4D4  7F E3 FB 78 */	mr r3, r31
/* 80CEF4D8  4B FF FE B5 */	bl initBaseMtx__15daObjStopper2_cFv
/* 80CEF4DC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CEF4E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80CEF4E4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CEF4E8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CEF4EC  80 83 00 04 */	lwz r4, 4(r3)
/* 80CEF4F0  7F E3 FB 78 */	mr r3, r31
/* 80CEF4F4  4B 32 B0 84 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CEF4F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CEF4FC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CEF500  98 1F 05 85 */	stb r0, 0x585(r31)
/* 80CEF504  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CEF508  80 03 FF 24 */	lwz r0, l_arcName@l(r3)
/* 80CEF50C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80CEF510  3B 40 00 00 */	li r26, 0
/* 80CEF514  3B C0 00 00 */	li r30, 0
/* 80CEF518  3B A0 00 00 */	li r29, 0
/* 80CEF51C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEF520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEF524  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80CEF528  3C 60 80 CF */	lis r3, l_evName@ha
/* 80CEF52C  3B 83 FF 28 */	addi r28, r3, l_evName@l
lbl_80CEF530:
/* 80CEF530  7F 63 DB 78 */	mr r3, r27
/* 80CEF534  7F E4 FB 78 */	mr r4, r31
/* 80CEF538  7C BC E8 2E */	lwzx r5, r28, r29
/* 80CEF53C  38 C0 00 FF */	li r6, 0xff
/* 80CEF540  4B 35 82 18 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80CEF544  38 1E 05 7C */	addi r0, r30, 0x57c
/* 80CEF548  7C 7F 03 2E */	sthx r3, r31, r0
/* 80CEF54C  3B 5A 00 01 */	addi r26, r26, 1
/* 80CEF550  2C 1A 00 04 */	cmpwi r26, 4
/* 80CEF554  3B DE 00 02 */	addi r30, r30, 2
/* 80CEF558  3B BD 00 04 */	addi r29, r29, 4
/* 80CEF55C  41 80 FF D4 */	blt lbl_80CEF530
/* 80CEF560  38 60 00 01 */	li r3, 1
/* 80CEF564  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEF568  4B 67 2C B4 */	b _restgpr_26
/* 80CEF56C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEF570  7C 08 03 A6 */	mtlr r0
/* 80CEF574  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEF578  4E 80 00 20 */	blr 
