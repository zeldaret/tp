lbl_809AABA0:
/* 809AABA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AABA4  7C 08 02 A6 */	mflr r0
/* 809AABA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AABAC  3C 60 80 9B */	lis r3, data_809AD994@ha
/* 809AABB0  38 63 D9 94 */	addi r3, r3, data_809AD994@l
/* 809AABB4  4B 8B 85 98 */	b ModuleConstructorsX
/* 809AABB8  4B 8B 84 D0 */	b ModuleProlog
/* 809AABBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AABC0  7C 08 03 A6 */	mtlr r0
/* 809AABC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AABC8  4E 80 00 20 */	blr 
