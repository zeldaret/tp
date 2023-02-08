lbl_8032A184:
/* 8032A184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A188  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8032A18C  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 8032A190  7C C5 02 2E */	lhzx r6, r5, r0
/* 8032A194  C0 02 CA 48 */	lfs f0, lit_1092(r2)
/* 8032A198  C0 23 00 08 */	lfs f1, 8(r3)
/* 8032A19C  EC 00 08 2A */	fadds f0, f0, f1
/* 8032A1A0  FC 00 00 1E */	fctiwz f0, f0
/* 8032A1A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8032A1A8  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8032A1AC  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032A1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8032A1B4  40 80 00 1C */	bge lbl_8032A1D0
/* 8032A1B8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032A1BC  7C 65 02 14 */	add r3, r5, r0
/* 8032A1C0  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032A1C4  54 00 10 3A */	slwi r0, r0, 2
/* 8032A1C8  7C 24 04 2E */	lfsx f1, r4, r0
/* 8032A1CC  48 00 00 44 */	b lbl_8032A210
lbl_8032A1D0:
/* 8032A1D0  7C 07 30 00 */	cmpw r7, r6
/* 8032A1D4  41 80 00 24 */	blt lbl_8032A1F8
/* 8032A1D8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032A1DC  7C 65 02 14 */	add r3, r5, r0
/* 8032A1E0  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032A1E4  7C 66 02 14 */	add r3, r6, r0
/* 8032A1E8  38 03 FF FF */	addi r0, r3, -1
/* 8032A1EC  54 00 10 3A */	slwi r0, r0, 2
/* 8032A1F0  7C 24 04 2E */	lfsx f1, r4, r0
/* 8032A1F4  48 00 00 1C */	b lbl_8032A210
lbl_8032A1F8:
/* 8032A1F8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032A1FC  7C 65 02 14 */	add r3, r5, r0
/* 8032A200  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032A204  7C 07 02 14 */	add r0, r7, r0
/* 8032A208  54 00 10 3A */	slwi r0, r0, 2
/* 8032A20C  7C 24 04 2E */	lfsx f1, r4, r0
lbl_8032A210:
/* 8032A210  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A214  4E 80 00 20 */	blr 
