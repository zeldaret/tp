lbl_8008E8D0:
/* 8008E8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008E8D4  7C 08 02 A6 */	mflr r0
/* 8008E8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008E8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008E8E0  7C 7F 1B 78 */	mr r31, r3
/* 8008E8E4  7F E5 FB 78 */	mr r5, r31
/* 8008E8E8  48 2B 87 CD */	bl PSVECSubtract
/* 8008E8EC  7F E3 FB 78 */	mr r3, r31
/* 8008E8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008E8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008E8F8  7C 08 03 A6 */	mtlr r0
/* 8008E8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8008E900  4E 80 00 20 */	blr 
