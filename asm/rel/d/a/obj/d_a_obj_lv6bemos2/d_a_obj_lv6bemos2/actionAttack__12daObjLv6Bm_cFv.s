lbl_80C8082C:
/* 80C8082C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C80830  7C 08 02 A6 */	mflr r0
/* 80C80834  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C80838  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C8083C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C80840  39 61 00 60 */	addi r11, r1, 0x60
/* 80C80844  4B 6E 19 84 */	b _savegpr_24
/* 80C80848  7C 7E 1B 78 */	mr r30, r3
/* 80C8084C  3C 80 80 C8 */	lis r4, l_eye_offset@ha
/* 80C80850  3B E4 1C 2C */	addi r31, r4, l_eye_offset@l
/* 80C80854  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C80858  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80C8085C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80C80860  4B 39 A1 04 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C80864  FF E0 08 90 */	fmr f31, f1
/* 80C80868  7F C3 F3 78 */	mr r3, r30
/* 80C8086C  4B FF F3 91 */	bl getBeamSearchDistance__12daObjLv6Bm_cFv
/* 80C80870  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C80874  40 81 00 10 */	ble lbl_80C80884
/* 80C80878  7F C3 F3 78 */	mr r3, r30
/* 80C8087C  4B FF F3 81 */	bl getBeamSearchDistance__12daObjLv6Bm_cFv
/* 80C80880  FF E0 08 90 */	fmr f31, f1
lbl_80C80884:
/* 80C80884  3B 20 00 01 */	li r25, 1
/* 80C80888  7F C3 F3 78 */	mr r3, r30
/* 80C8088C  4B FF F1 C9 */	bl checkSearchPlayer__12daObjLv6Bm_cFv
/* 80C80890  7C 60 07 74 */	extsb r0, r3
/* 80C80894  2C 00 FF FF */	cmpwi r0, -1
/* 80C80898  40 82 00 14 */	bne lbl_80C808AC
/* 80C8089C  38 7E 0A 11 */	addi r3, r30, 0xa11
/* 80C808A0  48 00 13 2D */	bl func_80C81BCC
/* 80C808A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C808A8  41 82 00 10 */	beq lbl_80C808B8
lbl_80C808AC:
/* 80C808AC  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 80C808B0  28 00 00 00 */	cmplwi r0, 0
/* 80C808B4  41 82 00 08 */	beq lbl_80C808BC
lbl_80C808B8:
/* 80C808B8  3B 20 00 00 */	li r25, 0
lbl_80C808BC:
/* 80C808BC  88 1E 0A 16 */	lbz r0, 0xa16(r30)
/* 80C808C0  2C 00 00 02 */	cmpwi r0, 2
/* 80C808C4  41 82 00 A0 */	beq lbl_80C80964
/* 80C808C8  40 80 00 14 */	bge lbl_80C808DC
/* 80C808CC  2C 00 00 00 */	cmpwi r0, 0
/* 80C808D0  41 82 00 1C */	beq lbl_80C808EC
/* 80C808D4  40 80 00 34 */	bge lbl_80C80908
/* 80C808D8  48 00 02 B0 */	b lbl_80C80B88
lbl_80C808DC:
/* 80C808DC  2C 00 00 04 */	cmpwi r0, 4
/* 80C808E0  41 82 01 7C */	beq lbl_80C80A5C
/* 80C808E4  40 80 02 A4 */	bge lbl_80C80B88
/* 80C808E8  48 00 00 C0 */	b lbl_80C809A8
lbl_80C808EC:
/* 80C808EC  38 7E 0A 12 */	addi r3, r30, 0xa12
/* 80C808F0  48 00 12 DD */	bl func_80C81BCC
/* 80C808F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C808F8  40 82 02 90 */	bne lbl_80C80B88
/* 80C808FC  38 00 00 02 */	li r0, 2
/* 80C80900  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C80904  48 00 02 84 */	b lbl_80C80B88
lbl_80C80908:
/* 80C80908  38 00 00 C8 */	li r0, 0xc8
/* 80C8090C  B0 1E 09 D8 */	sth r0, 0x9d8(r30)
/* 80C80910  7F C3 F3 78 */	mr r3, r30
/* 80C80914  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80C80918  4B 39 9D F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C8091C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80C80920  7C 00 18 50 */	subf r0, r0, r3
/* 80C80924  B0 1E 09 C4 */	sth r0, 0x9c4(r30)
/* 80C80928  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 80C8092C  FC 20 F8 90 */	fmr f1, f31
/* 80C80930  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80C80934  4B 5E FE 0C */	b cLib_chaseF__FPfff
/* 80C80938  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80C8093C  40 82 00 0C */	bne lbl_80C80948
/* 80C80940  38 00 00 03 */	li r0, 3
/* 80C80944  98 1E 0A 16 */	stb r0, 0xa16(r30)
lbl_80C80948:
/* 80C80948  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80C8094C  48 00 12 81 */	bl func_80C81BCC
/* 80C80950  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C80954  40 82 02 34 */	bne lbl_80C80B88
/* 80C80958  38 00 00 02 */	li r0, 2
/* 80C8095C  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C80960  48 00 02 28 */	b lbl_80C80B88
lbl_80C80964:
/* 80C80964  38 00 01 C2 */	li r0, 0x1c2
/* 80C80968  B0 1E 09 D8 */	sth r0, 0x9d8(r30)
/* 80C8096C  7F C3 F3 78 */	mr r3, r30
/* 80C80970  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80C80974  4B 39 9D 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C80978  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80C8097C  7C 00 18 50 */	subf r0, r0, r3
/* 80C80980  B0 1E 09 C4 */	sth r0, 0x9c4(r30)
/* 80C80984  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 80C80988  FC 20 F8 90 */	fmr f1, f31
/* 80C8098C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C80990  4B 5E FD B0 */	b cLib_chaseF__FPfff
/* 80C80994  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80C80998  40 82 01 F0 */	bne lbl_80C80B88
/* 80C8099C  38 00 00 03 */	li r0, 3
/* 80C809A0  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C809A4  48 00 01 E4 */	b lbl_80C80B88
lbl_80C809A8:
/* 80C809A8  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C809AC  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C809B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C809B4  38 80 00 1A */	li r4, 0x1a
/* 80C809B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C809BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C809C0  3F 45 00 02 */	addis r26, r5, 2
/* 80C809C4  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80C809C8  7F 45 D3 78 */	mr r5, r26
/* 80C809CC  38 C0 00 80 */	li r6, 0x80
/* 80C809D0  4B 3B B9 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C809D4  7C 65 1B 78 */	mr r5, r3
/* 80C809D8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C809DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C809E0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C809E4  38 84 00 58 */	addi r4, r4, 0x58
/* 80C809E8  38 C0 00 01 */	li r6, 1
/* 80C809EC  38 E0 00 00 */	li r7, 0
/* 80C809F0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C809F4  39 00 00 00 */	li r8, 0
/* 80C809F8  39 20 FF FF */	li r9, -1
/* 80C809FC  4B 38 CC 40 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C80A00  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C80A04  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C80A08  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80A0C  38 80 00 15 */	li r4, 0x15
/* 80C80A10  7F 45 D3 78 */	mr r5, r26
/* 80C80A14  38 C0 00 80 */	li r6, 0x80
/* 80C80A18  4B 3B B8 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80A1C  7C 65 1B 78 */	mr r5, r3
/* 80C80A20  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C80A24  80 83 00 04 */	lwz r4, 4(r3)
/* 80C80A28  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C80A2C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C80A30  38 C0 00 01 */	li r6, 1
/* 80C80A34  38 E0 00 02 */	li r7, 2
/* 80C80A38  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C80A3C  39 00 00 00 */	li r8, 0
/* 80C80A40  39 20 FF FF */	li r9, -1
/* 80C80A44  4B 38 CC C8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C80A48  38 00 00 FF */	li r0, 0xff
/* 80C80A4C  98 1E 0A 1C */	stb r0, 0xa1c(r30)
/* 80C80A50  38 00 00 04 */	li r0, 4
/* 80C80A54  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C80A58  48 00 01 30 */	b lbl_80C80B88
lbl_80C80A5C:
/* 80C80A5C  3B 60 00 00 */	li r27, 0
/* 80C80A60  38 7E 0A 1C */	addi r3, r30, 0xa1c
/* 80C80A64  38 80 00 00 */	li r4, 0
/* 80C80A68  38 A0 00 1A */	li r5, 0x1a
/* 80C80A6C  4B 5E FB F0 */	b cLib_chaseUC__FPUcUcUc
/* 80C80A70  2C 03 00 01 */	cmpwi r3, 1
/* 80C80A74  40 82 00 38 */	bne lbl_80C80AAC
/* 80C80A78  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C80A7C  38 80 00 01 */	li r4, 1
/* 80C80A80  88 03 00 05 */	lbz r0, 5(r3)
/* 80C80A84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C80A88  40 82 00 18 */	bne lbl_80C80AA0
/* 80C80A8C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C80A90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C80A94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C80A98  41 82 00 08 */	beq lbl_80C80AA0
/* 80C80A9C  38 80 00 00 */	li r4, 0
lbl_80C80AA0:
/* 80C80AA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C80AA4  41 82 00 08 */	beq lbl_80C80AAC
/* 80C80AA8  3B 60 00 01 */	li r27, 1
lbl_80C80AAC:
/* 80C80AAC  38 60 00 00 */	li r3, 0
/* 80C80AB0  38 00 00 04 */	li r0, 4
/* 80C80AB4  7C 09 03 A6 */	mtctr r0
lbl_80C80AB8:
/* 80C80AB8  38 03 0A 40 */	addi r0, r3, 0xa40
/* 80C80ABC  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80C80AC0  28 04 00 00 */	cmplwi r4, 0
/* 80C80AC4  41 82 00 0C */	beq lbl_80C80AD0
/* 80C80AC8  88 1E 0A 1C */	lbz r0, 0xa1c(r30)
/* 80C80ACC  98 04 00 BB */	stb r0, 0xbb(r4)
lbl_80C80AD0:
/* 80C80AD0  38 63 00 04 */	addi r3, r3, 4
/* 80C80AD4  42 00 FF E4 */	bdnz lbl_80C80AB8
/* 80C80AD8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C80ADC  41 82 00 AC */	beq lbl_80C80B88
/* 80C80AE0  38 60 00 00 */	li r3, 0
/* 80C80AE4  38 C0 00 01 */	li r6, 1
/* 80C80AE8  38 80 00 00 */	li r4, 0
/* 80C80AEC  38 00 00 02 */	li r0, 2
/* 80C80AF0  7C 09 03 A6 */	mtctr r0
lbl_80C80AF4:
/* 80C80AF4  38 E3 0A 38 */	addi r7, r3, 0xa38
/* 80C80AF8  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80AFC  28 05 00 00 */	cmplwi r5, 0
/* 80C80B00  41 82 00 28 */	beq lbl_80C80B28
/* 80C80B04  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80B08  60 00 00 01 */	ori r0, r0, 1
/* 80C80B0C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80B10  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C80B14  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80B18  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80B1C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C80B20  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80B24  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80C80B28:
/* 80C80B28  38 63 00 04 */	addi r3, r3, 4
/* 80C80B2C  42 00 FF C8 */	bdnz lbl_80C80AF4
/* 80C80B30  38 60 00 00 */	li r3, 0
/* 80C80B34  38 C0 00 01 */	li r6, 1
/* 80C80B38  38 80 00 00 */	li r4, 0
/* 80C80B3C  38 00 00 04 */	li r0, 4
/* 80C80B40  7C 09 03 A6 */	mtctr r0
lbl_80C80B44:
/* 80C80B44  38 E3 0A 40 */	addi r7, r3, 0xa40
/* 80C80B48  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80B4C  28 05 00 00 */	cmplwi r5, 0
/* 80C80B50  41 82 00 28 */	beq lbl_80C80B78
/* 80C80B54  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80B58  60 00 00 01 */	ori r0, r0, 1
/* 80C80B5C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80B60  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C80B64  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80B68  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80B6C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C80B70  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80B74  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80C80B78:
/* 80C80B78  38 63 00 04 */	addi r3, r3, 4
/* 80C80B7C  42 00 FF C8 */	bdnz lbl_80C80B44
/* 80C80B80  7F C3 F3 78 */	mr r3, r30
/* 80C80B84  4B FF F7 29 */	bl initActionWarning__12daObjLv6Bm_cFv
lbl_80C80B88:
/* 80C80B88  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80C80B8C  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80C80B90  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C80B94  D0 1E 0A 74 */	stfs f0, 0xa74(r30)
/* 80C80B98  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80C80B9C  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80C80BA0  3B 20 00 00 */	li r25, 0
/* 80C80BA4  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 80C80BA8  38 9E 09 F8 */	addi r4, r30, 0x9f8
/* 80C80BAC  7F C5 F3 78 */	mr r5, r30
/* 80C80BB0  4B 39 D0 B8 */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C80BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C80BB8  41 82 01 64 */	beq lbl_80C80D1C
/* 80C80BBC  3C 60 80 C8 */	lis r3, __vt__8cM3dGPla@ha
/* 80C80BC0  38 03 1F A4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C80BC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C80BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C80BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C80BD0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C80BD4  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha
/* 80C80BD8  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l
/* 80C80BDC  38 84 00 14 */	addi r4, r4, 0x14
/* 80C80BE0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C80BE4  4B 3F 3B 60 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C80BE8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C80BEC  4B 5E 75 F8 */	b cBgW_CheckBGround__Ff
/* 80C80BF0  3C 80 80 C8 */	lis r4, __vt__8cM3dGPla@ha
/* 80C80BF4  38 04 1F A4 */	addi r0, r4, __vt__8cM3dGPla@l
/* 80C80BF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C80BFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C80C00  41 82 01 1C */	beq lbl_80C80D1C
/* 80C80C04  88 1E 0A 18 */	lbz r0, 0xa18(r30)
/* 80C80C08  28 00 00 00 */	cmplwi r0, 0
/* 80C80C0C  40 82 00 A0 */	bne lbl_80C80CAC
/* 80C80C10  3B 00 00 00 */	li r24, 0
/* 80C80C14  3B A0 00 00 */	li r29, 0
/* 80C80C18  3B 80 00 00 */	li r28, 0
/* 80C80C1C  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha
/* 80C80C20  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l
/* 80C80C24  3B 43 00 30 */	addi r26, r3, 0x30
/* 80C80C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C80C2C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_80C80C30:
/* 80C80C30  3B 3C 0A 38 */	addi r25, r28, 0xa38
/* 80C80C34  7C 1E C8 2E */	lwzx r0, r30, r25
/* 80C80C38  28 00 00 00 */	cmplwi r0, 0
/* 80C80C3C  40 82 00 50 */	bne lbl_80C80C8C
/* 80C80C40  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C80C44  38 80 00 00 */	li r4, 0
/* 80C80C48  90 81 00 08 */	stw r4, 8(r1)
/* 80C80C4C  38 00 FF FF */	li r0, -1
/* 80C80C50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C80C54  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C80C58  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C80C5C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C80C60  38 80 00 00 */	li r4, 0
/* 80C80C64  38 BF 00 90 */	addi r5, r31, 0x90
/* 80C80C68  7C A5 EA 2E */	lhzx r5, r5, r29
/* 80C80C6C  7F 46 D3 78 */	mr r6, r26
/* 80C80C70  38 E0 00 00 */	li r7, 0
/* 80C80C74  39 00 00 00 */	li r8, 0
/* 80C80C78  39 20 00 00 */	li r9, 0
/* 80C80C7C  39 40 00 FF */	li r10, 0xff
/* 80C80C80  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C80C84  4B 3C BE 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C80C88  7C 7E C9 2E */	stwx r3, r30, r25
lbl_80C80C8C:
/* 80C80C8C  3B 18 00 01 */	addi r24, r24, 1
/* 80C80C90  2C 18 00 02 */	cmpwi r24, 2
/* 80C80C94  3B BD 00 02 */	addi r29, r29, 2
/* 80C80C98  3B 9C 00 04 */	addi r28, r28, 4
/* 80C80C9C  41 80 FF 94 */	blt lbl_80C80C30
/* 80C80CA0  38 00 00 01 */	li r0, 1
/* 80C80CA4  98 1E 0A 18 */	stb r0, 0xa18(r30)
/* 80C80CA8  48 00 00 70 */	b lbl_80C80D18
lbl_80C80CAC:
/* 80C80CAC  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha
/* 80C80CB0  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l
/* 80C80CB4  3B 23 00 30 */	addi r25, r3, 0x30
/* 80C80CB8  7F 23 CB 78 */	mr r3, r25
/* 80C80CBC  4B 38 C0 A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C80CC0  3B 00 00 00 */	li r24, 0
/* 80C80CC4  3B A0 00 00 */	li r29, 0
/* 80C80CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C80CCC  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_80C80CD0:
/* 80C80CD0  38 1D 0A 38 */	addi r0, r29, 0xa38
/* 80C80CD4  7C BE 00 2E */	lwzx r5, r30, r0
/* 80C80CD8  28 05 00 00 */	cmplwi r5, 0
/* 80C80CDC  41 82 00 14 */	beq lbl_80C80CF0
/* 80C80CE0  7F 83 E3 78 */	mr r3, r28
/* 80C80CE4  38 85 00 68 */	addi r4, r5, 0x68
/* 80C80CE8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80C80CEC  4B 5F FA F4 */	b func_802807E0
lbl_80C80CF0:
/* 80C80CF0  3B 18 00 01 */	addi r24, r24, 1
/* 80C80CF4  2C 18 00 02 */	cmpwi r24, 2
/* 80C80CF8  3B BD 00 04 */	addi r29, r29, 4
/* 80C80CFC  41 80 FF D4 */	blt lbl_80C80CD0
/* 80C80D00  C0 19 00 00 */	lfs f0, 0(r25)
/* 80C80D04  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80C80D08  C0 19 00 04 */	lfs f0, 4(r25)
/* 80C80D0C  D0 1E 0A 74 */	stfs f0, 0xa74(r30)
/* 80C80D10  C0 19 00 08 */	lfs f0, 8(r25)
/* 80C80D14  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
lbl_80C80D18:
/* 80C80D18  3B 20 00 01 */	li r25, 1
lbl_80C80D1C:
/* 80C80D1C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80C80D20  40 82 00 5C */	bne lbl_80C80D7C
/* 80C80D24  38 60 00 00 */	li r3, 0
/* 80C80D28  38 C0 00 01 */	li r6, 1
/* 80C80D2C  38 80 00 00 */	li r4, 0
/* 80C80D30  38 00 00 02 */	li r0, 2
/* 80C80D34  7C 09 03 A6 */	mtctr r0
lbl_80C80D38:
/* 80C80D38  38 E3 0A 38 */	addi r7, r3, 0xa38
/* 80C80D3C  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80D40  28 05 00 00 */	cmplwi r5, 0
/* 80C80D44  41 82 00 28 */	beq lbl_80C80D6C
/* 80C80D48  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80D4C  60 00 00 01 */	ori r0, r0, 1
/* 80C80D50  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80D54  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80C80D58  7C BE 38 2E */	lwzx r5, r30, r7
/* 80C80D5C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C80D60  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C80D64  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C80D68  7C 9E 39 2E */	stwx r4, r30, r7
lbl_80C80D6C:
/* 80C80D6C  38 63 00 04 */	addi r3, r3, 4
/* 80C80D70  42 00 FF C8 */	bdnz lbl_80C80D38
/* 80C80D74  38 00 00 00 */	li r0, 0
/* 80C80D78  98 1E 0A 18 */	stb r0, 0xa18(r30)
lbl_80C80D7C:
/* 80C80D7C  38 7E 0A 70 */	addi r3, r30, 0xa70
/* 80C80D80  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C80D84  4B 5E 62 E8 */	b __ne__4cXyzCFRC3Vec
/* 80C80D88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C80D8C  41 82 00 30 */	beq lbl_80C80DBC
/* 80C80D90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703EA@ha */
/* 80C80D94  38 03 03 EA */	addi r0, r3, 0x03EA /* 0x000703EA@l */
/* 80C80D98  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C80D9C  38 7E 0A 9C */	addi r3, r30, 0xa9c
/* 80C80DA0  38 81 00 20 */	addi r4, r1, 0x20
/* 80C80DA4  38 A0 00 00 */	li r5, 0
/* 80C80DA8  38 C0 FF FF */	li r6, -1
/* 80C80DAC  81 9E 0A AC */	lwz r12, 0xaac(r30)
/* 80C80DB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C80DB4  7D 89 03 A6 */	mtctr r12
/* 80C80DB8  4E 80 04 21 */	bctrl 
lbl_80C80DBC:
/* 80C80DBC  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C80DC0  38 80 00 01 */	li r4, 1
/* 80C80DC4  88 03 00 05 */	lbz r0, 5(r3)
/* 80C80DC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C80DCC  40 82 00 18 */	bne lbl_80C80DE4
/* 80C80DD0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C80DD4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C80DD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C80DDC  41 82 00 08 */	beq lbl_80C80DE4
/* 80C80DE0  38 80 00 00 */	li r4, 0
lbl_80C80DE4:
/* 80C80DE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C80DE8  41 82 00 58 */	beq lbl_80C80E40
/* 80C80DEC  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C80DF0  38 63 1D 24 */	addi r3, r3, l_arcName@l
/* 80C80DF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C80DF8  38 80 00 13 */	li r4, 0x13
/* 80C80DFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C80E00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C80E04  3C A5 00 02 */	addis r5, r5, 2
/* 80C80E08  38 C0 00 80 */	li r6, 0x80
/* 80C80E0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C80E10  4B 3B B4 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C80E14  7C 65 1B 78 */	mr r5, r3
/* 80C80E18  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C80E1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C80E20  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C80E24  38 84 00 58 */	addi r4, r4, 0x58
/* 80C80E28  38 C0 00 01 */	li r6, 1
/* 80C80E2C  38 E0 00 02 */	li r7, 2
/* 80C80E30  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C80E34  39 00 00 00 */	li r8, 0
/* 80C80E38  39 20 FF FF */	li r9, -1
/* 80C80E3C  4B 38 C8 D0 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
lbl_80C80E40:
/* 80C80E40  38 7E 0A 13 */	addi r3, r30, 0xa13
/* 80C80E44  48 00 0D 89 */	bl func_80C81BCC
/* 80C80E48  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C80E4C  28 00 00 01 */	cmplwi r0, 1
/* 80C80E50  40 82 00 10 */	bne lbl_80C80E60
/* 80C80E54  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C80E58  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C80E5C  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80C80E60:
/* 80C80E60  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C80E64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C80E68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C80E6C  A8 1E 09 B8 */	lha r0, 0x9b8(r30)
/* 80C80E70  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80C80E74  7C 63 02 14 */	add r3, r3, r0
/* 80C80E78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C80E7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C80E80  4B 6C 56 30 */	b PSMTXCopy
/* 80C80E84  3B 00 00 00 */	li r24, 0
/* 80C80E88  3B E0 00 00 */	li r31, 0
/* 80C80E8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C80E90  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_80C80E94:
/* 80C80E94  38 1F 0A 40 */	addi r0, r31, 0xa40
/* 80C80E98  7C BE 00 2E */	lwzx r5, r30, r0
/* 80C80E9C  28 05 00 00 */	cmplwi r5, 0
/* 80C80EA0  41 82 00 14 */	beq lbl_80C80EB4
/* 80C80EA4  7F 83 E3 78 */	mr r3, r28
/* 80C80EA8  38 85 00 68 */	addi r4, r5, 0x68
/* 80C80EAC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80C80EB0  4B 5F F9 30 */	b func_802807E0
lbl_80C80EB4:
/* 80C80EB4  3B 18 00 01 */	addi r24, r24, 1
/* 80C80EB8  2C 18 00 04 */	cmpwi r24, 4
/* 80C80EBC  3B FF 00 04 */	addi r31, r31, 4
/* 80C80EC0  41 80 FF D4 */	blt lbl_80C80E94
/* 80C80EC4  A8 1E 09 D8 */	lha r0, 0x9d8(r30)
/* 80C80EC8  1C 00 00 03 */	mulli r0, r0, 3
/* 80C80ECC  B0 1E 09 DC */	sth r0, 0x9dc(r30)
/* 80C80ED0  A8 7E 09 DA */	lha r3, 0x9da(r30)
/* 80C80ED4  A8 1E 09 C6 */	lha r0, 0x9c6(r30)
/* 80C80ED8  7C 03 00 50 */	subf r0, r3, r0
/* 80C80EDC  B0 1E 09 C8 */	sth r0, 0x9c8(r30)
/* 80C80EE0  A8 7E 09 CA */	lha r3, 0x9ca(r30)
/* 80C80EE4  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C80EE8  7C 03 02 14 */	add r0, r3, r0
/* 80C80EEC  B0 1E 09 CC */	sth r0, 0x9cc(r30)
/* 80C80EF0  A8 7E 09 CE */	lha r3, 0x9ce(r30)
/* 80C80EF4  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C80EF8  7C 03 02 14 */	add r0, r3, r0
/* 80C80EFC  B0 1E 09 D0 */	sth r0, 0x9d0(r30)
/* 80C80F00  A8 7E 09 D2 */	lha r3, 0x9d2(r30)
/* 80C80F04  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C80F08  7C 03 02 14 */	add r0, r3, r0
/* 80C80F0C  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80C80F10  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 80C80F14  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 80C80F18  40 82 00 10 */	bne lbl_80C80F28
/* 80C80F1C  4B 50 07 24 */	b dCam_getBody__Fv
/* 80C80F20  7F C4 F3 78 */	mr r4, r30
/* 80C80F24  4B 50 06 10 */	b ForceLockOn__9dCamera_cFP10fopAc_ac_c
lbl_80C80F28:
/* 80C80F28  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C80F2C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C80F30  39 61 00 60 */	addi r11, r1, 0x60
/* 80C80F34  4B 6E 12 E0 */	b _restgpr_24
/* 80C80F38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C80F3C  7C 08 03 A6 */	mtlr r0
/* 80C80F40  38 21 00 70 */	addi r1, r1, 0x70
/* 80C80F44  4E 80 00 20 */	blr 
