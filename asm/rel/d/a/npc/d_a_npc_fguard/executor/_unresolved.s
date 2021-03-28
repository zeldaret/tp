lbl_809BA498:
/* 809BA498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BA49C  7C 08 02 A6 */	mflr r0
/* 809BA4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BA4A4  4B 8A 8B EC */	b ModuleUnresolved
/* 809BA4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BA4AC  7C 08 03 A6 */	mtlr r0
/* 809BA4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BA4B4  4E 80 00 20 */	blr 
