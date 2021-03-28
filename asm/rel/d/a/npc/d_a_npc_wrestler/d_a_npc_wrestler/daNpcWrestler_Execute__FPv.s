lbl_80B3EA6C:
/* 80B3EA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B3EA70  7C 08 02 A6 */	mflr r0
/* 80B3EA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EA78  4B FF 13 6D */	bl Execute__15daNpcWrestler_cFv
/* 80B3EA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3EA80  7C 08 03 A6 */	mtlr r0
/* 80B3EA84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B3EA88  4E 80 00 20 */	blr 
