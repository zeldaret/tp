lbl_80D17374:
/* 80D17374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D17378  7C 08 02 A6 */	mflr r0
/* 80D1737C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D17380  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D17384  7C 64 1B 78 */	mr r4, r3
/* 80D17388  3C 60 80 D1 */	lis r3, l_bmd@ha
/* 80D1738C  3B E3 77 4C */	addi r31, r3, l_bmd@l
/* 80D17390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D17394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D17398  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D1739C  28 00 00 00 */	cmplwi r0, 0
/* 80D173A0  41 82 00 0C */	beq lbl_80D173AC
/* 80D173A4  38 60 00 00 */	li r3, 0
/* 80D173A8  48 00 01 3C */	b lbl_80D174E4
lbl_80D173AC:
/* 80D173AC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80D173B0  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80D173B4  41 82 00 0C */	beq lbl_80D173C0
/* 80D173B8  38 60 00 00 */	li r3, 0
/* 80D173BC  48 00 01 28 */	b lbl_80D174E4
lbl_80D173C0:
/* 80D173C0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80D173C4  7C 00 07 74 */	extsb r0, r0
/* 80D173C8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80D173CC  7C 63 02 14 */	add r3, r3, r0
/* 80D173D0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80D173D4  28 03 00 00 */	cmplwi r3, 0
/* 80D173D8  41 82 01 08 */	beq lbl_80D174E0
/* 80D173DC  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80D173E0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D173E4  4B 62 FF B8 */	b PSVECSquareDistance
/* 80D173E8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D173EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D173F0  40 81 00 58 */	ble lbl_80D17448
/* 80D173F4  FC 00 08 34 */	frsqrte f0, f1
/* 80D173F8  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80D173FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D17400  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80D17404  FC 00 00 32 */	fmul f0, f0, f0
/* 80D17408  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1740C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D17410  FC 02 00 32 */	fmul f0, f2, f0
/* 80D17414  FC 44 00 32 */	fmul f2, f4, f0
/* 80D17418  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1741C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D17420  FC 03 00 28 */	fsub f0, f3, f0
/* 80D17424  FC 02 00 32 */	fmul f0, f2, f0
/* 80D17428  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1742C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D17430  FC 01 00 32 */	fmul f0, f1, f0
/* 80D17434  FC 03 00 28 */	fsub f0, f3, f0
/* 80D17438  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1743C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D17440  FC 20 08 18 */	frsp f1, f1
/* 80D17444  48 00 00 88 */	b lbl_80D174CC
lbl_80D17448:
/* 80D17448  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80D1744C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D17450  40 80 00 10 */	bge lbl_80D17460
/* 80D17454  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D17458  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D1745C  48 00 00 70 */	b lbl_80D174CC
lbl_80D17460:
/* 80D17460  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D17464  80 81 00 08 */	lwz r4, 8(r1)
/* 80D17468  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1746C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D17470  7C 03 00 00 */	cmpw r3, r0
/* 80D17474  41 82 00 14 */	beq lbl_80D17488
/* 80D17478  40 80 00 40 */	bge lbl_80D174B8
/* 80D1747C  2C 03 00 00 */	cmpwi r3, 0
/* 80D17480  41 82 00 20 */	beq lbl_80D174A0
/* 80D17484  48 00 00 34 */	b lbl_80D174B8
lbl_80D17488:
/* 80D17488  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1748C  41 82 00 0C */	beq lbl_80D17498
/* 80D17490  38 00 00 01 */	li r0, 1
/* 80D17494  48 00 00 28 */	b lbl_80D174BC
lbl_80D17498:
/* 80D17498  38 00 00 02 */	li r0, 2
/* 80D1749C  48 00 00 20 */	b lbl_80D174BC
lbl_80D174A0:
/* 80D174A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D174A4  41 82 00 0C */	beq lbl_80D174B0
/* 80D174A8  38 00 00 05 */	li r0, 5
/* 80D174AC  48 00 00 10 */	b lbl_80D174BC
lbl_80D174B0:
/* 80D174B0  38 00 00 03 */	li r0, 3
/* 80D174B4  48 00 00 08 */	b lbl_80D174BC
lbl_80D174B8:
/* 80D174B8  38 00 00 04 */	li r0, 4
lbl_80D174BC:
/* 80D174BC  2C 00 00 01 */	cmpwi r0, 1
/* 80D174C0  40 82 00 0C */	bne lbl_80D174CC
/* 80D174C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D174C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D174CC:
/* 80D174CC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D174D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D174D4  40 81 00 0C */	ble lbl_80D174E0
/* 80D174D8  38 60 00 01 */	li r3, 1
/* 80D174DC  48 00 00 08 */	b lbl_80D174E4
lbl_80D174E0:
/* 80D174E0  38 60 00 00 */	li r3, 0
lbl_80D174E4:
/* 80D174E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D174E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D174EC  7C 08 03 A6 */	mtlr r0
/* 80D174F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D174F4  4E 80 00 20 */	blr 
