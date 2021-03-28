lbl_80B3EA4C:
/* 80B3EA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B3EA50  7C 08 02 A6 */	mflr r0
/* 80B3EA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EA58  4B FF 13 59 */	bl Delete__15daNpcWrestler_cFv
/* 80B3EA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3EA60  7C 08 03 A6 */	mtlr r0
/* 80B3EA64  38 21 00 10 */	addi r1, r1, 0x10
/* 80B3EA68  4E 80 00 20 */	blr 
