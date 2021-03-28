lbl_80D352EC:
/* 80D352EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D352F0  7C 08 02 A6 */	mflr r0
/* 80D352F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D352F8  4B 52 DD 94 */	b ModuleEpilog
/* 80D352FC  3C 60 80 D3 */	lis r3, __destroy_global_chain_reference@ha
/* 80D35300  38 63 60 B4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D35304  4B 52 DE 8C */	b ModuleDestructorsX
/* 80D35308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3530C  7C 08 03 A6 */	mtlr r0
/* 80D35310  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35314  4E 80 00 20 */	blr 
