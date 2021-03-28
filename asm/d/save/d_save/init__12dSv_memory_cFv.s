lbl_80034A64:
/* 80034A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034A68  7C 08 02 A6 */	mflr r0
/* 80034A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034A70  4B FF FC E1 */	bl init__12dSv_memBit_cFv
/* 80034A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034A78  7C 08 03 A6 */	mtlr r0
/* 80034A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80034A80  4E 80 00 20 */	blr 
