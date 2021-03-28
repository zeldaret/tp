lbl_80AD39C0:
/* 80AD39C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD39C4  7C 08 02 A6 */	mflr r0
/* 80AD39C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD39CC  4B FF DC 45 */	bl Draw__14daNpc_Seira2_cFv
/* 80AD39D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD39D4  7C 08 03 A6 */	mtlr r0
/* 80AD39D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD39DC  4E 80 00 20 */	blr 
