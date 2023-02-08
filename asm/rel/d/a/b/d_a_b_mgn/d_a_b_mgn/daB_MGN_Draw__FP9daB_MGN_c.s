lbl_80605C8C:
/* 80605C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80605C90  7C 08 02 A6 */	mflr r0
/* 80605C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80605C98  4B FF FC 01 */	bl draw__9daB_MGN_cFv
/* 80605C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80605CA0  7C 08 03 A6 */	mtlr r0
/* 80605CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80605CA8  4E 80 00 20 */	blr 
