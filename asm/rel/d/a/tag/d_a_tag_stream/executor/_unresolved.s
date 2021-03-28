lbl_80D638D8:
/* 80D638D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D638DC  7C 08 02 A6 */	mflr r0
/* 80D638E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D638E4  4B 4F F7 AC */	b ModuleUnresolved
/* 80D638E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D638EC  7C 08 03 A6 */	mtlr r0
/* 80D638F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D638F4  4E 80 00 20 */	blr 
