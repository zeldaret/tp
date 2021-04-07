lbl_80A29458:
/* 80A29458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2945C  7C 08 02 A6 */	mflr r0
/* 80A29460  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A29464  7C 85 23 78 */	mr r5, r4
/* 80A29468  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2946C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A29470  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A29474  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A29478  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2947C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A29480  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A29484  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A29488  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2948C  38 81 00 08 */	addi r4, r1, 8
/* 80A29490  48 00 00 15 */	bl _turn_pos__15daNpcKasiMich_cFRC4cXyzs
/* 80A29494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A29498  7C 08 03 A6 */	mtlr r0
/* 80A2949C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A294A0  4E 80 00 20 */	blr 
