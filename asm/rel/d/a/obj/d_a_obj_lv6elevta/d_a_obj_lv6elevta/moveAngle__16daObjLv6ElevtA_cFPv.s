lbl_80C830BC:
/* 80C830BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C830C0  7C 08 02 A6 */	mflr r0
/* 80C830C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C830C8  7C 65 1B 78 */	mr r5, r3
/* 80C830CC  3C 60 80 C8 */	lis r3, l_cull_box@ha /* 0x80C83810@ha */
/* 80C830D0  39 03 38 10 */	addi r8, r3, l_cull_box@l /* 0x80C83810@l */
/* 80C830D4  80 05 06 1C */	lwz r0, 0x61c(r5)
/* 80C830D8  2C 00 00 00 */	cmpwi r0, 0
/* 80C830DC  40 81 00 6C */	ble lbl_80C83148
/* 80C830E0  C0 48 00 18 */	lfs f2, 0x18(r8)
/* 80C830E4  C8 28 00 30 */	lfd f1, 0x30(r8)
/* 80C830E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C830EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C830F0  3C 00 43 30 */	lis r0, 0x4330
/* 80C830F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C830F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C830FC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C83100  C0 08 00 1C */	lfs f0, 0x1c(r8)
/* 80C83104  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C83108  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C8310C  C0 05 04 AC */	lfs f0, 0x4ac(r5)
/* 80C83110  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C83114  D0 05 04 D4 */	stfs f0, 0x4d4(r5)
/* 80C83118  A8 65 04 B6 */	lha r3, 0x4b6(r5)
/* 80C8311C  80 05 06 1C */	lwz r0, 0x61c(r5)
/* 80C83120  7C 03 02 14 */	add r0, r3, r0
/* 80C83124  B0 05 04 DE */	sth r0, 0x4de(r5)
/* 80C83128  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80C8312C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C83130  D0 04 04 D4 */	stfs f0, 0x4d4(r4)
/* 80C83134  A8 64 04 B6 */	lha r3, 0x4b6(r4)
/* 80C83138  80 05 06 1C */	lwz r0, 0x61c(r5)
/* 80C8313C  7C 03 02 14 */	add r0, r3, r0
/* 80C83140  B0 04 04 DE */	sth r0, 0x4de(r4)
/* 80C83144  48 00 00 68 */	b lbl_80C831AC
lbl_80C83148:
/* 80C83148  C0 48 00 20 */	lfs f2, 0x20(r8)
/* 80C8314C  C8 28 00 30 */	lfd f1, 0x30(r8)
/* 80C83150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C83154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83158  3C 00 43 30 */	lis r0, 0x4330
/* 80C8315C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C83160  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C83164  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C83168  C0 08 00 1C */	lfs f0, 0x1c(r8)
/* 80C8316C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C83170  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C83174  C0 05 04 AC */	lfs f0, 0x4ac(r5)
/* 80C83178  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8317C  D0 05 04 D4 */	stfs f0, 0x4d4(r5)
/* 80C83180  A8 65 04 B6 */	lha r3, 0x4b6(r5)
/* 80C83184  80 05 06 1C */	lwz r0, 0x61c(r5)
/* 80C83188  7C 03 02 14 */	add r0, r3, r0
/* 80C8318C  B0 05 04 DE */	sth r0, 0x4de(r5)
/* 80C83190  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80C83194  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C83198  D0 04 04 D4 */	stfs f0, 0x4d4(r4)
/* 80C8319C  A8 64 04 B6 */	lha r3, 0x4b6(r4)
/* 80C831A0  80 05 06 1C */	lwz r0, 0x61c(r5)
/* 80C831A4  7C 03 02 14 */	add r0, r3, r0
/* 80C831A8  B0 04 04 DE */	sth r0, 0x4de(r4)
lbl_80C831AC:
/* 80C831AC  A8 05 04 DC */	lha r0, 0x4dc(r5)
/* 80C831B0  B0 05 04 E4 */	sth r0, 0x4e4(r5)
/* 80C831B4  A8 05 04 DE */	lha r0, 0x4de(r5)
/* 80C831B8  B0 05 04 E6 */	sth r0, 0x4e6(r5)
/* 80C831BC  A8 05 04 E0 */	lha r0, 0x4e0(r5)
/* 80C831C0  B0 05 04 E8 */	sth r0, 0x4e8(r5)
/* 80C831C4  38 00 00 01 */	li r0, 1
/* 80C831C8  98 05 06 24 */	stb r0, 0x624(r5)
/* 80C831CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E5@ha */
/* 80C831D0  38 03 01 E5 */	addi r0, r3, 0x01E5 /* 0x000801E5@l */
/* 80C831D4  90 01 00 08 */	stw r0, 8(r1)
/* 80C831D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C831DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C831E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C831E4  38 81 00 08 */	addi r4, r1, 8
/* 80C831E8  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80C831EC  38 C0 00 00 */	li r6, 0
/* 80C831F0  38 E0 00 00 */	li r7, 0
/* 80C831F4  C0 28 00 24 */	lfs f1, 0x24(r8)
/* 80C831F8  FC 40 08 90 */	fmr f2, f1
/* 80C831FC  C0 68 00 28 */	lfs f3, 0x28(r8)
/* 80C83200  FC 80 18 90 */	fmr f4, f3
/* 80C83204  39 00 00 00 */	li r8, 0
/* 80C83208  4B 62 93 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8320C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C83210  7C 08 03 A6 */	mtlr r0
/* 80C83214  38 21 00 20 */	addi r1, r1, 0x20
/* 80C83218  4E 80 00 20 */	blr 
