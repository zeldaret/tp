lbl_80B266EC:
/* 80B266EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B266F0  7C 08 02 A6 */	mflr r0
/* 80B266F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B266F8  4B 73 C9 94 */	b ModuleEpilog
/* 80B266FC  3C 60 80 B3 */	lis r3, __destroy_global_chain_reference@ha
/* 80B26700  38 63 CE 08 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B26704  4B 73 CA 8C */	b ModuleDestructorsX
/* 80B26708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2670C  7C 08 03 A6 */	mtlr r0
/* 80B26710  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26714  4E 80 00 20 */	blr 
