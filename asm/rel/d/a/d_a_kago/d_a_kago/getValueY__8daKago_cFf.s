lbl_8084B5DC:
/* 8084B5DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8084B5E0  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 8084B5E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084B5E8  FC 00 00 1E */	fctiwz f0, f0
/* 8084B5EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8084B5F0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8084B5F4  7C A0 07 35 */	extsh. r0, r5
/* 8084B5F8  40 80 00 78 */	bge lbl_8084B670
/* 8084B5FC  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 8084B600  C0 23 07 08 */	lfs f1, 0x708(r3)
/* 8084B604  3C 60 80 85 */	lis r3, lit_3941@ha /* 0x80854B34@ha */
/* 8084B608  C0 03 4B 34 */	lfs f0, lit_3941@l(r3)  /* 0x80854B34@l */
/* 8084B60C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8084B610  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8084B614  40 81 00 D4 */	ble lbl_8084B6E8
/* 8084B618  EC 42 08 28 */	fsubs f2, f2, f1
/* 8084B61C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084B620  40 81 00 08 */	ble lbl_8084B628
/* 8084B624  FC 40 00 90 */	fmr f2, f0
lbl_8084B628:
/* 8084B628  3C 60 80 85 */	lis r3, lit_3941@ha /* 0x80854B34@ha */
/* 8084B62C  C0 23 4B 34 */	lfs f1, lit_3941@l(r3)  /* 0x80854B34@l */
/* 8084B630  EC 01 10 28 */	fsubs f0, f1, f2
/* 8084B634  EC 40 08 24 */	fdivs f2, f0, f1
/* 8084B638  7C A0 07 34 */	extsh r0, r5
/* 8084B63C  3C 60 80 85 */	lis r3, lit_4923@ha /* 0x80854BD4@ha */
/* 8084B640  C8 23 4B D4 */	lfd f1, lit_4923@l(r3)  /* 0x80854BD4@l */
/* 8084B644  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084B648  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084B64C  3C 00 43 30 */	lis r0, 0x4330
/* 8084B650  90 01 00 08 */	stw r0, 8(r1)
/* 8084B654  C8 01 00 08 */	lfd f0, 8(r1)
/* 8084B658  EC 00 08 28 */	fsubs f0, f0, f1
/* 8084B65C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8084B660  FC 00 00 1E */	fctiwz f0, f0
/* 8084B664  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8084B668  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8084B66C  48 00 00 7C */	b lbl_8084B6E8
lbl_8084B670:
/* 8084B670  7C A0 07 35 */	extsh. r0, r5
/* 8084B674  40 81 00 74 */	ble lbl_8084B6E8
/* 8084B678  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 8084B67C  3C 80 80 85 */	lis r4, lit_3941@ha /* 0x80854B34@ha */
/* 8084B680  C0 24 4B 34 */	lfs f1, lit_3941@l(r4)  /* 0x80854B34@l */
/* 8084B684  C0 03 07 04 */	lfs f0, 0x704(r3)
/* 8084B688  EC 01 00 2A */	fadds f0, f1, f0
/* 8084B68C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8084B690  40 80 00 58 */	bge lbl_8084B6E8
/* 8084B694  EC 00 10 28 */	fsubs f0, f0, f2
/* 8084B698  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8084B69C  40 81 00 08 */	ble lbl_8084B6A4
/* 8084B6A0  FC 00 08 90 */	fmr f0, f1
lbl_8084B6A4:
/* 8084B6A4  3C 60 80 85 */	lis r3, lit_3941@ha /* 0x80854B34@ha */
/* 8084B6A8  C0 23 4B 34 */	lfs f1, lit_3941@l(r3)  /* 0x80854B34@l */
/* 8084B6AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8084B6B0  EC 40 08 24 */	fdivs f2, f0, f1
/* 8084B6B4  7C A0 07 34 */	extsh r0, r5
/* 8084B6B8  3C 60 80 85 */	lis r3, lit_4923@ha /* 0x80854BD4@ha */
/* 8084B6BC  C8 23 4B D4 */	lfd f1, lit_4923@l(r3)  /* 0x80854BD4@l */
/* 8084B6C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084B6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084B6C8  3C 00 43 30 */	lis r0, 0x4330
/* 8084B6CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084B6D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084B6D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8084B6D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8084B6DC  FC 00 00 1E */	fctiwz f0, f0
/* 8084B6E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8084B6E4  80 A1 00 0C */	lwz r5, 0xc(r1)
lbl_8084B6E8:
/* 8084B6E8  7C A3 2B 78 */	mr r3, r5
/* 8084B6EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8084B6F0  4E 80 00 20 */	blr 
