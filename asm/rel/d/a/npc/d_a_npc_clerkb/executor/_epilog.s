lbl_80995E6C:
/* 80995E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80995E70  7C 08 02 A6 */	mflr r0
/* 80995E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80995E78  4B 8C D2 14 */	b ModuleEpilog
/* 80995E7C  3C 60 80 9A */	lis r3, __destroy_global_chain_reference@ha
/* 80995E80  38 63 99 6C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80995E84  4B 8C D3 0C */	b ModuleDestructorsX
/* 80995E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80995E8C  7C 08 03 A6 */	mtlr r0
/* 80995E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80995E94  4E 80 00 20 */	blr 
