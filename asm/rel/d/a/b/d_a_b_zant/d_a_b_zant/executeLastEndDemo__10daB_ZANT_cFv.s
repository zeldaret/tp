lbl_8064AC8C:
/* 8064AC8C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8064AC90  7C 08 02 A6 */	mflr r0
/* 8064AC94  90 01 00 74 */	stw r0, 0x74(r1)
/* 8064AC98  39 61 00 70 */	addi r11, r1, 0x70
/* 8064AC9C  4B D1 75 41 */	bl _savegpr_29
/* 8064ACA0  7C 7D 1B 78 */	mr r29, r3
/* 8064ACA4  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064ACA8  3B E3 EB 1C */	addi r31, r3, lit_3757@l /* 0x8064EB1C@l */
/* 8064ACAC  4B B3 69 95 */	bl dCam_getBody__Fv
/* 8064ACB0  7C 7E 1B 78 */	mr r30, r3
/* 8064ACB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064ACB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064ACBC  80 04 5D AC */	lwz r0, 0x5dac(r4)
/* 8064ACC0  80 9D 06 DC */	lwz r4, 0x6dc(r29)
/* 8064ACC4  2C 04 00 03 */	cmpwi r4, 3
/* 8064ACC8  41 82 03 44 */	beq lbl_8064B00C
/* 8064ACCC  40 80 00 14 */	bge lbl_8064ACE0
/* 8064ACD0  2C 04 00 00 */	cmpwi r4, 0
/* 8064ACD4  41 82 00 24 */	beq lbl_8064ACF8
/* 8064ACD8  40 80 01 50 */	bge lbl_8064AE28
/* 8064ACDC  48 00 05 34 */	b lbl_8064B210
lbl_8064ACE0:
/* 8064ACE0  2C 04 00 0F */	cmpwi r4, 0xf
/* 8064ACE4  41 82 04 B0 */	beq lbl_8064B194
/* 8064ACE8  40 80 05 28 */	bge lbl_8064B210
/* 8064ACEC  2C 04 00 0E */	cmpwi r4, 0xe
/* 8064ACF0  40 80 04 4C */	bge lbl_8064B13C
/* 8064ACF4  48 00 05 1C */	b lbl_8064B210
lbl_8064ACF8:
/* 8064ACF8  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8064ACFC  28 00 00 02 */	cmplwi r0, 2
/* 8064AD00  41 82 00 2C */	beq lbl_8064AD2C
/* 8064AD04  7F A3 EB 78 */	mr r3, r29
/* 8064AD08  38 80 00 02 */	li r4, 2
/* 8064AD0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8064AD10  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8064AD14  38 C0 00 00 */	li r6, 0
/* 8064AD18  4B 9D 0B F1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8064AD1C  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8064AD20  60 00 00 02 */	ori r0, r0, 2
/* 8064AD24  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8064AD28  48 00 05 30 */	b lbl_8064B258
lbl_8064AD2C:
/* 8064AD2C  38 00 00 00 */	li r0, 0
/* 8064AD30  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8064AD34  4B B1 67 9D */	bl Stop__9dCamera_cFv
/* 8064AD38  7F C3 F3 78 */	mr r3, r30
/* 8064AD3C  38 80 00 03 */	li r4, 3
/* 8064AD40  4B B1 82 CD */	bl SetTrimSize__9dCamera_cFl
/* 8064AD44  7F A3 EB 78 */	mr r3, r29
/* 8064AD48  38 80 00 09 */	li r4, 9
/* 8064AD4C  38 A0 00 00 */	li r5, 0
/* 8064AD50  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064AD54  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064AD58  4B FF 38 6D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064AD5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044A@ha */
/* 8064AD60  38 03 04 4A */	addi r0, r3, 0x044A /* 0x0007044A@l */
/* 8064AD64  90 01 00 08 */	stw r0, 8(r1)
/* 8064AD68  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 8064AD6C  38 81 00 08 */	addi r4, r1, 8
/* 8064AD70  38 A0 00 00 */	li r5, 0
/* 8064AD74  38 C0 FF FF */	li r6, -1
/* 8064AD78  81 9D 05 F0 */	lwz r12, 0x5f0(r29)
/* 8064AD7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064AD80  7D 89 03 A6 */	mtctr r12
/* 8064AD84  4E 80 04 21 */	bctrl 
/* 8064AD88  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064AD8C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064AD90  80 63 00 00 */	lwz r3, 0(r3)
/* 8064AD94  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8064AD98  38 80 00 1E */	li r4, 0x1e
/* 8064AD9C  38 A0 00 00 */	li r5, 0
/* 8064ADA0  4B C6 46 69 */	bl bgmStop__8Z2SeqMgrFUll
/* 8064ADA4  3C 60 80 65 */	lis r3, s_del_tp__FPvPv@ha /* 0x8064AC20@ha */
/* 8064ADA8  38 63 AC 20 */	addi r3, r3, s_del_tp__FPvPv@l /* 0x8064AC20@l */
/* 8064ADAC  7F A4 EB 78 */	mr r4, r29
/* 8064ADB0  4B 9D 65 89 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8064ADB4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064ADB8  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 8064ADBC  D0 3D 07 6C */	stfs f1, 0x76c(r29)
/* 8064ADC0  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 8064ADC4  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064ADC8  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 8064ADCC  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 8064ADD0  D0 3D 07 60 */	stfs f1, 0x760(r29)
/* 8064ADD4  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8064ADD8  D0 1D 07 64 */	stfs f0, 0x764(r29)
/* 8064ADDC  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 8064ADE0  D0 1D 07 68 */	stfs f0, 0x768(r29)
/* 8064ADE4  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 8064ADE8  D0 1D 07 78 */	stfs f0, 0x778(r29)
/* 8064ADEC  38 00 00 01 */	li r0, 1
/* 8064ADF0  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064ADF4  38 00 2F 00 */	li r0, 0x2f00
/* 8064ADF8  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 8064ADFC  D0 3D 06 BC */	stfs f1, 0x6bc(r29)
/* 8064AE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064AE04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064AE08  3B A3 09 58 */	addi r29, r3, 0x958
/* 8064AE0C  7F A3 EB 78 */	mr r3, r29
/* 8064AE10  38 80 00 03 */	li r4, 3
/* 8064AE14  4B 9E 9B 05 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8064AE18  7F A3 EB 78 */	mr r3, r29
/* 8064AE1C  38 80 00 06 */	li r4, 6
/* 8064AE20  4B 9E 9A F9 */	bl onDungeonItem__12dSv_memBit_cFi
/* 8064AE24  48 00 04 34 */	b lbl_8064B258
lbl_8064AE28:
/* 8064AE28  2C 04 00 01 */	cmpwi r4, 1
/* 8064AE2C  40 82 00 7C */	bne lbl_8064AEA8
/* 8064AE30  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064AE34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8064AE38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8064AE3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8064AE40  7C 03 03 78 */	mr r3, r0
/* 8064AE44  38 81 00 3C */	addi r4, r1, 0x3c
/* 8064AE48  38 A0 80 00 */	li r5, -32768
/* 8064AE4C  38 C0 00 00 */	li r6, 0
/* 8064AE50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8064AE54  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8064AE58  7D 89 03 A6 */	mtctr r12
/* 8064AE5C  4E 80 04 21 */	bctrl 
/* 8064AE60  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064AE64  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8064AE68  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8064AE6C  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 8064AE70  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8064AE74  38 00 00 00 */	li r0, 0
/* 8064AE78  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 8064AE7C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8064AE80  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8064AE84  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 8064AE88  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8064AE8C  C0 1D 07 70 */	lfs f0, 0x770(r29)
/* 8064AE90  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064AE94  C0 1D 07 74 */	lfs f0, 0x774(r29)
/* 8064AE98  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064AE9C  38 00 00 02 */	li r0, 2
/* 8064AEA0  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064AEA4  48 00 00 28 */	b lbl_8064AECC
lbl_8064AEA8:
/* 8064AEA8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064AEAC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8064AEB0  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 8064AEB4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8064AEB8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064AEBC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064AEC0  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 8064AEC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064AEC8  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_8064AECC:
/* 8064AECC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064AED0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8064AED4  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 8064AED8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8064AEDC  4C 40 13 82 */	cror 2, 0, 2
/* 8064AEE0  40 82 00 14 */	bne lbl_8064AEF4
/* 8064AEE4  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 8064AEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064AEEC  4C 40 13 82 */	cror 2, 0, 2
/* 8064AEF0  41 82 00 24 */	beq lbl_8064AF14
lbl_8064AEF4:
/* 8064AEF4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8064AEF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8064AEFC  4C 40 13 82 */	cror 2, 0, 2
/* 8064AF00  40 82 00 30 */	bne lbl_8064AF30
/* 8064AF04  C0 1F 02 F4 */	lfs f0, 0x2f4(r31)
/* 8064AF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064AF0C  4C 40 13 82 */	cror 2, 0, 2
/* 8064AF10  40 82 00 20 */	bne lbl_8064AF30
lbl_8064AF14:
/* 8064AF14  38 7D 07 6C */	addi r3, r29, 0x76c
/* 8064AF18  38 81 00 54 */	addi r4, r1, 0x54
/* 8064AF1C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8064AF20  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8064AF24  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064AF28  4B C2 4B 91 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064AF2C  48 00 00 1C */	b lbl_8064AF48
lbl_8064AF30:
/* 8064AF30  38 7D 07 6C */	addi r3, r29, 0x76c
/* 8064AF34  38 81 00 54 */	addi r4, r1, 0x54
/* 8064AF38  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8064AF3C  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 8064AF40  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064AF44  4B C2 4B 75 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8064AF48:
/* 8064AF48  38 7D 06 BA */	addi r3, r29, 0x6ba
/* 8064AF4C  38 80 00 00 */	li r4, 0
/* 8064AF50  38 A0 00 10 */	li r5, 0x10
/* 8064AF54  38 C0 00 40 */	li r6, 0x40
/* 8064AF58  38 E0 00 10 */	li r7, 0x10
/* 8064AF5C  4B C2 55 E5 */	bl cLib_addCalcAngleS__FPsssss
/* 8064AF60  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064AF64  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8064AF68  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8064AF6C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064AF70  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 8064AF74  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064AF78  C0 1D 06 BC */	lfs f0, 0x6bc(r29)
/* 8064AF7C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8064AF80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8064AF84  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8064AF88  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8064AF8C  38 7D 07 60 */	addi r3, r29, 0x760
/* 8064AF90  38 81 00 54 */	addi r4, r1, 0x54
/* 8064AF94  A8 BD 06 BA */	lha r5, 0x6ba(r29)
/* 8064AF98  38 C1 00 48 */	addi r6, r1, 0x48
/* 8064AF9C  4B C2 5E 25 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8064AFA0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064AFA4  38 63 00 0C */	addi r3, r3, 0xc
/* 8064AFA8  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 8064AFAC  4B CD D4 81 */	bl checkPass__12J3DFrameCtrlFf
/* 8064AFB0  2C 03 00 00 */	cmpwi r3, 0
/* 8064AFB4  41 82 00 34 */	beq lbl_8064AFE8
/* 8064AFB8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064AFBC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8064AFC0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064AFC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064AFC8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8064AFCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064AFD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064AFD4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8064AFD8  38 80 00 04 */	li r4, 4
/* 8064AFDC  38 A0 00 1F */	li r5, 0x1f
/* 8064AFE0  38 C1 00 24 */	addi r6, r1, 0x24
/* 8064AFE4  4B A2 4A 41 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8064AFE8:
/* 8064AFE8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064AFEC  38 63 00 0C */	addi r3, r3, 0xc
/* 8064AFF0  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8064AFF4  4B CD D4 39 */	bl checkPass__12J3DFrameCtrlFf
/* 8064AFF8  2C 03 00 00 */	cmpwi r3, 0
/* 8064AFFC  41 82 02 14 */	beq lbl_8064B210
/* 8064B000  38 00 00 03 */	li r0, 3
/* 8064B004  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064B008  48 00 02 08 */	b lbl_8064B210
lbl_8064B00C:
/* 8064B00C  38 7D 06 BA */	addi r3, r29, 0x6ba
/* 8064B010  38 80 00 00 */	li r4, 0
/* 8064B014  38 A0 00 10 */	li r5, 0x10
/* 8064B018  38 C0 00 40 */	li r6, 0x40
/* 8064B01C  38 E0 00 10 */	li r7, 0x10
/* 8064B020  4B C2 55 21 */	bl cLib_addCalcAngleS__FPsssss
/* 8064B024  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 8064B028  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8064B02C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8064B030  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 8064B034  4B C2 4A 09 */	bl cLib_addCalc2__FPffff
/* 8064B038  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B03C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8064B040  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8064B044  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064B048  C0 1F 02 A8 */	lfs f0, 0x2a8(r31)
/* 8064B04C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064B050  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8064B054  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8064B058  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 8064B05C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8064B060  38 61 00 30 */	addi r3, r1, 0x30
/* 8064B064  38 81 00 54 */	addi r4, r1, 0x54
/* 8064B068  A8 BD 06 BA */	lha r5, 0x6ba(r29)
/* 8064B06C  38 C1 00 48 */	addi r6, r1, 0x48
/* 8064B070  4B C2 5D 51 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8064B074  38 7D 07 60 */	addi r3, r29, 0x760
/* 8064B078  38 81 00 30 */	addi r4, r1, 0x30
/* 8064B07C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8064B080  C0 5F 01 E4 */	lfs f2, 0x1e4(r31)
/* 8064B084  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064B088  4B C2 4A 31 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064B08C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064B090  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8064B094  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064B098  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064B09C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064B0A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8064B0A4  38 7D 07 6C */	addi r3, r29, 0x76c
/* 8064B0A8  38 81 00 54 */	addi r4, r1, 0x54
/* 8064B0AC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8064B0B0  C0 5F 02 DC */	lfs f2, 0x2dc(r31)
/* 8064B0B4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064B0B8  4B C2 4A 01 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064B0BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064B0C0  38 63 00 0C */	addi r3, r3, 0xc
/* 8064B0C4  C0 3F 03 00 */	lfs f1, 0x300(r31)
/* 8064B0C8  4B CD D3 65 */	bl checkPass__12J3DFrameCtrlFf
/* 8064B0CC  2C 03 00 00 */	cmpwi r3, 0
/* 8064B0D0  41 82 01 40 */	beq lbl_8064B210
/* 8064B0D4  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8064B0D8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064B0DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8064B0E0  38 00 00 0E */	li r0, 0xe
/* 8064B0E4  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064B0E8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064B0EC  D0 1D 07 60 */	stfs f0, 0x760(r29)
/* 8064B0F0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8064B0F4  D0 1D 07 64 */	stfs f0, 0x764(r29)
/* 8064B0F8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 8064B0FC  D0 1D 07 68 */	stfs f0, 0x768(r29)
/* 8064B100  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8064B104  D0 1D 06 BC */	stfs f0, 0x6bc(r29)
/* 8064B108  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064B10C  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 8064B110  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064B114  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B118  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064B11C  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 8064B120  C0 3D 07 70 */	lfs f1, 0x770(r29)
/* 8064B124  C0 1D 06 BC */	lfs f0, 0x6bc(r29)
/* 8064B128  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064B12C  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B130  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 8064B134  D0 1D 07 78 */	stfs f0, 0x778(r29)
/* 8064B138  48 00 00 D8 */	b lbl_8064B210
lbl_8064B13C:
/* 8064B13C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064B140  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 8064B144  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064B148  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B14C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064B150  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 8064B154  C0 3D 07 70 */	lfs f1, 0x770(r29)
/* 8064B158  C0 1D 06 BC */	lfs f0, 0x6bc(r29)
/* 8064B15C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064B160  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B164  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064B168  38 63 00 0C */	addi r3, r3, 0xc
/* 8064B16C  C0 3F 03 04 */	lfs f1, 0x304(r31)
/* 8064B170  4B CD D2 BD */	bl checkPass__12J3DFrameCtrlFf
/* 8064B174  2C 03 00 00 */	cmpwi r3, 0
/* 8064B178  41 82 00 98 */	beq lbl_8064B210
/* 8064B17C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8064B180  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064B184  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8064B188  38 00 00 0F */	li r0, 0xf
/* 8064B18C  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064B190  48 00 00 80 */	b lbl_8064B210
lbl_8064B194:
/* 8064B194  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8064B198  38 63 00 0C */	addi r3, r3, 0xc
/* 8064B19C  C0 3F 03 08 */	lfs f1, 0x308(r31)
/* 8064B1A0  4B CD D2 8D */	bl checkPass__12J3DFrameCtrlFf
/* 8064B1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8064B1A8  41 82 00 20 */	beq lbl_8064B1C8
/* 8064B1AC  3C 60 80 65 */	lis r3, d_a_b_zant__stringBase0@ha /* 0x8064EE60@ha */
/* 8064B1B0  38 63 EE 60 */	addi r3, r3, d_a_b_zant__stringBase0@l /* 0x8064EE60@l */
/* 8064B1B4  38 63 00 1C */	addi r3, r3, 0x1c
/* 8064B1B8  38 80 00 19 */	li r4, 0x19
/* 8064B1BC  38 A0 00 0A */	li r5, 0xa
/* 8064B1C0  38 C0 00 09 */	li r6, 9
/* 8064B1C4  4B 9E 23 91 */	bl dComIfGp_setNextStage__FPCcsScSc
lbl_8064B1C8:
/* 8064B1C8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8064B1CC  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 8064B1D0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8064B1D4  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B1D8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8064B1DC  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 8064B1E0  C0 3D 07 70 */	lfs f1, 0x770(r29)
/* 8064B1E4  C0 1D 06 BC */	lfs f0, 0x6bc(r29)
/* 8064B1E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064B1EC  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 8064B1F0  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 8064B1F4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B1F8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064B1FC  4B C2 55 45 */	bl cLib_chaseF__FPfff
/* 8064B200  38 7D 07 78 */	addi r3, r29, 0x778
/* 8064B204  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 8064B208  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8064B20C  4B C2 55 35 */	bl cLib_chaseF__FPfff
lbl_8064B210:
/* 8064B210  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 8064B214  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8064B218  C0 1D 07 70 */	lfs f0, 0x770(r29)
/* 8064B21C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064B220  C0 1D 07 74 */	lfs f0, 0x774(r29)
/* 8064B224  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8064B228  C0 1D 07 60 */	lfs f0, 0x760(r29)
/* 8064B22C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064B230  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 8064B234  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8064B238  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 8064B23C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064B240  7F C3 F3 78 */	mr r3, r30
/* 8064B244  38 81 00 18 */	addi r4, r1, 0x18
/* 8064B248  38 A1 00 0C */	addi r5, r1, 0xc
/* 8064B24C  C0 3D 07 78 */	lfs f1, 0x778(r29)
/* 8064B250  38 C0 00 00 */	li r6, 0
/* 8064B254  4B B3 58 8D */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_8064B258:
/* 8064B258  39 61 00 70 */	addi r11, r1, 0x70
/* 8064B25C  4B D1 6F CD */	bl _restgpr_29
/* 8064B260  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8064B264  7C 08 03 A6 */	mtlr r0
/* 8064B268  38 21 00 70 */	addi r1, r1, 0x70
/* 8064B26C  4E 80 00 20 */	blr 
