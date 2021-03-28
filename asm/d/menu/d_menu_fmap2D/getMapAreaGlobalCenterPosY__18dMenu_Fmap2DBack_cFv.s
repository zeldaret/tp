lbl_801D26C8:
/* 801D26C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D26CC  7C 08 02 A6 */	mflr r0
/* 801D26D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D26D4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D26D8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D26DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D26E0  7C 7F 1B 78 */	mr r31, r3
/* 801D26E4  48 00 00 45 */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D26E8  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D26EC  EF E1 00 32 */	fmuls f31, f1, f0
/* 801D26F0  7F E3 FB 78 */	mr r3, r31
/* 801D26F4  4B FF FF 75 */	bl getMapAreaGlobalPosY__18dMenu_Fmap2DBack_cFv
/* 801D26F8  EC 21 F8 2A */	fadds f1, f1, f31
/* 801D26FC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2700  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D2704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D270C  7C 08 03 A6 */	mtlr r0
/* 801D2710  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2714  4E 80 00 20 */	blr 
