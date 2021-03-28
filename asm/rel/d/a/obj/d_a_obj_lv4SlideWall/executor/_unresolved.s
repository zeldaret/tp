lbl_80C61D98:
/* 80C61D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61D9C  7C 08 02 A6 */	mflr r0
/* 80C61DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61DA4  4B 60 12 EC */	b ModuleUnresolved
/* 80C61DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61DAC  7C 08 03 A6 */	mtlr r0
/* 80C61DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61DB4  4E 80 00 20 */	blr 
