lbl_8061B66C:
/* 8061B66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B670  7C 08 02 A6 */	mflr r0
/* 8061B674  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B678  4B C4 7A 14 */	b ModuleEpilog
/* 8061B67C  3C 60 80 62 */	lis r3, __destroy_global_chain_reference@ha
/* 8061B680  38 63 D9 C8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8061B684  4B C4 7B 0C */	b ModuleDestructorsX
/* 8061B688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B68C  7C 08 03 A6 */	mtlr r0
/* 8061B690  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B694  4E 80 00 20 */	blr 
