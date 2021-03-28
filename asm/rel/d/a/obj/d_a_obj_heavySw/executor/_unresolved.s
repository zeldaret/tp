lbl_80C1CA58:
/* 80C1CA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CA5C  7C 08 02 A6 */	mflr r0
/* 80C1CA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CA64  4B 64 66 2C */	b ModuleUnresolved
/* 80C1CA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CA6C  7C 08 03 A6 */	mtlr r0
/* 80C1CA70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CA74  4E 80 00 20 */	blr 
