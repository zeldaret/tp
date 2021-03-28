lbl_80498A58:
/* 80498A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80498A5C  7C 08 02 A6 */	mflr r0
/* 80498A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498A64  4B DC A6 2C */	b ModuleUnresolved
/* 80498A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80498A6C  7C 08 03 A6 */	mtlr r0
/* 80498A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80498A74  4E 80 00 20 */	blr 
