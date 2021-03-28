lbl_807E99B8:
/* 807E99B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807E99BC  7C 08 02 A6 */	mflr r0
/* 807E99C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807E99C4  39 61 00 40 */	addi r11, r1, 0x40
/* 807E99C8  4B B7 88 14 */	b _savegpr_29
/* 807E99CC  7C 7D 1B 78 */	mr r29, r3
/* 807E99D0  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E99D4  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807E99D8  C0 3D 06 60 */	lfs f1, 0x660(r29)
/* 807E99DC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807E99E0  EC 81 00 28 */	fsubs f4, f1, f0
/* 807E99E4  38 80 00 00 */	li r4, 0
/* 807E99E8  3B C0 00 00 */	li r30, 0
/* 807E99EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E99F0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 807E99F4  40 81 00 50 */	ble lbl_807E9A44
/* 807E99F8  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 807E99FC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807E9A00  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 807E9A04  3C 00 43 30 */	lis r0, 0x4330
/* 807E9A08  48 00 00 2C */	b lbl_807E9A34
lbl_807E9A0C:
/* 807E9A0C  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 807E9A10  90 61 00 2C */	stw r3, 0x2c(r1)
/* 807E9A14  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E9A18  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807E9A1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807E9A20  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E9A24  EC 03 00 2A */	fadds f0, f3, f0
/* 807E9A28  EC 84 00 28 */	fsubs f4, f4, f0
/* 807E9A2C  38 84 00 01 */	addi r4, r4, 1
/* 807E9A30  3B DE 00 01 */	addi r30, r30, 1
lbl_807E9A34:
/* 807E9A34  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 807E9A38  4C 41 13 82 */	cror 2, 1, 2
/* 807E9A3C  41 82 FF D0 */	beq lbl_807E9A0C
/* 807E9A40  48 00 00 24 */	b lbl_807E9A64
lbl_807E9A44:
/* 807E9A44  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807E9A48  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807E9A4C  48 00 00 0C */	b lbl_807E9A58
lbl_807E9A50:
/* 807E9A50  EC 84 08 2A */	fadds f4, f4, f1
/* 807E9A54  3B DE 00 01 */	addi r30, r30, 1
lbl_807E9A58:
/* 807E9A58  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 807E9A5C  4C 40 13 82 */	cror 2, 0, 2
/* 807E9A60  41 82 FF F0 */	beq lbl_807E9A50
lbl_807E9A64:
/* 807E9A64  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 807E9A68  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 807E9A6C  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 807E9A70  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 807E9A74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807E9A78  3C 00 43 30 */	lis r0, 0x4330
/* 807E9A7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E9A80  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807E9A84  EC 00 08 28 */	fsubs f0, f0, f1
/* 807E9A88  EC 02 00 32 */	fmuls f0, f2, f0
/* 807E9A8C  EC 03 00 2A */	fadds f0, f3, f0
/* 807E9A90  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807E9A94  38 00 00 02 */	li r0, 2
/* 807E9A98  98 1D 07 5B */	stb r0, 0x75b(r29)
/* 807E9A9C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807E9AA0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807E9AA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E9AA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E9AAC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807E9AB0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807E9AB4  C0 5D 06 64 */	lfs f2, 0x664(r29)
/* 807E9AB8  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 807E9ABC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E9AC0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807E9AC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807E9AC8  38 61 00 0C */	addi r3, r1, 0xc
/* 807E9ACC  38 81 00 18 */	addi r4, r1, 0x18
/* 807E9AD0  4B B5 D8 CC */	b PSVECSquareDistance
/* 807E9AD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E9AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9ADC  40 81 00 58 */	ble lbl_807E9B34
/* 807E9AE0  FC 00 08 34 */	frsqrte f0, f1
/* 807E9AE4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E9AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 807E9AEC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E9AF0  FC 00 00 32 */	fmul f0, f0, f0
/* 807E9AF4  FC 01 00 32 */	fmul f0, f1, f0
/* 807E9AF8  FC 03 00 28 */	fsub f0, f3, f0
/* 807E9AFC  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9B00  FC 44 00 32 */	fmul f2, f4, f0
/* 807E9B04  FC 00 00 32 */	fmul f0, f0, f0
/* 807E9B08  FC 01 00 32 */	fmul f0, f1, f0
/* 807E9B0C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E9B10  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9B14  FC 44 00 32 */	fmul f2, f4, f0
/* 807E9B18  FC 00 00 32 */	fmul f0, f0, f0
/* 807E9B1C  FC 01 00 32 */	fmul f0, f1, f0
/* 807E9B20  FC 03 00 28 */	fsub f0, f3, f0
/* 807E9B24  FC 02 00 32 */	fmul f0, f2, f0
/* 807E9B28  FC 21 00 32 */	fmul f1, f1, f0
/* 807E9B2C  FC 20 08 18 */	frsp f1, f1
/* 807E9B30  48 00 00 88 */	b lbl_807E9BB8
lbl_807E9B34:
/* 807E9B34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E9B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9B3C  40 80 00 10 */	bge lbl_807E9B4C
/* 807E9B40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E9B44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E9B48  48 00 00 70 */	b lbl_807E9BB8
lbl_807E9B4C:
/* 807E9B4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E9B50  80 81 00 08 */	lwz r4, 8(r1)
/* 807E9B54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E9B58  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E9B5C  7C 03 00 00 */	cmpw r3, r0
/* 807E9B60  41 82 00 14 */	beq lbl_807E9B74
/* 807E9B64  40 80 00 40 */	bge lbl_807E9BA4
/* 807E9B68  2C 03 00 00 */	cmpwi r3, 0
/* 807E9B6C  41 82 00 20 */	beq lbl_807E9B8C
/* 807E9B70  48 00 00 34 */	b lbl_807E9BA4
lbl_807E9B74:
/* 807E9B74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E9B78  41 82 00 0C */	beq lbl_807E9B84
/* 807E9B7C  38 00 00 01 */	li r0, 1
/* 807E9B80  48 00 00 28 */	b lbl_807E9BA8
lbl_807E9B84:
/* 807E9B84  38 00 00 02 */	li r0, 2
/* 807E9B88  48 00 00 20 */	b lbl_807E9BA8
lbl_807E9B8C:
/* 807E9B8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E9B90  41 82 00 0C */	beq lbl_807E9B9C
/* 807E9B94  38 00 00 05 */	li r0, 5
/* 807E9B98  48 00 00 10 */	b lbl_807E9BA8
lbl_807E9B9C:
/* 807E9B9C  38 00 00 03 */	li r0, 3
/* 807E9BA0  48 00 00 08 */	b lbl_807E9BA8
lbl_807E9BA4:
/* 807E9BA4  38 00 00 04 */	li r0, 4
lbl_807E9BA8:
/* 807E9BA8  2C 00 00 01 */	cmpwi r0, 1
/* 807E9BAC  40 82 00 0C */	bne lbl_807E9BB8
/* 807E9BB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E9BB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E9BB8:
/* 807E9BB8  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 807E9BBC  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 807E9BC0  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 807E9BC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807E9BC8  3C 00 43 30 */	lis r0, 0x4330
/* 807E9BCC  90 01 00 28 */	stw r0, 0x28(r1)
/* 807E9BD0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807E9BD4  EC 00 10 28 */	fsubs f0, f0, f2
/* 807E9BD8  EC 03 00 2A */	fadds f0, f3, f0
/* 807E9BDC  EC 01 00 24 */	fdivs f0, f1, f0
/* 807E9BE0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807E9BE4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807E9BE8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807E9BEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E9BF0  40 80 00 08 */	bge lbl_807E9BF8
/* 807E9BF4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807E9BF8:
/* 807E9BF8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807E9BFC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807E9C00  7F C3 F3 78 */	mr r3, r30
/* 807E9C04  39 61 00 40 */	addi r11, r1, 0x40
/* 807E9C08  4B B7 86 20 */	b _restgpr_29
/* 807E9C0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807E9C10  7C 08 03 A6 */	mtlr r0
/* 807E9C14  38 21 00 40 */	addi r1, r1, 0x40
/* 807E9C18  4E 80 00 20 */	blr 
