lbl_805A2D58:
/* 805A2D58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A2D5C  7C 08 02 A6 */	mflr r0
/* 805A2D60  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A2D64  39 61 00 40 */	addi r11, r1, 0x40
/* 805A2D68  4B DB F4 74 */	b _savegpr_29
/* 805A2D6C  7C 7E 1B 78 */	mr r30, r3
/* 805A2D70  3C 60 80 5A */	lis r3, lit_3657@ha
/* 805A2D74  3B E3 32 C8 */	addi r31, r3, lit_3657@l
/* 805A2D78  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 805A2D7C  4B AE 16 E4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805A2D80  28 03 00 00 */	cmplwi r3, 0
/* 805A2D84  41 82 00 30 */	beq lbl_805A2DB4
/* 805A2D88  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 805A2D8C  4B AE 17 6C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805A2D90  28 03 00 00 */	cmplwi r3, 0
/* 805A2D94  41 82 00 20 */	beq lbl_805A2DB4
/* 805A2D98  80 63 00 10 */	lwz r3, 0x10(r3)
/* 805A2D9C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 805A2DA0  40 82 00 0C */	bne lbl_805A2DAC
/* 805A2DA4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 805A2DA8  41 82 00 0C */	beq lbl_805A2DB4
lbl_805A2DAC:
/* 805A2DAC  38 60 00 01 */	li r3, 1
/* 805A2DB0  48 00 01 8C */	b lbl_805A2F3C
lbl_805A2DB4:
/* 805A2DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A2DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A2DBC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805A2DC0  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 805A2DC4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 805A2DC8  40 82 00 10 */	bne lbl_805A2DD8
/* 805A2DCC  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 805A2DD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805A2DD4  41 82 01 64 */	beq lbl_805A2F38
lbl_805A2DD8:
/* 805A2DD8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805A2DDC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805A2DE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A2DE4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A2DE8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805A2DEC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805A2DF0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805A2DF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805A2DF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A2DFC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805A2E00  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805A2E04  38 61 00 0C */	addi r3, r1, 0xc
/* 805A2E08  38 81 00 18 */	addi r4, r1, 0x18
/* 805A2E0C  4B DA 45 90 */	b PSVECSquareDistance
/* 805A2E10  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A2E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A2E18  40 81 00 58 */	ble lbl_805A2E70
/* 805A2E1C  FC 00 08 34 */	frsqrte f0, f1
/* 805A2E20  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805A2E24  FC 44 00 32 */	fmul f2, f4, f0
/* 805A2E28  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805A2E2C  FC 00 00 32 */	fmul f0, f0, f0
/* 805A2E30  FC 01 00 32 */	fmul f0, f1, f0
/* 805A2E34  FC 03 00 28 */	fsub f0, f3, f0
/* 805A2E38  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2E3C  FC 44 00 32 */	fmul f2, f4, f0
/* 805A2E40  FC 00 00 32 */	fmul f0, f0, f0
/* 805A2E44  FC 01 00 32 */	fmul f0, f1, f0
/* 805A2E48  FC 03 00 28 */	fsub f0, f3, f0
/* 805A2E4C  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2E50  FC 44 00 32 */	fmul f2, f4, f0
/* 805A2E54  FC 00 00 32 */	fmul f0, f0, f0
/* 805A2E58  FC 01 00 32 */	fmul f0, f1, f0
/* 805A2E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 805A2E60  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2E64  FC 21 00 32 */	fmul f1, f1, f0
/* 805A2E68  FC 20 08 18 */	frsp f1, f1
/* 805A2E6C  48 00 00 88 */	b lbl_805A2EF4
lbl_805A2E70:
/* 805A2E70  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805A2E74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A2E78  40 80 00 10 */	bge lbl_805A2E88
/* 805A2E7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A2E80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805A2E84  48 00 00 70 */	b lbl_805A2EF4
lbl_805A2E88:
/* 805A2E88  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A2E8C  80 81 00 08 */	lwz r4, 8(r1)
/* 805A2E90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A2E94  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A2E98  7C 03 00 00 */	cmpw r3, r0
/* 805A2E9C  41 82 00 14 */	beq lbl_805A2EB0
/* 805A2EA0  40 80 00 40 */	bge lbl_805A2EE0
/* 805A2EA4  2C 03 00 00 */	cmpwi r3, 0
/* 805A2EA8  41 82 00 20 */	beq lbl_805A2EC8
/* 805A2EAC  48 00 00 34 */	b lbl_805A2EE0
lbl_805A2EB0:
/* 805A2EB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A2EB4  41 82 00 0C */	beq lbl_805A2EC0
/* 805A2EB8  38 00 00 01 */	li r0, 1
/* 805A2EBC  48 00 00 28 */	b lbl_805A2EE4
lbl_805A2EC0:
/* 805A2EC0  38 00 00 02 */	li r0, 2
/* 805A2EC4  48 00 00 20 */	b lbl_805A2EE4
lbl_805A2EC8:
/* 805A2EC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A2ECC  41 82 00 0C */	beq lbl_805A2ED8
/* 805A2ED0  38 00 00 05 */	li r0, 5
/* 805A2ED4  48 00 00 10 */	b lbl_805A2EE4
lbl_805A2ED8:
/* 805A2ED8  38 00 00 03 */	li r0, 3
/* 805A2EDC  48 00 00 08 */	b lbl_805A2EE4
lbl_805A2EE0:
/* 805A2EE0  38 00 00 04 */	li r0, 4
lbl_805A2EE4:
/* 805A2EE4  2C 00 00 01 */	cmpwi r0, 1
/* 805A2EE8  40 82 00 0C */	bne lbl_805A2EF4
/* 805A2EEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A2EF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805A2EF4:
/* 805A2EF4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805A2EF8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A2EFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A2F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A2F04  40 80 00 34 */	bge lbl_805A2F38
/* 805A2F08  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805A2F0C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805A2F10  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A2F14  FC 00 02 10 */	fabs f0, f0
/* 805A2F18  FC 40 00 18 */	frsp f2, f0
/* 805A2F1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805A2F20  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A2F24  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A2F28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A2F2C  40 80 00 0C */	bge lbl_805A2F38
/* 805A2F30  38 60 00 01 */	li r3, 1
/* 805A2F34  48 00 00 08 */	b lbl_805A2F3C
lbl_805A2F38:
/* 805A2F38  38 60 00 00 */	li r3, 0
lbl_805A2F3C:
/* 805A2F3C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A2F40  4B DB F2 E8 */	b _restgpr_29
/* 805A2F44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A2F48  7C 08 03 A6 */	mtlr r0
/* 805A2F4C  38 21 00 40 */	addi r1, r1, 0x40
/* 805A2F50  4E 80 00 20 */	blr 
