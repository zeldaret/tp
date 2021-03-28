lbl_8047DA58:
/* 8047DA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047DA5C  7C 08 02 A6 */	mflr r0
/* 8047DA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047DA64  4B DE 56 2C */	b ModuleUnresolved
/* 8047DA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047DA6C  7C 08 03 A6 */	mtlr r0
/* 8047DA70  38 21 00 10 */	addi r1, r1, 0x10
/* 8047DA74  4E 80 00 20 */	blr 
