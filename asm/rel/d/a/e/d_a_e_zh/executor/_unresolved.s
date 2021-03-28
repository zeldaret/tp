lbl_80828F98:
/* 80828F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80828F9C  7C 08 02 A6 */	mflr r0
/* 80828FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80828FA4  4B A3 A0 EC */	b ModuleUnresolved
/* 80828FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80828FAC  7C 08 03 A6 */	mtlr r0
/* 80828FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80828FB4  4E 80 00 20 */	blr 
