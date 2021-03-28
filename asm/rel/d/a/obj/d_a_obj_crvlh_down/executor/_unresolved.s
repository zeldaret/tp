lbl_80BD4118:
/* 80BD4118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD411C  7C 08 02 A6 */	mflr r0
/* 80BD4120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4124  4B 68 EF 6C */	b ModuleUnresolved
/* 80BD4128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD412C  7C 08 03 A6 */	mtlr r0
/* 80BD4130  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4134  4E 80 00 20 */	blr 
