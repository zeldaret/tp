lbl_80AD0B4C:
/* 80AD0B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD0B50  7C 08 02 A6 */	mflr r0
/* 80AD0B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD0B58  4B 79 25 34 */	b ModuleEpilog
/* 80AD0B5C  3C 60 80 AD */	lis r3, __destroy_global_chain_reference@ha
/* 80AD0B60  38 63 4A 54 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AD0B64  4B 79 26 2C */	b ModuleDestructorsX
/* 80AD0B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD0B6C  7C 08 03 A6 */	mtlr r0
/* 80AD0B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD0B74  4E 80 00 20 */	blr 
