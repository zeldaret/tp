lbl_8065690C:
/* 8065690C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80656910  7C 08 02 A6 */	mflr r0
/* 80656914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80656918  4B C0 C7 74 */	b ModuleEpilog
/* 8065691C  3C 60 80 65 */	lis r3, __destroy_global_chain_reference@ha
/* 80656920  38 63 79 18 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80656924  4B C0 C8 6C */	b ModuleDestructorsX
/* 80656928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065692C  7C 08 03 A6 */	mtlr r0
/* 80656930  38 21 00 10 */	addi r1, r1, 0x10
/* 80656934  4E 80 00 20 */	blr 
