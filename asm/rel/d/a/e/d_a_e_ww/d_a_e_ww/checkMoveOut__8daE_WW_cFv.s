lbl_807EB964:
/* 807EB964  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EB968  7C 08 02 A6 */	mflr r0
/* 807EB96C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EB970  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807EB974  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807EB978  7C 7E 1B 78 */	mr r30, r3
/* 807EB97C  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807EB980  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807EB984  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807EB988  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 807EB98C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807EB990  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EB994  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807EB998  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807EB99C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807EB9A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807EB9A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807EB9A8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807EB9AC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807EB9B0  38 61 00 0C */	addi r3, r1, 0xc
/* 807EB9B4  38 81 00 18 */	addi r4, r1, 0x18
/* 807EB9B8  4B B5 B9 E5 */	bl PSVECSquareDistance
/* 807EB9BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EB9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EB9C4  40 81 00 58 */	ble lbl_807EBA1C
/* 807EB9C8  FC 00 08 34 */	frsqrte f0, f1
/* 807EB9CC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EB9D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807EB9D4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EB9D8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EB9DC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EB9E0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EB9E4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EB9E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EB9EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807EB9F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807EB9F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807EB9F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807EB9FC  FC 44 00 32 */	fmul f2, f4, f0
/* 807EBA00  FC 00 00 32 */	fmul f0, f0, f0
/* 807EBA04  FC 01 00 32 */	fmul f0, f1, f0
/* 807EBA08  FC 03 00 28 */	fsub f0, f3, f0
/* 807EBA0C  FC 02 00 32 */	fmul f0, f2, f0
/* 807EBA10  FC 21 00 32 */	fmul f1, f1, f0
/* 807EBA14  FC 20 08 18 */	frsp f1, f1
/* 807EBA18  48 00 00 88 */	b lbl_807EBAA0
lbl_807EBA1C:
/* 807EBA1C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EBA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBA24  40 80 00 10 */	bge lbl_807EBA34
/* 807EBA28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBA2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EBA30  48 00 00 70 */	b lbl_807EBAA0
lbl_807EBA34:
/* 807EBA34  D0 21 00 08 */	stfs f1, 8(r1)
/* 807EBA38  80 81 00 08 */	lwz r4, 8(r1)
/* 807EBA3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EBA40  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EBA44  7C 03 00 00 */	cmpw r3, r0
/* 807EBA48  41 82 00 14 */	beq lbl_807EBA5C
/* 807EBA4C  40 80 00 40 */	bge lbl_807EBA8C
/* 807EBA50  2C 03 00 00 */	cmpwi r3, 0
/* 807EBA54  41 82 00 20 */	beq lbl_807EBA74
/* 807EBA58  48 00 00 34 */	b lbl_807EBA8C
lbl_807EBA5C:
/* 807EBA5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBA60  41 82 00 0C */	beq lbl_807EBA6C
/* 807EBA64  38 00 00 01 */	li r0, 1
/* 807EBA68  48 00 00 28 */	b lbl_807EBA90
lbl_807EBA6C:
/* 807EBA6C  38 00 00 02 */	li r0, 2
/* 807EBA70  48 00 00 20 */	b lbl_807EBA90
lbl_807EBA74:
/* 807EBA74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EBA78  41 82 00 0C */	beq lbl_807EBA84
/* 807EBA7C  38 00 00 05 */	li r0, 5
/* 807EBA80  48 00 00 10 */	b lbl_807EBA90
lbl_807EBA84:
/* 807EBA84  38 00 00 03 */	li r0, 3
/* 807EBA88  48 00 00 08 */	b lbl_807EBA90
lbl_807EBA8C:
/* 807EBA8C  38 00 00 04 */	li r0, 4
lbl_807EBA90:
/* 807EBA90  2C 00 00 01 */	cmpwi r0, 1
/* 807EBA94  40 82 00 0C */	bne lbl_807EBAA0
/* 807EBA98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EBA9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EBAA0:
/* 807EBAA0  C0 1E 06 A8 */	lfs f0, 0x6a8(r30)
/* 807EBAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EBAA8  40 81 00 1C */	ble lbl_807EBAC4
/* 807EBAAC  7F C3 F3 78 */	mr r3, r30
/* 807EBAB0  38 80 00 05 */	li r4, 5
/* 807EBAB4  38 A0 00 00 */	li r5, 0
/* 807EBAB8  4B FF C1 25 */	bl setActionMode__8daE_WW_cFii
/* 807EBABC  38 60 00 01 */	li r3, 1
/* 807EBAC0  48 00 00 08 */	b lbl_807EBAC8
lbl_807EBAC4:
/* 807EBAC4  38 60 00 00 */	li r3, 0
lbl_807EBAC8:
/* 807EBAC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807EBACC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807EBAD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807EBAD4  7C 08 03 A6 */	mtlr r0
/* 807EBAD8  38 21 00 30 */	addi r1, r1, 0x30
/* 807EBADC  4E 80 00 20 */	blr 
