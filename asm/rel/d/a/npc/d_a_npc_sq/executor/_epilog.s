lbl_80AF5F2C:
/* 80AF5F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF5F30  7C 08 02 A6 */	mflr r0
/* 80AF5F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5F38  4B 76 D1 54 */	b ModuleEpilog
/* 80AF5F3C  3C 60 80 AF */	lis r3, __destroy_global_chain_reference@ha
/* 80AF5F40  38 63 73 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AF5F44  4B 76 D2 4C */	b ModuleDestructorsX
/* 80AF5F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5F4C  7C 08 03 A6 */	mtlr r0
/* 80AF5F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5F54  4E 80 00 20 */	blr 
