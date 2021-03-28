lbl_804D6BB8:
/* 804D6BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6BBC  7C 08 02 A6 */	mflr r0
/* 804D6BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6BC4  4B D8 C4 CC */	b ModuleUnresolved
/* 804D6BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6BCC  7C 08 03 A6 */	mtlr r0
/* 804D6BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6BD4  4E 80 00 20 */	blr 
