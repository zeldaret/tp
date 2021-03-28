lbl_8003D188:
/* 8003D188  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8003D18C  7C 08 02 A6 */	mflr r0
/* 8003D190  90 01 00 74 */	stw r0, 0x74(r1)
/* 8003D194  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8003D198  7C 7F 1B 78 */	mr r31, r3
/* 8003D19C  C0 22 84 08 */	lfs f1, lit_3836(r2)
/* 8003D1A0  FC 40 08 90 */	fmr f2, f1
/* 8003D1A4  A0 03 00 1C */	lhz r0, 0x1c(r3)
/* 8003D1A8  C8 82 84 18 */	lfd f4, lit_3850(r2)
/* 8003D1AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003D1B0  3C 60 43 30 */	lis r3, 0x4330
/* 8003D1B4  90 61 00 50 */	stw r3, 0x50(r1)
/* 8003D1B8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8003D1BC  EC 60 20 28 */	fsubs f3, f0, f4
/* 8003D1C0  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 8003D1C4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8003D1C8  90 61 00 58 */	stw r3, 0x58(r1)
/* 8003D1CC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8003D1D0  EC 80 20 28 */	fsubs f4, f0, f4
/* 8003D1D4  FC A0 08 90 */	fmr f5, f1
/* 8003D1D8  C0 C2 84 0C */	lfs f6, lit_3846(r2)
/* 8003D1DC  48 32 32 89 */	bl GXSetViewport
/* 8003D1E0  38 60 00 00 */	li r3, 0
/* 8003D1E4  38 80 00 00 */	li r4, 0
/* 8003D1E8  A0 BF 00 1C */	lhz r5, 0x1c(r31)
/* 8003D1EC  A0 DF 00 1E */	lhz r6, 0x1e(r31)
/* 8003D1F0  48 32 32 E1 */	bl GXSetScissor
/* 8003D1F4  38 60 00 01 */	li r3, 1
/* 8003D1F8  48 32 09 39 */	bl GXSetNumChans
/* 8003D1FC  38 60 00 01 */	li r3, 1
/* 8003D200  48 32 26 91 */	bl GXSetNumTevStages
/* 8003D204  38 60 00 04 */	li r3, 4
/* 8003D208  38 80 00 00 */	li r4, 0
/* 8003D20C  38 A0 00 00 */	li r5, 0
/* 8003D210  38 C0 00 00 */	li r6, 0
/* 8003D214  38 E0 00 00 */	li r7, 0
/* 8003D218  39 00 00 00 */	li r8, 0
/* 8003D21C  39 20 00 02 */	li r9, 2
/* 8003D220  48 32 09 4D */	bl GXSetChanCtrl
/* 8003D224  38 60 00 07 */	li r3, 7
/* 8003D228  38 80 00 00 */	li r4, 0
/* 8003D22C  38 A0 00 01 */	li r5, 1
/* 8003D230  38 C0 00 07 */	li r6, 7
/* 8003D234  38 E0 00 00 */	li r7, 0
/* 8003D238  48 32 23 ED */	bl GXSetAlphaCompare
/* 8003D23C  38 60 00 01 */	li r3, 1
/* 8003D240  48 32 2A 91 */	bl GXSetZCompLoc
/* 8003D244  38 60 00 00 */	li r3, 0
/* 8003D248  38 80 00 07 */	li r4, 7
/* 8003D24C  38 A0 00 00 */	li r5, 0
/* 8003D250  48 32 2A 4D */	bl GXSetZMode
/* 8003D254  38 60 00 00 */	li r3, 0
/* 8003D258  38 80 00 04 */	li r4, 4
/* 8003D25C  38 A0 00 05 */	li r5, 5
/* 8003D260  38 C0 00 00 */	li r6, 0
/* 8003D264  48 32 29 8D */	bl GXSetBlendMode
/* 8003D268  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8003D26C  90 01 00 08 */	stw r0, 8(r1)
/* 8003D270  38 60 00 00 */	li r3, 0
/* 8003D274  C0 22 84 08 */	lfs f1, lit_3836(r2)
/* 8003D278  FC 40 08 90 */	fmr f2, f1
/* 8003D27C  FC 60 08 90 */	fmr f3, f1
/* 8003D280  FC 80 08 90 */	fmr f4, f1
/* 8003D284  38 81 00 08 */	addi r4, r1, 8
/* 8003D288  48 32 26 31 */	bl GXSetFog
/* 8003D28C  38 60 00 00 */	li r3, 0
/* 8003D290  48 31 F6 F5 */	bl GXSetCullMode
/* 8003D294  38 60 00 00 */	li r3, 0
/* 8003D298  48 32 2B 41 */	bl GXSetDither
/* 8003D29C  38 60 00 00 */	li r3, 0
/* 8003D2A0  48 32 1E 35 */	bl GXSetNumIndStages
/* 8003D2A4  38 60 00 00 */	li r3, 0
/* 8003D2A8  48 32 33 29 */	bl GXSetClipMode
/* 8003D2AC  7F E3 FB 78 */	mr r3, r31
/* 8003D2B0  4B FF FB C9 */	bl setTevSettingNonTextureDirectColor__18dRenderingFDAmap_cCFv
/* 8003D2B4  C0 22 84 10 */	lfs f1, lit_3847(r2)
/* 8003D2B8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8003D2BC  EC 81 00 32 */	fmuls f4, f1, f0
/* 8003D2C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8003D2C4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8003D2C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8003D2CC  FC 40 08 50 */	fneg f2, f1
/* 8003D2D0  FC 60 20 50 */	fneg f3, f4
/* 8003D2D4  C0 A2 84 08 */	lfs f5, lit_3836(r2)
/* 8003D2D8  C0 C2 84 14 */	lfs f6, lit_3848(r2)
/* 8003D2DC  48 30 9D 1D */	bl C_MTXOrtho
/* 8003D2E0  38 61 00 0C */	addi r3, r1, 0xc
/* 8003D2E4  38 80 00 01 */	li r4, 1
/* 8003D2E8  48 32 2D ED */	bl GXSetProjection
/* 8003D2EC  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha
/* 8003D2F0  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l
/* 8003D2F4  38 80 00 00 */	li r4, 0
/* 8003D2F8  48 32 2F 55 */	bl GXLoadPosMtxImm
/* 8003D2FC  38 60 00 00 */	li r3, 0
/* 8003D300  48 32 2F ED */	bl GXSetCurrentMtx
/* 8003D304  7F E3 FB 78 */	mr r3, r31
/* 8003D308  4B FF FD A5 */	bl drawBack__18dRenderingFDAmap_cCFv
/* 8003D30C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8003D310  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8003D314  7C 08 03 A6 */	mtlr r0
/* 8003D318  38 21 00 70 */	addi r1, r1, 0x70
/* 8003D31C  4E 80 00 20 */	blr 
