lbl_801CE188:
/* 801CE188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CE18C  7C 08 02 A6 */	mflr r0
/* 801CE190  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CE194  7C 66 1B 78 */	mr r6, r3
/* 801CE198  90 83 00 78 */	stw r4, 0x78(r3)
/* 801CE19C  90 A3 00 90 */	stw r5, 0x90(r3)
/* 801CE1A0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801CE1A4  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 801CE1A8  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 801CE1AC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 801CE1B0  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 801CE1B4  C8 42 A7 78 */	lfd f2, lit_3689(r2)
/* 801CE1B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CE1BC  3C 60 43 30 */	lis r3, 0x4330
/* 801CE1C0  90 61 00 08 */	stw r3, 8(r1)
/* 801CE1C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CE1C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CE1CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801CE1D0  C0 02 A7 84 */	lfs f0, lit_3711(r2)
/* 801CE1D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CE1D8  D0 06 00 08 */	stfs f0, 8(r6)
/* 801CE1DC  C0 26 00 18 */	lfs f1, 0x18(r6)
/* 801CE1E0  A0 06 00 22 */	lhz r0, 0x22(r6)
/* 801CE1E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE1E8  90 61 00 10 */	stw r3, 0x10(r1)
/* 801CE1EC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801CE1F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801CE1F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CE1F8  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 801CE1FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CE200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CE204  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801CE208  38 83 00 64 */	addi r4, r3, 0x64
/* 801CE20C  38 A3 00 68 */	addi r5, r3, 0x68
/* 801CE210  4B E8 85 85 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801CE214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CE218  7C 08 03 A6 */	mtlr r0
/* 801CE21C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CE220  4E 80 00 20 */	blr 
