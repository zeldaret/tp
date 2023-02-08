lbl_80C5CF78:
/* 80C5CF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5CF7C  7C 08 02 A6 */	mflr r0
/* 80C5CF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5CF84  4B FF FE 3D */	bl init_modeEnemyCreate__20dalv4CandleDemoTag_cFv
/* 80C5CF88  38 60 00 01 */	li r3, 1
/* 80C5CF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5CF90  7C 08 03 A6 */	mtlr r0
/* 80C5CF94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5CF98  4E 80 00 20 */	blr 
