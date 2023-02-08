lbl_8053D2FC:
/* 8053D2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D300  7C 08 02 A6 */	mflr r0
/* 8053D304  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D308  4B FF A6 61 */	bl Draw__12daNpc_Besu_cFv
/* 8053D30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D310  7C 08 03 A6 */	mtlr r0
/* 8053D314  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D318  4E 80 00 20 */	blr 
