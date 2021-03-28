lbl_8015D3CC:
/* 8015D3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D3D0  7C 08 02 A6 */	mflr r0
/* 8015D3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D3DC  7C 7F 1B 78 */	mr r31, r3
/* 8015D3E0  4B FF DC D9 */	bl getData__12daItemBase_cFv
/* 8015D3E4  A8 A3 00 36 */	lha r5, 0x36(r3)
/* 8015D3E8  A8 1F 09 28 */	lha r0, 0x928(r31)
/* 8015D3EC  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8015D3F0  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8015D3F4  7C 05 00 10 */	subfc r0, r5, r0
/* 8015D3F8  7C 64 19 14 */	adde r3, r4, r3
/* 8015D3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D404  7C 08 03 A6 */	mtlr r0
/* 8015D408  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D40C  4E 80 00 20 */	blr 
