lbl_8020D75C:
/* 8020D75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020D760  7C 08 02 A6 */	mflr r0
/* 8020D764  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020D768  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8020D76C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8020D770  C3 E2 AE 30 */	lfs f31, lit_4128(r2)
/* 8020D774  80 83 00 08 */	lwz r4, 8(r3)
/* 8020D778  28 04 00 00 */	cmplwi r4, 0
/* 8020D77C  41 82 00 48 */	beq lbl_8020D7C4
/* 8020D780  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 8020D784  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8020D788  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020D78C  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 8020D790  EC 81 00 24 */	fdivs f4, f1, f0
/* 8020D794  A0 04 00 7A */	lhz r0, 0x7a(r4)
/* 8020D798  C0 A4 00 70 */	lfs f5, 0x70(r4)
/* 8020D79C  C8 22 AE 38 */	lfd f1, lit_4131(r2)
/* 8020D7A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020D7A4  3C 00 43 30 */	lis r0, 0x4330
/* 8020D7A8  90 01 00 08 */	stw r0, 8(r1)
/* 8020D7AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020D7B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8020D7B4  EC 03 10 28 */	fsubs f0, f3, f2
/* 8020D7B8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8020D7BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020D7C0  EF E0 28 28 */	fsubs f31, f0, f5
lbl_8020D7C4:
/* 8020D7C4  4B FF FE CD */	bl getMapDispEdgeBottomY_Layout__11dMeterMap_cFv
/* 8020D7C8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8020D7CC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8020D7D0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8020D7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020D7D8  7C 08 03 A6 */	mtlr r0
/* 8020D7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8020D7E0  4E 80 00 20 */	blr 
