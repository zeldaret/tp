lbl_80CEC9BC:
/* 80CEC9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEC9C0  7C 08 02 A6 */	mflr r0
/* 80CEC9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEC9C8  4B FF FE C1 */	bl draw__12daObjStone_cFv
/* 80CEC9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEC9D0  7C 08 03 A6 */	mtlr r0
/* 80CEC9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEC9D8  4E 80 00 20 */	blr 
