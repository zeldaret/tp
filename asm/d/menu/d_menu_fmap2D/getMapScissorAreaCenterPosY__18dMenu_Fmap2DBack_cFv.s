lbl_801D28D0:
/* 801D28D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D28D4  7C 08 02 A6 */	mflr r0
/* 801D28D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D28DC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D28E0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D28E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D28E8  7C 7F 1B 78 */	mr r31, r3
/* 801D28EC  48 00 00 AD */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D28F0  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D28F4  EF E1 00 32 */	fmuls f31, f1, f0
/* 801D28F8  7F E3 FB 78 */	mr r3, r31
/* 801D28FC  4B FF FE 95 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D2900  EC 21 F8 2A */	fadds f1, f1, f31
/* 801D2904  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2908  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D290C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2914  7C 08 03 A6 */	mtlr r0
/* 801D2918  38 21 00 20 */	addi r1, r1, 0x20
/* 801D291C  4E 80 00 20 */	blr 
