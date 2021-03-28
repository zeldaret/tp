lbl_80D44098:
/* 80D44098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4409C  7C 08 02 A6 */	mflr r0
/* 80D440A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D440A4  4B 51 EF EC */	b ModuleUnresolved
/* 80D440A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D440AC  7C 08 03 A6 */	mtlr r0
/* 80D440B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D440B4  4E 80 00 20 */	blr 
