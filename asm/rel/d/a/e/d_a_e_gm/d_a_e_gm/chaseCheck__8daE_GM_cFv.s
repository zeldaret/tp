lbl_806D4D1C:
/* 806D4D1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D4D20  7C 08 02 A6 */	mflr r0
/* 806D4D24  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D4D28  39 61 00 40 */	addi r11, r1, 0x40
/* 806D4D2C  4B C8 D4 B0 */	b _savegpr_29
/* 806D4D30  7C 7F 1B 78 */	mr r31, r3
/* 806D4D34  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D4D38  3B C3 79 A0 */	addi r30, r3, lit_3906@l
/* 806D4D3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D4D40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D4D44  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806D4D48  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806D4D4C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806D4D50  EC 01 00 28 */	fsubs f0, f1, f0
/* 806D4D54  FC 00 02 10 */	fabs f0, f0
/* 806D4D58  FC 20 00 18 */	frsp f1, f0
/* 806D4D5C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806D4D60  38 63 7E C4 */	addi r3, r3, l_HIO@l
/* 806D4D64  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806D4D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4D6C  4C 41 13 82 */	cror 2, 1, 2
/* 806D4D70  40 82 00 0C */	bne lbl_806D4D7C
/* 806D4D74  38 60 00 00 */	li r3, 0
/* 806D4D78  48 00 01 64 */	b lbl_806D4EDC
lbl_806D4D7C:
/* 806D4D7C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806D4D80  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806D4D84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806D4D88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D4D8C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806D4D90  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806D4D94  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806D4D98  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806D4D9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806D4DA0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806D4DA4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 806D4DA8  38 61 00 0C */	addi r3, r1, 0xc
/* 806D4DAC  38 81 00 18 */	addi r4, r1, 0x18
/* 806D4DB0  4B C7 25 EC */	b PSVECSquareDistance
/* 806D4DB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806D4DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4DBC  40 81 00 58 */	ble lbl_806D4E14
/* 806D4DC0  FC 00 08 34 */	frsqrte f0, f1
/* 806D4DC4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806D4DC8  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4DCC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806D4DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 806D4DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 806D4DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 806D4DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 806D4DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 806D4E00  FC 03 00 28 */	fsub f0, f3, f0
/* 806D4E04  FC 02 00 32 */	fmul f0, f2, f0
/* 806D4E08  FC 21 00 32 */	fmul f1, f1, f0
/* 806D4E0C  FC 20 08 18 */	frsp f1, f1
/* 806D4E10  48 00 00 88 */	b lbl_806D4E98
lbl_806D4E14:
/* 806D4E14  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806D4E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4E1C  40 80 00 10 */	bge lbl_806D4E2C
/* 806D4E20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D4E24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806D4E28  48 00 00 70 */	b lbl_806D4E98
lbl_806D4E2C:
/* 806D4E2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806D4E30  80 81 00 08 */	lwz r4, 8(r1)
/* 806D4E34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D4E38  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D4E3C  7C 03 00 00 */	cmpw r3, r0
/* 806D4E40  41 82 00 14 */	beq lbl_806D4E54
/* 806D4E44  40 80 00 40 */	bge lbl_806D4E84
/* 806D4E48  2C 03 00 00 */	cmpwi r3, 0
/* 806D4E4C  41 82 00 20 */	beq lbl_806D4E6C
/* 806D4E50  48 00 00 34 */	b lbl_806D4E84
lbl_806D4E54:
/* 806D4E54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D4E58  41 82 00 0C */	beq lbl_806D4E64
/* 806D4E5C  38 00 00 01 */	li r0, 1
/* 806D4E60  48 00 00 28 */	b lbl_806D4E88
lbl_806D4E64:
/* 806D4E64  38 00 00 02 */	li r0, 2
/* 806D4E68  48 00 00 20 */	b lbl_806D4E88
lbl_806D4E6C:
/* 806D4E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D4E70  41 82 00 0C */	beq lbl_806D4E7C
/* 806D4E74  38 00 00 05 */	li r0, 5
/* 806D4E78  48 00 00 10 */	b lbl_806D4E88
lbl_806D4E7C:
/* 806D4E7C  38 00 00 03 */	li r0, 3
/* 806D4E80  48 00 00 08 */	b lbl_806D4E88
lbl_806D4E84:
/* 806D4E84  38 00 00 04 */	li r0, 4
lbl_806D4E88:
/* 806D4E88  2C 00 00 01 */	cmpwi r0, 1
/* 806D4E8C  40 82 00 0C */	bne lbl_806D4E98
/* 806D4E90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D4E94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806D4E98:
/* 806D4E98  C0 1F 0A 54 */	lfs f0, 0xa54(r31)
/* 806D4E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D4EA0  40 81 00 0C */	ble lbl_806D4EAC
/* 806D4EA4  38 60 00 00 */	li r3, 0
/* 806D4EA8  48 00 00 34 */	b lbl_806D4EDC
lbl_806D4EAC:
/* 806D4EAC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806D4EB0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D4EB4  4B B9 BD 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806D4EB8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806D4EBC  7C 60 07 34 */	extsh r0, r3
/* 806D4EC0  7C 64 00 50 */	subf r3, r4, r0
/* 806D4EC4  4B C9 02 0C */	b abs
/* 806D4EC8  38 00 40 00 */	li r0, 0x4000
/* 806D4ECC  7C 65 FE 70 */	srawi r5, r3, 0x1f
/* 806D4ED0  54 04 0F FE */	srwi r4, r0, 0x1f
/* 806D4ED4  7C 00 18 10 */	subfc r0, r0, r3
/* 806D4ED8  7C 65 21 14 */	adde r3, r5, r4
lbl_806D4EDC:
/* 806D4EDC  39 61 00 40 */	addi r11, r1, 0x40
/* 806D4EE0  4B C8 D3 48 */	b _restgpr_29
/* 806D4EE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D4EE8  7C 08 03 A6 */	mtlr r0
/* 806D4EEC  38 21 00 40 */	addi r1, r1, 0x40
/* 806D4EF0  4E 80 00 20 */	blr 
