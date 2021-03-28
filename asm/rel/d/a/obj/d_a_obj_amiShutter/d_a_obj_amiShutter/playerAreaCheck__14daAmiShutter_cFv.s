lbl_80BA1974:
/* 80BA1974  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA1978  7C 08 02 A6 */	mflr r0
/* 80BA197C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA1980  39 61 00 40 */	addi r11, r1, 0x40
/* 80BA1984  4B 7C 08 54 */	b _savegpr_28
/* 80BA1988  7C 7E 1B 78 */	mr r30, r3
/* 80BA198C  3C 60 80 BA */	lis r3, lit_3655@ha
/* 80BA1990  3B A3 23 90 */	addi r29, r3, lit_3655@l
/* 80BA1994  3B E0 00 00 */	li r31, 0
/* 80BA1998  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 80BA199C  28 00 00 00 */	cmplwi r0, 0
/* 80BA19A0  40 82 01 74 */	bne lbl_80BA1B14
/* 80BA19A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA19A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA19AC  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80BA19B0  38 61 00 18 */	addi r3, r1, 0x18
/* 80BA19B4  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80BA19B8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA19BC  4B 6C 51 78 */	b __mi__4cXyzCFRC3Vec
/* 80BA19C0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80BA19C4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80BA19C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BA19CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA19D0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80BA19D4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BA19D8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BA19DC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80BA19E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA19E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BA19E8  38 61 00 0C */	addi r3, r1, 0xc
/* 80BA19EC  4B 7A 57 4C */	b PSVECSquareMag
/* 80BA19F0  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80BA19F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA19F8  40 81 00 58 */	ble lbl_80BA1A50
/* 80BA19FC  FC 00 08 34 */	frsqrte f0, f1
/* 80BA1A00  C8 9D 00 18 */	lfd f4, 0x18(r29)
/* 80BA1A04  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA1A08  C8 7D 00 20 */	lfd f3, 0x20(r29)
/* 80BA1A0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA1A10  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA1A14  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA1A18  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA1A1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA1A20  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA1A24  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA1A28  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA1A2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA1A30  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA1A34  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA1A38  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA1A3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA1A40  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA1A44  FC 21 00 32 */	fmul f1, f1, f0
/* 80BA1A48  FC 20 08 18 */	frsp f1, f1
/* 80BA1A4C  48 00 00 88 */	b lbl_80BA1AD4
lbl_80BA1A50:
/* 80BA1A50  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 80BA1A54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA1A58  40 80 00 10 */	bge lbl_80BA1A68
/* 80BA1A5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA1A60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BA1A64  48 00 00 70 */	b lbl_80BA1AD4
lbl_80BA1A68:
/* 80BA1A68  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BA1A6C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BA1A70  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA1A74  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA1A78  7C 03 00 00 */	cmpw r3, r0
/* 80BA1A7C  41 82 00 14 */	beq lbl_80BA1A90
/* 80BA1A80  40 80 00 40 */	bge lbl_80BA1AC0
/* 80BA1A84  2C 03 00 00 */	cmpwi r3, 0
/* 80BA1A88  41 82 00 20 */	beq lbl_80BA1AA8
/* 80BA1A8C  48 00 00 34 */	b lbl_80BA1AC0
lbl_80BA1A90:
/* 80BA1A90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA1A94  41 82 00 0C */	beq lbl_80BA1AA0
/* 80BA1A98  38 00 00 01 */	li r0, 1
/* 80BA1A9C  48 00 00 28 */	b lbl_80BA1AC4
lbl_80BA1AA0:
/* 80BA1AA0  38 00 00 02 */	li r0, 2
/* 80BA1AA4  48 00 00 20 */	b lbl_80BA1AC4
lbl_80BA1AA8:
/* 80BA1AA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA1AAC  41 82 00 0C */	beq lbl_80BA1AB8
/* 80BA1AB0  38 00 00 05 */	li r0, 5
/* 80BA1AB4  48 00 00 10 */	b lbl_80BA1AC4
lbl_80BA1AB8:
/* 80BA1AB8  38 00 00 03 */	li r0, 3
/* 80BA1ABC  48 00 00 08 */	b lbl_80BA1AC4
lbl_80BA1AC0:
/* 80BA1AC0  38 00 00 04 */	li r0, 4
lbl_80BA1AC4:
/* 80BA1AC4  2C 00 00 01 */	cmpwi r0, 1
/* 80BA1AC8  40 82 00 0C */	bne lbl_80BA1AD4
/* 80BA1ACC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BA1AD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BA1AD4:
/* 80BA1AD4  3C 60 80 BA */	lis r3, l_HIO@ha
/* 80BA1AD8  38 63 25 6C */	addi r3, r3, l_HIO@l
/* 80BA1ADC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BA1AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA1AE4  4C 41 13 82 */	cror 2, 1, 2
/* 80BA1AE8  40 82 00 48 */	bne lbl_80BA1B30
/* 80BA1AEC  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80BA1AF0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BA1AF4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BA1AF8  40 81 00 38 */	ble lbl_80BA1B30
/* 80BA1AFC  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80BA1B00  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA1B04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BA1B08  40 80 00 28 */	bge lbl_80BA1B30
/* 80BA1B0C  3B E0 00 01 */	li r31, 1
/* 80BA1B10  48 00 00 20 */	b lbl_80BA1B30
lbl_80BA1B14:
/* 80BA1B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA1B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA1B1C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BA1B20  80 03 05 84 */	lwz r0, 0x584(r3)
/* 80BA1B24  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 80BA1B28  41 82 00 08 */	beq lbl_80BA1B30
/* 80BA1B2C  3B E0 00 01 */	li r31, 1
lbl_80BA1B30:
/* 80BA1B30  7F E3 FB 78 */	mr r3, r31
/* 80BA1B34  39 61 00 40 */	addi r11, r1, 0x40
/* 80BA1B38  4B 7C 06 EC */	b _restgpr_28
/* 80BA1B3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA1B40  7C 08 03 A6 */	mtlr r0
/* 80BA1B44  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA1B48  4E 80 00 20 */	blr 
