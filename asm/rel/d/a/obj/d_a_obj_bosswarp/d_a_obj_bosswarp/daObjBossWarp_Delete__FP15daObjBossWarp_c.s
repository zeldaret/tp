lbl_8057B2C4:
/* 8057B2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B2C8  7C 08 02 A6 */	mflr r0
/* 8057B2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B2D0  4B FF FF 6D */	bl _delete__15daObjBossWarp_cFv
/* 8057B2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B2D8  7C 08 03 A6 */	mtlr r0
/* 8057B2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B2E0  4E 80 00 20 */	blr 
