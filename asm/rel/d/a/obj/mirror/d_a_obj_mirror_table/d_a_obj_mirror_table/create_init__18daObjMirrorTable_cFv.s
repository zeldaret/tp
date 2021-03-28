lbl_80C9ABFC:
/* 80C9ABFC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C9AC00  7C 08 02 A6 */	mflr r0
/* 80C9AC04  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C9AC08  39 61 00 80 */	addi r11, r1, 0x80
/* 80C9AC0C  4B 6C 75 C0 */	b _savegpr_25
/* 80C9AC10  7C 7F 1B 78 */	mr r31, r3
/* 80C9AC14  3C 60 80 CA */	lis r3, l_minPos@ha
/* 80C9AC18  3B C3 B2 44 */	addi r30, r3, l_minPos@l
/* 80C9AC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AC24  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 80C9AC28  7F A3 EB 78 */	mr r3, r29
/* 80C9AC2C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C9AC30  3B 84 72 88 */	addi r28, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C9AC34  A0 9C 02 C4 */	lhz r4, 0x2c4(r28)
/* 80C9AC38  4B 39 9D 84 */	b isEventBit__11dSv_event_cCFUs
/* 80C9AC3C  30 03 FF FF */	addic r0, r3, -1
/* 80C9AC40  7C 00 19 10 */	subfe r0, r0, r3
/* 80C9AC44  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80C9AC48  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C9AC4C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80C9AC50  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C9AC54  38 00 00 00 */	li r0, 0
/* 80C9AC58  90 1F 06 4C */	stw r0, 0x64c(r31)
/* 80C9AC5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9AC60  98 1F 05 A5 */	stb r0, 0x5a5(r31)
/* 80C9AC64  3B 40 00 01 */	li r26, 1
/* 80C9AC68  7F 59 D3 78 */	mr r25, r26
/* 80C9AC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AC74  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9AC78  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9AC7C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9AC80  7C 05 07 74 */	extsb r5, r0
/* 80C9AC84  4B 39 A6 DC */	b isSwitch__10dSv_info_cCFii
/* 80C9AC88  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AC8C  40 82 00 24 */	bne lbl_80C9ACB0
/* 80C9AC90  7F A3 EB 78 */	mr r3, r29
/* 80C9AC94  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C9AC98  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C9AC9C  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C9ACA0  4B 39 9D 1C */	b isEventBit__11dSv_event_cCFUs
/* 80C9ACA4  2C 03 00 00 */	cmpwi r3, 0
/* 80C9ACA8  40 82 00 08 */	bne lbl_80C9ACB0
/* 80C9ACAC  3B 20 00 00 */	li r25, 0
lbl_80C9ACB0:
/* 80C9ACB0  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80C9ACB4  40 82 00 1C */	bne lbl_80C9ACD0
/* 80C9ACB8  7F A3 EB 78 */	mr r3, r29
/* 80C9ACBC  A0 9C 02 C4 */	lhz r4, 0x2c4(r28)
/* 80C9ACC0  4B 39 9C FC */	b isEventBit__11dSv_event_cCFUs
/* 80C9ACC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C9ACC8  40 82 00 08 */	bne lbl_80C9ACD0
/* 80C9ACCC  3B 40 00 00 */	li r26, 0
lbl_80C9ACD0:
/* 80C9ACD0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80C9ACD4  41 82 00 1C */	beq lbl_80C9ACF0
/* 80C9ACD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9ACDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9ACE0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9ACE4  38 9F 05 9C */	addi r4, r31, 0x59c
/* 80C9ACE8  7F E5 FB 78 */	mr r5, r31
/* 80C9ACEC  4B 3D 9D 1C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C9ACF0:
/* 80C9ACF0  38 00 00 00 */	li r0, 0
/* 80C9ACF4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 80C9ACF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9ACFC  98 1F 06 65 */	stb r0, 0x665(r31)
/* 80C9AD00  3B 20 00 01 */	li r25, 1
/* 80C9AD04  7F 3A CB 78 */	mr r26, r25
/* 80C9AD08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AD0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AD10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9AD14  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9AD18  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C9AD1C  7C 05 07 74 */	extsb r5, r0
/* 80C9AD20  4B 39 A6 40 */	b isSwitch__10dSv_info_cCFii
/* 80C9AD24  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AD28  40 82 00 24 */	bne lbl_80C9AD4C
/* 80C9AD2C  7F A3 EB 78 */	mr r3, r29
/* 80C9AD30  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C9AD34  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C9AD38  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C9AD3C  4B 39 9C 80 */	b isEventBit__11dSv_event_cCFUs
/* 80C9AD40  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AD44  40 82 00 08 */	bne lbl_80C9AD4C
/* 80C9AD48  3B 40 00 00 */	li r26, 0
lbl_80C9AD4C:
/* 80C9AD4C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80C9AD50  40 82 00 1C */	bne lbl_80C9AD6C
/* 80C9AD54  7F A3 EB 78 */	mr r3, r29
/* 80C9AD58  A0 9C 02 C4 */	lhz r4, 0x2c4(r28)
/* 80C9AD5C  4B 39 9C 60 */	b isEventBit__11dSv_event_cCFUs
/* 80C9AD60  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AD64  40 82 00 08 */	bne lbl_80C9AD6C
/* 80C9AD68  3B 20 00 00 */	li r25, 0
lbl_80C9AD6C:
/* 80C9AD6C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80C9AD70  41 82 00 1C */	beq lbl_80C9AD8C
/* 80C9AD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AD7C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9AD80  38 9F 06 5C */	addi r4, r31, 0x65c
/* 80C9AD84  7F E5 FB 78 */	mr r5, r31
/* 80C9AD88  4B 3D 9C 80 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C9AD8C:
/* 80C9AD8C  28 1B 00 00 */	cmplwi r27, 0
/* 80C9AD90  41 82 00 B4 */	beq lbl_80C9AE44
/* 80C9AD94  38 00 00 00 */	li r0, 0
/* 80C9AD98  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 80C9AD9C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C9ADA0  98 1F 07 25 */	stb r0, 0x725(r31)
/* 80C9ADA4  3C 60 80 CA */	lis r3, rideCallBack2__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C9ADA8  38 03 A2 60 */	addi r0, r3, rideCallBack2__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C9ADAC  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80C9ADB0  3C 60 80 CA */	lis r3, rideCallBack1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C9ADB4  38 03 A0 40 */	addi r0, r3, rideCallBack1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C9ADB8  90 1F 06 50 */	stw r0, 0x650(r31)
/* 80C9ADBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9ADC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9ADC4  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80C9ADC8  38 79 3E C8 */	addi r3, r25, 0x3ec8
/* 80C9ADCC  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80C9ADD0  38 84 B2 90 */	addi r4, r4, stringBase0@l
/* 80C9ADD4  38 84 00 09 */	addi r4, r4, 9
/* 80C9ADD8  4B 6C DB BC */	b strcmp
/* 80C9ADDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C9ADE0  40 82 00 5C */	bne lbl_80C9AE3C
/* 80C9ADE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9ADE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9ADEC  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80C9ADF0  2C 00 00 04 */	cmpwi r0, 4
/* 80C9ADF4  40 82 00 48 */	bne lbl_80C9AE3C
/* 80C9ADF8  38 00 00 64 */	li r0, 0x64
/* 80C9ADFC  98 1F 08 75 */	stb r0, 0x875(r31)
/* 80C9AE00  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80C9AE04  A8 03 00 08 */	lha r0, 8(r3)
/* 80C9AE08  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 80C9AE0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C9AE10  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C9AE14  3C 00 43 30 */	lis r0, 0x4330
/* 80C9AE18  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C9AE1C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C9AE20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C9AE24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C9AE28  7F 23 CB 78 */	mr r3, r25
/* 80C9AE2C  38 9F 07 1C */	addi r4, r31, 0x71c
/* 80C9AE30  7F E5 FB 78 */	mr r5, r31
/* 80C9AE34  4B 3D 9B D4 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9AE38  48 00 00 0C */	b lbl_80C9AE44
lbl_80C9AE3C:
/* 80C9AE3C  38 00 00 00 */	li r0, 0
/* 80C9AE40  98 1F 08 75 */	stb r0, 0x875(r31)
lbl_80C9AE44:
/* 80C9AE44  7F E3 FB 78 */	mr r3, r31
/* 80C9AE48  48 00 01 89 */	bl initBaseMtx__18daObjMirrorTable_cFv
/* 80C9AE4C  28 1B 00 00 */	cmplwi r27, 0
/* 80C9AE50  41 82 00 C8 */	beq lbl_80C9AF18
/* 80C9AE54  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80C9AE58  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C9AE5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C9AE60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C9AE64  38 61 00 28 */	addi r3, r1, 0x28
/* 80C9AE68  38 80 00 00 */	li r4, 0
/* 80C9AE6C  38 A0 00 00 */	li r5, 0
/* 80C9AE70  38 C0 00 00 */	li r6, 0
/* 80C9AE74  4B 5C C5 80 */	b __ct__5csXyzFsss
/* 80C9AE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AE7C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80C9AE80  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C9AE84  38 80 00 00 */	li r4, 0
/* 80C9AE88  90 81 00 08 */	stw r4, 8(r1)
/* 80C9AE8C  38 00 FF FF */	li r0, -1
/* 80C9AE90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9AE94  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9AE98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9AE9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9AEA0  38 80 00 00 */	li r4, 0
/* 80C9AEA4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AA1@ha */
/* 80C9AEA8  38 A5 8A A1 */	addi r5, r5, 0x8AA1 /* 0x00008AA1@l */
/* 80C9AEAC  38 C1 00 48 */	addi r6, r1, 0x48
/* 80C9AEB0  38 E0 00 00 */	li r7, 0
/* 80C9AEB4  39 01 00 28 */	addi r8, r1, 0x28
/* 80C9AEB8  39 20 00 00 */	li r9, 0
/* 80C9AEBC  39 40 00 FF */	li r10, 0xff
/* 80C9AEC0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C9AEC4  4B 3B 1B CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9AEC8  90 7F 08 6C */	stw r3, 0x86c(r31)
/* 80C9AECC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C9AED0  38 80 00 00 */	li r4, 0
/* 80C9AED4  90 81 00 08 */	stw r4, 8(r1)
/* 80C9AED8  38 00 FF FF */	li r0, -1
/* 80C9AEDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9AEE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C9AEE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C9AEE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C9AEEC  38 80 00 00 */	li r4, 0
/* 80C9AEF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AA2@ha */
/* 80C9AEF4  38 A5 8A A2 */	addi r5, r5, 0x8AA2 /* 0x00008AA2@l */
/* 80C9AEF8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80C9AEFC  38 E0 00 00 */	li r7, 0
/* 80C9AF00  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80C9AF04  39 20 00 00 */	li r9, 0
/* 80C9AF08  39 40 00 FF */	li r10, 0xff
/* 80C9AF0C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C9AF10  4B 3B 1B 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C9AF14  90 7F 08 70 */	stw r3, 0x870(r31)
lbl_80C9AF18:
/* 80C9AF18  38 00 00 00 */	li r0, 0
/* 80C9AF1C  98 1F 08 74 */	stb r0, 0x874(r31)
/* 80C9AF20  7F A3 EB 78 */	mr r3, r29
/* 80C9AF24  A0 9C 02 C4 */	lhz r4, 0x2c4(r28)
/* 80C9AF28  4B 39 9A 94 */	b isEventBit__11dSv_event_cCFUs
/* 80C9AF2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AF30  40 82 00 88 */	bne lbl_80C9AFB8
/* 80C9AF34  7F A3 EB 78 */	mr r3, r29
/* 80C9AF38  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C9AF3C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C9AF40  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C9AF44  4B 39 9A 78 */	b isEventBit__11dSv_event_cCFUs
/* 80C9AF48  2C 03 00 00 */	cmpwi r3, 0
/* 80C9AF4C  41 82 00 6C */	beq lbl_80C9AFB8
/* 80C9AF50  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C9AF54  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C9AF58  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80C9AF5C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C9AF60  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C9AF64  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C9AF68  38 61 00 20 */	addi r3, r1, 0x20
/* 80C9AF6C  38 80 00 00 */	li r4, 0
/* 80C9AF70  38 A0 80 00 */	li r5, -32768
/* 80C9AF74  38 C0 00 00 */	li r6, 0
/* 80C9AF78  4B 5C C4 7C */	b __ct__5csXyzFsss
/* 80C9AF7C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C9AF80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C9AF84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C9AF88  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C9AF8C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C9AF90  38 60 02 DF */	li r3, 0x2df
/* 80C9AF94  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF03@ha */
/* 80C9AF98  38 84 FF 03 */	addi r4, r4, 0xFF03 /* 0x0000FF03@l */
/* 80C9AF9C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C9AFA0  88 DF 04 E2 */	lbz r6, 0x4e2(r31)
/* 80C9AFA4  7C C6 07 74 */	extsb r6, r6
/* 80C9AFA8  38 E1 00 20 */	addi r7, r1, 0x20
/* 80C9AFAC  39 01 00 30 */	addi r8, r1, 0x30
/* 80C9AFB0  39 20 FF FF */	li r9, -1
/* 80C9AFB4  4B 37 ED E4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80C9AFB8:
/* 80C9AFB8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C9AFBC  4B 6C 72 5C */	b _restgpr_25
/* 80C9AFC0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C9AFC4  7C 08 03 A6 */	mtlr r0
/* 80C9AFC8  38 21 00 80 */	addi r1, r1, 0x80
/* 80C9AFCC  4E 80 00 20 */	blr 
