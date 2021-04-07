lbl_80575280:
/* 80575280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80575284  7C 08 02 A6 */	mflr r0
/* 80575288  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057528C  39 61 00 20 */	addi r11, r1, 0x20
/* 80575290  4B DE CF 4D */	bl _savegpr_29
/* 80575294  7C 7F 1B 78 */	mr r31, r3
/* 80575298  4B FF F5 C1 */	bl selectAction__10daNpcTkj_cFv
/* 8057529C  7F E3 FB 78 */	mr r3, r31
/* 805752A0  4B FF F0 29 */	bl srchActors__10daNpcTkj_cFv
/* 805752A4  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 805752A8  38 83 65 98 */	addi r4, r3, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 805752AC  AB A4 00 48 */	lha r29, 0x48(r4)
/* 805752B0  AB C4 00 4A */	lha r30, 0x4a(r4)
/* 805752B4  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 805752B8  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 805752BC  4B BD 77 5D */	bl daNpcT_getDistTableIdx__Fii
/* 805752C0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 805752C4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 805752C8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 805752CC  7F A3 07 34 */	extsh r3, r29
/* 805752D0  7F C4 07 34 */	extsh r4, r30
/* 805752D4  4B BD 77 45 */	bl daNpcT_getDistTableIdx__Fii
/* 805752D8  98 7F 05 47 */	stb r3, 0x547(r31)
/* 805752DC  38 00 00 0A */	li r0, 0xa
/* 805752E0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805752E4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 805752E8  28 00 00 01 */	cmplwi r0, 1
/* 805752EC  40 82 00 10 */	bne lbl_805752FC
/* 805752F0  3C 60 80 57 */	lis r3, lit_5035@ha /* 0x80576688@ha */
/* 805752F4  C0 03 66 88 */	lfs f0, lit_5035@l(r3)  /* 0x80576688@l */
/* 805752F8  48 00 00 10 */	b lbl_80575308
lbl_805752FC:
/* 805752FC  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 80575300  38 63 65 98 */	addi r3, r3, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 80575304  C0 03 00 08 */	lfs f0, 8(r3)
lbl_80575308:
/* 80575308  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8057530C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80575310  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80575314  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80575318  3C 80 80 57 */	lis r4, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 8057531C  3B C4 65 98 */	addi r30, r4, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 80575320  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80575324  4B B0 0C 1D */	bl SetWallR__12dBgS_AcchCirFf
/* 80575328  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 8057532C  38 63 65 98 */	addi r3, r3, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 80575330  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80575334  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80575338  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8057533C  FC 00 00 1E */	fctiwz f0, f0
/* 80575340  D8 01 00 08 */	stfd f0, 8(r1)
/* 80575344  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80575348  98 1F 08 78 */	stb r0, 0x878(r31)
/* 8057534C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80575350  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80575354  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80575358  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 8057535C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80575360  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80575364  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80575368  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 8057536C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80575370  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80575374  39 61 00 20 */	addi r11, r1, 0x20
/* 80575378  4B DE CE B1 */	bl _restgpr_29
/* 8057537C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80575380  7C 08 03 A6 */	mtlr r0
/* 80575384  38 21 00 20 */	addi r1, r1, 0x20
/* 80575388  4E 80 00 20 */	blr 
