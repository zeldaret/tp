lbl_80D511C8:
/* 80D511C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D511CC  7C 08 02 A6 */	mflr r0
/* 80D511D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D511D4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D511D8  4B 61 0F ED */	bl _savegpr_23
/* 80D511DC  7C 7F 1B 78 */	mr r31, r3
/* 80D511E0  3C 60 80 D5 */	lis r3, lit_3698@ha /* 0x80D51AD4@ha */
/* 80D511E4  3B A3 1A D4 */	addi r29, r3, lit_3698@l /* 0x80D51AD4@l */
/* 80D511E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D511EC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D511F0  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D511F4  28 00 00 00 */	cmplwi r0, 0
/* 80D511F8  41 82 01 8C */	beq lbl_80D51384
/* 80D511FC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D51200  28 00 00 01 */	cmplwi r0, 1
/* 80D51204  41 82 01 80 */	beq lbl_80D51384
/* 80D51208  3B 5E 4F F8 */	addi r26, r30, 0x4ff8
/* 80D5120C  7F 43 D3 78 */	mr r3, r26
/* 80D51210  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D51B50@ha */
/* 80D51214  38 84 1B 50 */	addi r4, r4, l_arcName@l /* 0x80D51B50@l */
/* 80D51218  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5121C  38 A0 00 00 */	li r5, 0
/* 80D51220  38 C0 00 00 */	li r6, 0
/* 80D51224  4B 2F 68 F9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D51228  7C 77 1B 78 */	mr r23, r3
/* 80D5122C  2C 17 FF FF */	cmpwi r23, -1
/* 80D51230  41 82 01 C8 */	beq lbl_80D513F8
/* 80D51234  7F 43 D3 78 */	mr r3, r26
/* 80D51238  7E F9 BB 78 */	mr r25, r23
/* 80D5123C  7E E4 BB 78 */	mr r4, r23
/* 80D51240  4B 2F 6D 1D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D51244  7C 78 1B 78 */	mr r24, r3
/* 80D51248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5124C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D51250  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D51254  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D51258  64 00 80 00 */	oris r0, r0, 0x8000
/* 80D5125C  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80D51260  7F 43 D3 78 */	mr r3, r26
/* 80D51264  7E E4 BB 78 */	mr r4, r23
/* 80D51268  4B 2F 6A E5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D5126C  2C 03 00 00 */	cmpwi r3, 0
/* 80D51270  41 82 00 34 */	beq lbl_80D512A4
/* 80D51274  80 98 00 00 */	lwz r4, 0(r24)
/* 80D51278  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D5127C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D51280  7C 04 00 00 */	cmpw r4, r0
/* 80D51284  41 82 00 10 */	beq lbl_80D51294
/* 80D51288  40 80 00 1C */	bge lbl_80D512A4
/* 80D5128C  48 00 00 18 */	b lbl_80D512A4
/* 80D51290  48 00 00 14 */	b lbl_80D512A4
lbl_80D51294:
/* 80D51294  38 00 00 01 */	li r0, 1
/* 80D51298  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80D5129C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80D512A0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80D512A4:
/* 80D512A4  80 98 00 00 */	lwz r4, 0(r24)
/* 80D512A8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D512AC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D512B0  7C 04 00 00 */	cmpw r4, r0
/* 80D512B4  41 82 00 2C */	beq lbl_80D512E0
/* 80D512B8  40 80 00 80 */	bge lbl_80D51338
/* 80D512BC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D512C0  7C 04 00 00 */	cmpw r4, r0
/* 80D512C4  40 80 00 0C */	bge lbl_80D512D0
/* 80D512C8  48 00 00 70 */	b lbl_80D51338
/* 80D512CC  48 00 00 6C */	b lbl_80D51338
lbl_80D512D0:
/* 80D512D0  7F 43 D3 78 */	mr r3, r26
/* 80D512D4  7F 24 CB 78 */	mr r4, r25
/* 80D512D8  4B 2F 6E A5 */	bl cutEnd__16dEvent_manager_cFi
/* 80D512DC  48 00 00 5C */	b lbl_80D51338
lbl_80D512E0:
/* 80D512E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B7@ha */
/* 80D512E4  38 03 05 B7 */	addi r0, r3, 0x05B7 /* 0x000705B7@l */
/* 80D512E8  90 01 00 08 */	stw r0, 8(r1)
/* 80D512EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D512F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D512F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D512F8  38 81 00 08 */	addi r4, r1, 8
/* 80D512FC  38 BF 05 88 */	addi r5, r31, 0x588
/* 80D51300  38 C0 00 00 */	li r6, 0
/* 80D51304  38 E0 00 00 */	li r7, 0
/* 80D51308  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D5130C  FC 40 08 90 */	fmr f2, f1
/* 80D51310  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80D51314  FC 80 18 90 */	fmr f4, f3
/* 80D51318  39 00 00 00 */	li r8, 0
/* 80D5131C  4B 55 B1 F1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D51320  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80D51324  28 00 00 00 */	cmplwi r0, 0
/* 80D51328  40 82 00 10 */	bne lbl_80D51338
/* 80D5132C  7F 43 D3 78 */	mr r3, r26
/* 80D51330  7F 24 CB 78 */	mr r4, r25
/* 80D51334  4B 2F 6E 49 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D51338:
/* 80D51338  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80D5133C  28 00 00 02 */	cmplwi r0, 2
/* 80D51340  40 82 00 38 */	bne lbl_80D51378
/* 80D51344  A8 9F 05 AE */	lha r4, 0x5ae(r31)
/* 80D51348  2C 04 FF FF */	cmpwi r4, -1
/* 80D5134C  41 82 00 2C */	beq lbl_80D51378
/* 80D51350  7F 43 D3 78 */	mr r3, r26
/* 80D51354  4B 2F 67 25 */	bl endCheck__16dEvent_manager_cFs
/* 80D51358  2C 03 00 00 */	cmpwi r3, 0
/* 80D5135C  41 82 00 1C */	beq lbl_80D51378
/* 80D51360  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D51364  4B 2F 11 05 */	bl reset__14dEvt_control_cFv
/* 80D51368  38 00 FF FF */	li r0, -1
/* 80D5136C  B0 1F 05 AE */	sth r0, 0x5ae(r31)
/* 80D51370  7F E3 FB 78 */	mr r3, r31
/* 80D51374  4B 2C 89 09 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D51378:
/* 80D51378  38 00 00 01 */	li r0, 1
/* 80D5137C  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80D51380  48 00 00 78 */	b lbl_80D513F8
lbl_80D51384:
/* 80D51384  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80D51388  28 00 00 00 */	cmplwi r0, 0
/* 80D5138C  40 82 00 64 */	bne lbl_80D513F0
/* 80D51390  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D51394  80 03 1B 50 */	lwz r0, l_arcName@l(r3)  /* 0x80D51B50@l */
/* 80D51398  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D5139C  3A FE 4F F8 */	addi r23, r30, 0x4ff8
/* 80D513A0  7E E3 BB 78 */	mr r3, r23
/* 80D513A4  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D513A8  4B 2F 54 59 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D513AC  7E E3 BB 78 */	mr r3, r23
/* 80D513B0  7F E4 FB 78 */	mr r4, r31
/* 80D513B4  80 BF 05 9C */	lwz r5, 0x59c(r31)
/* 80D513B8  38 C0 00 FF */	li r6, 0xff
/* 80D513BC  4B 2F 63 9D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D513C0  B0 7F 05 AE */	sth r3, 0x5ae(r31)
/* 80D513C4  7F E3 FB 78 */	mr r3, r31
/* 80D513C8  A8 9F 05 AE */	lha r4, 0x5ae(r31)
/* 80D513CC  38 A0 00 FF */	li r5, 0xff
/* 80D513D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D513D4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D513D8  38 E0 00 00 */	li r7, 0
/* 80D513DC  39 00 00 01 */	li r8, 1
/* 80D513E0  4B 2C A2 9D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D513E4  38 00 00 01 */	li r0, 1
/* 80D513E8  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80D513EC  48 00 00 0C */	b lbl_80D513F8
lbl_80D513F0:
/* 80D513F0  7F E3 FB 78 */	mr r3, r31
/* 80D513F4  4B 2C 88 89 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D513F8:
/* 80D513F8  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80D513FC  28 00 00 00 */	cmplwi r0, 0
/* 80D51400  41 82 02 0C */	beq lbl_80D5160C
/* 80D51404  7F E3 FB 78 */	mr r3, r31
/* 80D51408  48 00 02 21 */	bl calcFly__14daTagLv7Gate_cFv
/* 80D5140C  3B 40 00 00 */	li r26, 0
/* 80D51410  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D51414  83 23 00 14 */	lwz r25, 0x14(r3)
/* 80D51418  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D5141C  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D51420  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51424  38 80 00 05 */	li r4, 5
/* 80D51428  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5142C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D51430  3F 05 00 02 */	addis r24, r5, 2
/* 80D51434  3B 18 C2 F8 */	addi r24, r24, -15624
/* 80D51438  7F 05 C3 78 */	mr r5, r24
/* 80D5143C  38 C0 00 80 */	li r6, 0x80
/* 80D51440  4B 2E AE AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D51444  7C 7B 1B 78 */	mr r27, r3
/* 80D51448  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D5144C  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D51450  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51454  38 80 00 06 */	li r4, 6
/* 80D51458  7F 05 C3 78 */	mr r5, r24
/* 80D5145C  38 C0 00 80 */	li r6, 0x80
/* 80D51460  4B 2E AE 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D51464  7C 7C 1B 78 */	mr r28, r3
/* 80D51468  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D5146C  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D51470  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51474  38 80 00 07 */	li r4, 7
/* 80D51478  7F 05 C3 78 */	mr r5, r24
/* 80D5147C  38 C0 00 80 */	li r6, 0x80
/* 80D51480  4B 2E AE 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D51484  7C 7E 1B 78 */	mr r30, r3
/* 80D51488  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D51B50@ha */
/* 80D5148C  38 63 1B 50 */	addi r3, r3, l_arcName@l /* 0x80D51B50@l */
/* 80D51490  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51494  38 80 00 08 */	li r4, 8
/* 80D51498  7F 05 C3 78 */	mr r5, r24
/* 80D5149C  38 C0 00 80 */	li r6, 0x80
/* 80D514A0  4B 2E AE 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D514A4  7C 77 1B 78 */	mr r23, r3
/* 80D514A8  3B 00 00 02 */	li r24, 2
/* 80D514AC  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D514B0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D514B4  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 80D514B8  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D514BC  4B 2B BF 6D */	bl play__14mDoExt_baseAnmFv
/* 80D514C0  7C 19 F0 40 */	cmplw r25, r30
/* 80D514C4  40 82 00 30 */	bne lbl_80D514F4
/* 80D514C8  A0 7F 05 AC */	lhz r3, 0x5ac(r31)
/* 80D514CC  28 03 00 96 */	cmplwi r3, 0x96
/* 80D514D0  40 80 00 A0 */	bge lbl_80D51570
/* 80D514D4  38 03 00 01 */	addi r0, r3, 1
/* 80D514D8  B0 1F 05 AC */	sth r0, 0x5ac(r31)
/* 80D514DC  A0 1F 05 AC */	lhz r0, 0x5ac(r31)
/* 80D514E0  28 00 00 96 */	cmplwi r0, 0x96
/* 80D514E4  41 80 00 8C */	blt lbl_80D51570
/* 80D514E8  7E FA BB 78 */	mr r26, r23
/* 80D514EC  3B 00 00 00 */	li r24, 0
/* 80D514F0  48 00 00 80 */	b lbl_80D51570
lbl_80D514F4:
/* 80D514F4  7C 19 D8 40 */	cmplw r25, r27
/* 80D514F8  40 82 00 24 */	bne lbl_80D5151C
/* 80D514FC  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D51500  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D51504  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80D51508  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5150C  40 81 00 64 */	ble lbl_80D51570
/* 80D51510  7F 9A E3 78 */	mr r26, r28
/* 80D51514  3B 00 00 00 */	li r24, 0
/* 80D51518  48 00 00 58 */	b lbl_80D51570
lbl_80D5151C:
/* 80D5151C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D51520  38 80 00 01 */	li r4, 1
/* 80D51524  88 03 00 05 */	lbz r0, 5(r3)
/* 80D51528  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5152C  40 82 00 18 */	bne lbl_80D51544
/* 80D51530  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80D51534  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D51538  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D5153C  41 82 00 08 */	beq lbl_80D51544
/* 80D51540  38 80 00 00 */	li r4, 0
lbl_80D51544:
/* 80D51544  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D51548  41 82 00 28 */	beq lbl_80D51570
/* 80D5154C  7C 19 E0 40 */	cmplw r25, r28
/* 80D51550  40 82 00 10 */	bne lbl_80D51560
/* 80D51554  7F DA F3 78 */	mr r26, r30
/* 80D51558  3B 00 00 02 */	li r24, 2
/* 80D5155C  48 00 00 14 */	b lbl_80D51570
lbl_80D51560:
/* 80D51560  7C 19 B8 40 */	cmplw r25, r23
/* 80D51564  40 82 00 0C */	bne lbl_80D51570
/* 80D51568  7F 7A DB 78 */	mr r26, r27
/* 80D5156C  3B 00 00 02 */	li r24, 2
lbl_80D51570:
/* 80D51570  28 1A 00 00 */	cmplwi r26, 0
/* 80D51574  41 82 00 28 */	beq lbl_80D5159C
/* 80D51578  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D5157C  7F 44 D3 78 */	mr r4, r26
/* 80D51580  38 A0 00 01 */	li r5, 1
/* 80D51584  7F 06 C3 78 */	mr r6, r24
/* 80D51588  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80D5158C  38 E0 00 00 */	li r7, 0
/* 80D51590  39 00 FF FF */	li r8, -1
/* 80D51594  39 20 00 01 */	li r9, 1
/* 80D51598  4B 2B C2 45 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
lbl_80D5159C:
/* 80D5159C  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80D515A0  28 00 00 00 */	cmplwi r0, 0
/* 80D515A4  41 82 00 68 */	beq lbl_80D5160C
/* 80D515A8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80D515AC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80D515B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D515B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D515B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D515BC  38 7F 05 88 */	addi r3, r31, 0x588
/* 80D515C0  4B 2B B7 A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D515C4  38 7F 05 94 */	addi r3, r31, 0x594
/* 80D515C8  4B 2B B9 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D515CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D515D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D515D4  38 81 00 0C */	addi r4, r1, 0xc
/* 80D515D8  38 BF 05 88 */	addi r5, r31, 0x588
/* 80D515DC  4B 5F 57 91 */	bl PSMTXMultVec
/* 80D515E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D515E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D515E8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D515EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80D515F0  4B 5F 4E C1 */	bl PSMTXCopy
/* 80D515F4  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80D515F8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D515FC  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 80D51600  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D51604  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80D51608  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80D5160C:
/* 80D5160C  38 60 00 01 */	li r3, 1
/* 80D51610  39 61 00 40 */	addi r11, r1, 0x40
/* 80D51614  4B 61 0B FD */	bl _restgpr_23
/* 80D51618  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D5161C  7C 08 03 A6 */	mtlr r0
/* 80D51620  38 21 00 40 */	addi r1, r1, 0x40
/* 80D51624  4E 80 00 20 */	blr 
