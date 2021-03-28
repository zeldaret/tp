lbl_804D5DD8:
/* 804D5DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5DDC  7C 08 02 A6 */	mflr r0
/* 804D5DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5DE4  4B D8 D2 AC */	b ModuleUnresolved
/* 804D5DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5DEC  7C 08 03 A6 */	mtlr r0
/* 804D5DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5DF4  4E 80 00 20 */	blr 
