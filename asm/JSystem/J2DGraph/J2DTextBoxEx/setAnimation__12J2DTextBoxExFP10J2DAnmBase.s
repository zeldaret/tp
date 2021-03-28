lbl_80308A4C:
/* 80308A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308A50  7C 08 02 A6 */	mflr r0
/* 80308A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308A58  4B FE F4 9D */	bl setAnimation__7J2DPaneFP10J2DAnmBase
/* 80308A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308A60  7C 08 03 A6 */	mtlr r0
/* 80308A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80308A68  4E 80 00 20 */	blr 
