lbl_80A83DCC:
/* 80A83DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A83DD0  7C 08 02 A6 */	mflr r0
/* 80A83DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A83DD8  4B 7D F2 B4 */	b ModuleEpilog
/* 80A83DDC  3C 60 80 A9 */	lis r3, __destroy_global_chain_reference@ha
/* 80A83DE0  38 63 84 28 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A83DE4  4B 7D F3 AC */	b ModuleDestructorsX
/* 80A83DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A83DEC  7C 08 03 A6 */	mtlr r0
/* 80A83DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A83DF4  4E 80 00 20 */	blr 
