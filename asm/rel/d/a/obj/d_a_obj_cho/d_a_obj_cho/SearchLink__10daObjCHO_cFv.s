lbl_80BCA924:
/* 80BCA924  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BCA928  7C 08 02 A6 */	mflr r0
/* 80BCA92C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BCA930  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCA934  4B 79 78 A9 */	bl _savegpr_29
/* 80BCA938  7C 7F 1B 78 */	mr r31, r3
/* 80BCA93C  3C 60 80 BD */	lis r3, lit_3775@ha /* 0x80BCC578@ha */
/* 80BCA940  3B C3 C5 78 */	addi r30, r3, lit_3775@l /* 0x80BCC578@l */
/* 80BCA944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCA948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCA94C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BCA950  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80BCA954  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BCA958  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCA95C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BCA960  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BCA964  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BCA968  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BCA96C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BCA970  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCA974  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BCA978  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BCA97C  38 61 00 0C */	addi r3, r1, 0xc
/* 80BCA980  38 81 00 18 */	addi r4, r1, 0x18
/* 80BCA984  4B 77 CA 19 */	bl PSVECSquareDistance
/* 80BCA988  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BCA98C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCA990  40 81 00 58 */	ble lbl_80BCA9E8
/* 80BCA994  FC 00 08 34 */	frsqrte f0, f1
/* 80BCA998  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 80BCA99C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCA9A0  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 80BCA9A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCA9A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCA9AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCA9B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCA9B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCA9B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCA9BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCA9C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCA9C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCA9C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCA9CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCA9D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCA9D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCA9D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCA9DC  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCA9E0  FC 20 08 18 */	frsp f1, f1
/* 80BCA9E4  48 00 00 88 */	b lbl_80BCAA6C
lbl_80BCA9E8:
/* 80BCA9E8  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 80BCA9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCA9F0  40 80 00 10 */	bge lbl_80BCAA00
/* 80BCA9F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCA9F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BCA9FC  48 00 00 70 */	b lbl_80BCAA6C
lbl_80BCAA00:
/* 80BCAA00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCAA04  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCAA08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCAA0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCAA10  7C 03 00 00 */	cmpw r3, r0
/* 80BCAA14  41 82 00 14 */	beq lbl_80BCAA28
/* 80BCAA18  40 80 00 40 */	bge lbl_80BCAA58
/* 80BCAA1C  2C 03 00 00 */	cmpwi r3, 0
/* 80BCAA20  41 82 00 20 */	beq lbl_80BCAA40
/* 80BCAA24  48 00 00 34 */	b lbl_80BCAA58
lbl_80BCAA28:
/* 80BCAA28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCAA2C  41 82 00 0C */	beq lbl_80BCAA38
/* 80BCAA30  38 00 00 01 */	li r0, 1
/* 80BCAA34  48 00 00 28 */	b lbl_80BCAA5C
lbl_80BCAA38:
/* 80BCAA38  38 00 00 02 */	li r0, 2
/* 80BCAA3C  48 00 00 20 */	b lbl_80BCAA5C
lbl_80BCAA40:
/* 80BCAA40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCAA44  41 82 00 0C */	beq lbl_80BCAA50
/* 80BCAA48  38 00 00 05 */	li r0, 5
/* 80BCAA4C  48 00 00 10 */	b lbl_80BCAA5C
lbl_80BCAA50:
/* 80BCAA50  38 00 00 03 */	li r0, 3
/* 80BCAA54  48 00 00 08 */	b lbl_80BCAA5C
lbl_80BCAA58:
/* 80BCAA58  38 00 00 04 */	li r0, 4
lbl_80BCAA5C:
/* 80BCAA5C  2C 00 00 01 */	cmpwi r0, 1
/* 80BCAA60  40 82 00 0C */	bne lbl_80BCAA6C
/* 80BCAA64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCAA68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BCAA6C:
/* 80BCAA6C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80BCAA70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAA74  40 80 00 C4 */	bge lbl_80BCAB38
/* 80BCAA78  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BCAA7C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BCAA80  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BCAA84  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80BCAA88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAA8C  40 80 00 AC */	bge lbl_80BCAB38
/* 80BCAA90  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80BCAA94  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BCAA98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BCAA9C  40 82 00 9C */	bne lbl_80BCAB38
/* 80BCAAA0  7F A3 EB 78 */	mr r3, r29
/* 80BCAAA4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BCAAA8  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 80BCAAAC  7D 89 03 A6 */	mtctr r12
/* 80BCAAB0  4E 80 04 21 */	bctrl 
/* 80BCAAB4  2C 03 00 00 */	cmpwi r3, 0
/* 80BCAAB8  40 82 00 80 */	bne lbl_80BCAB38
/* 80BCAABC  7F A3 EB 78 */	mr r3, r29
/* 80BCAAC0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BCAAC4  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 80BCAAC8  7D 89 03 A6 */	mtctr r12
/* 80BCAACC  4E 80 04 21 */	bctrl 
/* 80BCAAD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCAAD4  41 82 00 64 */	beq lbl_80BCAB38
/* 80BCAAD8  38 00 00 00 */	li r0, 0
/* 80BCAADC  98 1F 09 80 */	stb r0, 0x980(r31)
/* 80BCAAE0  98 1F 09 81 */	stb r0, 0x981(r31)
/* 80BCAAE4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80BCAAE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BCAAEC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80BCAAF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BCAAF4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80BCAAF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BCAAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCAB00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCAB04  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BCAB08  38 80 00 09 */	li r4, 9
/* 80BCAB0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BCAB10  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80BCAB14  7D 89 03 A6 */	mtctr r12
/* 80BCAB18  4E 80 04 21 */	bctrl 
/* 80BCAB1C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80BCAB20  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80BCAB24  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCAB28  4B 77 B9 89 */	bl PSMTXCopy
/* 80BCAB2C  38 61 00 24 */	addi r3, r1, 0x24
/* 80BCAB30  38 9F 09 B4 */	addi r4, r31, 0x9b4
/* 80BCAB34  4B 6A 63 B9 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_80BCAB38:
/* 80BCAB38  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCAB3C  4B 79 76 ED */	bl _restgpr_29
/* 80BCAB40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BCAB44  7C 08 03 A6 */	mtlr r0
/* 80BCAB48  38 21 00 40 */	addi r1, r1, 0x40
/* 80BCAB4C  4E 80 00 20 */	blr 
