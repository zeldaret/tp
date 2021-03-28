lbl_8001D3D4:
/* 8001D3D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001D3D8  7C 08 02 A6 */	mflr r0
/* 8001D3DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001D3E0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8001D3E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001D3E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D3EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8001D3F0  C0 24 00 04 */	lfs f1, 4(r4)
/* 8001D3F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001D3F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D3FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8001D400  C0 24 00 08 */	lfs f1, 8(r4)
/* 8001D404  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001D408  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001D40C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8001D410  38 61 00 08 */	addi r3, r1, 8
/* 8001D414  7C A4 2B 78 */	mr r4, r5
/* 8001D418  4B FF FF 15 */	bl vectle_calc__FPC10DOUBLE_POSP4cXyz
/* 8001D41C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001D420  7C 08 03 A6 */	mtlr r0
/* 8001D424  38 21 00 20 */	addi r1, r1, 0x20
/* 8001D428  4E 80 00 20 */	blr 
