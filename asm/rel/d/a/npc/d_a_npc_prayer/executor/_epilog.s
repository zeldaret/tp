lbl_80AB2D2C:
/* 80AB2D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2D30  7C 08 02 A6 */	mflr r0
/* 80AB2D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2D38  4B 7B 03 54 */	b ModuleEpilog
/* 80AB2D3C  3C 60 80 AB */	lis r3, __destroy_global_chain_reference@ha
/* 80AB2D40  38 63 57 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AB2D44  4B 7B 04 4C */	b ModuleDestructorsX
/* 80AB2D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2D4C  7C 08 03 A6 */	mtlr r0
/* 80AB2D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2D54  4E 80 00 20 */	blr 
