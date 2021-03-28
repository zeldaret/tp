lbl_805E5D2C:
/* 805E5D2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E5D30  7C 08 02 A6 */	mflr r0
/* 805E5D34  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E5D38  39 61 00 30 */	addi r11, r1, 0x30
/* 805E5D3C  4B D7 C4 A0 */	b _savegpr_29
/* 805E5D40  7C 7D 1B 78 */	mr r29, r3
/* 805E5D44  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E5D48  3B C4 D0 60 */	addi r30, r4, lit_3911@l
/* 805E5D4C  4B B7 9B 98 */	b cancelBoomerangLockActor__9daPy_py_cFP10fopAc_ac_c
/* 805E5D50  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 805E5D54  2C 00 00 01 */	cmpwi r0, 1
/* 805E5D58  41 82 00 20 */	beq lbl_805E5D78
/* 805E5D5C  40 80 00 38 */	bge lbl_805E5D94
/* 805E5D60  2C 00 00 00 */	cmpwi r0, 0
/* 805E5D64  40 80 00 08 */	bge lbl_805E5D6C
/* 805E5D68  48 00 00 2C */	b lbl_805E5D94
lbl_805E5D6C:
/* 805E5D6C  7F A3 EB 78 */	mr r3, r29
/* 805E5D70  4B FF FF 9D */	bl F_A_WaitAction__8daB_GG_cFv
/* 805E5D74  48 00 00 20 */	b lbl_805E5D94
lbl_805E5D78:
/* 805E5D78  7F A3 EB 78 */	mr r3, r29
/* 805E5D7C  4B FF FA 8D */	bl F_A_MoveAction__8daB_GG_cFv
/* 805E5D80  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 805E5D84  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 805E5D88  C0 5E 01 B8 */	lfs f2, 0x1b8(r30)
/* 805E5D8C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805E5D90  4B C8 9C AC */	b cLib_addCalc2__FPffff
lbl_805E5D94:
/* 805E5D94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E5D98  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805E5D9C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E5DA0  7F A4 EB 78 */	mr r4, r29
/* 805E5DA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E5DA8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805E5DAC  7D 89 03 A6 */	mtctr r12
/* 805E5DB0  4E 80 04 21 */	bctrl 
/* 805E5DB4  2C 03 00 00 */	cmpwi r3, 0
/* 805E5DB8  41 82 00 1C */	beq lbl_805E5DD4
/* 805E5DBC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E5DC0  7F A4 EB 78 */	mr r4, r29
/* 805E5DC4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E5DC8  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 805E5DCC  7D 89 03 A6 */	mtctr r12
/* 805E5DD0  4E 80 04 21 */	bctrl 
lbl_805E5DD4:
/* 805E5DD4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805E5DD8  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 805E5DDC  C0 5E 01 B8 */	lfs f2, 0x1b8(r30)
/* 805E5DE0  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805E5DE4  4B C8 9C 58 */	b cLib_addCalc2__FPffff
/* 805E5DE8  38 61 00 08 */	addi r3, r1, 8
/* 805E5DEC  3C 80 80 5F */	lis r4, data_805ED72C@ha
/* 805E5DF0  38 84 D7 2C */	addi r4, r4, data_805ED72C@l
/* 805E5DF4  80 84 00 00 */	lwz r4, 0(r4)
/* 805E5DF8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805E5DFC  4B C8 0D 38 */	b __mi__4cXyzCFRC3Vec
/* 805E5E00  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E5E04  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E5E08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E5E0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E5E10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E5E14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E5E18  EC 21 00 72 */	fmuls f1, f1, f1
/* 805E5E1C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805E5E20  EC 41 00 2A */	fadds f2, f1, f0
/* 805E5E24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E5E28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E5E2C  40 81 00 0C */	ble lbl_805E5E38
/* 805E5E30  FC 00 10 34 */	frsqrte f0, f2
/* 805E5E34  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805E5E38:
/* 805E5E38  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805E5E3C  4B C8 18 38 */	b cM_atan2s__Fff
/* 805E5E40  7C 63 00 D0 */	neg r3, r3
/* 805E5E44  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 805E5E48  7C 00 18 50 */	subf r0, r0, r3
/* 805E5E4C  7C 04 07 34 */	extsh r4, r0
/* 805E5E50  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 805E5E54  38 A0 00 10 */	li r5, 0x10
/* 805E5E58  38 C0 06 00 */	li r6, 0x600
/* 805E5E5C  4B C8 A7 AC */	b cLib_addCalcAngleS2__FPssss
/* 805E5E60  39 61 00 30 */	addi r11, r1, 0x30
/* 805E5E64  4B D7 C3 C4 */	b _restgpr_29
/* 805E5E68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E5E6C  7C 08 03 A6 */	mtlr r0
/* 805E5E70  38 21 00 30 */	addi r1, r1, 0x30
/* 805E5E74  4E 80 00 20 */	blr 
