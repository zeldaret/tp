lbl_8015A0D0:
/* 8015A0D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015A0D4  7C 08 02 A6 */	mflr r0
/* 8015A0D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015A0DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015A0E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015A0E4  7C 7E 1B 78 */	mr r30, r3
/* 8015A0E8  80 63 00 08 */	lwz r3, 8(r3)
/* 8015A0EC  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8015A0F0  4B EF 76 C1 */	bl dPath_GetPnt__FPC5dPathi
/* 8015A0F4  7C 7F 1B 78 */	mr r31, r3
/* 8015A0F8  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 8015A0FC  7C 00 07 75 */	extsb. r0, r0
/* 8015A100  40 81 00 18 */	ble lbl_8015A118
/* 8015A104  7F C3 F3 78 */	mr r3, r30
/* 8015A108  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8015A10C  48 00 01 59 */	bl incIndex__11PathTrace_cFi
/* 8015A110  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8015A114  48 00 00 14 */	b lbl_8015A128
lbl_8015A118:
/* 8015A118  7F C3 F3 78 */	mr r3, r30
/* 8015A11C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8015A120  48 00 01 75 */	bl decIndex__11PathTrace_cFi
/* 8015A124  90 7E 00 20 */	stw r3, 0x20(r30)
lbl_8015A128:
/* 8015A128  80 7E 00 08 */	lwz r3, 8(r30)
/* 8015A12C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8015A130  4B EF 76 81 */	bl dPath_GetPnt__FPC5dPathi
/* 8015A134  7C 64 1B 78 */	mr r4, r3
/* 8015A138  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8015A13C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015A140  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8015A144  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015A148  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8015A14C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8015A150  38 61 00 0C */	addi r3, r1, 0xc
/* 8015A154  38 84 00 04 */	addi r4, r4, 4
/* 8015A158  48 1E D2 45 */	bl PSVECSquareDistance
/* 8015A15C  C0 02 9A E4 */	lfs f0, lit_4585(r2)
/* 8015A160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015A164  40 81 00 58 */	ble lbl_8015A1BC
/* 8015A168  FC 00 08 34 */	frsqrte f0, f1
/* 8015A16C  C8 82 9B 28 */	lfd f4, lit_5051(r2)
/* 8015A170  FC 44 00 32 */	fmul f2, f4, f0
/* 8015A174  C8 62 9B 30 */	lfd f3, lit_5052(r2)
/* 8015A178  FC 00 00 32 */	fmul f0, f0, f0
/* 8015A17C  FC 01 00 32 */	fmul f0, f1, f0
/* 8015A180  FC 03 00 28 */	fsub f0, f3, f0
/* 8015A184  FC 02 00 32 */	fmul f0, f2, f0
/* 8015A188  FC 44 00 32 */	fmul f2, f4, f0
/* 8015A18C  FC 00 00 32 */	fmul f0, f0, f0
/* 8015A190  FC 01 00 32 */	fmul f0, f1, f0
/* 8015A194  FC 03 00 28 */	fsub f0, f3, f0
/* 8015A198  FC 02 00 32 */	fmul f0, f2, f0
/* 8015A19C  FC 44 00 32 */	fmul f2, f4, f0
/* 8015A1A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8015A1A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8015A1A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8015A1AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8015A1B0  FC 21 00 32 */	fmul f1, f1, f0
/* 8015A1B4  FC 20 08 18 */	frsp f1, f1
/* 8015A1B8  48 00 00 88 */	b lbl_8015A240
lbl_8015A1BC:
/* 8015A1BC  C8 02 9B 38 */	lfd f0, lit_5053(r2)
/* 8015A1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015A1C4  40 80 00 10 */	bge lbl_8015A1D4
/* 8015A1C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8015A1CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8015A1D0  48 00 00 70 */	b lbl_8015A240
lbl_8015A1D4:
/* 8015A1D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8015A1D8  80 81 00 08 */	lwz r4, 8(r1)
/* 8015A1DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8015A1E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8015A1E4  7C 03 00 00 */	cmpw r3, r0
/* 8015A1E8  41 82 00 14 */	beq lbl_8015A1FC
/* 8015A1EC  40 80 00 40 */	bge lbl_8015A22C
/* 8015A1F0  2C 03 00 00 */	cmpwi r3, 0
/* 8015A1F4  41 82 00 20 */	beq lbl_8015A214
/* 8015A1F8  48 00 00 34 */	b lbl_8015A22C
lbl_8015A1FC:
/* 8015A1FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015A200  41 82 00 0C */	beq lbl_8015A20C
/* 8015A204  38 00 00 01 */	li r0, 1
/* 8015A208  48 00 00 28 */	b lbl_8015A230
lbl_8015A20C:
/* 8015A20C  38 00 00 02 */	li r0, 2
/* 8015A210  48 00 00 20 */	b lbl_8015A230
lbl_8015A214:
/* 8015A214  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015A218  41 82 00 0C */	beq lbl_8015A224
/* 8015A21C  38 00 00 05 */	li r0, 5
/* 8015A220  48 00 00 10 */	b lbl_8015A230
lbl_8015A224:
/* 8015A224  38 00 00 03 */	li r0, 3
/* 8015A228  48 00 00 08 */	b lbl_8015A230
lbl_8015A22C:
/* 8015A22C  38 00 00 04 */	li r0, 4
lbl_8015A230:
/* 8015A230  2C 00 00 01 */	cmpwi r0, 1
/* 8015A234  40 82 00 0C */	bne lbl_8015A240
/* 8015A238  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8015A23C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8015A240:
/* 8015A240  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 8015A244  C0 02 9B 20 */	lfs f0, lit_5050(r2)
/* 8015A248  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8015A24C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015A250  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015A254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015A258  7C 08 03 A6 */	mtlr r0
/* 8015A25C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015A260  4E 80 00 20 */	blr 
