lbl_8045DF78:
/* 8045DF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045DF7C  7C 08 02 A6 */	mflr r0
/* 8045DF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045DF84  4B FF F7 C1 */	bl calcMtx__12daDbDoor00_cFv
/* 8045DF88  38 60 00 01 */	li r3, 1
/* 8045DF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045DF90  7C 08 03 A6 */	mtlr r0
/* 8045DF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8045DF98  4E 80 00 20 */	blr 
