lbl_80D54AF8:
/* 80D54AF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D54AFC  7C 08 02 A6 */	mflr r0
/* 80D54B00  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D54B04  39 61 00 50 */	addi r11, r1, 0x50
/* 80D54B08  4B 60 D6 C8 */	b _savegpr_26
/* 80D54B0C  7C 7B 1B 78 */	mr r27, r3
/* 80D54B10  3C 60 80 D5 */	lis r3, mAttr__13daTagTWGate_c@ha
/* 80D54B14  3B C3 57 AC */	addi r30, r3, mAttr__13daTagTWGate_c@l
/* 80D54B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54B1C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D54B20  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80D54B24  7F A3 EB 78 */	mr r3, r29
/* 80D54B28  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D54B2C  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D54B30  80 84 00 00 */	lwz r4, 0(r4)
/* 80D54B34  38 A0 00 00 */	li r5, 0
/* 80D54B38  38 C0 00 00 */	li r6, 0
/* 80D54B3C  4B 2F 2F E0 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D54B40  7C 7C 1B 78 */	mr r28, r3
/* 80D54B44  2C 1C FF FF */	cmpwi r28, -1
/* 80D54B48  41 82 03 6C */	beq lbl_80D54EB4
/* 80D54B4C  7F A3 EB 78 */	mr r3, r29
/* 80D54B50  7F 84 E3 78 */	mr r4, r28
/* 80D54B54  4B 2F 34 08 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D54B58  7C 7A 1B 78 */	mr r26, r3
/* 80D54B5C  7F A3 EB 78 */	mr r3, r29
/* 80D54B60  7F 84 E3 78 */	mr r4, r28
/* 80D54B64  4B 2F 31 E8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D54B68  2C 03 00 00 */	cmpwi r3, 0
/* 80D54B6C  41 82 00 70 */	beq lbl_80D54BDC
/* 80D54B70  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D54B74  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D54B78  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D54B7C  7C 04 00 00 */	cmpw r4, r0
/* 80D54B80  41 82 00 1C */	beq lbl_80D54B9C
/* 80D54B84  40 80 00 08 */	bge lbl_80D54B8C
/* 80D54B88  48 00 00 54 */	b lbl_80D54BDC
lbl_80D54B8C:
/* 80D54B8C  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D54B90  7C 04 00 00 */	cmpw r4, r0
/* 80D54B94  40 80 00 48 */	bge lbl_80D54BDC
/* 80D54B98  48 00 00 28 */	b lbl_80D54BC0
lbl_80D54B9C:
/* 80D54B9C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54BA0  7F 64 DB 78 */	mr r4, r27
/* 80D54BA4  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80D54BA8  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80D54BAC  38 C0 00 00 */	li r6, 0
/* 80D54BB0  4B 2E DD 64 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D54BB4  38 00 00 00 */	li r0, 0
/* 80D54BB8  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D54BBC  48 00 00 20 */	b lbl_80D54BDC
lbl_80D54BC0:
/* 80D54BC0  7F 63 DB 78 */	mr r3, r27
/* 80D54BC4  48 00 03 09 */	bl initBaseMtx__13daTagTWGate_cFv
/* 80D54BC8  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D54BCC  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D54BD0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D54BD4  38 00 00 01 */	li r0, 1
/* 80D54BD8  98 1B 05 E0 */	stb r0, 0x5e0(r27)
lbl_80D54BDC:
/* 80D54BDC  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D54BE0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D54BE4  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D54BE8  7C 04 00 00 */	cmpw r4, r0
/* 80D54BEC  41 82 00 80 */	beq lbl_80D54C6C
/* 80D54BF0  40 80 00 14 */	bge lbl_80D54C04
/* 80D54BF4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D54BF8  7C 04 00 00 */	cmpw r4, r0
/* 80D54BFC  40 80 00 18 */	bge lbl_80D54C14
/* 80D54C00  48 00 02 50 */	b lbl_80D54E50
lbl_80D54C04:
/* 80D54C04  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D54C08  7C 04 00 00 */	cmpw r4, r0
/* 80D54C0C  40 80 02 44 */	bge lbl_80D54E50
/* 80D54C10  48 00 01 C4 */	b lbl_80D54DD4
lbl_80D54C14:
/* 80D54C14  7F 63 DB 78 */	mr r3, r27
/* 80D54C18  48 00 03 71 */	bl downloadModels__13daTagTWGate_cFv
/* 80D54C1C  2C 03 00 01 */	cmpwi r3, 1
/* 80D54C20  40 82 00 14 */	bne lbl_80D54C34
/* 80D54C24  7F A3 EB 78 */	mr r3, r29
/* 80D54C28  7F 84 E3 78 */	mr r4, r28
/* 80D54C2C  4B 2F 35 50 */	b cutEnd__16dEvent_manager_cFi
/* 80D54C30  48 00 02 20 */	b lbl_80D54E50
lbl_80D54C34:
/* 80D54C34  2C 03 FF FF */	cmpwi r3, -1
/* 80D54C38  40 82 02 18 */	bne lbl_80D54E50
/* 80D54C3C  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D54C40  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D54C44  38 1E 00 04 */	addi r0, r30, 4
/* 80D54C48  7C C0 1A 14 */	add r6, r0, r3
/* 80D54C4C  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D54C50  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D54C54  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D54C58  7C 05 07 74 */	extsb r5, r0
/* 80D54C5C  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D54C60  7C 06 07 74 */	extsb r6, r0
/* 80D54C64  4B 2D 88 F0 */	b dComIfGp_setNextStage__FPCcsScSc
/* 80D54C68  48 00 01 E8 */	b lbl_80D54E50
lbl_80D54C6C:
/* 80D54C6C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54C70  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D54C74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D54C78  41 82 00 34 */	beq lbl_80D54CAC
/* 80D54C7C  4B 2E DD 2C */	b onSkipFade__14dEvt_control_cFv
/* 80D54C80  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D54C84  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D54C88  38 1E 00 04 */	addi r0, r30, 4
/* 80D54C8C  7C C0 1A 14 */	add r6, r0, r3
/* 80D54C90  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D54C94  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D54C98  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D54C9C  7C 05 07 74 */	extsb r5, r0
/* 80D54CA0  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D54CA4  7C 06 07 74 */	extsb r6, r0
/* 80D54CA8  4B 2D 88 AC */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D54CAC:
/* 80D54CAC  88 7B 05 E1 */	lbz r3, 0x5e1(r27)
/* 80D54CB0  38 03 00 01 */	addi r0, r3, 1
/* 80D54CB4  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D54CB8  28 03 00 4A */	cmplwi r3, 0x4a
/* 80D54CBC  40 82 01 94 */	bne lbl_80D54E50
/* 80D54CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D54CC8  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80D54CCC  38 61 00 24 */	addi r3, r1, 0x24
/* 80D54CD0  38 80 00 00 */	li r4, 0
/* 80D54CD4  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80D54CD8  3C A5 00 01 */	addis r5, r5, 1
/* 80D54CDC  38 05 80 00 */	addi r0, r5, -32768
/* 80D54CE0  7C 05 07 34 */	extsh r5, r0
/* 80D54CE4  38 C0 00 00 */	li r6, 0
/* 80D54CE8  4B 51 27 0C */	b __ct__5csXyzFsss
/* 80D54CEC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D54CF0  4B 2B 80 74 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D54CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D54CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D54CFC  A8 81 00 26 */	lha r4, 0x26(r1)
/* 80D54D00  4B 2B 77 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80D54D04  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D54D08  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80D54D0C  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80D54D10  4B 2B 80 8C */	b transM__14mDoMtx_stack_cFfff
/* 80D54D14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D54D18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D54D1C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D54D20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D54D24  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D54D28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D54D2C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D54D30  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D54D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D54D3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D54D40  38 80 00 00 */	li r4, 0
/* 80D54D44  90 81 00 08 */	stw r4, 8(r1)
/* 80D54D48  38 00 FF FF */	li r0, -1
/* 80D54D4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D54D50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D54D54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D54D58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D54D5C  38 80 00 00 */	li r4, 0
/* 80D54D60  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086C5@ha */
/* 80D54D64  38 A5 86 C5 */	addi r5, r5, 0x86C5 /* 0x000086C5@l */
/* 80D54D68  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80D54D6C  38 E0 00 00 */	li r7, 0
/* 80D54D70  39 01 00 24 */	addi r8, r1, 0x24
/* 80D54D74  39 20 00 00 */	li r9, 0
/* 80D54D78  39 40 00 FF */	li r10, 0xff
/* 80D54D7C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D54D80  4B 2F 7D 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D54D84  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080277@ha */
/* 80D54D88  38 03 02 77 */	addi r0, r3, 0x0277 /* 0x00080277@l */
/* 80D54D8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D54D90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D54D94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D54D98  80 63 00 00 */	lwz r3, 0(r3)
/* 80D54D9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80D54DA0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D54DA4  38 C0 00 00 */	li r6, 0
/* 80D54DA8  38 E0 00 00 */	li r7, 0
/* 80D54DAC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D54DB0  FC 40 08 90 */	fmr f2, f1
/* 80D54DB4  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80D54DB8  FC 80 18 90 */	fmr f4, f3
/* 80D54DBC  39 00 00 00 */	li r8, 0
/* 80D54DC0  4B 55 6B C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D54DC4  7F A3 EB 78 */	mr r3, r29
/* 80D54DC8  7F 84 E3 78 */	mr r4, r28
/* 80D54DCC  4B 2F 33 B0 */	b cutEnd__16dEvent_manager_cFi
/* 80D54DD0  48 00 00 80 */	b lbl_80D54E50
lbl_80D54DD4:
/* 80D54DD4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54DD8  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D54DDC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D54DE0  41 82 00 34 */	beq lbl_80D54E14
/* 80D54DE4  4B 2E DB C4 */	b onSkipFade__14dEvt_control_cFv
/* 80D54DE8  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D54DEC  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D54DF0  38 1E 00 04 */	addi r0, r30, 4
/* 80D54DF4  7C C0 1A 14 */	add r6, r0, r3
/* 80D54DF8  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D54DFC  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D54E00  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D54E04  7C 05 07 74 */	extsb r5, r0
/* 80D54E08  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D54E0C  7C 06 07 74 */	extsb r6, r0
/* 80D54E10  4B 2D 87 44 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D54E14:
/* 80D54E14  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D54E18  38 80 00 01 */	li r4, 1
/* 80D54E1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D54E20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D54E24  40 82 00 18 */	bne lbl_80D54E3C
/* 80D54E28  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D54E2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D54E30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D54E34  41 82 00 08 */	beq lbl_80D54E3C
/* 80D54E38  38 80 00 00 */	li r4, 0
lbl_80D54E3C:
/* 80D54E3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D54E40  41 82 00 10 */	beq lbl_80D54E50
/* 80D54E44  7F A3 EB 78 */	mr r3, r29
/* 80D54E48  7F 84 E3 78 */	mr r4, r28
/* 80D54E4C  4B 2F 33 30 */	b cutEnd__16dEvent_manager_cFi
lbl_80D54E50:
/* 80D54E50  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80D54E54  28 00 00 02 */	cmplwi r0, 2
/* 80D54E58  40 82 00 5C */	bne lbl_80D54EB4
/* 80D54E5C  A8 9B 05 DC */	lha r4, 0x5dc(r27)
/* 80D54E60  2C 04 FF FF */	cmpwi r4, -1
/* 80D54E64  41 82 00 50 */	beq lbl_80D54EB4
/* 80D54E68  7F A3 EB 78 */	mr r3, r29
/* 80D54E6C  4B 2F 2C 0C */	b endCheck__16dEvent_manager_cFs
/* 80D54E70  2C 03 00 00 */	cmpwi r3, 0
/* 80D54E74  41 82 00 40 */	beq lbl_80D54EB4
/* 80D54E78  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54E7C  4B 2E D5 EC */	b reset__14dEvt_control_cFv
/* 80D54E80  38 00 00 00 */	li r0, 0
/* 80D54E84  98 1B 05 E0 */	stb r0, 0x5e0(r27)
/* 80D54E88  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80D54E8C  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80D54E90  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D54E94  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D54E98  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D54E9C  7C 00 22 14 */	add r0, r0, r4
/* 80D54EA0  90 1B 05 84 */	stw r0, 0x584(r27)
/* 80D54EA4  7F 63 DB 78 */	mr r3, r27
/* 80D54EA8  81 9B 05 84 */	lwz r12, 0x584(r27)
/* 80D54EAC  4B 60 D1 D8 */	b __ptmf_scall
/* 80D54EB0  60 00 00 00 */	nop 
lbl_80D54EB4:
/* 80D54EB4  39 61 00 50 */	addi r11, r1, 0x50
/* 80D54EB8  4B 60 D3 64 */	b _restgpr_26
/* 80D54EBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D54EC0  7C 08 03 A6 */	mtlr r0
/* 80D54EC4  38 21 00 50 */	addi r1, r1, 0x50
/* 80D54EC8  4E 80 00 20 */	blr 
