lbl_801CE3C0:
/* 801CE3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE3C4  7C 08 02 A6 */	mflr r0
/* 801CE3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE3CC  7C 68 1B 78 */	mr r8, r3
/* 801CE3D0  C0 83 00 18 */	lfs f4, 0x18(r3)
/* 801CE3D4  7C 83 23 78 */	mr r3, r4
/* 801CE3D8  C0 68 00 10 */	lfs f3, 0x10(r8)
/* 801CE3DC  EC 01 01 32 */	fmuls f0, f1, f4
/* 801CE3E0  EC 23 00 2A */	fadds f1, f3, f0
/* 801CE3E4  C0 68 00 14 */	lfs f3, 0x14(r8)
/* 801CE3E8  EC 02 01 32 */	fmuls f0, f2, f4
/* 801CE3EC  EC 43 00 2A */	fadds f2, f3, f0
/* 801CE3F0  7C A4 2B 78 */	mr r4, r5
/* 801CE3F4  7C C5 33 78 */	mr r5, r6
/* 801CE3F8  7C E6 3B 78 */	mr r6, r7
/* 801CE3FC  4B E6 F7 75 */	bl getPointStagePathInnerNo__24dMenu_Fmap_region_data_cFffiPiPi
/* 801CE400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE404  7C 08 03 A6 */	mtlr r0
/* 801CE408  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE40C  4E 80 00 20 */	blr 
