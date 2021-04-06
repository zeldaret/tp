lbl_8081F140:
/* 8081F140  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8081F144  7C 08 02 A6 */	mflr r0
/* 8081F148  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081F14C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8081F150  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8081F154  7C 7E 1B 78 */	mr r30, r3
/* 8081F158  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081F15C  3B E3 18 AC */	addi r31, r3, lit_3791@l /* 0x808218AC@l */
/* 8081F160  88 1E 07 64 */	lbz r0, 0x764(r30)
/* 8081F164  28 00 00 00 */	cmplwi r0, 0
/* 8081F168  40 82 01 5C */	bne lbl_8081F2C4
/* 8081F16C  4B 94 02 B9 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8081F170  2C 03 00 00 */	cmpwi r3, 0
/* 8081F174  41 82 01 50 */	beq lbl_8081F2C4
/* 8081F178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081F17C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081F180  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8081F184  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8081F188  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8081F18C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8081F190  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081F194  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8081F198  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8081F19C  C0 5E 06 A4 */	lfs f2, 0x6a4(r30)
/* 8081F1A0  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 8081F1A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081F1A8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8081F1AC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8081F1B0  38 61 00 0C */	addi r3, r1, 0xc
/* 8081F1B4  38 81 00 18 */	addi r4, r1, 0x18
/* 8081F1B8  4B B2 81 E5 */	bl PSVECSquareDistance
/* 8081F1BC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081F1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F1C4  40 81 00 58 */	ble lbl_8081F21C
/* 8081F1C8  FC 00 08 34 */	frsqrte f0, f1
/* 8081F1CC  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 8081F1D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F1D4  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 8081F1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F1E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F1EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F1F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F1F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F1F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F1FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8081F200  FC 00 00 32 */	fmul f0, f0, f0
/* 8081F204  FC 01 00 32 */	fmul f0, f1, f0
/* 8081F208  FC 03 00 28 */	fsub f0, f3, f0
/* 8081F20C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081F210  FC 21 00 32 */	fmul f1, f1, f0
/* 8081F214  FC 20 08 18 */	frsp f1, f1
/* 8081F218  48 00 00 88 */	b lbl_8081F2A0
lbl_8081F21C:
/* 8081F21C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 8081F220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F224  40 80 00 10 */	bge lbl_8081F234
/* 8081F228  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081F22C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081F230  48 00 00 70 */	b lbl_8081F2A0
lbl_8081F234:
/* 8081F234  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081F238  80 81 00 08 */	lwz r4, 8(r1)
/* 8081F23C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081F240  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081F244  7C 03 00 00 */	cmpw r3, r0
/* 8081F248  41 82 00 14 */	beq lbl_8081F25C
/* 8081F24C  40 80 00 40 */	bge lbl_8081F28C
/* 8081F250  2C 03 00 00 */	cmpwi r3, 0
/* 8081F254  41 82 00 20 */	beq lbl_8081F274
/* 8081F258  48 00 00 34 */	b lbl_8081F28C
lbl_8081F25C:
/* 8081F25C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081F260  41 82 00 0C */	beq lbl_8081F26C
/* 8081F264  38 00 00 01 */	li r0, 1
/* 8081F268  48 00 00 28 */	b lbl_8081F290
lbl_8081F26C:
/* 8081F26C  38 00 00 02 */	li r0, 2
/* 8081F270  48 00 00 20 */	b lbl_8081F290
lbl_8081F274:
/* 8081F274  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081F278  41 82 00 0C */	beq lbl_8081F284
/* 8081F27C  38 00 00 05 */	li r0, 5
/* 8081F280  48 00 00 10 */	b lbl_8081F290
lbl_8081F284:
/* 8081F284  38 00 00 03 */	li r0, 3
/* 8081F288  48 00 00 08 */	b lbl_8081F290
lbl_8081F28C:
/* 8081F28C  38 00 00 04 */	li r0, 4
lbl_8081F290:
/* 8081F290  2C 00 00 01 */	cmpwi r0, 1
/* 8081F294  40 82 00 0C */	bne lbl_8081F2A0
/* 8081F298  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081F29C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081F2A0:
/* 8081F2A0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8081F2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081F2A8  40 80 00 1C */	bge lbl_8081F2C4
/* 8081F2AC  7F C3 F3 78 */	mr r3, r30
/* 8081F2B0  38 80 00 0C */	li r4, 0xc
/* 8081F2B4  38 A0 00 00 */	li r5, 0
/* 8081F2B8  4B FF 77 C5 */	bl setActionMode__9daE_YMB_cFii
/* 8081F2BC  38 60 00 01 */	li r3, 1
/* 8081F2C0  48 00 00 08 */	b lbl_8081F2C8
lbl_8081F2C4:
/* 8081F2C4  38 60 00 00 */	li r3, 0
lbl_8081F2C8:
/* 8081F2C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8081F2CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8081F2D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8081F2D4  7C 08 03 A6 */	mtlr r0
/* 8081F2D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8081F2DC  4E 80 00 20 */	blr 
