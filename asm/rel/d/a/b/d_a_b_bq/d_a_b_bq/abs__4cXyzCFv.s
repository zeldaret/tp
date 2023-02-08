lbl_805BA3C4:
/* 805BA3C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA3C8  7C 08 02 A6 */	mflr r0
/* 805BA3CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA3D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA3D4  3C 80 80 5C */	lis r4, lit_3816@ha /* 0x805BA588@ha */
/* 805BA3D8  3B E4 A5 88 */	addi r31, r4, lit_3816@l /* 0x805BA588@l */
/* 805BA3DC  4B D8 CD 5D */	bl PSVECSquareMag
/* 805BA3E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805BA3E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BA3E8  40 81 00 58 */	ble lbl_805BA440
/* 805BA3EC  FC 00 08 34 */	frsqrte f0, f1
/* 805BA3F0  C8 9F 02 98 */	lfd f4, 0x298(r31)
/* 805BA3F4  FC 44 00 32 */	fmul f2, f4, f0
/* 805BA3F8  C8 7F 02 A0 */	lfd f3, 0x2a0(r31)
/* 805BA3FC  FC 00 00 32 */	fmul f0, f0, f0
/* 805BA400  FC 01 00 32 */	fmul f0, f1, f0
/* 805BA404  FC 03 00 28 */	fsub f0, f3, f0
/* 805BA408  FC 02 00 32 */	fmul f0, f2, f0
/* 805BA40C  FC 44 00 32 */	fmul f2, f4, f0
/* 805BA410  FC 00 00 32 */	fmul f0, f0, f0
/* 805BA414  FC 01 00 32 */	fmul f0, f1, f0
/* 805BA418  FC 03 00 28 */	fsub f0, f3, f0
/* 805BA41C  FC 02 00 32 */	fmul f0, f2, f0
/* 805BA420  FC 44 00 32 */	fmul f2, f4, f0
/* 805BA424  FC 00 00 32 */	fmul f0, f0, f0
/* 805BA428  FC 01 00 32 */	fmul f0, f1, f0
/* 805BA42C  FC 03 00 28 */	fsub f0, f3, f0
/* 805BA430  FC 02 00 32 */	fmul f0, f2, f0
/* 805BA434  FC 21 00 32 */	fmul f1, f1, f0
/* 805BA438  FC 20 08 18 */	frsp f1, f1
/* 805BA43C  48 00 00 88 */	b lbl_805BA4C4
lbl_805BA440:
/* 805BA440  C8 1F 02 A8 */	lfd f0, 0x2a8(r31)
/* 805BA444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BA448  40 80 00 10 */	bge lbl_805BA458
/* 805BA44C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BA450  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805BA454  48 00 00 70 */	b lbl_805BA4C4
lbl_805BA458:
/* 805BA458  D0 21 00 08 */	stfs f1, 8(r1)
/* 805BA45C  80 81 00 08 */	lwz r4, 8(r1)
/* 805BA460  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805BA464  3C 00 7F 80 */	lis r0, 0x7f80
/* 805BA468  7C 03 00 00 */	cmpw r3, r0
/* 805BA46C  41 82 00 14 */	beq lbl_805BA480
/* 805BA470  40 80 00 40 */	bge lbl_805BA4B0
/* 805BA474  2C 03 00 00 */	cmpwi r3, 0
/* 805BA478  41 82 00 20 */	beq lbl_805BA498
/* 805BA47C  48 00 00 34 */	b lbl_805BA4B0
lbl_805BA480:
/* 805BA480  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BA484  41 82 00 0C */	beq lbl_805BA490
/* 805BA488  38 00 00 01 */	li r0, 1
/* 805BA48C  48 00 00 28 */	b lbl_805BA4B4
lbl_805BA490:
/* 805BA490  38 00 00 02 */	li r0, 2
/* 805BA494  48 00 00 20 */	b lbl_805BA4B4
lbl_805BA498:
/* 805BA498  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BA49C  41 82 00 0C */	beq lbl_805BA4A8
/* 805BA4A0  38 00 00 05 */	li r0, 5
/* 805BA4A4  48 00 00 10 */	b lbl_805BA4B4
lbl_805BA4A8:
/* 805BA4A8  38 00 00 03 */	li r0, 3
/* 805BA4AC  48 00 00 08 */	b lbl_805BA4B4
lbl_805BA4B0:
/* 805BA4B0  38 00 00 04 */	li r0, 4
lbl_805BA4B4:
/* 805BA4B4  2C 00 00 01 */	cmpwi r0, 1
/* 805BA4B8  40 82 00 0C */	bne lbl_805BA4C4
/* 805BA4BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BA4C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805BA4C4:
/* 805BA4C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA4C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA4CC  7C 08 03 A6 */	mtlr r0
/* 805BA4D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA4D4  4E 80 00 20 */	blr 
