lbl_807A4004:
/* 807A4004  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807A4008  7C 08 02 A6 */	mflr r0
/* 807A400C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807A4010  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A4014  4B BB E1 C4 */	b _savegpr_28
/* 807A4018  7C 7C 1B 78 */	mr r28, r3
/* 807A401C  7C 9D 23 78 */	mr r29, r4
/* 807A4020  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A4024  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A4028  3B C0 00 00 */	li r30, 0
/* 807A402C  38 61 00 08 */	addi r3, r1, 8
/* 807A4030  4B 8D 3C 38 */	b __ct__11dBgS_LinChkFv
/* 807A4034  38 61 00 08 */	addi r3, r1, 8
/* 807A4038  38 9C 0F 88 */	addi r4, r28, 0xf88
/* 807A403C  38 BD 00 0C */	addi r5, r29, 0xc
/* 807A4040  7F 86 E3 78 */	mr r6, r28
/* 807A4044  4B 8D 3D 20 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807A4048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A404C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A4050  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807A4054  38 81 00 08 */	addi r4, r1, 8
/* 807A4058  4B 8D 03 5C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807A405C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A4060  41 82 00 34 */	beq lbl_807A4094
/* 807A4064  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A4068  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 807A406C  EC 01 00 2A */	fadds f0, f1, f0
/* 807A4070  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807A4074  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A4078  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 807A407C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A4080  40 81 00 0C */	ble lbl_807A408C
/* 807A4084  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807A4088  48 00 00 20 */	b lbl_807A40A8
lbl_807A408C:
/* 807A408C  3B C0 00 01 */	li r30, 1
/* 807A4090  48 00 00 18 */	b lbl_807A40A8
lbl_807A4094:
/* 807A4094  7F A3 EB 78 */	mr r3, r29
/* 807A4098  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A409C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A40A0  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 807A40A4  4B AC B9 98 */	b cLib_addCalc2__FPffff
lbl_807A40A8:
/* 807A40A8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A40AC  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A40B0  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A40B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A40B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A40BC  FC 00 00 1E */	fctiwz f0, f0
/* 807A40C0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 807A40C4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 807A40C8  B0 1D 00 04 */	sth r0, 4(r29)
/* 807A40CC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A40D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A40D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A40D8  40 81 00 3C */	ble lbl_807A4114
/* 807A40DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807A40E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A40E4  FC 00 00 1E */	fctiwz f0, f0
/* 807A40E8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 807A40EC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 807A40F0  B0 1D 00 06 */	sth r0, 6(r29)
/* 807A40F4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 807A40F8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 807A40FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A4100  FC 00 00 1E */	fctiwz f0, f0
/* 807A4104  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 807A4108  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807A410C  B0 1D 00 08 */	sth r0, 8(r29)
/* 807A4110  48 00 00 10 */	b lbl_807A4120
lbl_807A4114:
/* 807A4114  38 00 00 00 */	li r0, 0
/* 807A4118  B0 1D 00 08 */	sth r0, 8(r29)
/* 807A411C  B0 1D 00 06 */	sth r0, 6(r29)
lbl_807A4120:
/* 807A4120  38 61 00 08 */	addi r3, r1, 8
/* 807A4124  38 80 FF FF */	li r4, -1
/* 807A4128  4B 8D 3B B4 */	b __dt__11dBgS_LinChkFv
/* 807A412C  7F C3 F3 78 */	mr r3, r30
/* 807A4130  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A4134  4B BB E0 F0 */	b _restgpr_28
/* 807A4138  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807A413C  7C 08 03 A6 */	mtlr r0
/* 807A4140  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807A4144  4E 80 00 20 */	blr 
