lbl_8082ACA8:
/* 8082ACA8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8082ACAC  7C 08 02 A6 */	mflr r0
/* 8082ACB0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8082ACB4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8082ACB8  4B B3 75 21 */	bl _savegpr_28
/* 8082ACBC  7C 7D 1B 78 */	mr r29, r3
/* 8082ACC0  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 8082ACC4  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082ACC8  38 61 00 68 */	addi r3, r1, 0x68
/* 8082ACCC  4B 84 CF 9D */	bl __ct__11dBgS_LinChkFv
/* 8082ACD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082ACD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082ACD8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8082ACDC  7C 00 07 74 */	extsb r0, r0
/* 8082ACE0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8082ACE4  7C 83 02 14 */	add r4, r3, r0
/* 8082ACE8  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8082ACEC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082ACF0  28 00 00 14 */	cmplwi r0, 0x14
/* 8082ACF4  41 81 04 3C */	bgt lbl_8082B130
/* 8082ACF8  3C 80 80 83 */	lis r4, lit_4709@ha /* 0x8082F508@ha */
/* 8082ACFC  38 84 F5 08 */	addi r4, r4, lit_4709@l /* 0x8082F508@l */
/* 8082AD00  54 00 10 3A */	slwi r0, r0, 2
/* 8082AD04  7C 04 00 2E */	lwzx r0, r4, r0
/* 8082AD08  7C 09 03 A6 */	mtctr r0
/* 8082AD0C  4E 80 04 20 */	bctr 
lbl_8082AD10:
/* 8082AD10  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082AD14  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082AD18  80 63 00 00 */	lwz r3, 0(r3)
/* 8082AD1C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082AD20  4B 7E 16 BD */	bl mDoMtx_YrotS__FPA4_fs
/* 8082AD24  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082AD28  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082AD2C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082AD30  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8082AD34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082AD38  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082AD3C  38 81 00 50 */	addi r4, r1, 0x50
/* 8082AD40  4B A4 61 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082AD44  38 61 00 44 */	addi r3, r1, 0x44
/* 8082AD48  38 81 00 50 */	addi r4, r1, 0x50
/* 8082AD4C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8082AD50  4B A3 BD 95 */	bl __pl__4cXyzCFRC3Vec
/* 8082AD54  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8082AD58  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8082AD5C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8082AD60  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8082AD64  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8082AD68  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 8082AD6C  38 00 00 01 */	li r0, 1
/* 8082AD70  98 01 00 BC */	stb r0, 0xbc(r1)
/* 8082AD74  38 61 00 68 */	addi r3, r1, 0x68
/* 8082AD78  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8082AD7C  38 BD 06 80 */	addi r5, r29, 0x680
/* 8082AD80  7F A6 EB 78 */	mr r6, r29
/* 8082AD84  4B 84 CF E1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8082AD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082AD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082AD90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8082AD94  38 81 00 68 */	addi r4, r1, 0x68
/* 8082AD98  4B 84 96 1D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8082AD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082ADA0  41 82 00 D0 */	beq lbl_8082AE70
/* 8082ADA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082ADA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082ADAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8082ADB0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082ADB4  4B 7E 16 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 8082ADB8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082ADBC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082ADC0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082ADC4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8082ADC8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082ADCC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082ADD0  38 81 00 50 */	addi r4, r1, 0x50
/* 8082ADD4  4B A4 61 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082ADD8  38 61 00 38 */	addi r3, r1, 0x38
/* 8082ADDC  3B 81 00 98 */	addi r28, r1, 0x98
/* 8082ADE0  7F 84 E3 78 */	mr r4, r28
/* 8082ADE4  38 A1 00 50 */	addi r5, r1, 0x50
/* 8082ADE8  4B A3 BC FD */	bl __pl__4cXyzCFRC3Vec
/* 8082ADEC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8082ADF0  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8082ADF4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8082ADF8  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 8082ADFC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8082AE00  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 8082AE04  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082AE08  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082AE0C  80 63 00 00 */	lwz r3, 0(r3)
/* 8082AE10  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082AE14  4B 7E 15 C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8082AE18  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082AE1C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082AE20  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082AE24  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 8082AE28  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082AE2C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082AE30  38 81 00 50 */	addi r4, r1, 0x50
/* 8082AE34  4B A4 60 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082AE38  38 61 00 2C */	addi r3, r1, 0x2c
/* 8082AE3C  7F 84 E3 78 */	mr r4, r28
/* 8082AE40  38 A1 00 50 */	addi r5, r1, 0x50
/* 8082AE44  4B A3 BC A1 */	bl __pl__4cXyzCFRC3Vec
/* 8082AE48  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8082AE4C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8082AE50  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8082AE54  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8082AE58  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8082AE5C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8082AE60  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8082AE64  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 8082AE68  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8082AE6C  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
lbl_8082AE70:
/* 8082AE70  7F A3 EB 78 */	mr r3, r29
/* 8082AE74  38 80 00 0D */	li r4, 0xd
/* 8082AE78  38 A0 00 02 */	li r5, 2
/* 8082AE7C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8082AE80  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082AE84  4B FF E5 25 */	bl setBck__8daE_ZH_cFiUcff
/* 8082AE88  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082AE8C  38 03 00 01 */	addi r0, r3, 1
/* 8082AE90  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082AE94  48 00 02 9C */	b lbl_8082B130
lbl_8082AE98:
/* 8082AE98  88 9D 07 A9 */	lbz r4, 0x7a9(r29)
/* 8082AE9C  28 04 00 FF */	cmplwi r4, 0xff
/* 8082AEA0  41 82 02 90 */	beq lbl_8082B130
/* 8082AEA4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082AEA8  7C 05 07 74 */	extsb r5, r0
/* 8082AEAC  4B 80 A4 B5 */	bl isSwitch__10dSv_info_cCFii
/* 8082AEB0  2C 03 00 00 */	cmpwi r3, 0
/* 8082AEB4  41 82 02 7C */	beq lbl_8082B130
/* 8082AEB8  3C 60 80 83 */	lis r3, mStartFlag@ha /* 0x8082F750@ha */
/* 8082AEBC  80 03 F7 50 */	lwz r0, mStartFlag@l(r3)  /* 0x8082F750@l */
/* 8082AEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8082AEC4  41 82 02 6C */	beq lbl_8082B130
/* 8082AEC8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8082AECC  60 00 00 04 */	ori r0, r0, 4
/* 8082AED0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8082AED4  38 00 00 03 */	li r0, 3
/* 8082AED8  98 1D 05 46 */	stb r0, 0x546(r29)
/* 8082AEDC  38 00 00 0A */	li r0, 0xa
/* 8082AEE0  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082AEE4  48 00 02 4C */	b lbl_8082B130
lbl_8082AEE8:
/* 8082AEE8  7F A3 EB 78 */	mr r3, r29
/* 8082AEEC  4B FF E9 D1 */	bl mGateOpen__8daE_ZH_cFv
/* 8082AEF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082AEF4  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082AEF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082AEFC  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8082AF00  38 81 00 10 */	addi r4, r1, 0x10
/* 8082AF04  38 A0 00 00 */	li r5, 0
/* 8082AF08  38 C0 FF FF */	li r6, -1
/* 8082AF0C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8082AF10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082AF14  7D 89 03 A6 */	mtctr r12
/* 8082AF18  4E 80 04 21 */	bctrl 
/* 8082AF1C  C0 3D 07 7C */	lfs f1, 0x77c(r29)
/* 8082AF20  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8082AF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082AF28  41 80 02 08 */	blt lbl_8082B130
/* 8082AF2C  38 00 00 14 */	li r0, 0x14
/* 8082AF30  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082AF34  48 00 01 FC */	b lbl_8082B130
lbl_8082AF38:
/* 8082AF38  7F A3 EB 78 */	mr r3, r29
/* 8082AF3C  4B FF E6 35 */	bl startDemoCheck__8daE_ZH_cFv
/* 8082AF40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082AF44  41 82 01 EC */	beq lbl_8082B130
/* 8082AF48  38 00 00 14 */	li r0, 0x14
/* 8082AF4C  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082AF50  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082AF54  38 03 00 01 */	addi r0, r3, 1
/* 8082AF58  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082AF5C:
/* 8082AF5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082AF60  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082AF64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082AF68  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8082AF6C  38 81 00 0C */	addi r4, r1, 0xc
/* 8082AF70  38 A0 00 00 */	li r5, 0
/* 8082AF74  38 C0 FF FF */	li r6, -1
/* 8082AF78  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8082AF7C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082AF80  7D 89 03 A6 */	mtctr r12
/* 8082AF84  4E 80 04 21 */	bctrl 
/* 8082AF88  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082AF8C  2C 00 00 00 */	cmpwi r0, 0
/* 8082AF90  40 82 01 A0 */	bne lbl_8082B130
/* 8082AF94  C0 3D 07 7C */	lfs f1, 0x77c(r29)
/* 8082AF98  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8082AF9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082AFA0  41 80 01 90 */	blt lbl_8082B130
/* 8082AFA4  4B 95 66 9D */	bl dCam_getBody__Fv
/* 8082AFA8  38 80 00 64 */	li r4, 0x64
/* 8082AFAC  7F A5 EB 78 */	mr r5, r29
/* 8082AFB0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082AFB4  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 8082AFB8  4B 95 61 B9 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 8082AFBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082AFC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082AFC4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082AFC8  7F A4 EB 78 */	mr r4, r29
/* 8082AFCC  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 8082AFD0  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 8082AFD4  38 C0 00 00 */	li r6, 0
/* 8082AFD8  4B 81 79 3D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8082AFDC  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082AFE0  38 03 00 01 */	addi r0, r3, 1
/* 8082AFE4  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082AFE8:
/* 8082AFE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082AFEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082AFF0  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 8082AFF4  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 8082AFF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8082AFFC  41 82 00 38 */	beq lbl_8082B034
/* 8082B000  4B 95 66 41 */	bl dCam_getBody__Fv
/* 8082B004  4B 95 61 B5 */	bl ResetBlure__9dCamera_cFv
/* 8082B008  38 00 00 02 */	li r0, 2
/* 8082B00C  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8082B010  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B014  4B 93 64 99 */	bl Start__9dCamera_cFv
/* 8082B018  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B01C  38 80 00 00 */	li r4, 0
/* 8082B020  4B 93 7F ED */	bl SetTrimSize__9dCamera_cFl
/* 8082B024  7F 83 E3 78 */	mr r3, r28
/* 8082B028  4B 81 74 41 */	bl reset__14dEvt_control_cFv
/* 8082B02C  38 00 00 14 */	li r0, 0x14
/* 8082B030  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082B034:
/* 8082B034  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070456@ha */
/* 8082B038  38 03 04 56 */	addi r0, r3, 0x0456 /* 0x00070456@l */
/* 8082B03C  90 01 00 08 */	stw r0, 8(r1)
/* 8082B040  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8082B044  38 81 00 08 */	addi r4, r1, 8
/* 8082B048  38 A0 00 00 */	li r5, 0
/* 8082B04C  38 C0 FF FF */	li r6, -1
/* 8082B050  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8082B054  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8082B058  7D 89 03 A6 */	mtctr r12
/* 8082B05C  4E 80 04 21 */	bctrl 
/* 8082B060  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082B064  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082B068  80 63 00 00 */	lwz r3, 0(r3)
/* 8082B06C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082B070  4B 7E 13 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 8082B074  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082B078  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082B07C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082B080  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8082B084  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082B088  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082B08C  38 81 00 50 */	addi r4, r1, 0x50
/* 8082B090  4B A4 5E 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082B094  38 61 00 50 */	addi r3, r1, 0x50
/* 8082B098  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082B09C  7C 65 1B 78 */	mr r5, r3
/* 8082B0A0  4B B1 BF F1 */	bl PSVECAdd
/* 8082B0A4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8082B0A8  38 81 00 50 */	addi r4, r1, 0x50
/* 8082B0AC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8082B0B0  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8082B0B4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082B0B8  4B A4 4A 01 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082B0BC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082B0C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082B0C4  4C 40 13 82 */	cror 2, 0, 2
/* 8082B0C8  40 82 00 68 */	bne lbl_8082B130
/* 8082B0CC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082B0D0  2C 00 00 14 */	cmpwi r0, 0x14
/* 8082B0D4  40 82 00 20 */	bne lbl_8082B0F4
/* 8082B0D8  38 00 00 02 */	li r0, 2
/* 8082B0DC  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8082B0E0  7F A3 EB 78 */	mr r3, r29
/* 8082B0E4  38 80 00 04 */	li r4, 4
/* 8082B0E8  38 A0 00 00 */	li r5, 0
/* 8082B0EC  4B FF E3 69 */	bl setActionMode__8daE_ZH_cFii
/* 8082B0F0  48 00 00 40 */	b lbl_8082B130
lbl_8082B0F4:
/* 8082B0F4  38 00 00 02 */	li r0, 2
/* 8082B0F8  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8082B0FC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B100  4B 93 63 AD */	bl Start__9dCamera_cFv
/* 8082B104  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B108  38 80 00 00 */	li r4, 0
/* 8082B10C  4B 93 7F 01 */	bl SetTrimSize__9dCamera_cFl
/* 8082B110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082B114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082B118  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082B11C  4B 81 73 4D */	bl reset__14dEvt_control_cFv
/* 8082B120  7F A3 EB 78 */	mr r3, r29
/* 8082B124  38 80 00 04 */	li r4, 4
/* 8082B128  38 A0 00 00 */	li r5, 0
/* 8082B12C  4B FF E3 29 */	bl setActionMode__8daE_ZH_cFii
lbl_8082B130:
/* 8082B130  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082B134  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082B138  41 80 00 0C */	blt lbl_8082B144
/* 8082B13C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8082B140  40 81 00 0C */	ble lbl_8082B14C
lbl_8082B144:
/* 8082B144  2C 00 00 14 */	cmpwi r0, 0x14
/* 8082B148  40 82 00 0C */	bne lbl_8082B154
lbl_8082B14C:
/* 8082B14C  7F A3 EB 78 */	mr r3, r29
/* 8082B150  4B FF E7 6D */	bl mGateOpen__8daE_ZH_cFv
lbl_8082B154:
/* 8082B154  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082B158  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082B15C  40 82 01 04 */	bne lbl_8082B260
/* 8082B160  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082B164  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082B168  80 63 00 00 */	lwz r3, 0(r3)
/* 8082B16C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082B170  4B 7E 12 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 8082B174  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082B178  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8082B17C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8082B180  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082B184  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8082B188  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082B18C  38 81 00 50 */	addi r4, r1, 0x50
/* 8082B190  4B A4 5D 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082B194  38 61 00 50 */	addi r3, r1, 0x50
/* 8082B198  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082B19C  7C 65 1B 78 */	mr r5, r3
/* 8082B1A0  4B B1 BE F1 */	bl PSVECAdd
/* 8082B1A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8082B1A8  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082B1AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8082B1B0  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082B1B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8082B1B8  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082B1BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082B1C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082B1C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8082B1C8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8082B1CC  4B 7E 12 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 8082B1D0  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 8082B1D4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8082B1D8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8082B1DC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8082B1E0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8082B1E4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8082B1E8  38 81 00 50 */	addi r4, r1, 0x50
/* 8082B1EC  4B A4 5D 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082B1F0  38 61 00 50 */	addi r3, r1, 0x50
/* 8082B1F4  38 9D 06 8C */	addi r4, r29, 0x68c
/* 8082B1F8  7C 65 1B 78 */	mr r5, r3
/* 8082B1FC  4B B1 BE 95 */	bl PSVECAdd
/* 8082B200  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8082B204  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082B208  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8082B20C  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082B210  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8082B214  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082B218  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082B21C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082B220  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082B224  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082B228  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082B22C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082B230  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082B234  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082B238  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082B23C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082B240  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082B244  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082B248  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082B24C  38 81 00 20 */	addi r4, r1, 0x20
/* 8082B250  38 A1 00 14 */	addi r5, r1, 0x14
/* 8082B254  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 8082B258  38 C0 00 00 */	li r6, 0
/* 8082B25C  4B 95 58 85 */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_8082B260:
/* 8082B260  38 61 00 68 */	addi r3, r1, 0x68
/* 8082B264  38 80 FF FF */	li r4, -1
/* 8082B268  4B 84 CA 75 */	bl __dt__11dBgS_LinChkFv
/* 8082B26C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8082B270  4B B3 6F B5 */	bl _restgpr_28
/* 8082B274  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8082B278  7C 08 03 A6 */	mtlr r0
/* 8082B27C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8082B280  4E 80 00 20 */	blr 
