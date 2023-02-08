lbl_8049D40C:
/* 8049D40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D410  7C 08 02 A6 */	mflr r0
/* 8049D414  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D418  4B FF FC B5 */	bl draw__9daArrow_cFv
/* 8049D41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D420  7C 08 03 A6 */	mtlr r0
/* 8049D424  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D428  4E 80 00 20 */	blr 
