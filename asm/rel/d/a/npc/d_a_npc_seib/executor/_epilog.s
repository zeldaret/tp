lbl_80AC502C:
/* 80AC502C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5030  7C 08 02 A6 */	mflr r0
/* 80AC5034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5038  4B 79 E0 54 */	b ModuleEpilog
/* 80AC503C  3C 60 80 AC */	lis r3, __destroy_global_chain_reference@ha
/* 80AC5040  38 63 70 18 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AC5044  4B 79 E1 4C */	b ModuleDestructorsX
/* 80AC5048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC504C  7C 08 03 A6 */	mtlr r0
/* 80AC5050  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5054  4E 80 00 20 */	blr 
