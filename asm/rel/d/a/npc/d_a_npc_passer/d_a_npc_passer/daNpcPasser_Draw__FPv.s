lbl_80AA594C:
/* 80AA594C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5950  7C 08 02 A6 */	mflr r0
/* 80AA5954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5958  4B FF D8 05 */	bl draw__13daNpcPasser_cFv
/* 80AA595C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5960  7C 08 03 A6 */	mtlr r0
/* 80AA5964  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5968  4E 80 00 20 */	blr 
