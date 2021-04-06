lbl_8051AD04:
/* 8051AD04  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8051AD08  7C 08 02 A6 */	mflr r0
/* 8051AD0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8051AD10  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8051AD14  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8051AD18  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8051AD1C  4B E4 74 BD */	bl _savegpr_28
/* 8051AD20  7C 7D 1B 78 */	mr r29, r3
/* 8051AD24  3C 80 80 52 */	lis r4, lit_3649@ha /* 0x8051B9C8@ha */
/* 8051AD28  3B E4 B9 C8 */	addi r31, r4, lit_3649@l /* 0x8051B9C8@l */
/* 8051AD2C  3B C0 00 00 */	li r30, 0
/* 8051AD30  3C 80 80 52 */	lis r4, l_HIO@ha /* 0x8051BC20@ha */
/* 8051AD34  38 84 BC 20 */	addi r4, r4, l_HIO@l /* 0x8051BC20@l */
/* 8051AD38  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8051AD3C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 8051AD40  38 00 00 00 */	li r0, 0
/* 8051AD44  98 03 09 91 */	stb r0, 0x991(r3)
/* 8051AD48  A8 03 05 D2 */	lha r0, 0x5d2(r3)
/* 8051AD4C  28 00 00 32 */	cmplwi r0, 0x32
/* 8051AD50  41 81 00 80 */	bgt lbl_8051ADD0
/* 8051AD54  3C 80 80 52 */	lis r4, lit_4226@ha /* 0x8051BA94@ha */
/* 8051AD58  38 84 BA 94 */	addi r4, r4, lit_4226@l /* 0x8051BA94@l */
/* 8051AD5C  54 00 10 3A */	slwi r0, r0, 2
/* 8051AD60  7C 04 00 2E */	lwzx r0, r4, r0
/* 8051AD64  7C 09 03 A6 */	mtctr r0
/* 8051AD68  4E 80 04 20 */	bctr 
lbl_8051AD6C:
/* 8051AD6C  4B FF F0 B9 */	bl fr_normal__FP8fr_class
/* 8051AD70  38 00 00 01 */	li r0, 1
/* 8051AD74  98 1D 09 91 */	stb r0, 0x991(r29)
/* 8051AD78  48 00 00 58 */	b lbl_8051ADD0
lbl_8051AD7C:
/* 8051AD7C  4B FF F3 5D */	bl fr_away__FP8fr_class
/* 8051AD80  38 00 00 01 */	li r0, 1
/* 8051AD84  98 1D 09 91 */	stb r0, 0x991(r29)
/* 8051AD88  48 00 00 48 */	b lbl_8051ADD0
lbl_8051AD8C:
/* 8051AD8C  4B FF FE A1 */	bl fr_message__FP8fr_class
/* 8051AD90  38 00 00 02 */	li r0, 2
/* 8051AD94  98 1D 09 91 */	stb r0, 0x991(r29)
/* 8051AD98  48 00 00 38 */	b lbl_8051ADD0
lbl_8051AD9C:
/* 8051AD9C  4B FF F5 7D */	bl fr_s_normal__FP8fr_class
/* 8051ADA0  3B C0 00 01 */	li r30, 1
/* 8051ADA4  48 00 00 2C */	b lbl_8051ADD0
lbl_8051ADA8:
/* 8051ADA8  4B FF F7 B1 */	bl fr_s_wait__FP8fr_class
/* 8051ADAC  3B C0 00 01 */	li r30, 1
/* 8051ADB0  48 00 00 20 */	b lbl_8051ADD0
lbl_8051ADB4:
/* 8051ADB4  4B FF F8 6D */	bl fr_s_away__FP8fr_class
/* 8051ADB8  3B C0 00 01 */	li r30, 1
/* 8051ADBC  48 00 00 14 */	b lbl_8051ADD0
lbl_8051ADC0:
/* 8051ADC0  4B FF FA 61 */	bl fr_eat__FP8fr_class
/* 8051ADC4  3B C0 FF FE */	li r30, -2
/* 8051ADC8  48 00 00 08 */	b lbl_8051ADD0
lbl_8051ADCC:
/* 8051ADCC  3B C0 FF FF */	li r30, -1
lbl_8051ADD0:
/* 8051ADD0  88 1D 09 91 */	lbz r0, 0x991(r29)
/* 8051ADD4  2C 00 00 01 */	cmpwi r0, 1
/* 8051ADD8  40 82 00 48 */	bne lbl_8051AE20
/* 8051ADDC  A8 1D 09 94 */	lha r0, 0x994(r29)
/* 8051ADE0  2C 00 FF FF */	cmpwi r0, -1
/* 8051ADE4  41 82 00 3C */	beq lbl_8051AE20
/* 8051ADE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051ADEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051ADF0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8051ADF4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8051ADF8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8051ADFC  41 82 00 24 */	beq lbl_8051AE20
/* 8051AE00  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 8051AE04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8051AE08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051AE0C  40 80 00 14 */	bge lbl_8051AE20
/* 8051AE10  38 00 00 0A */	li r0, 0xa
/* 8051AE14  B0 1D 05 D2 */	sth r0, 0x5d2(r29)
/* 8051AE18  38 00 00 00 */	li r0, 0
/* 8051AE1C  B0 1D 05 D4 */	sth r0, 0x5d4(r29)
lbl_8051AE20:
/* 8051AE20  7F C0 07 74 */	extsb r0, r30
/* 8051AE24  2C 00 FF FE */	cmpwi r0, -2
/* 8051AE28  41 82 02 04 */	beq lbl_8051B02C
/* 8051AE2C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8051AE30  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8051AE34  38 A0 00 02 */	li r5, 2
/* 8051AE38  38 C0 40 00 */	li r6, 0x4000
/* 8051AE3C  4B D5 57 CD */	bl cLib_addCalcAngleS2__FPssss
/* 8051AE40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8051AE44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8051AE48  80 63 00 00 */	lwz r3, 0(r3)
/* 8051AE4C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8051AE50  4B AF 15 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 8051AE54  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051AE58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8051AE5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8051AE60  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8051AE64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8051AE68  38 61 00 2C */	addi r3, r1, 0x2c
/* 8051AE6C  38 81 00 20 */	addi r4, r1, 0x20
/* 8051AE70  4B D5 60 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8051AE74  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8051AE78  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8051AE7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8051AE80  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8051AE84  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8051AE88  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8051AE8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8051AE90  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8051AE94  38 61 00 14 */	addi r3, r1, 0x14
/* 8051AE98  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8051AE9C  C0 3D 04 EC */	lfs f1, 0x4ec(r29)
/* 8051AEA0  4B D4 BC E5 */	bl __ml__4cXyzCFf
/* 8051AEA4  38 61 00 08 */	addi r3, r1, 8
/* 8051AEA8  38 81 00 14 */	addi r4, r1, 0x14
/* 8051AEAC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8051AEB0  4B D4 BC D5 */	bl __ml__4cXyzCFf
/* 8051AEB4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8051AEB8  38 81 00 08 */	addi r4, r1, 8
/* 8051AEBC  7C 65 1B 78 */	mr r5, r3
/* 8051AEC0  4B E2 C1 D1 */	bl PSVECAdd
/* 8051AEC4  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8051AEC8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8051AECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051AED0  40 80 00 08 */	bge lbl_8051AED8
/* 8051AED4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8051AED8:
/* 8051AED8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8051AEDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8051AEE0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8051AEE4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8051AEE8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8051AEEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8051AEF0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8051AEF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8051AEF8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8051AEFC  C3 FD 06 DC */	lfs f31, 0x6dc(r29)
/* 8051AF00  38 61 00 38 */	addi r3, r1, 0x38
/* 8051AF04  4B B5 C8 AD */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8051AF08  38 00 00 00 */	li r0, 0
/* 8051AF0C  98 1D 05 EC */	stb r0, 0x5ec(r29)
/* 8051AF10  3B 80 00 00 */	li r28, 0
/* 8051AF14  7F A3 EB 78 */	mr r3, r29
/* 8051AF18  4B FF EC 49 */	bl wd_check__FP8fr_class
/* 8051AF1C  28 03 00 00 */	cmplwi r3, 0
/* 8051AF20  41 82 00 0C */	beq lbl_8051AF2C
/* 8051AF24  3B 80 00 01 */	li r28, 1
/* 8051AF28  48 00 00 50 */	b lbl_8051AF78
lbl_8051AF2C:
/* 8051AF2C  38 61 00 38 */	addi r3, r1, 0x38
/* 8051AF30  38 81 00 2C */	addi r4, r1, 0x2c
/* 8051AF34  4B D4 CD F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8051AF38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051AF3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051AF40  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8051AF44  38 81 00 38 */	addi r4, r1, 0x38
/* 8051AF48  4B B5 95 59 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8051AF4C  D0 3D 05 F0 */	stfs f1, 0x5f0(r29)
/* 8051AF50  C0 3D 05 F0 */	lfs f1, 0x5f0(r29)
/* 8051AF54  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8051AF58  40 80 00 20 */	bge lbl_8051AF78
/* 8051AF5C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8051AF60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8051AF64  4C 40 13 82 */	cror 2, 0, 2
/* 8051AF68  40 82 00 10 */	bne lbl_8051AF78
/* 8051AF6C  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 8051AF70  38 00 00 01 */	li r0, 1
/* 8051AF74  98 1D 05 EC */	stb r0, 0x5ec(r29)
lbl_8051AF78:
/* 8051AF78  7F C0 07 75 */	extsb. r0, r30
/* 8051AF7C  40 82 00 10 */	bne lbl_8051AF8C
/* 8051AF80  7F A3 EB 78 */	mr r3, r29
/* 8051AF84  4B FF FB 19 */	bl swim_off__FP8fr_class
/* 8051AF88  48 00 00 2C */	b lbl_8051AFB4
lbl_8051AF8C:
/* 8051AF8C  7F C0 07 74 */	extsb r0, r30
/* 8051AF90  2C 00 00 01 */	cmpwi r0, 1
/* 8051AF94  40 82 00 20 */	bne lbl_8051AFB4
/* 8051AF98  7F A3 EB 78 */	mr r3, r29
/* 8051AF9C  4B FF F9 69 */	bl swim_on__FP8fr_class
/* 8051AFA0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8051AFA4  38 9D 05 FC */	addi r4, r29, 0x5fc
/* 8051AFA8  38 BD 06 00 */	addi r5, r29, 0x600
/* 8051AFAC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8051AFB0  4B B0 22 45 */	bl fopAcM_riverStream__FP4cXyzPsPff
lbl_8051AFB4:
/* 8051AFB4  38 7D 06 44 */	addi r3, r29, 0x644
/* 8051AFB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051AFBC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051AFC0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8051AFC4  4B B5 BA E9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8051AFC8  38 00 00 00 */	li r0, 0
/* 8051AFCC  98 1D 05 CE */	stb r0, 0x5ce(r29)
/* 8051AFD0  2C 1C 00 00 */	cmpwi r28, 0
/* 8051AFD4  41 82 00 4C */	beq lbl_8051B020
/* 8051AFD8  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8051AFDC  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8051AFE0  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8051AFE4  4C 40 13 82 */	cror 2, 0, 2
/* 8051AFE8  40 82 00 38 */	bne lbl_8051B020
/* 8051AFEC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8051AFF0  C0 5D 05 F0 */	lfs f2, 0x5f0(r29)
/* 8051AFF4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8051AFF8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 8051AFFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051B000  EC 02 00 2A */	fadds f0, f2, f0
/* 8051B004  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8051B008  4C 40 13 82 */	cror 2, 0, 2
/* 8051B00C  40 82 00 14 */	bne lbl_8051B020
/* 8051B010  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8051B014  D0 9D 04 FC */	stfs f4, 0x4fc(r29)
/* 8051B018  38 00 00 01 */	li r0, 1
/* 8051B01C  98 1D 05 CE */	stb r0, 0x5ce(r29)
lbl_8051B020:
/* 8051B020  38 61 00 38 */	addi r3, r1, 0x38
/* 8051B024  38 80 FF FF */	li r4, -1
/* 8051B028  4B B5 C8 21 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_8051B02C:
/* 8051B02C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8051B030  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8051B034  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8051B038  4B E4 71 ED */	bl _restgpr_28
/* 8051B03C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8051B040  7C 08 03 A6 */	mtlr r0
/* 8051B044  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8051B048  4E 80 00 20 */	blr 
