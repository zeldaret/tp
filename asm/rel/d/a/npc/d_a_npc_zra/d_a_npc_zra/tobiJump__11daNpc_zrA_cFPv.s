lbl_80B8AB78:
/* 80B8AB78  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B8AB7C  7C 08 02 A6 */	mflr r0
/* 80B8AB80  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B8AB84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B8AB88  4B 7D 76 4D */	bl _savegpr_27
/* 80B8AB8C  7C 7B 1B 78 */	mr r27, r3
/* 80B8AB90  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8AB94  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B8AB98  3B DF 00 00 */	addi r30, r31, 0
/* 80B8AB9C  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80B8ABA0  54 00 08 3C */	slwi r0, r0, 1
/* 80B8ABA4  7C 1D 07 34 */	extsh r29, r0
/* 80B8ABA8  3B 80 00 04 */	li r28, 4
/* 80B8ABAC  A0 1B 14 E6 */	lhz r0, 0x14e6(r27)
/* 80B8ABB0  2C 00 00 02 */	cmpwi r0, 2
/* 80B8ABB4  41 82 00 40 */	beq lbl_80B8ABF4
/* 80B8ABB8  40 80 06 28 */	bge lbl_80B8B1E0
/* 80B8ABBC  2C 00 00 00 */	cmpwi r0, 0
/* 80B8ABC0  41 82 00 0C */	beq lbl_80B8ABCC
/* 80B8ABC4  48 00 06 1C */	b lbl_80B8B1E0
/* 80B8ABC8  48 00 06 18 */	b lbl_80B8B1E0
lbl_80B8ABCC:
/* 80B8ABCC  38 00 00 05 */	li r0, 5
/* 80B8ABD0  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B8ABD4  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B8ABD8  B0 1B 15 36 */	sth r0, 0x1536(r27)
/* 80B8ABDC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B8ABE0  B0 1B 15 38 */	sth r0, 0x1538(r27)
/* 80B8ABE4  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B8ABE8  B0 1B 15 3A */	sth r0, 0x153a(r27)
/* 80B8ABEC  38 00 00 02 */	li r0, 2
/* 80B8ABF0  B0 1B 14 E6 */	sth r0, 0x14e6(r27)
lbl_80B8ABF4:
/* 80B8ABF4  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B8ABF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8ABFC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8AC00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8AC04  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8AC08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8AC0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8AC10  4B 7B B8 A1 */	bl PSMTXCopy
/* 80B8AC14  38 7B 04 EC */	addi r3, r27, 0x4ec
/* 80B8AC18  4B 48 22 59 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B8AC1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8AC20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8AC24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B8AC28  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B8AC2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B8AC30  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B8AC34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8AC38  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B8AC3C  88 1B 15 3E */	lbz r0, 0x153e(r27)
/* 80B8AC40  28 00 00 00 */	cmplwi r0, 0
/* 80B8AC44  41 82 03 D0 */	beq lbl_80B8B014
/* 80B8AC48  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B8AC4C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B8AC50  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B8AC54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8AC58  40 81 00 38 */	ble lbl_80B8AC90
/* 80B8AC5C  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 80B8AC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8AC64  40 80 00 2C */	bge lbl_80B8AC90
/* 80B8AC68  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8AC6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B8AC70  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B8AC74  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B8AC78  C0 5F 07 4C */	lfs f2, 0x74c(r31)
/* 80B8AC7C  C0 7F 07 A8 */	lfs f3, 0x7a8(r31)
/* 80B8AC80  4B 6E 4D BD */	bl cLib_addCalc2__FPffff
/* 80B8AC84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B8AC88  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B8AC8C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B8AC90:
/* 80B8AC90  7F 63 DB 78 */	mr r3, r27
/* 80B8AC94  7F A4 EB 78 */	mr r4, r29
/* 80B8AC98  38 A0 00 04 */	li r5, 4
/* 80B8AC9C  38 DB 04 DE */	addi r6, r27, 0x4de
/* 80B8ACA0  38 FB 04 E0 */	addi r7, r27, 0x4e0
/* 80B8ACA4  4B FF 73 15 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B8ACA8  C0 3B 15 48 */	lfs f1, 0x1548(r27)
/* 80B8ACAC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B8ACB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8ACB4  D0 1B 15 48 */	stfs f0, 0x1548(r27)
/* 80B8ACB8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B8ACBC  38 9B 15 44 */	addi r4, r27, 0x1544
/* 80B8ACC0  7C 65 1B 78 */	mr r5, r3
/* 80B8ACC4  4B 7B C3 CD */	bl PSVECAdd
/* 80B8ACC8  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B8ACCC  2C 00 3A 00 */	cmpwi r0, 0x3a00
/* 80B8ACD0  40 80 01 20 */	bge lbl_80B8ADF0
/* 80B8ACD4  C0 3B 15 4C */	lfs f1, 0x154c(r27)
/* 80B8ACD8  C0 1B 15 44 */	lfs f0, 0x1544(r27)
/* 80B8ACDC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B8ACE0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8ACE4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8ACE8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B8ACEC  38 61 00 38 */	addi r3, r1, 0x38
/* 80B8ACF0  4B 7B C4 49 */	bl PSVECSquareMag
/* 80B8ACF4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8ACF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8ACFC  40 81 00 58 */	ble lbl_80B8AD54
/* 80B8AD00  FC 00 08 34 */	frsqrte f0, f1
/* 80B8AD04  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B8AD08  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AD0C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B8AD10  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AD14  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AD18  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AD1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AD20  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AD24  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AD28  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AD2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AD30  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AD34  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AD38  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AD3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AD40  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AD44  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AD48  FC 41 00 32 */	fmul f2, f1, f0
/* 80B8AD4C  FC 40 10 18 */	frsp f2, f2
/* 80B8AD50  48 00 00 90 */	b lbl_80B8ADE0
lbl_80B8AD54:
/* 80B8AD54  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B8AD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8AD5C  40 80 00 10 */	bge lbl_80B8AD6C
/* 80B8AD60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8AD64  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8AD68  48 00 00 78 */	b lbl_80B8ADE0
lbl_80B8AD6C:
/* 80B8AD6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B8AD70  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B8AD74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8AD78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8AD7C  7C 03 00 00 */	cmpw r3, r0
/* 80B8AD80  41 82 00 14 */	beq lbl_80B8AD94
/* 80B8AD84  40 80 00 40 */	bge lbl_80B8ADC4
/* 80B8AD88  2C 03 00 00 */	cmpwi r3, 0
/* 80B8AD8C  41 82 00 20 */	beq lbl_80B8ADAC
/* 80B8AD90  48 00 00 34 */	b lbl_80B8ADC4
lbl_80B8AD94:
/* 80B8AD94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8AD98  41 82 00 0C */	beq lbl_80B8ADA4
/* 80B8AD9C  38 00 00 01 */	li r0, 1
/* 80B8ADA0  48 00 00 28 */	b lbl_80B8ADC8
lbl_80B8ADA4:
/* 80B8ADA4  38 00 00 02 */	li r0, 2
/* 80B8ADA8  48 00 00 20 */	b lbl_80B8ADC8
lbl_80B8ADAC:
/* 80B8ADAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8ADB0  41 82 00 0C */	beq lbl_80B8ADBC
/* 80B8ADB4  38 00 00 05 */	li r0, 5
/* 80B8ADB8  48 00 00 10 */	b lbl_80B8ADC8
lbl_80B8ADBC:
/* 80B8ADBC  38 00 00 03 */	li r0, 3
/* 80B8ADC0  48 00 00 08 */	b lbl_80B8ADC8
lbl_80B8ADC4:
/* 80B8ADC4  38 00 00 04 */	li r0, 4
lbl_80B8ADC8:
/* 80B8ADC8  2C 00 00 01 */	cmpwi r0, 1
/* 80B8ADCC  40 82 00 10 */	bne lbl_80B8ADDC
/* 80B8ADD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8ADD4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8ADD8  48 00 00 08 */	b lbl_80B8ADE0
lbl_80B8ADDC:
/* 80B8ADDC  FC 40 08 90 */	fmr f2, f1
lbl_80B8ADE0:
/* 80B8ADE0  C0 3B 15 48 */	lfs f1, 0x1548(r27)
/* 80B8ADE4  4B 6D C8 91 */	bl cM_atan2s__Fff
/* 80B8ADE8  7C 03 00 D0 */	neg r0, r3
/* 80B8ADEC  B0 1B 04 DC */	sth r0, 0x4dc(r27)
lbl_80B8ADF0:
/* 80B8ADF0  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B8ADF4  B0 1B 08 F0 */	sth r0, 0x8f0(r27)
/* 80B8ADF8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B8ADFC  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B8AE00  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B8AE04  B0 1B 08 F4 */	sth r0, 0x8f4(r27)
/* 80B8AE08  A8 1B 08 F0 */	lha r0, 0x8f0(r27)
/* 80B8AE0C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80B8AE10  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B8AE14  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B8AE18  A8 1B 08 F4 */	lha r0, 0x8f4(r27)
/* 80B8AE1C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80B8AE20  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B8AE24  38 81 00 20 */	addi r4, r1, 0x20
/* 80B8AE28  4B 49 2A 69 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B8AE2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B8AE30  41 82 01 DC */	beq lbl_80B8B00C
/* 80B8AE34  88 1B 15 77 */	lbz r0, 0x1577(r27)
/* 80B8AE38  28 00 00 00 */	cmplwi r0, 0
/* 80B8AE3C  41 82 00 7C */	beq lbl_80B8AEB8
/* 80B8AE40  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80B8AE44  C0 1B 15 48 */	lfs f0, 0x1548(r27)
/* 80B8AE48  EC 01 00 2A */	fadds f0, f1, f0
/* 80B8AE4C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80B8AE50  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80B8AE54  4C 40 13 82 */	cror 2, 0, 2
/* 80B8AE58  40 82 00 60 */	bne lbl_80B8AEB8
/* 80B8AE5C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B8AE60  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B8AE64  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80B8AE68  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B8AE6C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B8AE70  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80B8AE74  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B8AE78  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B8AE7C  38 80 00 00 */	li r4, 0
/* 80B8AE80  4B 49 49 FD */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B8AE84  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B8AE88  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B8AE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8AE90  38 7B 0B 48 */	addi r3, r27, 0xb48
/* 80B8AE94  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8AE98  38 A0 00 00 */	li r5, 0
/* 80B8AE9C  38 C0 FF FF */	li r6, -1
/* 80B8AEA0  81 9B 0B 48 */	lwz r12, 0xb48(r27)
/* 80B8AEA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8AEA8  7D 89 03 A6 */	mtctr r12
/* 80B8AEAC  4E 80 04 21 */	bctrl 
/* 80B8AEB0  38 00 00 00 */	li r0, 0
/* 80B8AEB4  98 1B 15 77 */	stb r0, 0x1577(r27)
lbl_80B8AEB8:
/* 80B8AEB8  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80B8AEBC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B8AEC0  38 7F 00 00 */	addi r3, r31, 0
/* 80B8AEC4  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B8AEC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8AECC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B8AED0  4C 40 13 82 */	cror 2, 0, 2
/* 80B8AED4  40 82 01 38 */	bne lbl_80B8B00C
/* 80B8AED8  3C 60 80 B9 */	lis r3, lit_11468@ha /* 0x80B8D8D0@ha */
/* 80B8AEDC  38 83 D8 D0 */	addi r4, r3, lit_11468@l /* 0x80B8D8D0@l */
/* 80B8AEE0  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8AEE4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8AEE8  90 61 00 44 */	stw r3, 0x44(r1)
/* 80B8AEEC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B8AEF0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8AEF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B8AEF8  7F 63 DB 78 */	mr r3, r27
/* 80B8AEFC  38 81 00 44 */	addi r4, r1, 0x44
/* 80B8AF00  4B FF 2C 21 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8AF04  C0 3B 15 4C */	lfs f1, 0x154c(r27)
/* 80B8AF08  C0 1B 15 44 */	lfs f0, 0x1544(r27)
/* 80B8AF0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B8AF10  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8AF14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B8AF18  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B8AF1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B8AF20  4B 7B C2 19 */	bl PSVECSquareMag
/* 80B8AF24  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8AF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8AF2C  40 81 00 58 */	ble lbl_80B8AF84
/* 80B8AF30  FC 00 08 34 */	frsqrte f0, f1
/* 80B8AF34  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B8AF38  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AF3C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B8AF40  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AF44  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AF48  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AF4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AF50  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AF54  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AF58  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AF5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AF60  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AF64  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8AF68  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8AF6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8AF70  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8AF74  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8AF78  FC 21 00 32 */	fmul f1, f1, f0
/* 80B8AF7C  FC 20 08 18 */	frsp f1, f1
/* 80B8AF80  48 00 00 88 */	b lbl_80B8B008
lbl_80B8AF84:
/* 80B8AF84  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B8AF88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8AF8C  40 80 00 10 */	bge lbl_80B8AF9C
/* 80B8AF90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8AF94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8AF98  48 00 00 70 */	b lbl_80B8B008
lbl_80B8AF9C:
/* 80B8AF9C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B8AFA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80B8AFA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8AFA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8AFAC  7C 03 00 00 */	cmpw r3, r0
/* 80B8AFB0  41 82 00 14 */	beq lbl_80B8AFC4
/* 80B8AFB4  40 80 00 40 */	bge lbl_80B8AFF4
/* 80B8AFB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B8AFBC  41 82 00 20 */	beq lbl_80B8AFDC
/* 80B8AFC0  48 00 00 34 */	b lbl_80B8AFF4
lbl_80B8AFC4:
/* 80B8AFC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8AFC8  41 82 00 0C */	beq lbl_80B8AFD4
/* 80B8AFCC  38 00 00 01 */	li r0, 1
/* 80B8AFD0  48 00 00 28 */	b lbl_80B8AFF8
lbl_80B8AFD4:
/* 80B8AFD4  38 00 00 02 */	li r0, 2
/* 80B8AFD8  48 00 00 20 */	b lbl_80B8AFF8
lbl_80B8AFDC:
/* 80B8AFDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8AFE0  41 82 00 0C */	beq lbl_80B8AFEC
/* 80B8AFE4  38 00 00 05 */	li r0, 5
/* 80B8AFE8  48 00 00 10 */	b lbl_80B8AFF8
lbl_80B8AFEC:
/* 80B8AFEC  38 00 00 03 */	li r0, 3
/* 80B8AFF0  48 00 00 08 */	b lbl_80B8AFF8
lbl_80B8AFF4:
/* 80B8AFF4  38 00 00 04 */	li r0, 4
lbl_80B8AFF8:
/* 80B8AFF8  2C 00 00 01 */	cmpwi r0, 1
/* 80B8AFFC  40 82 00 0C */	bne lbl_80B8B008
/* 80B8B000  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8B004  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B8B008:
/* 80B8B008  D0 3B 15 24 */	stfs f1, 0x1524(r27)
lbl_80B8B00C:
/* 80B8B00C  38 60 00 01 */	li r3, 1
/* 80B8B010  48 00 01 D4 */	b lbl_80B8B1E4
lbl_80B8B014:
/* 80B8B014  38 00 C5 00 */	li r0, -15104
/* 80B8B018  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80B8B01C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B8B020  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80B8B024  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B8B028  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80B8B02C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B8B030  38 81 00 20 */	addi r4, r1, 0x20
/* 80B8B034  4B 49 28 5D */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B8B038  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B03C  41 82 00 E4 */	beq lbl_80B8B120
/* 80B8B040  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80B8B044  54 00 08 3C */	slwi r0, r0, 1
/* 80B8B048  7C 1D 07 34 */	extsh r29, r0
/* 80B8B04C  3B 80 00 02 */	li r28, 2
/* 80B8B050  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80B8B054  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80B8B058  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80B8B05C  41 80 00 C4 */	blt lbl_80B8B120
/* 80B8B060  88 1B 15 77 */	lbz r0, 0x1577(r27)
/* 80B8B064  28 00 00 00 */	cmplwi r0, 0
/* 80B8B068  40 82 00 60 */	bne lbl_80B8B0C8
/* 80B8B06C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B8B070  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B8B074  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80B8B078  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B8B07C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B8B080  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80B8B084  38 61 00 50 */	addi r3, r1, 0x50
/* 80B8B088  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B8B08C  38 80 00 00 */	li r4, 0
/* 80B8B090  4B 49 47 ED */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B8B094  38 00 00 01 */	li r0, 1
/* 80B8B098  98 1B 15 77 */	stb r0, 0x1577(r27)
/* 80B8B09C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D5@ha */
/* 80B8B0A0  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000600D5@l */
/* 80B8B0A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8B0A8  38 7B 0B 48 */	addi r3, r27, 0xb48
/* 80B8B0AC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B8B0B0  38 A0 00 00 */	li r5, 0
/* 80B8B0B4  38 C0 FF FF */	li r6, -1
/* 80B8B0B8  81 9B 0B 48 */	lwz r12, 0xb48(r27)
/* 80B8B0BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8B0C0  7D 89 03 A6 */	mtctr r12
/* 80B8B0C4  4E 80 04 21 */	bctrl 
lbl_80B8B0C8:
/* 80B8B0C8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80B8B0CC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B8B0D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8B0D4  40 81 00 4C */	ble lbl_80B8B120
/* 80B8B0D8  C0 3B 15 24 */	lfs f1, 0x1524(r27)
/* 80B8B0DC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8B0E0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B8B0E4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B8B0E8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80B8B0EC  7F 63 DB 78 */	mr r3, r27
/* 80B8B0F0  38 81 00 74 */	addi r4, r1, 0x74
/* 80B8B0F4  4B FF 74 91 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B8B0F8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B8B0FC  D0 1B 15 44 */	stfs f0, 0x1544(r27)
/* 80B8B100  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B8B104  D0 1B 15 48 */	stfs f0, 0x1548(r27)
/* 80B8B108  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80B8B10C  D0 1B 15 4C */	stfs f0, 0x154c(r27)
/* 80B8B110  38 00 00 01 */	li r0, 1
/* 80B8B114  98 1B 15 3E */	stb r0, 0x153e(r27)
/* 80B8B118  38 60 00 01 */	li r3, 1
/* 80B8B11C  48 00 00 C8 */	b lbl_80B8B1E4
lbl_80B8B120:
/* 80B8B120  7F 63 DB 78 */	mr r3, r27
/* 80B8B124  38 81 00 24 */	addi r4, r1, 0x24
/* 80B8B128  38 BB 15 36 */	addi r5, r27, 0x1536
/* 80B8B12C  7F 86 E3 78 */	mr r6, r28
/* 80B8B130  7F A7 EB 78 */	mr r7, r29
/* 80B8B134  4B FF 73 C1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B8B138  38 7B 15 24 */	addi r3, r27, 0x1524
/* 80B8B13C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B8B140  38 9F 00 00 */	addi r4, r31, 0
/* 80B8B144  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80B8B148  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B8B14C  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B8B150  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80B8B154  4B 6E 48 E9 */	bl cLib_addCalc2__FPffff
/* 80B8B158  C0 3B 15 24 */	lfs f1, 0x1524(r27)
/* 80B8B15C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8B160  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B8B164  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B8B168  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80B8B16C  7F 63 DB 78 */	mr r3, r27
/* 80B8B170  38 81 00 74 */	addi r4, r1, 0x74
/* 80B8B174  4B FF 74 11 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B8B178  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B8B17C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8B180  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B8B184  38 61 00 18 */	addi r3, r1, 0x18
/* 80B8B188  C0 3B 15 24 */	lfs f1, 0x1524(r27)
/* 80B8B18C  38 9F 00 00 */	addi r4, r31, 0
/* 80B8B190  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 80B8B194  EC 21 00 24 */	fdivs f1, f1, f0
/* 80B8B198  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B8B19C  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B8B1A0  4B 6E 48 9D */	bl cLib_addCalc2__FPffff
/* 80B8B1A4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B8B1A8  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B8B1AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B8B1B0  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B8B1B4  B0 1B 08 F0 */	sth r0, 0x8f0(r27)
/* 80B8B1B8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B8B1BC  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B8B1C0  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B8B1C4  B0 1B 08 F4 */	sth r0, 0x8f4(r27)
/* 80B8B1C8  A8 1B 08 F0 */	lha r0, 0x8f0(r27)
/* 80B8B1CC  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80B8B1D0  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B8B1D4  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B8B1D8  A8 1B 08 F4 */	lha r0, 0x8f4(r27)
/* 80B8B1DC  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_80B8B1E0:
/* 80B8B1E0  38 60 00 01 */	li r3, 1
lbl_80B8B1E4:
/* 80B8B1E4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B8B1E8  4B 7D 70 39 */	bl _restgpr_27
/* 80B8B1EC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B8B1F0  7C 08 03 A6 */	mtlr r0
/* 80B8B1F4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B8B1F8  4E 80 00 20 */	blr 
