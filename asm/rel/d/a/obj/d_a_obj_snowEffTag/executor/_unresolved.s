lbl_80CDF018:
/* 80CDF018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF01C  7C 08 02 A6 */	mflr r0
/* 80CDF020  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF024  4B 58 40 6C */	b ModuleUnresolved
/* 80CDF028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF02C  7C 08 03 A6 */	mtlr r0
/* 80CDF030  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF034  4E 80 00 20 */	blr 
