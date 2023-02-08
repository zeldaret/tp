lbl_801D2A34:
/* 801D2A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2A38  7C 08 02 A6 */	mflr r0
/* 801D2A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D2A40  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D2A44  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D2A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2A4C  7C 7F 1B 78 */	mr r31, r3
/* 801D2A50  4B FF FC C9 */	bl getMapAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D2A54  C0 5F 0F E8 */	lfs f2, 0xfe8(r31)
/* 801D2A58  C0 1F 0F E0 */	lfs f0, 0xfe0(r31)
/* 801D2A5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D2A60  EF E0 08 24 */	fdivs f31, f0, f1
/* 801D2A64  7F E3 FB 78 */	mr r3, r31
/* 801D2A68  4B FF FC C1 */	bl getMapAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D2A6C  C0 5F 0F EC */	lfs f2, 0xfec(r31)
/* 801D2A70  C0 1F 0F E4 */	lfs f0, 0xfe4(r31)
/* 801D2A74  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D2A78  EC 00 08 24 */	fdivs f0, f0, f1
/* 801D2A7C  FC 20 F8 90 */	fmr f1, f31
/* 801D2A80  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801D2A84  40 80 00 08 */	bge lbl_801D2A8C
/* 801D2A88  FC 20 00 90 */	fmr f1, f0
lbl_801D2A8C:
/* 801D2A8C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D2A90  EC 01 00 24 */	fdivs f0, f1, f0
/* 801D2A94  D0 1F 0F 94 */	stfs f0, 0xf94(r31)
/* 801D2A98  7F E3 FB 78 */	mr r3, r31
/* 801D2A9C  4B FF FE FD */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D2AA0  C0 1F 0F 94 */	lfs f0, 0xf94(r31)
/* 801D2AA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 801D2AA8  D0 1F 0F 98 */	stfs f0, 0xf98(r31)
/* 801D2AAC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2AB0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D2AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2ABC  7C 08 03 A6 */	mtlr r0
/* 801D2AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2AC4  4E 80 00 20 */	blr 
