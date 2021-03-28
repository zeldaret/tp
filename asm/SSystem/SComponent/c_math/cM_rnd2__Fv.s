lbl_802679E4:
/* 802679E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802679E8  7C 08 02 A6 */	mflr r0
/* 802679EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802679F0  80 0D 8B F4 */	lwz r0, data_80451174(r13)
/* 802679F4  1C 80 00 AB */	mulli r4, r0, 0xab
/* 802679F8  38 60 76 3D */	li r3, 0x763d
/* 802679FC  7C 04 1B D6 */	divw r0, r4, r3
/* 80267A00  7C 00 19 D6 */	mullw r0, r0, r3
/* 80267A04  7C C0 20 50 */	subf r6, r0, r4
/* 80267A08  90 CD 8B F4 */	stw r6, data_80451174(r13)
/* 80267A0C  80 0D 8B F8 */	lwz r0, data_80451178(r13)
/* 80267A10  1C 80 00 AC */	mulli r4, r0, 0xac
/* 80267A14  38 60 76 63 */	li r3, 0x7663
/* 80267A18  7C 04 1B D6 */	divw r0, r4, r3
/* 80267A1C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80267A20  7C A0 20 50 */	subf r5, r0, r4
/* 80267A24  90 AD 8B F8 */	stw r5, data_80451178(r13)
/* 80267A28  80 0D 8B FC */	lwz r0, data_8045117C(r13)
/* 80267A2C  1C 80 00 AA */	mulli r4, r0, 0xaa
/* 80267A30  38 60 76 73 */	li r3, 0x7673
/* 80267A34  7C 04 1B D6 */	divw r0, r4, r3
/* 80267A38  7C 00 19 D6 */	mullw r0, r0, r3
/* 80267A3C  7C 00 20 50 */	subf r0, r0, r4
/* 80267A40  90 0D 8B FC */	stw r0, data_8045117C(r13)
/* 80267A44  C8 82 B6 C0 */	lfd f4, lit_2284(r2)
/* 80267A48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80267A4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80267A50  3C 60 43 30 */	lis r3, 0x4330
/* 80267A54  90 61 00 08 */	stw r3, 8(r1)
/* 80267A58  C8 01 00 08 */	lfd f0, 8(r1)
/* 80267A5C  EC 20 20 28 */	fsubs f1, f0, f4
/* 80267A60  C0 02 B6 C8 */	lfs f0, lit_2296(r2)
/* 80267A64  EC 61 00 24 */	fdivs f3, f1, f0
/* 80267A68  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80267A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267A70  90 61 00 10 */	stw r3, 0x10(r1)
/* 80267A74  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80267A78  EC 20 20 28 */	fsubs f1, f0, f4
/* 80267A7C  C0 02 B6 CC */	lfs f0, lit_2297(r2)
/* 80267A80  EC 41 00 24 */	fdivs f2, f1, f0
/* 80267A84  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80267A88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80267A8C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80267A90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80267A94  EC 20 20 28 */	fsubs f1, f0, f4
/* 80267A98  C0 02 B6 D0 */	lfs f0, lit_2298(r2)
/* 80267A9C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80267AA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80267AA4  EC 23 00 2A */	fadds f1, f3, f0
/* 80267AA8  C8 42 B6 D8 */	lfd f2, lit_2299(r2)
/* 80267AAC  48 10 4C B5 */	bl fmod
/* 80267AB0  FC 00 08 18 */	frsp f0, f1
/* 80267AB4  FC 00 02 10 */	fabs f0, f0
/* 80267AB8  FC 20 00 18 */	frsp f1, f0
/* 80267ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267AC0  7C 08 03 A6 */	mtlr r0
/* 80267AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80267AC8  4E 80 00 20 */	blr 
