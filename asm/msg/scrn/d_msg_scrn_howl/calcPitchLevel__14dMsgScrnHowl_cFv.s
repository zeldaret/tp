lbl_8024414C:
/* 8024414C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244150  7C 08 02 A6 */	mflr r0
/* 80244154  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244158  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8024415C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80244160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80244164  7C 7F 1B 78 */	mr r31, r3
/* 80244168  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 8024416C  80 83 00 04 */	lwz r4, 4(r3)
/* 80244170  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80244174  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80244178  EF E1 00 28 */	fsubs f31, f1, f0
/* 8024417C  48 01 01 E9 */	bl getGlobalPosY__8CPaneMgrFv
/* 80244180  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 80244184  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80244188  EC 01 00 2A */	fadds f0, f1, f0
/* 8024418C  D0 1F 1B 08 */	stfs f0, 0x1b08(r31)
/* 80244190  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80244194  80 83 00 04 */	lwz r4, 4(r3)
/* 80244198  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 8024419C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802441A0  EF E1 00 28 */	fsubs f31, f1, f0
/* 802441A4  48 01 01 C1 */	bl getGlobalPosY__8CPaneMgrFv
/* 802441A8  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 802441AC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802441B0  EC 01 00 2A */	fadds f0, f1, f0
/* 802441B4  D0 1F 1B 0C */	stfs f0, 0x1b0c(r31)
/* 802441B8  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802441BC  80 83 00 04 */	lwz r4, 4(r3)
/* 802441C0  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 802441C4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802441C8  EF E1 00 28 */	fsubs f31, f1, f0
/* 802441CC  48 01 01 99 */	bl getGlobalPosY__8CPaneMgrFv
/* 802441D0  C0 02 B2 70 */	lfs f0, lit_4561(r2)
/* 802441D4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802441D8  EC 01 00 2A */	fadds f0, f1, f0
/* 802441DC  D0 1F 1B 10 */	stfs f0, 0x1b10(r31)
/* 802441E0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 802441E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 802441E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802441EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802441F0  7C 08 03 A6 */	mtlr r0
/* 802441F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802441F8  4E 80 00 20 */	blr 
