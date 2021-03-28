lbl_8086CD70:
/* 8086CD70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8086CD74  7C 08 02 A6 */	mflr r0
/* 8086CD78  90 01 00 64 */	stw r0, 0x64(r1)
/* 8086CD7C  39 61 00 60 */	addi r11, r1, 0x60
/* 8086CD80  4B AF 54 3C */	b _savegpr_21
/* 8086CD84  3C 80 80 87 */	lis r4, lit_3829@ha
/* 8086CD88  3B A4 00 94 */	addi r29, r4, lit_3829@l
/* 8086CD8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8086CD90  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8086CD94  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 8086CD98  3B 63 3F A4 */	addi r27, r3, 0x3fa4
/* 8086CD9C  3B 00 00 00 */	li r24, 0
/* 8086CDA0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8086CDA4  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l
/* 8086CDA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086CDAC  3A A3 D4 70 */	addi r21, r3, now__14mDoMtx_stack_c@l
/* 8086CDB0  7E B6 AB 78 */	mr r22, r21
/* 8086CDB4  7E B7 AB 78 */	mr r23, r21
lbl_8086CDB8:
/* 8086CDB8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8086CDBC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8086CDC0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8086CDC4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8086CDC8  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8086CDCC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8086CDD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086CDD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8086CDD8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8086CDDC  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8086CDE0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8086CDE4  41 82 00 B4 */	beq lbl_8086CE98
/* 8086CDE8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8086CDEC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8086CDF0  EC 21 00 2A */	fadds f1, f1, f0
/* 8086CDF4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8086CDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086CDFC  40 81 00 0C */	ble lbl_8086CE08
/* 8086CE00  FC 00 08 34 */	frsqrte f0, f1
/* 8086CE04  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8086CE08:
/* 8086CE08  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 8086CE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086CE10  40 80 00 88 */	bge lbl_8086CE98
/* 8086CE14  2C 18 00 00 */	cmpwi r24, 0
/* 8086CE18  40 82 00 18 */	bne lbl_8086CE30
/* 8086CE1C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8086CE20  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 8086CE24  38 00 07 08 */	li r0, 0x708
/* 8086CE28  B0 1B 00 24 */	sth r0, 0x24(r27)
/* 8086CE2C  48 00 00 14 */	b lbl_8086CE40
lbl_8086CE30:
/* 8086CE30  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 8086CE34  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 8086CE38  38 00 0A F0 */	li r0, 0xaf0
/* 8086CE3C  B0 1B 00 24 */	sth r0, 0x24(r27)
lbl_8086CE40:
/* 8086CE40  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8086CE44  4B 9F AB 10 */	b cM_rndF__Ff
/* 8086CE48  FC 00 08 1E */	fctiwz f0, f1
/* 8086CE4C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8086CE50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8086CE54  B0 1B 00 20 */	sth r0, 0x20(r27)
/* 8086CE58  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8086CE5C  4B 9F AA F8 */	b cM_rndF__Ff
/* 8086CE60  FC 00 08 1E */	fctiwz f0, f1
/* 8086CE64  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8086CE68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086CE6C  B0 1B 00 22 */	sth r0, 0x22(r27)
/* 8086CE70  38 00 02 55 */	li r0, 0x255
/* 8086CE74  B0 01 00 08 */	sth r0, 8(r1)
/* 8086CE78  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 8086CE7C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8086CE80  38 81 00 08 */	addi r4, r1, 8
/* 8086CE84  4B 7A C9 74 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8086CE88  28 03 00 00 */	cmplwi r3, 0
/* 8086CE8C  41 82 00 0C */	beq lbl_8086CE98
/* 8086CE90  38 00 00 3C */	li r0, 0x3c
/* 8086CE94  98 03 07 B5 */	stb r0, 0x7b5(r3)
lbl_8086CE98:
/* 8086CE98  A8 7B 00 20 */	lha r3, 0x20(r27)
/* 8086CE9C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8086CEA0  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8086CEA4  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 8086CEA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8086CEAC  FC 00 00 1E */	fctiwz f0, f0
/* 8086CEB0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8086CEB4  83 41 00 24 */	lwz r26, 0x24(r1)
/* 8086CEB8  A8 1B 00 22 */	lha r0, 0x22(r27)
/* 8086CEBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8086CEC0  7C 1F 04 2E */	lfsx f0, r31, r0
/* 8086CEC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8086CEC8  FC 00 00 1E */	fctiwz f0, f0
/* 8086CECC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8086CED0  83 21 00 1C */	lwz r25, 0x1c(r1)
/* 8086CED4  A8 1B 00 24 */	lha r0, 0x24(r27)
/* 8086CED8  7C 03 02 14 */	add r0, r3, r0
/* 8086CEDC  B0 1B 00 20 */	sth r0, 0x20(r27)
/* 8086CEE0  A8 7B 00 22 */	lha r3, 0x22(r27)
/* 8086CEE4  A8 1B 00 24 */	lha r0, 0x24(r27)
/* 8086CEE8  7C 60 1A 14 */	add r3, r0, r3
/* 8086CEEC  38 03 02 BC */	addi r0, r3, 0x2bc
/* 8086CEF0  B0 1B 00 22 */	sth r0, 0x22(r27)
/* 8086CEF4  38 7B 00 24 */	addi r3, r27, 0x24
/* 8086CEF8  38 80 23 28 */	li r4, 0x2328
/* 8086CEFC  38 A0 00 01 */	li r5, 1
/* 8086CF00  38 C0 00 C8 */	li r6, 0xc8
/* 8086CF04  4B A0 37 04 */	b cLib_addCalcAngleS2__FPssss
/* 8086CF08  7E A3 AB 78 */	mr r3, r21
/* 8086CF0C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8086CF10  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8086CF14  C0 7B 00 08 */	lfs f3, 8(r27)
/* 8086CF18  4B AD 99 D0 */	b PSMTXTrans
/* 8086CF1C  7E A3 AB 78 */	mr r3, r21
/* 8086CF20  7F 44 D3 78 */	mr r4, r26
/* 8086CF24  4B 79 F4 78 */	b mDoMtx_XrotM__FPA4_fs
/* 8086CF28  7E C3 B3 78 */	mr r3, r22
/* 8086CF2C  7F 24 CB 78 */	mr r4, r25
/* 8086CF30  4B 79 F5 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 8086CF34  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8086CF38  FC 40 08 90 */	fmr f2, f1
/* 8086CF3C  FC 60 08 90 */	fmr f3, f1
/* 8086CF40  4B 79 FE F8 */	b scaleM__14mDoMtx_stack_cFfff
/* 8086CF44  7E E3 BB 78 */	mr r3, r23
/* 8086CF48  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8086CF4C  38 84 00 24 */	addi r4, r4, 0x24
/* 8086CF50  4B AD 95 60 */	b PSMTXCopy
/* 8086CF54  38 7B 00 1C */	addi r3, r27, 0x1c
/* 8086CF58  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8086CF5C  C0 5D 00 64 */	lfs f2, 0x64(r29)
/* 8086CF60  4B A0 2B 20 */	b cLib_addCalc0__FPfff
/* 8086CF64  3B 18 00 01 */	addi r24, r24, 1
/* 8086CF68  2C 18 00 02 */	cmpwi r24, 2
/* 8086CF6C  3B 7B 00 28 */	addi r27, r27, 0x28
/* 8086CF70  41 80 FE 48 */	blt lbl_8086CDB8
/* 8086CF74  39 61 00 60 */	addi r11, r1, 0x60
/* 8086CF78  4B AF 52 90 */	b _restgpr_21
/* 8086CF7C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8086CF80  7C 08 03 A6 */	mtlr r0
/* 8086CF84  38 21 00 60 */	addi r1, r1, 0x60
/* 8086CF88  4E 80 00 20 */	blr 
