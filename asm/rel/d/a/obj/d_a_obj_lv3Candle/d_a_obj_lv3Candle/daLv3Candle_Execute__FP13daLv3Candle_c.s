lbl_80C58424:
/* 80C58424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58428  7C 08 02 A6 */	mflr r0
/* 80C5842C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58430  4B FF FC 71 */	bl Execute__13daLv3Candle_cFv
/* 80C58434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58438  7C 08 03 A6 */	mtlr r0
/* 80C5843C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58440  4E 80 00 20 */	blr 
