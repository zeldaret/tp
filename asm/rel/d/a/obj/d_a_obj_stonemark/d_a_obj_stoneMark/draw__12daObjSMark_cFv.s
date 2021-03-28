lbl_8059A2CC:
/* 8059A2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A2D0  7C 08 02 A6 */	mflr r0
/* 8059A2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A2D8  7C 67 1B 78 */	mr r7, r3
/* 8059A2DC  3C 60 80 5A */	lis r3, lit_3642@ha
/* 8059A2E0  38 C3 A3 E8 */	addi r6, r3, lit_3642@l
/* 8059A2E4  38 67 04 D0 */	addi r3, r7, 0x4d0
/* 8059A2E8  C0 27 06 28 */	lfs f1, 0x628(r7)
/* 8059A2EC  80 07 00 B0 */	lwz r0, 0xb0(r7)
/* 8059A2F0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8059A2F4  38 86 00 0C */	addi r4, r6, 0xc
/* 8059A2F8  7C 44 04 2E */	lfsx f2, r4, r0
/* 8059A2FC  38 87 06 80 */	addi r4, r7, 0x680
/* 8059A300  A8 A7 04 E6 */	lha r5, 0x4e6(r7)
/* 8059A304  C0 86 00 14 */	lfs f4, 0x14(r6)
/* 8059A308  C0 66 00 18 */	lfs f3, 0x18(r6)
/* 8059A30C  3C C0 80 43 */	lis r6, g_env_light@ha
/* 8059A310  38 C6 CA 54 */	addi r6, r6, g_env_light@l
/* 8059A314  C0 06 12 38 */	lfs f0, 0x1238(r6)
/* 8059A318  EC 03 00 32 */	fmuls f0, f3, f0
/* 8059A31C  EC 64 00 28 */	fsubs f3, f4, f0
/* 8059A320  38 C7 05 70 */	addi r6, r7, 0x570
/* 8059A324  4B A9 2D 90 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 8059A328  38 60 00 01 */	li r3, 1
/* 8059A32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A330  7C 08 03 A6 */	mtlr r0
/* 8059A334  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A338  4E 80 00 20 */	blr 
