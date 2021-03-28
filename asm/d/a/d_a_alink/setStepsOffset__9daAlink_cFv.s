lbl_800A6B0C:
/* 800A6B0C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800A6B10  7C 08 02 A6 */	mflr r0
/* 800A6B14  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A6B18  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800A6B1C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800A6B20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800A6B24  7C 7F 1B 78 */	mr r31, r3
/* 800A6B28  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A6B2C  D0 23 2B 9C */	stfs f1, 0x2b9c(r3)
/* 800A6B30  38 7F 2B 98 */	addi r3, r31, 0x2b98
/* 800A6B34  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A6B38  C0 62 92 9C */	lfs f3, lit_5944(r2)
/* 800A6B3C  C0 82 93 3C */	lfs f4, lit_7808(r2)
/* 800A6B40  48 1C 8E 3D */	bl cLib_addCalc__FPfffff
/* 800A6B44  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800A6B48  FC 00 02 10 */	fabs f0, f0
/* 800A6B4C  FC 20 00 18 */	frsp f1, f0
/* 800A6B50  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A6B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6B58  41 80 02 58 */	blt lbl_800A6DB0
/* 800A6B5C  7F E3 FB 78 */	mr r3, r31
/* 800A6B60  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800A6B64  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 800A6B68  48 00 95 31 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800A6B6C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800A6B70  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A6B74  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A6B78  7C 23 04 2E */	lfsx f1, r3, r0
/* 800A6B7C  38 83 00 04 */	addi r4, r3, 4
/* 800A6B80  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A6B84  EF E1 00 24 */	fdivs f31, f1, f0
/* 800A6B88  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800A6B8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A6B90  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A6B94  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A6B98  C0 9F 05 2C */	lfs f4, 0x52c(r31)
/* 800A6B9C  EC 04 00 32 */	fmuls f0, f4, f0
/* 800A6BA0  EC 61 00 2A */	fadds f3, f1, f0
/* 800A6BA4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800A6BA8  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800A6BAC  EC 41 00 2A */	fadds f2, f1, f0
/* 800A6BB0  7C 03 04 2E */	lfsx f0, r3, r0
/* 800A6BB4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A6BB8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800A6BBC  EC 01 00 2A */	fadds f0, f1, f0
/* 800A6BC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800A6BC4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800A6BC8  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 800A6BCC  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800A6BD0  38 81 00 24 */	addi r4, r1, 0x24
/* 800A6BD4  48 1C 11 55 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800A6BD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A6BDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A6BE0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800A6BE4  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800A6BE8  4B FC D8 B9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800A6BEC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A6BF0  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A6BF4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800A6BF8  FC 00 00 50 */	fneg f0, f0
/* 800A6BFC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800A6C00  EC 41 00 28 */	fsubs f2, f1, f0
/* 800A6C04  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A6C08  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A6C0C  40 81 00 20 */	ble lbl_800A6C2C
/* 800A6C10  D0 3F 2B 9C */	stfs f1, 0x2b9c(r31)
/* 800A6C14  C0 3F 2B 98 */	lfs f1, 0x2b98(r31)
/* 800A6C18  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800A6C1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800A6C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A6C24  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
/* 800A6C28  48 00 01 58 */	b lbl_800A6D80
lbl_800A6C2C:
/* 800A6C2C  38 61 00 18 */	addi r3, r1, 0x18
/* 800A6C30  38 9F 37 98 */	addi r4, r31, 0x3798
/* 800A6C34  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800A6C38  48 1B FE FD */	bl __mi__4cXyzCFRC3Vec
/* 800A6C3C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800A6C40  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800A6C44  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800A6C48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800A6C4C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800A6C50  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800A6C54  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800A6C58  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6C5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A6C60  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A6C64  38 61 00 0C */	addi r3, r1, 0xc
/* 800A6C68  48 2A 04 D1 */	bl PSVECSquareMag
/* 800A6C6C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6C74  40 81 00 58 */	ble lbl_800A6CCC
/* 800A6C78  FC 00 08 34 */	frsqrte f0, f1
/* 800A6C7C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A6C80  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6C84  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A6C88  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6C8C  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6C90  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6C94  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6C98  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6C9C  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6CA0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6CA4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6CA8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 800A6CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A6CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A6CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A6CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A6CC0  FC 21 00 32 */	fmul f1, f1, f0
/* 800A6CC4  FC 20 08 18 */	frsp f1, f1
/* 800A6CC8  48 00 00 88 */	b lbl_800A6D50
lbl_800A6CCC:
/* 800A6CCC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A6CD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A6CD4  40 80 00 10 */	bge lbl_800A6CE4
/* 800A6CD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A6CDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A6CE0  48 00 00 70 */	b lbl_800A6D50
lbl_800A6CE4:
/* 800A6CE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A6CE8  80 81 00 08 */	lwz r4, 8(r1)
/* 800A6CEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A6CF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A6CF4  7C 03 00 00 */	cmpw r3, r0
/* 800A6CF8  41 82 00 14 */	beq lbl_800A6D0C
/* 800A6CFC  40 80 00 40 */	bge lbl_800A6D3C
/* 800A6D00  2C 03 00 00 */	cmpwi r3, 0
/* 800A6D04  41 82 00 20 */	beq lbl_800A6D24
/* 800A6D08  48 00 00 34 */	b lbl_800A6D3C
lbl_800A6D0C:
/* 800A6D0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A6D10  41 82 00 0C */	beq lbl_800A6D1C
/* 800A6D14  38 00 00 01 */	li r0, 1
/* 800A6D18  48 00 00 28 */	b lbl_800A6D40
lbl_800A6D1C:
/* 800A6D1C  38 00 00 02 */	li r0, 2
/* 800A6D20  48 00 00 20 */	b lbl_800A6D40
lbl_800A6D24:
/* 800A6D24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A6D28  41 82 00 0C */	beq lbl_800A6D34
/* 800A6D2C  38 00 00 05 */	li r0, 5
/* 800A6D30  48 00 00 10 */	b lbl_800A6D40
lbl_800A6D34:
/* 800A6D34  38 00 00 03 */	li r0, 3
/* 800A6D38  48 00 00 08 */	b lbl_800A6D40
lbl_800A6D3C:
/* 800A6D3C  38 00 00 04 */	li r0, 4
lbl_800A6D40:
/* 800A6D40  2C 00 00 01 */	cmpwi r0, 1
/* 800A6D44  40 82 00 0C */	bne lbl_800A6D50
/* 800A6D48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A6D4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A6D50:
/* 800A6D50  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 800A6D54  EC 1F 00 72 */	fmuls f0, f31, f1
/* 800A6D58  EC 42 00 28 */	fsubs f2, f2, f0
/* 800A6D5C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A6D60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A6D64  4C 41 13 82 */	cror 2, 1, 2
/* 800A6D68  40 82 00 18 */	bne lbl_800A6D80
/* 800A6D6C  C0 3F 2B 98 */	lfs f1, 0x2b98(r31)
/* 800A6D70  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800A6D74  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800A6D78  EC 01 00 2A */	fadds f0, f1, f0
/* 800A6D7C  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
lbl_800A6D80:
/* 800A6D80  C0 2D 81 10 */	lfs f1, l_autoUpHeight(r13)
/* 800A6D84  C0 4D 81 14 */	lfs f2, l_autoDownHeight(r13)
/* 800A6D88  C0 1F 2B 98 */	lfs f0, 0x2b98(r31)
/* 800A6D8C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800A6D90  40 80 00 08 */	bge lbl_800A6D98
/* 800A6D94  48 00 00 18 */	b lbl_800A6DAC
lbl_800A6D98:
/* 800A6D98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800A6D9C  40 81 00 0C */	ble lbl_800A6DA8
/* 800A6DA0  FC 40 08 90 */	fmr f2, f1
/* 800A6DA4  48 00 00 08 */	b lbl_800A6DAC
lbl_800A6DA8:
/* 800A6DA8  FC 40 00 90 */	fmr f2, f0
lbl_800A6DAC:
/* 800A6DAC  D0 5F 2B 98 */	stfs f2, 0x2b98(r31)
lbl_800A6DB0:
/* 800A6DB0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800A6DB4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800A6DB8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800A6DBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A6DC0  7C 08 03 A6 */	mtlr r0
/* 800A6DC4  38 21 00 50 */	addi r1, r1, 0x50
/* 800A6DC8  4E 80 00 20 */	blr 
