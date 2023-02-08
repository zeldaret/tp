lbl_806E89C0:
/* 806E89C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806E89C4  7C 08 02 A6 */	mflr r0
/* 806E89C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 806E89CC  39 61 00 80 */	addi r11, r1, 0x80
/* 806E89D0  4B C7 98 09 */	bl _savegpr_28
/* 806E89D4  7C 7E 1B 78 */	mr r30, r3
/* 806E89D8  3C 60 80 6F */	lis r3, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E89DC  3B E3 A1 F4 */	addi r31, r3, lit_3905@l /* 0x806EA1F4@l */
/* 806E89E0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E89E4  83 83 00 04 */	lwz r28, 4(r3)
/* 806E89E8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806E89EC  4B 92 43 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806E89F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E89F4  C0 5E 07 68 */	lfs f2, 0x768(r30)
/* 806E89F8  FC 60 08 90 */	fmr f3, f1
/* 806E89FC  4B 92 43 A1 */	bl transM__14mDoMtx_stack_cFfff
/* 806E8A00  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806E8A04  4B 92 45 41 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E8A08  38 7E 07 72 */	addi r3, r30, 0x772
/* 806E8A0C  4B 92 45 39 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E8A10  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E8A14  3B A3 A4 F8 */	addi r29, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E8A18  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806E8A1C  FC 40 08 90 */	fmr f2, f1
/* 806E8A20  FC 60 08 90 */	fmr f3, f1
/* 806E8A24  4B 92 44 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806E8A28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8A2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8A30  38 9C 00 24 */	addi r4, r28, 0x24
/* 806E8A34  4B C5 DA 7D */	bl PSMTXCopy
/* 806E8A38  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E8A3C  4B 92 87 B1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806E8A40  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 806E8A44  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 806E8A48  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 806E8A4C  D0 1E 07 54 */	stfs f0, 0x754(r30)
/* 806E8A50  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 806E8A54  D0 1E 07 58 */	stfs f0, 0x758(r30)
/* 806E8A58  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806E8A5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8A60  38 63 02 70 */	addi r3, r3, 0x270
/* 806E8A64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8A68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8A6C  4B C5 DA 45 */	bl PSMTXCopy
/* 806E8A70  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806E8A74  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E8A78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E8A7C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E8A80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E8A84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8A88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8A8C  38 81 00 30 */	addi r4, r1, 0x30
/* 806E8A90  38 BE 07 44 */	addi r5, r30, 0x744
/* 806E8A94  4B C5 E2 D9 */	bl PSMTXMultVec
/* 806E8A98  38 7E 07 44 */	addi r3, r30, 0x744
/* 806E8A9C  4B 92 42 C9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806E8AA0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806E8AA4  4B 92 44 A1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E8AA8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806E8AAC  FC 40 08 90 */	fmr f2, f1
/* 806E8AB0  FC 60 08 90 */	fmr f3, f1
/* 806E8AB4  4B 92 43 85 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806E8AB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E8ABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E8AC0  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 806E8AC4  38 84 00 24 */	addi r4, r4, 0x24
/* 806E8AC8  4B C5 D9 E9 */	bl PSMTXCopy
/* 806E8ACC  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806E8AD0  2C 00 00 05 */	cmpwi r0, 5
/* 806E8AD4  41 82 02 18 */	beq lbl_806E8CEC
/* 806E8AD8  2C 00 00 06 */	cmpwi r0, 6
/* 806E8ADC  41 82 02 10 */	beq lbl_806E8CEC
/* 806E8AE0  38 61 00 24 */	addi r3, r1, 0x24
/* 806E8AE4  38 9E 07 50 */	addi r4, r30, 0x750
/* 806E8AE8  38 BE 07 44 */	addi r5, r30, 0x744
/* 806E8AEC  4B B7 E0 49 */	bl __mi__4cXyzCFRC3Vec
/* 806E8AF0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806E8AF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E8AF8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E8AFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E8B00  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806E8B04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E8B08  38 61 00 30 */	addi r3, r1, 0x30
/* 806E8B0C  4B C5 E6 2D */	bl PSVECSquareMag
/* 806E8B10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E8B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8B18  40 81 00 58 */	ble lbl_806E8B70
/* 806E8B1C  FC 00 08 34 */	frsqrte f0, f1
/* 806E8B20  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E8B24  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8B28  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E8B2C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8B30  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8B34  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8B38  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8B3C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8B40  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8B44  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8B48  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8B4C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8B50  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8B54  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8B58  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8B5C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8B60  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8B64  FC 21 00 32 */	fmul f1, f1, f0
/* 806E8B68  FC 20 08 18 */	frsp f1, f1
/* 806E8B6C  48 00 00 88 */	b lbl_806E8BF4
lbl_806E8B70:
/* 806E8B70  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E8B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8B78  40 80 00 10 */	bge lbl_806E8B88
/* 806E8B7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E8B80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E8B84  48 00 00 70 */	b lbl_806E8BF4
lbl_806E8B88:
/* 806E8B88  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806E8B8C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806E8B90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E8B94  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E8B98  7C 03 00 00 */	cmpw r3, r0
/* 806E8B9C  41 82 00 14 */	beq lbl_806E8BB0
/* 806E8BA0  40 80 00 40 */	bge lbl_806E8BE0
/* 806E8BA4  2C 03 00 00 */	cmpwi r3, 0
/* 806E8BA8  41 82 00 20 */	beq lbl_806E8BC8
/* 806E8BAC  48 00 00 34 */	b lbl_806E8BE0
lbl_806E8BB0:
/* 806E8BB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E8BB4  41 82 00 0C */	beq lbl_806E8BC0
/* 806E8BB8  38 00 00 01 */	li r0, 1
/* 806E8BBC  48 00 00 28 */	b lbl_806E8BE4
lbl_806E8BC0:
/* 806E8BC0  38 00 00 02 */	li r0, 2
/* 806E8BC4  48 00 00 20 */	b lbl_806E8BE4
lbl_806E8BC8:
/* 806E8BC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E8BCC  41 82 00 0C */	beq lbl_806E8BD8
/* 806E8BD0  38 00 00 05 */	li r0, 5
/* 806E8BD4  48 00 00 10 */	b lbl_806E8BE4
lbl_806E8BD8:
/* 806E8BD8  38 00 00 03 */	li r0, 3
/* 806E8BDC  48 00 00 08 */	b lbl_806E8BE4
lbl_806E8BE0:
/* 806E8BE0  38 00 00 04 */	li r0, 4
lbl_806E8BE4:
/* 806E8BE4  2C 00 00 01 */	cmpwi r0, 1
/* 806E8BE8  40 82 00 0C */	bne lbl_806E8BF4
/* 806E8BEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E8BF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806E8BF4:
/* 806E8BF4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806E8BF8  EC 20 00 72 */	fmuls f1, f0, f1
/* 806E8BFC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806E8C00  EC 21 00 2A */	fadds f1, f1, f0
/* 806E8C04  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806E8C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8C0C  40 81 00 08 */	ble lbl_806E8C14
/* 806E8C10  FC 20 00 90 */	fmr f1, f0
lbl_806E8C14:
/* 806E8C14  38 7E 07 98 */	addi r3, r30, 0x798
/* 806E8C18  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 806E8C1C  EC 62 00 72 */	fmuls f3, f2, f1
/* 806E8C20  4B B8 6E 1D */	bl cLib_addCalc2__FPffff
/* 806E8C24  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 806E8C28  A8 1E 07 A8 */	lha r0, 0x7a8(r30)
/* 806E8C2C  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806E8C30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E8C34  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E8C38  3C 00 43 30 */	lis r0, 0x4330
/* 806E8C3C  90 01 00 40 */	stw r0, 0x40(r1)
/* 806E8C40  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806E8C44  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E8C48  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E8C4C  FC 00 00 1E */	fctiwz f0, f0
/* 806E8C50  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806E8C54  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806E8C58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806E8C5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806E8C60  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806E8C64  7C 23 04 2E */	lfsx f1, r3, r0
/* 806E8C68  38 7E 07 6C */	addi r3, r30, 0x76c
/* 806E8C6C  C0 1E 07 98 */	lfs f0, 0x798(r30)
/* 806E8C70  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E8C74  FC 00 00 1E */	fctiwz f0, f0
/* 806E8C78  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806E8C7C  80 81 00 54 */	lwz r4, 0x54(r1)
/* 806E8C80  38 A0 00 08 */	li r5, 8
/* 806E8C84  38 C0 04 00 */	li r6, 0x400
/* 806E8C88  4B B8 79 81 */	bl cLib_addCalcAngleS2__FPssss
/* 806E8C8C  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 806E8C90  A8 1E 07 A8 */	lha r0, 0x7a8(r30)
/* 806E8C94  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806E8C98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E8C9C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 806E8CA0  3C 00 43 30 */	lis r0, 0x4330
/* 806E8CA4  90 01 00 58 */	stw r0, 0x58(r1)
/* 806E8CA8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 806E8CAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E8CB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E8CB4  FC 00 00 1E */	fctiwz f0, f0
/* 806E8CB8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 806E8CBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806E8CC0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806E8CC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806E8CC8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806E8CCC  7C 23 04 2E */	lfsx f1, r3, r0
/* 806E8CD0  C0 1E 07 98 */	lfs f0, 0x798(r30)
/* 806E8CD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E8CD8  FC 00 00 1E */	fctiwz f0, f0
/* 806E8CDC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806E8CE0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806E8CE4  B0 1E 07 70 */	sth r0, 0x770(r30)
/* 806E8CE8  48 00 00 14 */	b lbl_806E8CFC
lbl_806E8CEC:
/* 806E8CEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E8CF0  D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 806E8CF4  38 00 00 00 */	li r0, 0
/* 806E8CF8  B0 1E 07 6C */	sth r0, 0x76c(r30)
lbl_806E8CFC:
/* 806E8CFC  80 1E 07 10 */	lwz r0, 0x710(r30)
/* 806E8D00  2C 00 00 03 */	cmpwi r0, 3
/* 806E8D04  40 82 00 C4 */	bne lbl_806E8DC8
/* 806E8D08  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 806E8D0C  28 00 00 00 */	cmplwi r0, 0
/* 806E8D10  40 82 00 B8 */	bne lbl_806E8DC8
/* 806E8D14  4B A7 67 11 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 806E8D18  2C 03 00 00 */	cmpwi r3, 0
/* 806E8D1C  41 82 00 AC */	beq lbl_806E8DC8
/* 806E8D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E8D24  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E8D28  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E8D2C  38 00 00 FF */	li r0, 0xff
/* 806E8D30  90 01 00 08 */	stw r0, 8(r1)
/* 806E8D34  38 80 00 00 */	li r4, 0
/* 806E8D38  90 81 00 0C */	stw r4, 0xc(r1)
/* 806E8D3C  38 00 FF FF */	li r0, -1
/* 806E8D40  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E8D44  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E8D48  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E8D4C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806E8D50  80 9E 0D DC */	lwz r4, 0xddc(r30)
/* 806E8D54  38 A0 00 00 */	li r5, 0
/* 806E8D58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000878B@ha */
/* 806E8D5C  38 C6 87 8B */	addi r6, r6, 0x878B /* 0x0000878B@l */
/* 806E8D60  38 FE 0D E0 */	addi r7, r30, 0xde0
/* 806E8D64  39 00 00 00 */	li r8, 0
/* 806E8D68  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806E8D6C  39 40 00 00 */	li r10, 0
/* 806E8D70  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E8D74  4B 96 47 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E8D78  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 806E8D7C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E8D80  38 63 02 10 */	addi r3, r3, 0x210
/* 806E8D84  80 9E 0D DC */	lwz r4, 0xddc(r30)
/* 806E8D88  4B 96 2B 91 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806E8D8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E8D90  41 82 00 38 */	beq lbl_806E8DC8
/* 806E8D94  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E8D98  80 63 00 04 */	lwz r3, 4(r3)
/* 806E8D9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E8DA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E8DA4  38 63 01 50 */	addi r3, r3, 0x150
/* 806E8DA8  38 9F 00 68 */	addi r4, r31, 0x68
/* 806E8DAC  38 BF 00 98 */	addi r5, r31, 0x98
/* 806E8DB0  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 806E8DB4  4B B9 7A 55 */	bl func_80280808
/* 806E8DB8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806E8DBC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806E8DC0  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 806E8DC4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_806E8DC8:
/* 806E8DC8  39 61 00 80 */	addi r11, r1, 0x80
/* 806E8DCC  4B C7 94 59 */	bl _restgpr_28
/* 806E8DD0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806E8DD4  7C 08 03 A6 */	mtlr r0
/* 806E8DD8  38 21 00 80 */	addi r1, r1, 0x80
/* 806E8DDC  4E 80 00 20 */	blr 
