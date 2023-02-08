lbl_80948ADC:
/* 80948ADC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80948AE0  7C 08 02 A6 */	mflr r0
/* 80948AE4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80948AE8  39 61 00 80 */	addi r11, r1, 0x80
/* 80948AEC  4B A1 96 F1 */	bl _savegpr_29
/* 80948AF0  7C 7E 1B 78 */	mr r30, r3
/* 80948AF4  3C 60 80 95 */	lis r3, mCcDSph__8daMyna_c@ha /* 0x8094B1B0@ha */
/* 80948AF8  3B E3 B1 B0 */	addi r31, r3, mCcDSph__8daMyna_c@l /* 0x8094B1B0@l */
/* 80948AFC  A8 1E 09 26 */	lha r0, 0x926(r30)
/* 80948B00  2C 00 00 00 */	cmpwi r0, 0
/* 80948B04  40 81 00 DC */	ble lbl_80948BE0
/* 80948B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80948B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80948B10  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80948B14  38 61 00 30 */	addi r3, r1, 0x30
/* 80948B18  48 00 1E ED */	bl getHeadTopPos__9daPy_py_cCFv
/* 80948B1C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80948B20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80948B24  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80948B28  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80948B2C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80948B30  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80948B34  38 61 00 24 */	addi r3, r1, 0x24
/* 80948B38  38 81 00 54 */	addi r4, r1, 0x54
/* 80948B3C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80948B40  4B 91 DF F5 */	bl __mi__4cXyzCFRC3Vec
/* 80948B44  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80948B48  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80948B4C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80948B50  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80948B54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80948B58  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80948B5C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80948B60  EC 00 00 32 */	fmuls f0, f0, f0
/* 80948B64  EC 41 00 2A */	fadds f2, f1, f0
/* 80948B68  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80948B6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80948B70  40 81 00 0C */	ble lbl_80948B7C
/* 80948B74  FC 00 10 34 */	frsqrte f0, f2
/* 80948B78  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80948B7C:
/* 80948B7C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80948B80  4B 91 EA F5 */	bl cM_atan2s__Fff
/* 80948B84  7C 03 00 D0 */	neg r0, r3
/* 80948B88  7C 1D 07 34 */	extsh r29, r0
/* 80948B8C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80948B90  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80948B94  4B 91 EA E1 */	bl cM_atan2s__Fff
/* 80948B98  7C 64 1B 78 */	mr r4, r3
/* 80948B9C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80948BA0  38 A0 00 04 */	li r5, 4
/* 80948BA4  38 C0 7F FF */	li r6, 0x7fff
/* 80948BA8  38 E0 05 DC */	li r7, 0x5dc
/* 80948BAC  4B 92 79 95 */	bl cLib_addCalcAngleS__FPsssss
/* 80948BB0  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80948BB4  7F A4 EB 78 */	mr r4, r29
/* 80948BB8  38 A0 00 04 */	li r5, 4
/* 80948BBC  38 C0 7F FF */	li r6, 0x7fff
/* 80948BC0  38 E0 05 DC */	li r7, 0x5dc
/* 80948BC4  4B 92 79 7D */	bl cLib_addCalcAngleS__FPsssss
/* 80948BC8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80948BCC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80948BD0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80948BD4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80948BD8  4B 92 75 A1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80948BDC  48 00 02 04 */	b lbl_80948DE0
lbl_80948BE0:
/* 80948BE0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80948BE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80948BE8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80948BEC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80948BF0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80948BF4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80948BF8  38 61 00 18 */	addi r3, r1, 0x18
/* 80948BFC  38 81 00 48 */	addi r4, r1, 0x48
/* 80948C00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80948C04  4B 91 DF 31 */	bl __mi__4cXyzCFRC3Vec
/* 80948C08  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80948C0C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80948C10  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80948C14  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80948C18  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80948C1C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80948C20  EC 21 00 72 */	fmuls f1, f1, f1
/* 80948C24  EC 00 00 32 */	fmuls f0, f0, f0
/* 80948C28  EC 41 00 2A */	fadds f2, f1, f0
/* 80948C2C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80948C30  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80948C34  40 81 00 0C */	ble lbl_80948C40
/* 80948C38  FC 00 10 34 */	frsqrte f0, f2
/* 80948C3C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80948C40:
/* 80948C40  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80948C44  4B 91 EA 31 */	bl cM_atan2s__Fff
/* 80948C48  7C 03 00 D0 */	neg r0, r3
/* 80948C4C  7C 1D 07 34 */	extsh r29, r0
/* 80948C50  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80948C54  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80948C58  4B 91 EA 1D */	bl cM_atan2s__Fff
/* 80948C5C  7C 64 1B 78 */	mr r4, r3
/* 80948C60  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80948C64  38 A0 00 04 */	li r5, 4
/* 80948C68  38 C0 7F FF */	li r6, 0x7fff
/* 80948C6C  38 E0 05 DC */	li r7, 0x5dc
/* 80948C70  4B 92 78 D1 */	bl cLib_addCalcAngleS__FPsssss
/* 80948C74  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80948C78  7F A4 EB 78 */	mr r4, r29
/* 80948C7C  38 A0 00 04 */	li r5, 4
/* 80948C80  38 C0 7F FF */	li r6, 0x7fff
/* 80948C84  38 E0 05 DC */	li r7, 0x5dc
/* 80948C88  4B 92 78 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 80948C8C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80948C90  38 81 00 48 */	addi r4, r1, 0x48
/* 80948C94  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80948C98  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80948C9C  4B 92 74 DD */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80948CA0  38 61 00 0C */	addi r3, r1, 0xc
/* 80948CA4  38 81 00 48 */	addi r4, r1, 0x48
/* 80948CA8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80948CAC  4B 91 DE 89 */	bl __mi__4cXyzCFRC3Vec
/* 80948CB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80948CB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80948CB8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80948CBC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80948CC0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80948CC4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80948CC8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80948CCC  4B 9F E4 6D */	bl PSVECSquareMag
/* 80948CD0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80948CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948CD8  40 81 00 58 */	ble lbl_80948D30
/* 80948CDC  FC 00 08 34 */	frsqrte f0, f1
/* 80948CE0  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 80948CE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80948CE8  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 80948CEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80948CF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80948CF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80948CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80948CFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80948D00  FC 00 00 32 */	fmul f0, f0, f0
/* 80948D04  FC 01 00 32 */	fmul f0, f1, f0
/* 80948D08  FC 03 00 28 */	fsub f0, f3, f0
/* 80948D0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80948D10  FC 44 00 32 */	fmul f2, f4, f0
/* 80948D14  FC 00 00 32 */	fmul f0, f0, f0
/* 80948D18  FC 01 00 32 */	fmul f0, f1, f0
/* 80948D1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80948D20  FC 02 00 32 */	fmul f0, f2, f0
/* 80948D24  FC 21 00 32 */	fmul f1, f1, f0
/* 80948D28  FC 20 08 18 */	frsp f1, f1
/* 80948D2C  48 00 00 88 */	b lbl_80948DB4
lbl_80948D30:
/* 80948D30  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 80948D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948D38  40 80 00 10 */	bge lbl_80948D48
/* 80948D3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80948D40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80948D44  48 00 00 70 */	b lbl_80948DB4
lbl_80948D48:
/* 80948D48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80948D4C  80 81 00 08 */	lwz r4, 8(r1)
/* 80948D50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80948D54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80948D58  7C 03 00 00 */	cmpw r3, r0
/* 80948D5C  41 82 00 14 */	beq lbl_80948D70
/* 80948D60  40 80 00 40 */	bge lbl_80948DA0
/* 80948D64  2C 03 00 00 */	cmpwi r3, 0
/* 80948D68  41 82 00 20 */	beq lbl_80948D88
/* 80948D6C  48 00 00 34 */	b lbl_80948DA0
lbl_80948D70:
/* 80948D70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80948D74  41 82 00 0C */	beq lbl_80948D80
/* 80948D78  38 00 00 01 */	li r0, 1
/* 80948D7C  48 00 00 28 */	b lbl_80948DA4
lbl_80948D80:
/* 80948D80  38 00 00 02 */	li r0, 2
/* 80948D84  48 00 00 20 */	b lbl_80948DA4
lbl_80948D88:
/* 80948D88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80948D8C  41 82 00 0C */	beq lbl_80948D98
/* 80948D90  38 00 00 05 */	li r0, 5
/* 80948D94  48 00 00 10 */	b lbl_80948DA4
lbl_80948D98:
/* 80948D98  38 00 00 03 */	li r0, 3
/* 80948D9C  48 00 00 08 */	b lbl_80948DA4
lbl_80948DA0:
/* 80948DA0  38 00 00 04 */	li r0, 4
lbl_80948DA4:
/* 80948DA4  2C 00 00 01 */	cmpwi r0, 1
/* 80948DA8  40 82 00 0C */	bne lbl_80948DB4
/* 80948DAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80948DB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80948DB4:
/* 80948DB4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80948DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80948DBC  40 80 00 24 */	bge lbl_80948DE0
/* 80948DC0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80948DC4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80948DC8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80948DCC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80948DD0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80948DD4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80948DD8  38 60 00 01 */	li r3, 1
/* 80948DDC  48 00 00 08 */	b lbl_80948DE4
lbl_80948DE0:
/* 80948DE0  38 60 00 00 */	li r3, 0
lbl_80948DE4:
/* 80948DE4  39 61 00 80 */	addi r11, r1, 0x80
/* 80948DE8  4B A1 94 41 */	bl _restgpr_29
/* 80948DEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80948DF0  7C 08 03 A6 */	mtlr r0
/* 80948DF4  38 21 00 80 */	addi r1, r1, 0x80
/* 80948DF8  4E 80 00 20 */	blr 
