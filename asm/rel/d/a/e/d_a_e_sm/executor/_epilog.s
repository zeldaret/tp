lbl_8079216C:
/* 8079216C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80792170  7C 08 02 A6 */	mflr r0
/* 80792174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80792178  4B AD 0F 14 */	b ModuleEpilog
/* 8079217C  3C 60 80 7A */	lis r3, __destroy_global_chain_reference@ha
/* 80792180  38 63 85 D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80792184  4B AD 10 0C */	b ModuleDestructorsX
/* 80792188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079218C  7C 08 03 A6 */	mtlr r0
/* 80792190  38 21 00 10 */	addi r1, r1, 0x10
/* 80792194  4E 80 00 20 */	blr 
