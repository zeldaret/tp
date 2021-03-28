lbl_806D29E4:
/* 806D29E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D29E8  7C 08 02 A6 */	mflr r0
/* 806D29EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D29F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806D29F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806D29F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D29FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806D2A00  7C 7E 1B 78 */	mr r30, r3
/* 806D2A04  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D2A08  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D2A0C  80 1E 0A 3C */	lwz r0, 0xa3c(r30)
/* 806D2A10  2C 00 00 00 */	cmpwi r0, 0
/* 806D2A14  40 82 01 44 */	bne lbl_806D2B58
/* 806D2A18  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D2A1C  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D2A20  38 80 00 06 */	li r4, 6
/* 806D2A24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D2A28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D2A2C  3C A5 00 02 */	addis r5, r5, 2
/* 806D2A30  38 C0 00 80 */	li r6, 0x80
/* 806D2A34  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D2A38  4B 96 98 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D2A3C  7C 64 1B 78 */	mr r4, r3
/* 806D2A40  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D2A44  38 A0 00 02 */	li r5, 2
/* 806D2A48  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D2A4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D2A50  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D2A54  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D2A58  4B 93 E4 18 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D2A5C  38 00 00 00 */	li r0, 0
/* 806D2A60  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806D2A64  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806D2A68  D0 1E 0A 44 */	stfs f0, 0xa44(r30)
/* 806D2A6C  38 00 00 01 */	li r0, 1
/* 806D2A70  98 1E 0A 69 */	stb r0, 0xa69(r30)
/* 806D2A74  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D2A78  4B B9 4F 14 */	b cM_rndFX__Ff
/* 806D2A7C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806D2A80  EC 00 08 2A */	fadds f0, f0, f1
/* 806D2A84  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806D2A88  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D2A8C  4B B9 4F 00 */	b cM_rndFX__Ff
/* 806D2A90  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806D2A94  EC 00 08 2A */	fadds f0, f0, f1
/* 806D2A98  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806D2A9C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D2AA0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806D2AA4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D2AA8  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 806D2AAC  38 00 00 00 */	li r0, 0
/* 806D2AB0  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D2AB4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D2AB8  4B B9 4E 9C */	b cM_rndF__Ff
/* 806D2ABC  FC 00 08 1E */	fctiwz f0, f1
/* 806D2AC0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806D2AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D2AC8  B0 1E 0A 5E */	sth r0, 0xa5e(r30)
/* 806D2ACC  38 00 73 00 */	li r0, 0x7300
/* 806D2AD0  B0 1E 0A 1C */	sth r0, 0xa1c(r30)
/* 806D2AD4  38 00 00 00 */	li r0, 0
/* 806D2AD8  B0 1E 0A 20 */	sth r0, 0xa20(r30)
/* 806D2ADC  90 1E 08 30 */	stw r0, 0x830(r30)
/* 806D2AE0  90 1E 08 18 */	stw r0, 0x818(r30)
/* 806D2AE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044C@ha */
/* 806D2AE8  38 03 04 4C */	addi r0, r3, 0x044C /* 0x0007044C@l */
/* 806D2AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D2AF0  38 7E 09 6C */	addi r3, r30, 0x96c
/* 806D2AF4  38 81 00 0C */	addi r4, r1, 0xc
/* 806D2AF8  38 A0 00 00 */	li r5, 0
/* 806D2AFC  38 C0 FF FF */	li r6, -1
/* 806D2B00  81 9E 09 6C */	lwz r12, 0x96c(r30)
/* 806D2B04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D2B08  7D 89 03 A6 */	mtctr r12
/* 806D2B0C  4E 80 04 21 */	bctrl 
/* 806D2B10  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 806D2B14  28 00 00 02 */	cmplwi r0, 2
/* 806D2B18  40 82 00 24 */	bne lbl_806D2B3C
/* 806D2B1C  88 9E 0A 70 */	lbz r4, 0xa70(r30)
/* 806D2B20  28 04 00 FF */	cmplwi r4, 0xff
/* 806D2B24  41 82 00 18 */	beq lbl_806D2B3C
/* 806D2B28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D2B2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D2B30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D2B34  7C 05 07 74 */	extsb r5, r0
/* 806D2B38  4B 96 26 C8 */	b onSwitch__10dSv_info_cFii
lbl_806D2B3C:
/* 806D2B3C  88 7E 0A 74 */	lbz r3, 0xa74(r30)
/* 806D2B40  38 03 FF FF */	addi r0, r3, -1
/* 806D2B44  98 1E 0A 74 */	stb r0, 0xa74(r30)
/* 806D2B48  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 806D2B4C  38 03 00 01 */	addi r0, r3, 1
/* 806D2B50  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D2B54  48 00 02 60 */	b lbl_806D2DB4
lbl_806D2B58:
/* 806D2B58  2C 00 FF FF */	cmpwi r0, -1
/* 806D2B5C  41 82 02 58 */	beq lbl_806D2DB4
/* 806D2B60  C3 FE 04 FC */	lfs f31, 0x4fc(r30)
/* 806D2B64  38 7E 0A 48 */	addi r3, r30, 0xa48
/* 806D2B68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806D2B6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D2B70  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806D2B74  4B B9 CE C8 */	b cLib_addCalc2__FPffff
/* 806D2B78  A8 1E 0A 1E */	lha r0, 0xa1e(r30)
/* 806D2B7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D2B80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806D2B84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806D2B88  7C 23 04 2E */	lfsx f1, r3, r0
/* 806D2B8C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806D2B90  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D2B94  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806D2B98  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806D2B9C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 806D2BA0  EC 01 00 2A */	fadds f0, f1, f0
/* 806D2BA4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806D2BA8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 806D2BAC  C0 3E 05 34 */	lfs f1, 0x534(r30)
/* 806D2BB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806D2BB4  40 80 00 08 */	bge lbl_806D2BBC
/* 806D2BB8  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
lbl_806D2BBC:
/* 806D2BBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806D2BC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806D2BC4  A8 1E 0A 1E */	lha r0, 0xa1e(r30)
/* 806D2BC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806D2BCC  7C 63 02 14 */	add r3, r3, r0
/* 806D2BD0  C0 23 00 04 */	lfs f1, 4(r3)
/* 806D2BD4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806D2BD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D2BDC  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806D2BE0  7F C3 F3 78 */	mr r3, r30
/* 806D2BE4  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 806D2BE8  4B 94 7A 78 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 806D2BEC  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806D2BF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D2BF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D2BF8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D2BFC  4B 9A 3E B0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D2C00  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 806D2C04  28 00 00 03 */	cmplwi r0, 3
/* 806D2C08  41 82 00 78 */	beq lbl_806D2C80
/* 806D2C0C  A8 1E 0A 5C */	lha r0, 0xa5c(r30)
/* 806D2C10  2C 00 00 00 */	cmpwi r0, 0
/* 806D2C14  40 82 00 6C */	bne lbl_806D2C80
/* 806D2C18  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D2C1C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 806D2C20  40 81 00 60 */	ble lbl_806D2C80
/* 806D2C24  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 806D2C28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806D2C2C  40 80 00 54 */	bge lbl_806D2C80
/* 806D2C30  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D2C34  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D2C38  38 80 00 07 */	li r4, 7
/* 806D2C3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D2C40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D2C44  3C A5 00 02 */	addis r5, r5, 2
/* 806D2C48  38 C0 00 80 */	li r6, 0x80
/* 806D2C4C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D2C50  4B 96 96 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D2C54  7C 64 1B 78 */	mr r4, r3
/* 806D2C58  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D2C5C  38 A0 00 02 */	li r5, 2
/* 806D2C60  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806D2C64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D2C68  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D2C6C  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D2C70  4B 93 E2 00 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D2C74  A8 7E 0A 5C */	lha r3, 0xa5c(r30)
/* 806D2C78  38 03 00 01 */	addi r0, r3, 1
/* 806D2C7C  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
lbl_806D2C80:
/* 806D2C80  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 806D2C84  A8 9E 0A 1C */	lha r4, 0xa1c(r30)
/* 806D2C88  38 A0 00 08 */	li r5, 8
/* 806D2C8C  38 C0 10 00 */	li r6, 0x1000
/* 806D2C90  38 E0 04 00 */	li r7, 0x400
/* 806D2C94  4B B9 D8 AC */	b cLib_addCalcAngleS__FPsssss
/* 806D2C98  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 806D2C9C  A8 9E 0A 20 */	lha r4, 0xa20(r30)
/* 806D2CA0  38 A0 00 08 */	li r5, 8
/* 806D2CA4  38 C0 10 00 */	li r6, 0x1000
/* 806D2CA8  38 E0 04 00 */	li r7, 0x400
/* 806D2CAC  4B B9 D8 94 */	b cLib_addCalcAngleS__FPsssss
/* 806D2CB0  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 806D2CB4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D2CB8  41 82 00 FC */	beq lbl_806D2DB4
/* 806D2CBC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806D2CC0  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 806D2CC4  4C 40 13 82 */	cror 2, 0, 2
/* 806D2CC8  40 82 00 EC */	bne lbl_806D2DB4
/* 806D2CCC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806D2CD0  FC 00 F8 50 */	fneg f0, f31
/* 806D2CD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806D2CD8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806D2CDC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806D2CE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D2CE4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806D2CE8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806D2CEC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 806D2CF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D2CF4  40 80 00 C0 */	bge lbl_806D2DB4
/* 806D2CF8  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 806D2CFC  D0 5E 05 2C */	stfs f2, 0x52c(r30)
/* 806D2D00  A8 7E 0A 5E */	lha r3, 0xa5e(r30)
/* 806D2D04  2C 03 00 00 */	cmpwi r3, 0
/* 806D2D08  41 82 00 10 */	beq lbl_806D2D18
/* 806D2D0C  38 03 FF FF */	addi r0, r3, -1
/* 806D2D10  B0 1E 0A 5E */	sth r0, 0xa5e(r30)
/* 806D2D14  48 00 00 A0 */	b lbl_806D2DB4
lbl_806D2D18:
/* 806D2D18  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 806D2D1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D2D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D2D24  4C 40 13 82 */	cror 2, 0, 2
/* 806D2D28  40 82 00 8C */	bne lbl_806D2DB4
/* 806D2D2C  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D2D30  88 03 7F 1E */	lbz r0, struct_806D7F1C+0x2@l(r3)
/* 806D2D34  28 00 00 00 */	cmplwi r0, 0
/* 806D2D38  40 82 00 7C */	bne lbl_806D2DB4
/* 806D2D3C  7F C3 F3 78 */	mr r3, r30
/* 806D2D40  4B FF FB 5D */	bl setDeathLightEffect__8daE_GM_cFv
/* 806D2D44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D2D48  7C 03 07 74 */	extsb r3, r0
/* 806D2D4C  4B 95 A3 20 */	b dComIfGp_getReverb__Fi
/* 806D2D50  7C 67 1B 78 */	mr r7, r3
/* 806D2D54  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 806D2D58  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 806D2D5C  90 01 00 08 */	stw r0, 8(r1)
/* 806D2D60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806D2D64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806D2D68  80 63 00 00 */	lwz r3, 0(r3)
/* 806D2D6C  38 81 00 08 */	addi r4, r1, 8
/* 806D2D70  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D2D74  38 C0 00 00 */	li r6, 0
/* 806D2D78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D2D7C  FC 40 08 90 */	fmr f2, f1
/* 806D2D80  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806D2D84  FC 80 18 90 */	fmr f4, f3
/* 806D2D88  39 00 00 00 */	li r8, 0
/* 806D2D8C  4B BD 8B F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D2D90  7F C3 F3 78 */	mr r3, r30
/* 806D2D94  4B FF F4 11 */	bl create_item__8daE_GM_cFv
/* 806D2D98  7F C3 F3 78 */	mr r3, r30
/* 806D2D9C  4B 94 6E E0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806D2DA0  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D2DA4  38 83 7F 1E */	addi r4, r3, struct_806D7F1C+0x2@l
/* 806D2DA8  88 64 00 00 */	lbz r3, 0(r4)
/* 806D2DAC  38 03 00 01 */	addi r0, r3, 1
/* 806D2DB0  98 04 00 00 */	stb r0, 0(r4)
lbl_806D2DB4:
/* 806D2DB4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806D2DB8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806D2DBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D2DC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806D2DC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D2DC8  7C 08 03 A6 */	mtlr r0
/* 806D2DCC  38 21 00 30 */	addi r1, r1, 0x30
/* 806D2DD0  4E 80 00 20 */	blr 
