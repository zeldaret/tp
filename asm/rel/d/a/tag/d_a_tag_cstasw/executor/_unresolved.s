lbl_805A1F98:
/* 805A1F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1F9C  7C 08 02 A6 */	mflr r0
/* 805A1FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1FA4  4B CC 10 EC */	b ModuleUnresolved
/* 805A1FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1FAC  7C 08 03 A6 */	mtlr r0
/* 805A1FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1FB4  4E 80 00 20 */	blr 
