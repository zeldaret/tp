lbl_8001D900:
/* 8001D900  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001D904  7C 08 02 A6 */	mflr r0
/* 8001D908  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001D90C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001D910  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8001D914  7C 66 1B 78 */	mr r6, r3
/* 8001D918  7C BE 2B 78 */	mr r30, r5
/* 8001D91C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8001D920  7C 00 00 D0 */	neg r0, r0
/* 8001D924  7C 1F 07 34 */	extsh r31, r0
/* 8001D928  38 61 00 08 */	addi r3, r1, 8
/* 8001D92C  38 A6 04 D0 */	addi r5, r6, 0x4d0
/* 8001D930  48 24 92 05 */	bl __mi__4cXyzCFRC3Vec
/* 8001D934  C0 81 00 08 */	lfs f4, 8(r1)
/* 8001D938  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8001D93C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8001D940  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8001D944  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8001D948  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8001D94C  57 E0 04 38 */	rlwinm r0, r31, 0, 0x10, 0x1c
/* 8001D950  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8001D954  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8001D958  7C 03 04 2E */	lfsx f0, r3, r0
/* 8001D95C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8001D960  7C 83 02 14 */	add r4, r3, r0
/* 8001D964  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001D968  EC 04 00 32 */	fmuls f0, f4, f0
/* 8001D96C  EC 01 00 2A */	fadds f0, f1, f0
/* 8001D970  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8001D974  D0 7E 00 04 */	stfs f3, 4(r30)
/* 8001D978  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001D97C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8001D980  7C 03 04 2E */	lfsx f0, r3, r0
/* 8001D984  EC 04 00 32 */	fmuls f0, f4, f0
/* 8001D988  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D98C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8001D990  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001D994  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001D998  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001D99C  7C 08 03 A6 */	mtlr r0
/* 8001D9A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8001D9A4  4E 80 00 20 */	blr 
