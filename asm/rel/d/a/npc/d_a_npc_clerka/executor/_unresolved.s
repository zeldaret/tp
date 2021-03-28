lbl_80992498:
/* 80992498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099249C  7C 08 02 A6 */	mflr r0
/* 809924A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809924A4  4B 8D 0B EC */	b ModuleUnresolved
/* 809924A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809924AC  7C 08 03 A6 */	mtlr r0
/* 809924B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809924B4  4E 80 00 20 */	blr 
