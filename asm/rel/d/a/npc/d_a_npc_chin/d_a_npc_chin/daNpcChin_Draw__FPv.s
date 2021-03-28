lbl_80990E74:
/* 80990E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990E78  7C 08 02 A6 */	mflr r0
/* 80990E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990E80  4B FF BE F5 */	bl Draw__11daNpcChin_cFv
/* 80990E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990E88  7C 08 03 A6 */	mtlr r0
/* 80990E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990E90  4E 80 00 20 */	blr 
