lbl_806701F4:
/* 806701F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806701F8  7C 08 02 A6 */	mflr r0
/* 806701FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80670200  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80670204  7C 7F 1B 78 */	mr r31, r3
/* 80670208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067020C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80670210  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80670214  38 61 00 08 */	addi r3, r1, 8
/* 80670218  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8067021C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80670220  4B BF 69 14 */	b __mi__4cXyzCFRC3Vec
/* 80670224  C0 01 00 08 */	lfs f0, 8(r1)
/* 80670228  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067022C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80670230  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80670234  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80670238  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067023C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80670240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80670244  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80670248  7C 00 00 D0 */	neg r0, r0
/* 8067024C  7C 04 07 34 */	extsh r4, r0
/* 80670250  4B 99 C1 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80670254  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80670258  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8067025C  38 81 00 14 */	addi r4, r1, 0x14
/* 80670260  7C 85 23 78 */	mr r5, r4
/* 80670264  4B CD 6B 08 */	b PSMTXMultVec
/* 80670268  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8067026C  3C 60 80 67 */	lis r3, lit_3770@ha
/* 80670270  C0 03 09 20 */	lfs f0, lit_3770@l(r3)
/* 80670274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80670278  7C 00 00 26 */	mfcr r0
/* 8067027C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80670280  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80670284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80670288  7C 08 03 A6 */	mtlr r0
/* 8067028C  38 21 00 30 */	addi r1, r1, 0x30
/* 80670290  4E 80 00 20 */	blr 
