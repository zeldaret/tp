lbl_806AA8B0:
/* 806AA8B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AA8B4  7C 08 02 A6 */	mflr r0
/* 806AA8B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AA8BC  39 61 00 20 */	addi r11, r1, 0x20
/* 806AA8C0  4B CB 79 1D */	bl _savegpr_29
/* 806AA8C4  7C 7F 1B 78 */	mr r31, r3
/* 806AA8C8  3C 60 80 6B */	lis r3, lit_3764@ha /* 0x806AD538@ha */
/* 806AA8CC  3B A3 D5 38 */	addi r29, r3, lit_3764@l /* 0x806AD538@l */
/* 806AA8D0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806AA8D4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806AA8D8  4B C9 CA C5 */	bl PSVECSquareDistance
/* 806AA8DC  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 806AA8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AA8E4  40 81 00 58 */	ble lbl_806AA93C
/* 806AA8E8  FC 00 08 34 */	frsqrte f0, f1
/* 806AA8EC  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 806AA8F0  FC 44 00 32 */	fmul f2, f4, f0
/* 806AA8F4  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 806AA8F8  FC 00 00 32 */	fmul f0, f0, f0
/* 806AA8FC  FC 01 00 32 */	fmul f0, f1, f0
/* 806AA900  FC 03 00 28 */	fsub f0, f3, f0
/* 806AA904  FC 02 00 32 */	fmul f0, f2, f0
/* 806AA908  FC 44 00 32 */	fmul f2, f4, f0
/* 806AA90C  FC 00 00 32 */	fmul f0, f0, f0
/* 806AA910  FC 01 00 32 */	fmul f0, f1, f0
/* 806AA914  FC 03 00 28 */	fsub f0, f3, f0
/* 806AA918  FC 02 00 32 */	fmul f0, f2, f0
/* 806AA91C  FC 44 00 32 */	fmul f2, f4, f0
/* 806AA920  FC 00 00 32 */	fmul f0, f0, f0
/* 806AA924  FC 01 00 32 */	fmul f0, f1, f0
/* 806AA928  FC 03 00 28 */	fsub f0, f3, f0
/* 806AA92C  FC 02 00 32 */	fmul f0, f2, f0
/* 806AA930  FC 21 00 32 */	fmul f1, f1, f0
/* 806AA934  FC 20 08 18 */	frsp f1, f1
/* 806AA938  48 00 00 88 */	b lbl_806AA9C0
lbl_806AA93C:
/* 806AA93C  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 806AA940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AA944  40 80 00 10 */	bge lbl_806AA954
/* 806AA948  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AA94C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806AA950  48 00 00 70 */	b lbl_806AA9C0
lbl_806AA954:
/* 806AA954  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AA958  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806AA95C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806AA960  3C 00 7F 80 */	lis r0, 0x7f80
/* 806AA964  7C 03 00 00 */	cmpw r3, r0
/* 806AA968  41 82 00 14 */	beq lbl_806AA97C
/* 806AA96C  40 80 00 40 */	bge lbl_806AA9AC
/* 806AA970  2C 03 00 00 */	cmpwi r3, 0
/* 806AA974  41 82 00 20 */	beq lbl_806AA994
/* 806AA978  48 00 00 34 */	b lbl_806AA9AC
lbl_806AA97C:
/* 806AA97C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AA980  41 82 00 0C */	beq lbl_806AA98C
/* 806AA984  38 00 00 01 */	li r0, 1
/* 806AA988  48 00 00 28 */	b lbl_806AA9B0
lbl_806AA98C:
/* 806AA98C  38 00 00 02 */	li r0, 2
/* 806AA990  48 00 00 20 */	b lbl_806AA9B0
lbl_806AA994:
/* 806AA994  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AA998  41 82 00 0C */	beq lbl_806AA9A4
/* 806AA99C  38 00 00 05 */	li r0, 5
/* 806AA9A0  48 00 00 10 */	b lbl_806AA9B0
lbl_806AA9A4:
/* 806AA9A4  38 00 00 03 */	li r0, 3
/* 806AA9A8  48 00 00 08 */	b lbl_806AA9B0
lbl_806AA9AC:
/* 806AA9AC  38 00 00 04 */	li r0, 4
lbl_806AA9B0:
/* 806AA9B0  2C 00 00 01 */	cmpwi r0, 1
/* 806AA9B4  40 82 00 0C */	bne lbl_806AA9C0
/* 806AA9B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AA9BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806AA9C0:
/* 806AA9C0  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 806AA9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AA9C8  40 81 00 0C */	ble lbl_806AA9D4
/* 806AA9CC  38 60 00 00 */	li r3, 0
/* 806AA9D0  48 00 01 30 */	b lbl_806AAB00
lbl_806AA9D4:
/* 806AA9D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AA9D8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AA9DC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806AA9E0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806AA9E4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806AA9E8  4B C9 C9 B5 */	bl PSVECSquareDistance
/* 806AA9EC  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 806AA9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AA9F4  40 81 00 58 */	ble lbl_806AAA4C
/* 806AA9F8  FC 00 08 34 */	frsqrte f0, f1
/* 806AA9FC  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 806AAA00  FC 44 00 32 */	fmul f2, f4, f0
/* 806AAA04  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 806AAA08  FC 00 00 32 */	fmul f0, f0, f0
/* 806AAA0C  FC 01 00 32 */	fmul f0, f1, f0
/* 806AAA10  FC 03 00 28 */	fsub f0, f3, f0
/* 806AAA14  FC 02 00 32 */	fmul f0, f2, f0
/* 806AAA18  FC 44 00 32 */	fmul f2, f4, f0
/* 806AAA1C  FC 00 00 32 */	fmul f0, f0, f0
/* 806AAA20  FC 01 00 32 */	fmul f0, f1, f0
/* 806AAA24  FC 03 00 28 */	fsub f0, f3, f0
/* 806AAA28  FC 02 00 32 */	fmul f0, f2, f0
/* 806AAA2C  FC 44 00 32 */	fmul f2, f4, f0
/* 806AAA30  FC 00 00 32 */	fmul f0, f0, f0
/* 806AAA34  FC 01 00 32 */	fmul f0, f1, f0
/* 806AAA38  FC 03 00 28 */	fsub f0, f3, f0
/* 806AAA3C  FC 02 00 32 */	fmul f0, f2, f0
/* 806AAA40  FC 21 00 32 */	fmul f1, f1, f0
/* 806AAA44  FC 20 08 18 */	frsp f1, f1
/* 806AAA48  48 00 00 88 */	b lbl_806AAAD0
lbl_806AAA4C:
/* 806AAA4C  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 806AAA50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AAA54  40 80 00 10 */	bge lbl_806AAA64
/* 806AAA58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AAA5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806AAA60  48 00 00 70 */	b lbl_806AAAD0
lbl_806AAA64:
/* 806AAA64  D0 21 00 08 */	stfs f1, 8(r1)
/* 806AAA68  80 81 00 08 */	lwz r4, 8(r1)
/* 806AAA6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806AAA70  3C 00 7F 80 */	lis r0, 0x7f80
/* 806AAA74  7C 03 00 00 */	cmpw r3, r0
/* 806AAA78  41 82 00 14 */	beq lbl_806AAA8C
/* 806AAA7C  40 80 00 40 */	bge lbl_806AAABC
/* 806AAA80  2C 03 00 00 */	cmpwi r3, 0
/* 806AAA84  41 82 00 20 */	beq lbl_806AAAA4
/* 806AAA88  48 00 00 34 */	b lbl_806AAABC
lbl_806AAA8C:
/* 806AAA8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AAA90  41 82 00 0C */	beq lbl_806AAA9C
/* 806AAA94  38 00 00 01 */	li r0, 1
/* 806AAA98  48 00 00 28 */	b lbl_806AAAC0
lbl_806AAA9C:
/* 806AAA9C  38 00 00 02 */	li r0, 2
/* 806AAAA0  48 00 00 20 */	b lbl_806AAAC0
lbl_806AAAA4:
/* 806AAAA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806AAAA8  41 82 00 0C */	beq lbl_806AAAB4
/* 806AAAAC  38 00 00 05 */	li r0, 5
/* 806AAAB0  48 00 00 10 */	b lbl_806AAAC0
lbl_806AAAB4:
/* 806AAAB4  38 00 00 03 */	li r0, 3
/* 806AAAB8  48 00 00 08 */	b lbl_806AAAC0
lbl_806AAABC:
/* 806AAABC  38 00 00 04 */	li r0, 4
lbl_806AAAC0:
/* 806AAAC0  2C 00 00 01 */	cmpwi r0, 1
/* 806AAAC4  40 82 00 0C */	bne lbl_806AAAD0
/* 806AAAC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806AAACC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806AAAD0:
/* 806AAAD0  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806AD808@ha */
/* 806AAAD4  38 63 D8 08 */	addi r3, r3, l_HIO@l /* 0x806AD808@l */
/* 806AAAD8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806AAADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806AAAE0  40 81 00 0C */	ble lbl_806AAAEC
/* 806AAAE4  38 60 00 00 */	li r3, 0
/* 806AAAE8  48 00 00 18 */	b lbl_806AAB00
lbl_806AAAEC:
/* 806AAAEC  7F E3 FB 78 */	mr r3, r31
/* 806AAAF0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806AAAF4  4B 97 23 09 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806AAAF8  7C 60 00 34 */	cntlzw r0, r3
/* 806AAAFC  54 03 D9 7E */	srwi r3, r0, 5
lbl_806AAB00:
/* 806AAB00  39 61 00 20 */	addi r11, r1, 0x20
/* 806AAB04  4B CB 77 25 */	bl _restgpr_29
/* 806AAB08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AAB0C  7C 08 03 A6 */	mtlr r0
/* 806AAB10  38 21 00 20 */	addi r1, r1, 0x20
/* 806AAB14  4E 80 00 20 */	blr 
