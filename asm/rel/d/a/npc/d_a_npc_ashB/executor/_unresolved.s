lbl_8095DDB8:
/* 8095DDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095DDBC  7C 08 02 A6 */	mflr r0
/* 8095DDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095DDC4  4B 90 52 CC */	b ModuleUnresolved
/* 8095DDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095DDCC  7C 08 03 A6 */	mtlr r0
/* 8095DDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8095DDD4  4E 80 00 20 */	blr 
