lbl_8080806C:
/* 8080806C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80808070  7C 08 02 A6 */	mflr r0
/* 80808074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80808078  4B A5 B0 14 */	b ModuleEpilog
/* 8080807C  3C 60 80 81 */	lis r3, __destroy_global_chain_reference@ha
/* 80808080  38 63 59 88 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80808084  4B A5 B1 0C */	b ModuleDestructorsX
/* 80808088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8080808C  7C 08 03 A6 */	mtlr r0
/* 80808090  38 21 00 10 */	addi r1, r1, 0x10
/* 80808094  4E 80 00 20 */	blr 
