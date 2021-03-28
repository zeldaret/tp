lbl_80485D58:
/* 80485D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485D5C  7C 08 02 A6 */	mflr r0
/* 80485D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485D64  4B DD D3 2C */	b ModuleUnresolved
/* 80485D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485D6C  7C 08 03 A6 */	mtlr r0
/* 80485D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80485D74  4E 80 00 20 */	blr 
