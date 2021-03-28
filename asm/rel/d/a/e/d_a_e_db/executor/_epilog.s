lbl_8069AA2C:
/* 8069AA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069AA30  7C 08 02 A6 */	mflr r0
/* 8069AA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069AA38  4B BC 86 54 */	b ModuleEpilog
/* 8069AA3C  3C 60 80 6A */	lis r3, __destroy_global_chain_reference@ha
/* 8069AA40  38 63 19 00 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8069AA44  4B BC 87 4C */	b ModuleDestructorsX
/* 8069AA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069AA4C  7C 08 03 A6 */	mtlr r0
/* 8069AA50  38 21 00 10 */	addi r1, r1, 0x10
/* 8069AA54  4E 80 00 20 */	blr 
