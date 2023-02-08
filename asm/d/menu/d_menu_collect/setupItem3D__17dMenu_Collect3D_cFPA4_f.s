lbl_801B75E8:
/* 801B75E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801B75EC  7C 08 02 A6 */	mflr r0
/* 801B75F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B75F4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801B75F8  7C 7F 1B 78 */	mr r31, r3
/* 801B75FC  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801B7600  C0 4D 81 A0 */	lfs f2, mViewOffsetY__17dMenu_Collect3D_c(r13)
/* 801B7604  C0 62 A5 C4 */	lfs f3, lit_7944(r2)
/* 801B7608  C0 82 A5 C8 */	lfs f4, lit_7945(r2)
/* 801B760C  FC A0 08 90 */	fmr f5, f1
/* 801B7610  C0 C2 A5 2C */	lfs f6, lit_4482(r2)
/* 801B7614  48 1A 8E 51 */	bl GXSetViewport
/* 801B7618  C0 02 A5 CC */	lfs f0, lit_7946(r2)
/* 801B761C  D0 0D 81 A0 */	stfs f0, mViewOffsetY__17dMenu_Collect3D_c(r13)
/* 801B7620  38 61 00 08 */	addi r3, r1, 8
/* 801B7624  C0 22 A5 D0 */	lfs f1, lit_7947(r2)
/* 801B7628  C0 42 A5 D4 */	lfs f2, lit_7948(r2)
/* 801B762C  C0 62 A5 2C */	lfs f3, lit_4482(r2)
/* 801B7630  C0 82 A5 D8 */	lfs f4, lit_7949(r2)
/* 801B7634  48 18 F8 F5 */	bl C_MTXPerspective
/* 801B7638  38 61 00 08 */	addi r3, r1, 8
/* 801B763C  38 80 00 00 */	li r4, 0
/* 801B7640  48 1A 8A 95 */	bl GXSetProjection
/* 801B7644  7F E3 FB 78 */	mr r3, r31
/* 801B7648  48 00 01 05 */	bl calcViewMtx__17dMenu_Collect3D_cFPA4_f
/* 801B764C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801B7650  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B7654  7C 08 03 A6 */	mtlr r0
/* 801B7658  38 21 00 50 */	addi r1, r1, 0x50
/* 801B765C  4E 80 00 20 */	blr 
