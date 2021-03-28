lbl_80BBC84C:
/* 80BBC84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC850  7C 08 02 A6 */	mflr r0
/* 80BBC854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC858  4B 6A 68 34 */	b ModuleEpilog
/* 80BBC85C  3C 60 80 BC */	lis r3, __destroy_global_chain_reference@ha
/* 80BBC860  38 63 21 3C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BBC864  4B 6A 69 2C */	b ModuleDestructorsX
/* 80BBC868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC86C  7C 08 03 A6 */	mtlr r0
/* 80BBC870  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC874  4E 80 00 20 */	blr 
