lbl_80C62858:
/* 80C62858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6285C  7C 08 02 A6 */	mflr r0
/* 80C62860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62864  4B 60 08 2C */	b ModuleUnresolved
/* 80C62868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6286C  7C 08 03 A6 */	mtlr r0
/* 80C62870  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62874  4E 80 00 20 */	blr 
