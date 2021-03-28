lbl_8074C48C:
/* 8074C48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074C490  7C 08 02 A6 */	mflr r0
/* 8074C494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074C498  4B B1 6B F4 */	b ModuleEpilog
/* 8074C49C  3C 60 80 75 */	lis r3, __destroy_global_chain_reference@ha
/* 8074C4A0  38 63 76 F0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8074C4A4  4B B1 6C EC */	b ModuleDestructorsX
/* 8074C4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074C4AC  7C 08 03 A6 */	mtlr r0
/* 8074C4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8074C4B4  4E 80 00 20 */	blr 
