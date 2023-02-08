lbl_8073F250:
/* 8073F250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073F254  7C 08 02 A6 */	mflr r0
/* 8073F258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073F25C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073F260  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073F264  7C 7E 1B 78 */	mr r30, r3
/* 8073F268  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073F26C  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073F270  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073F274  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073F278  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073F27C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073F280  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073F284  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8073F288  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8073F28C  38 81 00 0C */	addi r4, r1, 0xc
/* 8073F290  4B C0 81 0D */	bl PSVECSquareDistance
/* 8073F294  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073F298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F29C  40 81 00 58 */	ble lbl_8073F2F4
/* 8073F2A0  FC 00 08 34 */	frsqrte f0, f1
/* 8073F2A4  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073F2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F2AC  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073F2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F2C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F2C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F2CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F2D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F2D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8073F2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8073F2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8073F2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8073F2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8073F2E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8073F2EC  FC 20 08 18 */	frsp f1, f1
/* 8073F2F0  48 00 00 88 */	b lbl_8073F378
lbl_8073F2F4:
/* 8073F2F4  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073F2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F2FC  40 80 00 10 */	bge lbl_8073F30C
/* 8073F300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073F308  48 00 00 70 */	b lbl_8073F378
lbl_8073F30C:
/* 8073F30C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073F310  80 81 00 08 */	lwz r4, 8(r1)
/* 8073F314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073F318  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073F31C  7C 03 00 00 */	cmpw r3, r0
/* 8073F320  41 82 00 14 */	beq lbl_8073F334
/* 8073F324  40 80 00 40 */	bge lbl_8073F364
/* 8073F328  2C 03 00 00 */	cmpwi r3, 0
/* 8073F32C  41 82 00 20 */	beq lbl_8073F34C
/* 8073F330  48 00 00 34 */	b lbl_8073F364
lbl_8073F334:
/* 8073F334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F338  41 82 00 0C */	beq lbl_8073F344
/* 8073F33C  38 00 00 01 */	li r0, 1
/* 8073F340  48 00 00 28 */	b lbl_8073F368
lbl_8073F344:
/* 8073F344  38 00 00 02 */	li r0, 2
/* 8073F348  48 00 00 20 */	b lbl_8073F368
lbl_8073F34C:
/* 8073F34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073F350  41 82 00 0C */	beq lbl_8073F35C
/* 8073F354  38 00 00 05 */	li r0, 5
/* 8073F358  48 00 00 10 */	b lbl_8073F368
lbl_8073F35C:
/* 8073F35C  38 00 00 03 */	li r0, 3
/* 8073F360  48 00 00 08 */	b lbl_8073F368
lbl_8073F364:
/* 8073F364  38 00 00 04 */	li r0, 4
lbl_8073F368:
/* 8073F368  2C 00 00 01 */	cmpwi r0, 1
/* 8073F36C  40 82 00 0C */	bne lbl_8073F378
/* 8073F370  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073F374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8073F378:
/* 8073F378  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8073F37C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073F380  40 80 00 38 */	bge lbl_8073F3B8
/* 8073F384  A8 1E 05 AC */	lha r0, 0x5ac(r30)
/* 8073F388  2C 00 00 00 */	cmpwi r0, 0
/* 8073F38C  40 82 00 2C */	bne lbl_8073F3B8
/* 8073F390  88 1E 06 62 */	lbz r0, 0x662(r30)
/* 8073F394  28 00 00 00 */	cmplwi r0, 0
/* 8073F398  41 82 00 10 */	beq lbl_8073F3A8
/* 8073F39C  7F C3 F3 78 */	mr r3, r30
/* 8073F3A0  4B FF F9 B9 */	bl SearchBackPos__8daE_PH_cFv
/* 8073F3A4  48 00 00 0C */	b lbl_8073F3B0
lbl_8073F3A8:
/* 8073F3A8  7F C3 F3 78 */	mr r3, r30
/* 8073F3AC  4B FF F9 61 */	bl SearchNextPos__8daE_PH_cFv
lbl_8073F3B0:
/* 8073F3B0  38 60 00 01 */	li r3, 1
/* 8073F3B4  48 00 00 08 */	b lbl_8073F3BC
lbl_8073F3B8:
/* 8073F3B8  38 60 00 00 */	li r3, 0
lbl_8073F3BC:
/* 8073F3BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073F3C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073F3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073F3C8  7C 08 03 A6 */	mtlr r0
/* 8073F3CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8073F3D0  4E 80 00 20 */	blr 
