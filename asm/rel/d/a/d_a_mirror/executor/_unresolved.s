lbl_80870B98:
/* 80870B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80870B9C  7C 08 02 A6 */	mflr r0
/* 80870BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80870BA4  4B 9F 24 EC */	b ModuleUnresolved
/* 80870BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80870BAC  7C 08 03 A6 */	mtlr r0
/* 80870BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80870BB4  4E 80 00 20 */	blr 
