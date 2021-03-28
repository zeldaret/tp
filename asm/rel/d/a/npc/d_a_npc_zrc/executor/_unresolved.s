lbl_80B8DB78:
/* 80B8DB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DB7C  7C 08 02 A6 */	mflr r0
/* 80B8DB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DB84  4B 6D 55 0C */	b ModuleUnresolved
/* 80B8DB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DB8C  7C 08 03 A6 */	mtlr r0
/* 80B8DB90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DB94  4E 80 00 20 */	blr 
