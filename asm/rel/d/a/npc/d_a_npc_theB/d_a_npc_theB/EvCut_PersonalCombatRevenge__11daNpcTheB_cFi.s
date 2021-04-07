lbl_80AFF888:
/* 80AFF888  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AFF88C  7C 08 02 A6 */	mflr r0
/* 80AFF890  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AFF894  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80AFF898  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80AFF89C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFF8A0  4B 86 29 2D */	bl _savegpr_25
/* 80AFF8A4  7C 7D 1B 78 */	mr r29, r3
/* 80AFF8A8  7C 99 23 78 */	mr r25, r4
/* 80AFF8AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFF8B0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFF8B4  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80AFF8B8  7F 83 E3 78 */	mr r3, r28
/* 80AFF8BC  4B 54 86 A1 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80AFF8C0  7C 7F 1B 78 */	mr r31, r3
/* 80AFF8C4  7F 83 E3 78 */	mr r3, r28
/* 80AFF8C8  7F 24 CB 78 */	mr r4, r25
/* 80AFF8CC  4B 54 84 81 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AFF8D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF8D4  41 82 01 50 */	beq lbl_80AFFA24
/* 80AFF8D8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFF8DC  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80AFF8E0  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80AFF8E4  7C 04 00 00 */	cmpw r4, r0
/* 80AFF8E8  41 82 01 04 */	beq lbl_80AFF9EC
/* 80AFF8EC  40 80 01 38 */	bge lbl_80AFFA24
/* 80AFF8F0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80AFF8F4  7C 04 00 00 */	cmpw r4, r0
/* 80AFF8F8  40 80 00 0C */	bge lbl_80AFF904
/* 80AFF8FC  48 00 01 28 */	b lbl_80AFFA24
/* 80AFF900  48 00 01 24 */	b lbl_80AFFA24
lbl_80AFF904:
/* 80AFF904  7F A3 EB 78 */	mr r3, r29
/* 80AFF908  38 80 00 05 */	li r4, 5
/* 80AFF90C  38 A0 00 00 */	li r5, 0
/* 80AFF910  4B 65 49 91 */	bl getEvtAreaTagP__8daNpcF_cFii
/* 80AFF914  7C 7B 1B 78 */	mr r27, r3
/* 80AFF918  7F 83 E3 78 */	mr r3, r28
/* 80AFF91C  7F 24 CB 78 */	mr r4, r25
/* 80AFF920  3C A0 80 B0 */	lis r5, d_a_npc_theB__stringBase0@ha /* 0x80B00FA0@ha */
/* 80AFF924  38 A5 0F A0 */	addi r5, r5, d_a_npc_theB__stringBase0@l /* 0x80B00FA0@l */
/* 80AFF928  38 A5 00 7E */	addi r5, r5, 0x7e
/* 80AFF92C  38 C0 00 01 */	li r6, 1
/* 80AFF930  4B 54 87 BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AFF934  7C 7A 1B 78 */	mr r26, r3
/* 80AFF938  7F 83 E3 78 */	mr r3, r28
/* 80AFF93C  7F 24 CB 78 */	mr r4, r25
/* 80AFF940  3C A0 80 B0 */	lis r5, d_a_npc_theB__stringBase0@ha /* 0x80B00FA0@ha */
/* 80AFF944  38 A5 0F A0 */	addi r5, r5, d_a_npc_theB__stringBase0@l /* 0x80B00FA0@l */
/* 80AFF948  38 A5 00 82 */	addi r5, r5, 0x82
/* 80AFF94C  38 C0 00 03 */	li r6, 3
/* 80AFF950  4B 54 87 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AFF954  7C 7C 1B 78 */	mr r28, r3
/* 80AFF958  28 1A 00 00 */	cmplwi r26, 0
/* 80AFF95C  41 82 00 74 */	beq lbl_80AFF9D0
/* 80AFF960  28 1C 00 00 */	cmplwi r28, 0
/* 80AFF964  41 82 00 6C */	beq lbl_80AFF9D0
/* 80AFF968  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80AFF96C  90 01 00 08 */	stw r0, 8(r1)
/* 80AFF970  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80AFF974  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80AFF978  38 81 00 08 */	addi r4, r1, 8
/* 80AFF97C  4B 51 9E 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80AFF980  7C 79 1B 78 */	mr r25, r3
/* 80AFF984  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80AFF988  7F 44 D3 78 */	mr r4, r26
/* 80AFF98C  4B 84 7A 11 */	bl PSVECSquareDistance
/* 80AFF990  FF E0 08 90 */	fmr f31, f1
/* 80AFF994  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80AFF998  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80AFF99C  4B 84 7A 01 */	bl PSVECSquareDistance
/* 80AFF9A0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80AFF9A4  40 81 00 2C */	ble lbl_80AFF9D0
/* 80AFF9A8  38 61 00 14 */	addi r3, r1, 0x14
/* 80AFF9AC  38 80 00 00 */	li r4, 0
/* 80AFF9B0  80 1C 00 00 */	lwz r0, 0(r28)
/* 80AFF9B4  7C 05 07 34 */	extsh r5, r0
/* 80AFF9B8  38 C0 00 00 */	li r6, 0
/* 80AFF9BC  4B 76 7A 39 */	bl __ct__5csXyzFsss
/* 80AFF9C0  7F 23 CB 78 */	mr r3, r25
/* 80AFF9C4  7F 44 D3 78 */	mr r4, r26
/* 80AFF9C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80AFF9CC  4B E9 E3 5D */	bl setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz
lbl_80AFF9D0:
/* 80AFF9D0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80AFF9D4  7F A4 EB 78 */	mr r4, r29
/* 80AFF9D8  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80AFF9DC  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80AFF9E0  38 C0 00 00 */	li r6, 0
/* 80AFF9E4  4B 54 2F 31 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80AFF9E8  48 00 00 3C */	b lbl_80AFFA24
lbl_80AFF9EC:
/* 80AFF9EC  7F A3 EB 78 */	mr r3, r29
/* 80AFF9F0  38 80 00 17 */	li r4, 0x17
/* 80AFF9F4  38 A0 00 00 */	li r5, 0
/* 80AFF9F8  4B 65 43 25 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AFF9FC  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFFA00  2C 00 00 02 */	cmpwi r0, 2
/* 80AFFA04  41 82 00 0C */	beq lbl_80AFFA10
/* 80AFFA08  38 00 00 02 */	li r0, 2
/* 80AFFA0C  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFFA10:
/* 80AFFA10  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFFA14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFFA18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFFA1C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AFFA20  4B 65 0C 9D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AFFA24:
/* 80AFFA24  3B 5E 4E C8 */	addi r26, r30, 0x4ec8
/* 80AFFA28  A0 1E 4F A2 */	lhz r0, 0x4fa2(r30)
/* 80AFFA2C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AFFA30  41 82 00 2C */	beq lbl_80AFFA5C
/* 80AFFA34  4B 65 60 B5 */	bl daNpcF_clearMessageTmpBit__Fv
/* 80AFFA38  7F 43 D3 78 */	mr r3, r26
/* 80AFFA3C  4B 54 2F 6D */	bl onSkipFade__14dEvt_control_cFv
/* 80AFFA40  3C 60 80 B0 */	lis r3, d_a_npc_theB__stringBase0@ha /* 0x80B00FA0@ha */
/* 80AFFA44  38 63 0F A0 */	addi r3, r3, d_a_npc_theB__stringBase0@l /* 0x80B00FA0@l */
/* 80AFFA48  38 63 00 76 */	addi r3, r3, 0x76
/* 80AFFA4C  38 80 00 00 */	li r4, 0
/* 80AFFA50  38 A0 00 0D */	li r5, 0xd
/* 80AFFA54  38 C0 00 00 */	li r6, 0
/* 80AFFA58  4B 52 DA FD */	bl dComIfGp_setNextStage__FPCcsScSc
lbl_80AFFA5C:
/* 80AFFA5C  83 3D 09 50 */	lwz r25, 0x950(r29)
/* 80AFFA60  7F A3 EB 78 */	mr r3, r29
/* 80AFFA64  38 81 00 10 */	addi r4, r1, 0x10
/* 80AFFA68  38 A1 00 0C */	addi r5, r1, 0xc
/* 80AFFA6C  7F A6 EB 78 */	mr r6, r29
/* 80AFFA70  38 E0 00 00 */	li r7, 0
/* 80AFFA74  4B 65 3C A5 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AFFA78  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFA7C  41 82 00 58 */	beq lbl_80AFFAD4
/* 80AFFA80  88 1D 09 EB */	lbz r0, 0x9eb(r29)
/* 80AFFA84  28 00 00 00 */	cmplwi r0, 0
/* 80AFFA88  40 82 00 80 */	bne lbl_80AFFB08
/* 80AFFA8C  7F A3 EB 78 */	mr r3, r29
/* 80AFFA90  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80AFFA94  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFFA98  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFFA9C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFAA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFFAA4  7D 89 03 A6 */	mtctr r12
/* 80AFFAA8  4E 80 04 21 */	bctrl 
/* 80AFFAAC  7F A3 EB 78 */	mr r3, r29
/* 80AFFAB0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80AFFAB4  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFFAB8  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFFABC  38 A0 00 00 */	li r5, 0
/* 80AFFAC0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFAC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFFAC8  7D 89 03 A6 */	mtctr r12
/* 80AFFACC  4E 80 04 21 */	bctrl 
/* 80AFFAD0  48 00 00 38 */	b lbl_80AFFB08
lbl_80AFFAD4:
/* 80AFFAD4  2C 19 00 00 */	cmpwi r25, 0
/* 80AFFAD8  41 82 00 30 */	beq lbl_80AFFB08
/* 80AFFADC  88 1D 09 EB */	lbz r0, 0x9eb(r29)
/* 80AFFAE0  28 00 00 00 */	cmplwi r0, 0
/* 80AFFAE4  40 82 00 24 */	bne lbl_80AFFB08
/* 80AFFAE8  7F A3 EB 78 */	mr r3, r29
/* 80AFFAEC  38 80 00 03 */	li r4, 3
/* 80AFFAF0  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFFAF4  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFFAF8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFAFC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFFB00  7D 89 03 A6 */	mtctr r12
/* 80AFFB04  4E 80 04 21 */	bctrl 
lbl_80AFFB08:
/* 80AFFB08  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFFB0C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80AFFB10  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80AFFB14  7C 04 00 00 */	cmpw r4, r0
/* 80AFFB18  41 82 00 4C */	beq lbl_80AFFB64
/* 80AFFB1C  40 80 00 14 */	bge lbl_80AFFB30
/* 80AFFB20  38 03 30 31 */	addi r0, r3, 0x3031
/* 80AFFB24  7C 04 00 00 */	cmpw r4, r0
/* 80AFFB28  40 80 00 18 */	bge lbl_80AFFB40
/* 80AFFB2C  48 00 00 64 */	b lbl_80AFFB90
lbl_80AFFB30:
/* 80AFFB30  38 03 30 34 */	addi r0, r3, 0x3034
/* 80AFFB34  7C 04 00 00 */	cmpw r4, r0
/* 80AFFB38  40 80 00 58 */	bge lbl_80AFFB90
/* 80AFFB3C  48 00 00 4C */	b lbl_80AFFB88
lbl_80AFFB40:
/* 80AFFB40  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFFB44  4B 52 18 15 */	bl fpcEx_SearchByID__FUi
/* 80AFFB48  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFFB4C  3C 60 80 B0 */	lis r3, lit_4248@ha /* 0x80B00DF0@ha */
/* 80AFFB50  C0 03 0D F0 */	lfs f0, lit_4248@l(r3)  /* 0x80B00DF0@l */
/* 80AFFB54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80AFFB58  40 82 00 38 */	bne lbl_80AFFB90
/* 80AFFB5C  38 60 00 01 */	li r3, 1
/* 80AFFB60  48 00 00 34 */	b lbl_80AFFB94
lbl_80AFFB64:
/* 80AFFB64  7F A3 EB 78 */	mr r3, r29
/* 80AFFB68  38 80 00 00 */	li r4, 0
/* 80AFFB6C  38 A0 00 01 */	li r5, 1
/* 80AFFB70  38 C0 00 00 */	li r6, 0
/* 80AFFB74  4B 65 42 11 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AFFB78  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFB7C  41 82 00 14 */	beq lbl_80AFFB90
/* 80AFFB80  38 60 00 01 */	li r3, 1
/* 80AFFB84  48 00 00 10 */	b lbl_80AFFB94
lbl_80AFFB88:
/* 80AFFB88  38 60 00 01 */	li r3, 1
/* 80AFFB8C  48 00 00 08 */	b lbl_80AFFB94
lbl_80AFFB90:
/* 80AFFB90  38 60 00 00 */	li r3, 0
lbl_80AFFB94:
/* 80AFFB94  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80AFFB98  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80AFFB9C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFFBA0  4B 86 26 79 */	bl _restgpr_25
/* 80AFFBA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AFFBA8  7C 08 03 A6 */	mtlr r0
/* 80AFFBAC  38 21 00 50 */	addi r1, r1, 0x50
/* 80AFFBB0  4E 80 00 20 */	blr 
