lbl_80A3B074:
/* 80A3B074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3B078  3C E0 80 A4 */	lis r7, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3B07C  38 E7 08 C8 */	addi r7, r7, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3B080  A8 03 0E 00 */	lha r0, 0xe00(r3)
/* 80A3B084  2C 00 00 00 */	cmpwi r0, 0
/* 80A3B088  40 82 00 A8 */	bne lbl_80A3B130
/* 80A3B08C  C0 27 00 74 */	lfs f1, 0x74(r7)
/* 80A3B090  A8 03 0D FA */	lha r0, 0xdfa(r3)
/* 80A3B094  7C 00 20 50 */	subf r0, r0, r4
/* 80A3B098  7C 00 07 34 */	extsh r0, r0
/* 80A3B09C  C8 47 00 30 */	lfd f2, 0x30(r7)
/* 80A3B0A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3B0A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A3B0A8  3D 00 43 30 */	lis r8, 0x4330
/* 80A3B0AC  91 01 00 08 */	stw r8, 8(r1)
/* 80A3B0B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A3B0B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3B0B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A3B0BC  FC 00 02 10 */	fabs f0, f0
/* 80A3B0C0  FC 00 00 18 */	frsp f0, f0
/* 80A3B0C4  D0 03 0E 04 */	stfs f0, 0xe04(r3)
/* 80A3B0C8  C0 23 0E 04 */	lfs f1, 0xe04(r3)
/* 80A3B0CC  C0 07 00 54 */	lfs f0, 0x54(r7)
/* 80A3B0D0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80A3B0D4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80A3B0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3B0DC  91 01 00 10 */	stw r8, 0x10(r1)
/* 80A3B0E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A3B0E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3B0E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A3B0EC  D0 03 0E 04 */	stfs f0, 0xe04(r3)
/* 80A3B0F0  C0 03 0E 04 */	lfs f0, 0xe04(r3)
/* 80A3B0F4  FC 00 00 1E */	fctiwz f0, f0
/* 80A3B0F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A3B0FC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80A3B100  38 05 00 01 */	addi r0, r5, 1
/* 80A3B104  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3B108  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3B10C  91 01 00 20 */	stw r8, 0x20(r1)
/* 80A3B110  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A3B114  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A3B118  D0 03 0E 04 */	stfs f0, 0xe04(r3)
/* 80A3B11C  C0 23 0E 04 */	lfs f1, 0xe04(r3)
/* 80A3B120  C0 07 00 78 */	lfs f0, 0x78(r7)
/* 80A3B124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3B128  40 80 00 08 */	bge lbl_80A3B130
/* 80A3B12C  D0 03 0E 04 */	stfs f0, 0xe04(r3)
lbl_80A3B130:
/* 80A3B130  A8 A3 0D FA */	lha r5, 0xdfa(r3)
/* 80A3B134  7C 88 07 34 */	extsh r8, r4
/* 80A3B138  2C 06 00 00 */	cmpwi r6, 0
/* 80A3B13C  40 82 00 18 */	bne lbl_80A3B154
/* 80A3B140  7C 05 40 50 */	subf r0, r5, r8
/* 80A3B144  7C 00 07 35 */	extsh. r0, r0
/* 80A3B148  38 C0 FF FF */	li r6, -1
/* 80A3B14C  41 80 00 08 */	blt lbl_80A3B154
/* 80A3B150  38 C0 00 01 */	li r6, 1
lbl_80A3B154:
/* 80A3B154  7C 05 40 50 */	subf r0, r5, r8
/* 80A3B158  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 80A3B15C  2C 06 FF FF */	cmpwi r6, -1
/* 80A3B160  40 82 00 18 */	bne lbl_80A3B178
/* 80A3B164  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80A3B168  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80A3B16C  7C 08 00 50 */	subf r0, r8, r0
/* 80A3B170  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A3B174  7D 00 00 D0 */	neg r8, r0
lbl_80A3B178:
/* 80A3B178  A8 C3 0E 00 */	lha r6, 0xe00(r3)
/* 80A3B17C  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 80A3B180  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A3B184  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A3B188  7C 45 04 2E */	lfsx f2, r5, r0
/* 80A3B18C  C8 27 00 30 */	lfd f1, 0x30(r7)
/* 80A3B190  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 80A3B194  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A3B198  3C 00 43 30 */	lis r0, 0x4330
/* 80A3B19C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A3B1A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A3B1A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A3B1A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A3B1AC  FC 00 00 1E */	fctiwz f0, f0
/* 80A3B1B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A3B1B4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80A3B1B8  C0 27 00 7C */	lfs f1, 0x7c(r7)
/* 80A3B1BC  C0 03 0E 04 */	lfs f0, 0xe04(r3)
/* 80A3B1C0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80A3B1C4  FC 00 00 1E */	fctiwz f0, f0
/* 80A3B1C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A3B1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3B1D0  7C 06 02 14 */	add r0, r6, r0
/* 80A3B1D4  B0 03 0E 00 */	sth r0, 0xe00(r3)
/* 80A3B1D8  A8 03 0E 00 */	lha r0, 0xe00(r3)
/* 80A3B1DC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A3B1E0  28 00 40 00 */	cmplwi r0, 0x4000
/* 80A3B1E4  40 80 00 14 */	bge lbl_80A3B1F8
/* 80A3B1E8  A8 03 0D FA */	lha r0, 0xdfa(r3)
/* 80A3B1EC  7C 00 2A 14 */	add r0, r0, r5
/* 80A3B1F0  B0 03 0D AE */	sth r0, 0xdae(r3)
/* 80A3B1F4  48 00 00 10 */	b lbl_80A3B204
lbl_80A3B1F8:
/* 80A3B1F8  B0 83 0D AE */	sth r4, 0xdae(r3)
/* 80A3B1FC  38 00 40 00 */	li r0, 0x4000
/* 80A3B200  B0 03 0E 00 */	sth r0, 0xe00(r3)
lbl_80A3B204:
/* 80A3B204  7C 84 07 34 */	extsh r4, r4
/* 80A3B208  A8 03 0D AE */	lha r0, 0xdae(r3)
/* 80A3B20C  7C 04 00 50 */	subf r0, r4, r0
/* 80A3B210  7C 00 00 34 */	cntlzw r0, r0
/* 80A3B214  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A3B218  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3B21C  4E 80 00 20 */	blr 
