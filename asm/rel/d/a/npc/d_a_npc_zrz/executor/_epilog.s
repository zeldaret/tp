lbl_80B93D0C:
/* 80B93D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93D10  7C 08 02 A6 */	mflr r0
/* 80B93D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93D18  4B 6C F3 74 */	b ModuleEpilog
/* 80B93D1C  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80B93D20  38 63 AF E0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B93D24  4B 6C F4 6C */	b ModuleDestructorsX
/* 80B93D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B93D2C  7C 08 03 A6 */	mtlr r0
/* 80B93D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B93D34  4E 80 00 20 */	blr 
