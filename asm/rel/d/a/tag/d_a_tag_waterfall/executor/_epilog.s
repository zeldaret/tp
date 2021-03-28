lbl_80D6456C:
/* 80D6456C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64570  7C 08 02 A6 */	mflr r0
/* 80D64574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64578  4B 4F EB 14 */	b ModuleEpilog
/* 80D6457C  3C 60 80 D6 */	lis r3, __destroy_global_chain_reference@ha
/* 80D64580  38 63 4D 68 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D64584  4B 4F EC 0C */	b ModuleDestructorsX
/* 80D64588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6458C  7C 08 03 A6 */	mtlr r0
/* 80D64590  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64594  4E 80 00 20 */	blr 
