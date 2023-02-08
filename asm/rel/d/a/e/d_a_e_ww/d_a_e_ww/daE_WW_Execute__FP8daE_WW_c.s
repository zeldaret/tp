lbl_807EDE6C:
/* 807EDE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EDE70  7C 08 02 A6 */	mflr r0
/* 807EDE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EDE78  4B FF FE 4D */	bl execute__8daE_WW_cFv
/* 807EDE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EDE80  7C 08 03 A6 */	mtlr r0
/* 807EDE84  38 21 00 10 */	addi r1, r1, 0x10
/* 807EDE88  4E 80 00 20 */	blr 
