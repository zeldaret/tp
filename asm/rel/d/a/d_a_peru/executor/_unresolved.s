lbl_80D46E58:
/* 80D46E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D46E5C  7C 08 02 A6 */	mflr r0
/* 80D46E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46E64  4B 51 C2 2C */	b ModuleUnresolved
/* 80D46E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D46E6C  7C 08 03 A6 */	mtlr r0
/* 80D46E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46E74  4E 80 00 20 */	blr 
