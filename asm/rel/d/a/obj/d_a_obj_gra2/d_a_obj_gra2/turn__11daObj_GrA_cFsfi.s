lbl_80C0EFC4:
/* 80C0EFC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C0EFC8  3C C0 80 C1 */	lis r6, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0EFCC  38 C6 FA 7C */	addi r6, r6, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0EFD0  7C 89 07 34 */	extsh r9, r4
/* 80C0EFD4  80 03 1F C8 */	lwz r0, 0x1fc8(r3)
/* 80C0EFD8  2C 00 00 00 */	cmpwi r0, 0
/* 80C0EFDC  40 82 00 9C */	bne lbl_80C0F078
/* 80C0EFE0  C0 46 03 64 */	lfs f2, 0x364(r6)
/* 80C0EFE4  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80C0EFE8  7C 09 00 50 */	subf r0, r9, r0
/* 80C0EFEC  7C 00 07 34 */	extsh r0, r0
/* 80C0EFF0  C8 66 01 30 */	lfd f3, 0x130(r6)
/* 80C0EFF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0EFF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0EFFC  3D 00 43 30 */	lis r8, 0x4330
/* 80C0F000  91 01 00 08 */	stw r8, 8(r1)
/* 80C0F004  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C0F008  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C0F00C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C0F010  FC 00 02 10 */	fabs f0, f0
/* 80C0F014  FC 00 00 18 */	frsp f0, f0
/* 80C0F018  D0 03 1F D0 */	stfs f0, 0x1fd0(r3)
/* 80C0F01C  C0 43 1F D0 */	lfs f2, 0x1fd0(r3)
/* 80C0F020  C0 06 03 68 */	lfs f0, 0x368(r6)
/* 80C0F024  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C0F028  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C0F02C  D0 03 1F D0 */	stfs f0, 0x1fd0(r3)
/* 80C0F030  C0 03 1F D0 */	lfs f0, 0x1fd0(r3)
/* 80C0F034  FC 00 00 1E */	fctiwz f0, f0
/* 80C0F038  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C0F03C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80C0F040  38 07 00 01 */	addi r0, r7, 1
/* 80C0F044  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0F048  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0F04C  91 01 00 18 */	stw r8, 0x18(r1)
/* 80C0F050  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C0F054  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C0F058  D0 03 1F D0 */	stfs f0, 0x1fd0(r3)
/* 80C0F05C  C0 23 1F D0 */	lfs f1, 0x1fd0(r3)
/* 80C0F060  C0 06 03 6C */	lfs f0, 0x36c(r6)
/* 80C0F064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C0F068  40 80 00 08 */	bge lbl_80C0F070
/* 80C0F06C  D0 03 1F D0 */	stfs f0, 0x1fd0(r3)
lbl_80C0F070:
/* 80C0F070  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80C0F074  B0 03 1F D4 */	sth r0, 0x1fd4(r3)
lbl_80C0F078:
/* 80C0F078  A8 E3 1F D4 */	lha r7, 0x1fd4(r3)
/* 80C0F07C  2C 05 00 00 */	cmpwi r5, 0
/* 80C0F080  40 82 00 18 */	bne lbl_80C0F098
/* 80C0F084  7C 07 48 50 */	subf r0, r7, r9
/* 80C0F088  7C 00 07 35 */	extsh. r0, r0
/* 80C0F08C  38 A0 FF FF */	li r5, -1
/* 80C0F090  41 80 00 08 */	blt lbl_80C0F098
/* 80C0F094  38 A0 00 01 */	li r5, 1
lbl_80C0F098:
/* 80C0F098  7C 07 48 50 */	subf r0, r7, r9
/* 80C0F09C  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 80C0F0A0  7C E8 3B 78 */	mr r8, r7
/* 80C0F0A4  2C 05 00 00 */	cmpwi r5, 0
/* 80C0F0A8  40 80 00 18 */	bge lbl_80C0F0C0
/* 80C0F0AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80C0F0B0  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80C0F0B4  7C 07 00 50 */	subf r0, r7, r0
/* 80C0F0B8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80C0F0BC  7D 00 00 D0 */	neg r8, r0
lbl_80C0F0C0:
/* 80C0F0C0  80 E3 1F C8 */	lwz r7, 0x1fc8(r3)
/* 80C0F0C4  54 E0 04 38 */	rlwinm r0, r7, 0, 0x10, 0x1c
/* 80C0F0C8  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C0F0CC  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C0F0D0  7C 45 04 2E */	lfsx f2, r5, r0
/* 80C0F0D4  C8 26 01 30 */	lfd f1, 0x130(r6)
/* 80C0F0D8  6D 00 80 00 */	xoris r0, r8, 0x8000
/* 80C0F0DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0F0E0  3C A0 43 30 */	lis r5, 0x4330
/* 80C0F0E4  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80C0F0E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C0F0EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0F0F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C0F0F4  FC 00 00 1E */	fctiwz f0, f0
/* 80C0F0F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C0F0FC  81 01 00 14 */	lwz r8, 0x14(r1)
/* 80C0F100  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80C0F104  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0F108  90 A1 00 08 */	stw r5, 8(r1)
/* 80C0F10C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C0F110  EC 40 08 28 */	fsubs f2, f0, f1
/* 80C0F114  C0 26 03 70 */	lfs f1, 0x370(r6)
/* 80C0F118  C0 03 1F D0 */	lfs f0, 0x1fd0(r3)
/* 80C0F11C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C0F120  EC 02 00 2A */	fadds f0, f2, f0
/* 80C0F124  FC 00 00 1E */	fctiwz f0, f0
/* 80C0F128  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C0F12C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0F130  90 03 1F C8 */	stw r0, 0x1fc8(r3)
/* 80C0F134  80 03 1F C8 */	lwz r0, 0x1fc8(r3)
/* 80C0F138  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80C0F13C  28 00 40 00 */	cmplwi r0, 0x4000
/* 80C0F140  41 80 00 14 */	blt lbl_80C0F154
/* 80C0F144  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80C0F148  38 00 40 00 */	li r0, 0x4000
/* 80C0F14C  90 03 1F C8 */	stw r0, 0x1fc8(r3)
/* 80C0F150  48 00 00 10 */	b lbl_80C0F160
lbl_80C0F154:
/* 80C0F154  A8 03 1F D4 */	lha r0, 0x1fd4(r3)
/* 80C0F158  7C 00 42 14 */	add r0, r0, r8
/* 80C0F15C  B0 03 04 DE */	sth r0, 0x4de(r3)
lbl_80C0F160:
/* 80C0F160  7C 84 07 34 */	extsh r4, r4
/* 80C0F164  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80C0F168  7C 04 00 50 */	subf r0, r4, r0
/* 80C0F16C  7C 00 00 34 */	cntlzw r0, r0
/* 80C0F170  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80C0F174  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0F178  4E 80 00 20 */	blr 
