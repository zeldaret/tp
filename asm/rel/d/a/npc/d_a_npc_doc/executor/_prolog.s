lbl_809A6BA0:
/* 809A6BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A6BA4  7C 08 02 A6 */	mflr r0
/* 809A6BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A6BAC  3C 60 80 9B */	lis r3, data_809AA308@ha
/* 809A6BB0  38 63 A3 08 */	addi r3, r3, data_809AA308@l
/* 809A6BB4  4B 8B C5 98 */	b ModuleConstructorsX
/* 809A6BB8  4B 8B C4 D0 */	b ModuleProlog
/* 809A6BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A6BC0  7C 08 03 A6 */	mtlr r0
/* 809A6BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A6BC8  4E 80 00 20 */	blr 
