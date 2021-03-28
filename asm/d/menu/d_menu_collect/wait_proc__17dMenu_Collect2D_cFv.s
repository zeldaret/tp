lbl_801B48D0:
/* 801B48D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B48D4  7C 08 02 A6 */	mflr r0
/* 801B48D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B48DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B48E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B48E4  7C 7F 1B 78 */	mr r31, r3
/* 801B48E8  48 04 57 55 */	bl dMw_A_TRIGGER__Fv
/* 801B48EC  2C 03 00 00 */	cmpwi r3, 0
/* 801B48F0  41 82 02 D4 */	beq lbl_801B4BC4
/* 801B48F4  88 9F 02 57 */	lbz r4, 0x257(r31)
/* 801B48F8  28 04 00 00 */	cmplwi r4, 0
/* 801B48FC  40 82 00 64 */	bne lbl_801B4960
/* 801B4900  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4904  28 00 00 05 */	cmplwi r0, 5
/* 801B4908  40 82 00 58 */	bne lbl_801B4960
/* 801B490C  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B4910  80 03 00 04 */	lwz r0, 4(r3)
/* 801B4914  2C 00 00 01 */	cmpwi r0, 1
/* 801B4918  40 82 04 E4 */	bne lbl_801B4DFC
/* 801B491C  38 00 00 01 */	li r0, 1
/* 801B4920  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B4924  38 00 00 A3 */	li r0, 0xa3
/* 801B4928  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B492C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B4930  38 81 00 0C */	addi r4, r1, 0xc
/* 801B4934  38 A0 00 00 */	li r5, 0
/* 801B4938  38 C0 00 00 */	li r6, 0
/* 801B493C  38 E0 00 00 */	li r7, 0
/* 801B4940  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B4944  FC 40 08 90 */	fmr f2, f1
/* 801B4948  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B494C  FC 80 18 90 */	fmr f4, f3
/* 801B4950  39 00 00 00 */	li r8, 0
/* 801B4954  48 0F 70 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B4958  48 06 A0 7D */	bl dMeter2Info_set2DVibrationM__Fv
/* 801B495C  48 00 04 A0 */	b lbl_801B4DFC
lbl_801B4960:
/* 801B4960  28 04 00 01 */	cmplwi r4, 1
/* 801B4964  40 82 00 64 */	bne lbl_801B49C8
/* 801B4968  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B496C  28 00 00 05 */	cmplwi r0, 5
/* 801B4970  40 82 00 58 */	bne lbl_801B49C8
/* 801B4974  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B4978  80 03 00 04 */	lwz r0, 4(r3)
/* 801B497C  2C 00 00 01 */	cmpwi r0, 1
/* 801B4980  40 82 04 7C */	bne lbl_801B4DFC
/* 801B4984  38 00 00 02 */	li r0, 2
/* 801B4988  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B498C  38 00 00 A3 */	li r0, 0xa3
/* 801B4990  90 01 00 08 */	stw r0, 8(r1)
/* 801B4994  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B4998  38 81 00 08 */	addi r4, r1, 8
/* 801B499C  38 A0 00 00 */	li r5, 0
/* 801B49A0  38 C0 00 00 */	li r6, 0
/* 801B49A4  38 E0 00 00 */	li r7, 0
/* 801B49A8  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B49AC  FC 40 08 90 */	fmr f2, f1
/* 801B49B0  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B49B4  FC 80 18 90 */	fmr f4, f3
/* 801B49B8  39 00 00 00 */	li r8, 0
/* 801B49BC  48 0F 6F C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B49C0  48 06 A0 15 */	bl dMeter2Info_set2DVibrationM__Fv
/* 801B49C4  48 00 04 38 */	b lbl_801B4DFC
lbl_801B49C8:
/* 801B49C8  28 04 00 03 */	cmplwi r4, 3
/* 801B49CC  40 82 00 3C */	bne lbl_801B4A08
/* 801B49D0  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B49D4  28 00 00 04 */	cmplwi r0, 4
/* 801B49D8  40 82 00 30 */	bne lbl_801B4A08
/* 801B49DC  88 1F 02 43 */	lbz r0, 0x243(r31)
/* 801B49E0  28 00 00 00 */	cmplwi r0, 0
/* 801B49E4  41 82 04 18 */	beq lbl_801B4DFC
/* 801B49E8  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B49EC  80 03 00 04 */	lwz r0, 4(r3)
/* 801B49F0  2C 00 00 01 */	cmpwi r0, 1
/* 801B49F4  40 82 04 08 */	bne lbl_801B4DFC
/* 801B49F8  38 00 00 03 */	li r0, 3
/* 801B49FC  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B4A00  48 06 9F D1 */	bl dMeter2Info_set2DVibration__Fv
/* 801B4A04  48 00 03 F8 */	b lbl_801B4DFC
lbl_801B4A08:
/* 801B4A08  28 04 00 02 */	cmplwi r4, 2
/* 801B4A0C  40 82 00 40 */	bne lbl_801B4A4C
/* 801B4A10  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4A14  28 00 00 04 */	cmplwi r0, 4
/* 801B4A18  40 82 00 34 */	bne lbl_801B4A4C
/* 801B4A1C  7F E3 FB 78 */	mr r3, r31
/* 801B4A20  4B FF BB 89 */	bl isFishIconVisible__17dMenu_Collect2D_cFv
/* 801B4A24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4A28  41 82 03 D4 */	beq lbl_801B4DFC
/* 801B4A2C  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B4A30  80 03 00 04 */	lwz r0, 4(r3)
/* 801B4A34  2C 00 00 01 */	cmpwi r0, 1
/* 801B4A38  40 82 03 C4 */	bne lbl_801B4DFC
/* 801B4A3C  38 00 00 04 */	li r0, 4
/* 801B4A40  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B4A44  48 06 9F 8D */	bl dMeter2Info_set2DVibration__Fv
/* 801B4A48  48 00 03 B4 */	b lbl_801B4DFC
lbl_801B4A4C:
/* 801B4A4C  28 04 00 03 */	cmplwi r4, 3
/* 801B4A50  40 82 00 40 */	bne lbl_801B4A90
/* 801B4A54  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4A58  28 00 00 03 */	cmplwi r0, 3
/* 801B4A5C  40 82 00 34 */	bne lbl_801B4A90
/* 801B4A60  7F E3 FB 78 */	mr r3, r31
/* 801B4A64  4B FF BB B9 */	bl isSkillIconVisible__17dMenu_Collect2D_cFv
/* 801B4A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4A6C  41 82 03 90 */	beq lbl_801B4DFC
/* 801B4A70  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B4A74  80 03 00 04 */	lwz r0, 4(r3)
/* 801B4A78  2C 00 00 01 */	cmpwi r0, 1
/* 801B4A7C  40 82 03 80 */	bne lbl_801B4DFC
/* 801B4A80  38 00 00 05 */	li r0, 5
/* 801B4A84  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B4A88  48 06 9F 49 */	bl dMeter2Info_set2DVibration__Fv
/* 801B4A8C  48 00 03 70 */	b lbl_801B4DFC
lbl_801B4A90:
/* 801B4A90  28 04 00 02 */	cmplwi r4, 2
/* 801B4A94  40 82 00 40 */	bne lbl_801B4AD4
/* 801B4A98  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4A9C  28 00 00 03 */	cmplwi r0, 3
/* 801B4AA0  40 82 00 34 */	bne lbl_801B4AD4
/* 801B4AA4  7F E3 FB 78 */	mr r3, r31
/* 801B4AA8  4B FF BC 75 */	bl isInsectIconVisible__17dMenu_Collect2D_cFv
/* 801B4AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4AB0  41 82 03 4C */	beq lbl_801B4DFC
/* 801B4AB4  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801B4AB8  80 03 00 04 */	lwz r0, 4(r3)
/* 801B4ABC  2C 00 00 01 */	cmpwi r0, 1
/* 801B4AC0  40 82 03 3C */	bne lbl_801B4DFC
/* 801B4AC4  38 00 00 06 */	li r0, 6
/* 801B4AC8  98 1F 02 5E */	stb r0, 0x25e(r31)
/* 801B4ACC  48 06 9F 05 */	bl dMeter2Info_set2DVibration__Fv
/* 801B4AD0  48 00 03 2C */	b lbl_801B4DFC
lbl_801B4AD4:
/* 801B4AD4  1C 04 00 06 */	mulli r0, r4, 6
/* 801B4AD8  7C 1F 02 14 */	add r0, r31, r0
/* 801B4ADC  88 BF 02 58 */	lbz r5, 0x258(r31)
/* 801B4AE0  7C 60 2A 14 */	add r3, r0, r5
/* 801B4AE4  88 03 02 2D */	lbz r0, 0x22d(r3)
/* 801B4AE8  28 00 00 00 */	cmplwi r0, 0
/* 801B4AEC  41 82 03 10 */	beq lbl_801B4DFC
/* 801B4AF0  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 801B4AF4  28 00 00 00 */	cmplwi r0, 0
/* 801B4AF8  40 82 03 04 */	bne lbl_801B4DFC
/* 801B4AFC  28 04 00 03 */	cmplwi r4, 3
/* 801B4B00  41 80 00 0C */	blt lbl_801B4B0C
/* 801B4B04  28 04 00 04 */	cmplwi r4, 4
/* 801B4B08  40 81 00 14 */	ble lbl_801B4B1C
lbl_801B4B0C:
/* 801B4B0C  28 04 00 05 */	cmplwi r4, 5
/* 801B4B10  40 82 02 EC */	bne lbl_801B4DFC
/* 801B4B14  28 05 00 02 */	cmplwi r5, 2
/* 801B4B18  40 82 02 E4 */	bne lbl_801B4DFC
lbl_801B4B1C:
/* 801B4B1C  28 05 00 00 */	cmplwi r5, 0
/* 801B4B20  40 82 00 34 */	bne lbl_801B4B54
/* 801B4B24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B4B28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B4B2C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B4B30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4B34  81 8C 02 74 */	lwz r12, 0x274(r12)
/* 801B4B38  7D 89 03 A6 */	mtctr r12
/* 801B4B3C  4E 80 04 21 */	bctrl 
/* 801B4B40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4B44  40 82 02 B8 */	bne lbl_801B4DFC
/* 801B4B48  7F E3 FB 78 */	mr r3, r31
/* 801B4B4C  4B FF DF 29 */	bl changeSword__17dMenu_Collect2D_cFv
/* 801B4B50  48 00 02 AC */	b lbl_801B4DFC
lbl_801B4B54:
/* 801B4B54  28 05 00 01 */	cmplwi r5, 1
/* 801B4B58  40 82 00 34 */	bne lbl_801B4B8C
/* 801B4B5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B4B60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B4B64  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B4B68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4B6C  81 8C 02 70 */	lwz r12, 0x270(r12)
/* 801B4B70  7D 89 03 A6 */	mtctr r12
/* 801B4B74  4E 80 04 21 */	bctrl 
/* 801B4B78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4B7C  40 82 02 80 */	bne lbl_801B4DFC
/* 801B4B80  7F E3 FB 78 */	mr r3, r31
/* 801B4B84  4B FF E1 7D */	bl changeShield__17dMenu_Collect2D_cFv
/* 801B4B88  48 00 02 74 */	b lbl_801B4DFC
lbl_801B4B8C:
/* 801B4B8C  28 05 00 02 */	cmplwi r5, 2
/* 801B4B90  40 82 02 6C */	bne lbl_801B4DFC
/* 801B4B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B4B98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B4B9C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B4BA0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4BA4  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 801B4BA8  7D 89 03 A6 */	mtctr r12
/* 801B4BAC  4E 80 04 21 */	bctrl 
/* 801B4BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4BB4  40 82 02 48 */	bne lbl_801B4DFC
/* 801B4BB8  7F E3 FB 78 */	mr r3, r31
/* 801B4BBC  4B FF E3 29 */	bl changeClothe__17dMenu_Collect2D_cFv
/* 801B4BC0  48 00 02 3C */	b lbl_801B4DFC
lbl_801B4BC4:
/* 801B4BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B4BC8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 801B4BCC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 801B4BD0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4BD4  81 8C 02 74 */	lwz r12, 0x274(r12)
/* 801B4BD8  7D 89 03 A6 */	mtctr r12
/* 801B4BDC  4E 80 04 21 */	bctrl 
/* 801B4BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4BE4  40 82 00 44 */	bne lbl_801B4C28
/* 801B4BE8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 801B4BEC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4BF0  81 8C 02 70 */	lwz r12, 0x270(r12)
/* 801B4BF4  7D 89 03 A6 */	mtctr r12
/* 801B4BF8  4E 80 04 21 */	bctrl 
/* 801B4BFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4C00  40 82 00 28 */	bne lbl_801B4C28
/* 801B4C04  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 801B4C08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B4C0C  81 8C 02 6C */	lwz r12, 0x26c(r12)
/* 801B4C10  7D 89 03 A6 */	mtctr r12
/* 801B4C14  4E 80 04 21 */	bctrl 
/* 801B4C18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4C1C  40 82 00 0C */	bne lbl_801B4C28
/* 801B4C20  7F E3 FB 78 */	mr r3, r31
/* 801B4C24  4B FF D3 89 */	bl cursorMove__17dMenu_Collect2D_cFv
lbl_801B4C28:
/* 801B4C28  88 9F 02 57 */	lbz r4, 0x257(r31)
/* 801B4C2C  28 04 00 03 */	cmplwi r4, 3
/* 801B4C30  41 80 00 18 */	blt lbl_801B4C48
/* 801B4C34  28 04 00 04 */	cmplwi r4, 4
/* 801B4C38  41 81 00 10 */	bgt lbl_801B4C48
/* 801B4C3C  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4C40  28 00 00 02 */	cmplwi r0, 2
/* 801B4C44  40 81 00 18 */	ble lbl_801B4C5C
lbl_801B4C48:
/* 801B4C48  28 04 00 05 */	cmplwi r4, 5
/* 801B4C4C  40 82 00 58 */	bne lbl_801B4CA4
/* 801B4C50  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4C54  28 00 00 02 */	cmplwi r0, 2
/* 801B4C58  40 82 00 4C */	bne lbl_801B4CA4
lbl_801B4C5C:
/* 801B4C5C  1C 04 00 06 */	mulli r0, r4, 6
/* 801B4C60  7C 7F 02 14 */	add r3, r31, r0
/* 801B4C64  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4C68  7C 63 02 14 */	add r3, r3, r0
/* 801B4C6C  88 03 02 2D */	lbz r0, 0x22d(r3)
/* 801B4C70  28 00 00 00 */	cmplwi r0, 0
/* 801B4C74  41 82 00 20 */	beq lbl_801B4C94
/* 801B4C78  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 801B4C7C  28 00 00 00 */	cmplwi r0, 0
/* 801B4C80  40 82 00 14 */	bne lbl_801B4C94
/* 801B4C84  7F E3 FB 78 */	mr r3, r31
/* 801B4C88  38 80 04 36 */	li r4, 0x436
/* 801B4C8C  48 00 13 29 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4C90  48 00 01 60 */	b lbl_801B4DF0
lbl_801B4C94:
/* 801B4C94  7F E3 FB 78 */	mr r3, r31
/* 801B4C98  38 80 00 00 */	li r4, 0
/* 801B4C9C  48 00 13 19 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4CA0  48 00 01 50 */	b lbl_801B4DF0
lbl_801B4CA4:
/* 801B4CA4  28 04 00 00 */	cmplwi r4, 0
/* 801B4CA8  40 82 00 10 */	bne lbl_801B4CB8
/* 801B4CAC  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4CB0  28 00 00 05 */	cmplwi r0, 5
/* 801B4CB4  41 82 00 18 */	beq lbl_801B4CCC
lbl_801B4CB8:
/* 801B4CB8  28 04 00 01 */	cmplwi r4, 1
/* 801B4CBC  40 82 00 20 */	bne lbl_801B4CDC
/* 801B4CC0  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B4CC4  28 00 00 05 */	cmplwi r0, 5
/* 801B4CC8  40 82 00 14 */	bne lbl_801B4CDC
lbl_801B4CCC:
/* 801B4CCC  7F E3 FB 78 */	mr r3, r31
/* 801B4CD0  38 80 04 0C */	li r4, 0x40c
/* 801B4CD4  48 00 12 E1 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4CD8  48 00 01 18 */	b lbl_801B4DF0
lbl_801B4CDC:
/* 801B4CDC  1C 04 00 06 */	mulli r0, r4, 6
/* 801B4CE0  7C 1F 02 14 */	add r0, r31, r0
/* 801B4CE4  88 BF 02 58 */	lbz r5, 0x258(r31)
/* 801B4CE8  7C 60 2A 14 */	add r3, r0, r5
/* 801B4CEC  88 03 02 2D */	lbz r0, 0x22d(r3)
/* 801B4CF0  28 00 00 00 */	cmplwi r0, 0
/* 801B4CF4  41 82 00 F0 */	beq lbl_801B4DE4
/* 801B4CF8  28 04 00 03 */	cmplwi r4, 3
/* 801B4CFC  40 82 00 28 */	bne lbl_801B4D24
/* 801B4D00  28 05 00 04 */	cmplwi r5, 4
/* 801B4D04  40 82 00 20 */	bne lbl_801B4D24
/* 801B4D08  88 1F 02 43 */	lbz r0, 0x243(r31)
/* 801B4D0C  28 00 00 00 */	cmplwi r0, 0
/* 801B4D10  41 82 00 E0 */	beq lbl_801B4DF0
/* 801B4D14  7F E3 FB 78 */	mr r3, r31
/* 801B4D18  38 80 03 EE */	li r4, 0x3ee
/* 801B4D1C  48 00 12 99 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4D20  48 00 00 D0 */	b lbl_801B4DF0
lbl_801B4D24:
/* 801B4D24  28 04 00 02 */	cmplwi r4, 2
/* 801B4D28  40 82 00 2C */	bne lbl_801B4D54
/* 801B4D2C  28 05 00 04 */	cmplwi r5, 4
/* 801B4D30  40 82 00 24 */	bne lbl_801B4D54
/* 801B4D34  7F E3 FB 78 */	mr r3, r31
/* 801B4D38  4B FF B8 71 */	bl isFishIconVisible__17dMenu_Collect2D_cFv
/* 801B4D3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4D40  41 82 00 B0 */	beq lbl_801B4DF0
/* 801B4D44  7F E3 FB 78 */	mr r3, r31
/* 801B4D48  38 80 03 EE */	li r4, 0x3ee
/* 801B4D4C  48 00 12 69 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4D50  48 00 00 A0 */	b lbl_801B4DF0
lbl_801B4D54:
/* 801B4D54  28 04 00 03 */	cmplwi r4, 3
/* 801B4D58  40 82 00 2C */	bne lbl_801B4D84
/* 801B4D5C  28 05 00 03 */	cmplwi r5, 3
/* 801B4D60  40 82 00 24 */	bne lbl_801B4D84
/* 801B4D64  7F E3 FB 78 */	mr r3, r31
/* 801B4D68  4B FF B8 B5 */	bl isSkillIconVisible__17dMenu_Collect2D_cFv
/* 801B4D6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4D70  41 82 00 80 */	beq lbl_801B4DF0
/* 801B4D74  7F E3 FB 78 */	mr r3, r31
/* 801B4D78  38 80 03 EE */	li r4, 0x3ee
/* 801B4D7C  48 00 12 39 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4D80  48 00 00 70 */	b lbl_801B4DF0
lbl_801B4D84:
/* 801B4D84  28 04 00 02 */	cmplwi r4, 2
/* 801B4D88  40 82 00 2C */	bne lbl_801B4DB4
/* 801B4D8C  28 05 00 03 */	cmplwi r5, 3
/* 801B4D90  40 82 00 24 */	bne lbl_801B4DB4
/* 801B4D94  7F E3 FB 78 */	mr r3, r31
/* 801B4D98  4B FF B9 85 */	bl isInsectIconVisible__17dMenu_Collect2D_cFv
/* 801B4D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4DA0  41 82 00 50 */	beq lbl_801B4DF0
/* 801B4DA4  7F E3 FB 78 */	mr r3, r31
/* 801B4DA8  38 80 03 EE */	li r4, 0x3ee
/* 801B4DAC  48 00 12 09 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4DB0  48 00 00 40 */	b lbl_801B4DF0
lbl_801B4DB4:
/* 801B4DB4  28 04 00 03 */	cmplwi r4, 3
/* 801B4DB8  40 80 00 1C */	bge lbl_801B4DD4
/* 801B4DBC  28 05 00 03 */	cmplwi r5, 3
/* 801B4DC0  40 80 00 14 */	bge lbl_801B4DD4
/* 801B4DC4  7F E3 FB 78 */	mr r3, r31
/* 801B4DC8  38 80 04 0C */	li r4, 0x40c
/* 801B4DCC  48 00 11 E9 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4DD0  48 00 00 20 */	b lbl_801B4DF0
lbl_801B4DD4:
/* 801B4DD4  7F E3 FB 78 */	mr r3, r31
/* 801B4DD8  38 80 00 00 */	li r4, 0
/* 801B4DDC  48 00 11 D9 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4DE0  48 00 00 10 */	b lbl_801B4DF0
lbl_801B4DE4:
/* 801B4DE4  7F E3 FB 78 */	mr r3, r31
/* 801B4DE8  38 80 00 00 */	li r4, 0
/* 801B4DEC  48 00 11 C9 */	bl setAButtonString__17dMenu_Collect2D_cFUs
lbl_801B4DF0:
/* 801B4DF0  7F E3 FB 78 */	mr r3, r31
/* 801B4DF4  38 80 03 F9 */	li r4, 0x3f9
/* 801B4DF8  48 00 12 C1 */	bl setBButtonString__17dMenu_Collect2D_cFUs
lbl_801B4DFC:
/* 801B4DFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4E00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4E08  7C 08 03 A6 */	mtlr r0
/* 801B4E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4E10  4E 80 00 20 */	blr 
