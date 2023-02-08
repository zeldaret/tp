lbl_8057B284:
/* 8057B284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B288  7C 08 02 A6 */	mflr r0
/* 8057B28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B290  4B FF FF 01 */	bl draw__15daObjBossWarp_cFv
/* 8057B294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B298  7C 08 03 A6 */	mtlr r0
/* 8057B29C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B2A0  4E 80 00 20 */	blr 
