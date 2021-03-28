lbl_806A8098:
/* 806A8098  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A809C  7C 08 02 A6 */	mflr r0
/* 806A80A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A80A4  39 61 00 40 */	addi r11, r1, 0x40
/* 806A80A8  4B CB A1 34 */	b _savegpr_29
/* 806A80AC  7C 7F 1B 78 */	mr r31, r3
/* 806A80B0  7C 9D 23 78 */	mr r29, r4
/* 806A80B4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806A80B8  4B BC 8B 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806A80BC  7C 7E 07 34 */	extsh r30, r3
/* 806A80C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806A80C4  7F A4 EB 78 */	mr r4, r29
/* 806A80C8  4B BC 8B AC */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 806A80CC  20 03 40 00 */	subfic r0, r3, 0x4000
/* 806A80D0  7C 06 07 34 */	extsh r6, r0
/* 806A80D4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806A80D8  7F C0 F0 50 */	subf r30, r0, r30
/* 806A80DC  7C 06 00 D0 */	neg r0, r6
/* 806A80E0  3C 60 80 6B */	lis r3, lit_4098@ha
/* 806A80E4  C8 43 9F B0 */	lfd f2, lit_4098@l(r3)
/* 806A80E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806A80EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A80F0  3C 80 43 30 */	lis r4, 0x4330
/* 806A80F4  90 81 00 08 */	stw r4, 8(r1)
/* 806A80F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 806A80FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 806A8100  57 C5 04 38 */	rlwinm r5, r30, 0, 0x10, 0x1c
/* 806A8104  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806A8108  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806A810C  7C 03 2C 2E */	lfsx f0, r3, r5
/* 806A8110  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A8114  FC 00 00 1E */	fctiwz f0, f0
/* 806A8118  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A811C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A8120  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 806A8124  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 806A8128  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806A812C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A8130  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806A8134  EC 20 10 28 */	fsubs f1, f0, f2
/* 806A8138  7C 63 2A 14 */	add r3, r3, r5
/* 806A813C  C0 03 00 04 */	lfs f0, 4(r3)
/* 806A8140  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A8144  FC 00 00 1E */	fctiwz f0, f0
/* 806A8148  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806A814C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A8150  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806A8154  39 61 00 40 */	addi r11, r1, 0x40
/* 806A8158  4B CB A0 D0 */	b _restgpr_29
/* 806A815C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A8160  7C 08 03 A6 */	mtlr r0
/* 806A8164  38 21 00 40 */	addi r1, r1, 0x40
/* 806A8168  4E 80 00 20 */	blr 
