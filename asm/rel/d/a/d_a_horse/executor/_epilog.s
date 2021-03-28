lbl_80837E6C:
/* 80837E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837E70  7C 08 02 A6 */	mflr r0
/* 80837E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837E78  4B A2 B2 14 */	b ModuleEpilog
/* 80837E7C  3C 60 80 84 */	lis r3, __destroy_global_chain_reference@ha
/* 80837E80  38 63 54 A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80837E84  4B A2 B3 0C */	b ModuleDestructorsX
/* 80837E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837E8C  7C 08 03 A6 */	mtlr r0
/* 80837E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80837E94  4E 80 00 20 */	blr 
