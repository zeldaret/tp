lbl_809F8FF8:
/* 809F8FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8FFC  7C 08 02 A6 */	mflr r0
/* 809F9000  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9004  4B 86 A0 8C */	b ModuleUnresolved
/* 809F9008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F900C  7C 08 03 A6 */	mtlr r0
/* 809F9010  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9014  4E 80 00 20 */	blr 
