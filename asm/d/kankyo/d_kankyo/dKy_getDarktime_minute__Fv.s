lbl_8019FB30:
/* 8019FB30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019FB34  7C 08 02 A6 */	mflr r0
/* 8019FB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019FB3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019FB40  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019FB44  48 00 00 89 */	bl getDarkDaytime__18dScnKy_env_light_cFv
/* 8019FB48  C0 62 A2 BC */	lfs f3, lit_5554(r2)
/* 8019FB4C  C0 42 A2 70 */	lfs f2, lit_4850(r2)
/* 8019FB50  EC 02 00 72 */	fmuls f0, f2, f1
/* 8019FB54  FC 00 00 1E */	fctiwz f0, f0
/* 8019FB58  D8 01 00 08 */	stfd f0, 8(r1)
/* 8019FB5C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019FB60  3C 60 00 E5 */	lis r3, 0x00E5 /* 0x00E4E1C0@ha */
/* 8019FB64  38 63 E1 C0 */	addi r3, r3, 0xE1C0 /* 0x00E4E1C0@l */
/* 8019FB68  7C 04 1B D6 */	divw r0, r4, r3
/* 8019FB6C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8019FB70  7C 00 20 50 */	subf r0, r0, r4
/* 8019FB74  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 8019FB78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019FB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019FB80  3C 00 43 30 */	lis r0, 0x4330
/* 8019FB84  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019FB88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8019FB8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019FB90  EC 20 10 24 */	fdivs f1, f0, f2
/* 8019FB94  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 8019FB98  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019FB9C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8019FBA0  FC 00 00 1E */	fctiwz f0, f0
/* 8019FBA4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8019FBA8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8019FBAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019FBB0  7C 08 03 A6 */	mtlr r0
/* 8019FBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8019FBB8  4E 80 00 20 */	blr 
