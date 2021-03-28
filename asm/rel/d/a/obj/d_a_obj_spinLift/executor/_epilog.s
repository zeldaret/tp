lbl_80CE3CEC:
/* 80CE3CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3CF0  7C 08 02 A6 */	mflr r0
/* 80CE3CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3CF8  4B 57 F3 94 */	b ModuleEpilog
/* 80CE3CFC  3C 60 80 CE */	lis r3, __destroy_global_chain_reference@ha
/* 80CE3D00  38 63 4C B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CE3D04  4B 57 F4 8C */	b ModuleDestructorsX
/* 80CE3D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3D0C  7C 08 03 A6 */	mtlr r0
/* 80CE3D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE3D14  4E 80 00 20 */	blr 
