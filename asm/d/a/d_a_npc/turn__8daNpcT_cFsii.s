lbl_8014B4A4:
/* 8014B4A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8014B4A8  A8 03 0D DA */	lha r0, 0xdda(r3)
/* 8014B4AC  2C 00 00 00 */	cmpwi r0, 0
/* 8014B4B0  40 82 00 A8 */	bne lbl_8014B558
/* 8014B4B4  C0 22 9A 68 */	lfs f1, lit_7089(r2)
/* 8014B4B8  A8 03 0D D4 */	lha r0, 0xdd4(r3)
/* 8014B4BC  7C 00 20 50 */	subf r0, r0, r4
/* 8014B4C0  7C 00 07 34 */	extsh r0, r0
/* 8014B4C4  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 8014B4C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014B4CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014B4D0  3C E0 43 30 */	lis r7, 0x4330
/* 8014B4D4  90 E1 00 08 */	stw r7, 8(r1)
/* 8014B4D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014B4DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014B4E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014B4E4  FC 00 02 10 */	fabs f0, f0
/* 8014B4E8  FC 00 00 18 */	frsp f0, f0
/* 8014B4EC  D0 03 0D DC */	stfs f0, 0xddc(r3)
/* 8014B4F0  C0 23 0D DC */	lfs f1, 0xddc(r3)
/* 8014B4F4  C0 02 9A 4C */	lfs f0, lit_6775(r2)
/* 8014B4F8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8014B4FC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8014B500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014B504  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8014B508  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8014B50C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014B510  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014B514  D0 03 0D DC */	stfs f0, 0xddc(r3)
/* 8014B518  C0 03 0D DC */	lfs f0, 0xddc(r3)
/* 8014B51C  FC 00 00 1E */	fctiwz f0, f0
/* 8014B520  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8014B524  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8014B528  38 05 00 01 */	addi r0, r5, 1
/* 8014B52C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014B530  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014B534  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8014B538  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8014B53C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8014B540  D0 03 0D DC */	stfs f0, 0xddc(r3)
/* 8014B544  C0 23 0D DC */	lfs f1, 0xddc(r3)
/* 8014B548  C0 02 9A 6C */	lfs f0, lit_7090(r2)
/* 8014B54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B550  40 80 00 08 */	bge lbl_8014B558
/* 8014B554  D0 03 0D DC */	stfs f0, 0xddc(r3)
lbl_8014B558:
/* 8014B558  A8 A3 0D D4 */	lha r5, 0xdd4(r3)
/* 8014B55C  7C 87 07 34 */	extsh r7, r4
/* 8014B560  2C 06 00 00 */	cmpwi r6, 0
/* 8014B564  40 82 00 18 */	bne lbl_8014B57C
/* 8014B568  7C 05 38 50 */	subf r0, r5, r7
/* 8014B56C  7C 00 07 35 */	extsh. r0, r0
/* 8014B570  38 C0 FF FF */	li r6, -1
/* 8014B574  41 80 00 08 */	blt lbl_8014B57C
/* 8014B578  38 C0 00 01 */	li r6, 1
lbl_8014B57C:
/* 8014B57C  7C 05 38 50 */	subf r0, r5, r7
/* 8014B580  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 8014B584  2C 06 FF FF */	cmpwi r6, -1
/* 8014B588  40 82 00 18 */	bne lbl_8014B5A0
/* 8014B58C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8014B590  38 05 FF FF */	addi r0, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8014B594  7C 07 00 50 */	subf r0, r7, r0
/* 8014B598  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8014B59C  7C E0 00 D0 */	neg r7, r0
lbl_8014B5A0:
/* 8014B5A0  A8 C3 0D DA */	lha r6, 0xdda(r3)
/* 8014B5A4  54 C0 04 38 */	rlwinm r0, r6, 0, 0x10, 0x1c
/* 8014B5A8  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 8014B5AC  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 8014B5B0  7C 45 04 2E */	lfsx f2, r5, r0
/* 8014B5B4  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014B5B8  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8014B5BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014B5C0  3C 00 43 30 */	lis r0, 0x4330
/* 8014B5C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8014B5C8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8014B5CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014B5D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8014B5D4  FC 00 00 1E */	fctiwz f0, f0
/* 8014B5D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8014B5DC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8014B5E0  C0 22 9A 70 */	lfs f1, lit_7091(r2)
/* 8014B5E4  C0 03 0D DC */	lfs f0, 0xddc(r3)
/* 8014B5E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8014B5EC  FC 00 00 1E */	fctiwz f0, f0
/* 8014B5F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8014B5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014B5F8  7C 06 02 14 */	add r0, r6, r0
/* 8014B5FC  B0 03 0D DA */	sth r0, 0xdda(r3)
/* 8014B600  A8 03 0D DA */	lha r0, 0xdda(r3)
/* 8014B604  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8014B608  28 00 40 00 */	cmplwi r0, 0x4000
/* 8014B60C  40 80 00 14 */	bge lbl_8014B620
/* 8014B610  A8 03 0D D4 */	lha r0, 0xdd4(r3)
/* 8014B614  7C 00 2A 14 */	add r0, r0, r5
/* 8014B618  B0 03 0D 7A */	sth r0, 0xd7a(r3)
/* 8014B61C  48 00 00 10 */	b lbl_8014B62C
lbl_8014B620:
/* 8014B620  B0 83 0D 7A */	sth r4, 0xd7a(r3)
/* 8014B624  38 00 40 00 */	li r0, 0x4000
/* 8014B628  B0 03 0D DA */	sth r0, 0xdda(r3)
lbl_8014B62C:
/* 8014B62C  7C 84 07 34 */	extsh r4, r4
/* 8014B630  A8 03 0D 7A */	lha r0, 0xd7a(r3)
/* 8014B634  7C 04 00 50 */	subf r0, r4, r0
/* 8014B638  7C 00 00 34 */	cntlzw r0, r0
/* 8014B63C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8014B640  38 21 00 30 */	addi r1, r1, 0x30
/* 8014B644  4E 80 00 20 */	blr 
