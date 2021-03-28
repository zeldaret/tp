lbl_80CCDB4C:
/* 80CCDB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDB50  7C 08 02 A6 */	mflr r0
/* 80CCDB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDB58  4B 59 55 34 */	b ModuleEpilog
/* 80CCDB5C  3C 60 80 CD */	lis r3, __destroy_global_chain_reference@ha
/* 80CCDB60  38 63 E1 68 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CCDB64  4B 59 56 2C */	b ModuleDestructorsX
/* 80CCDB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDB6C  7C 08 03 A6 */	mtlr r0
/* 80CCDB70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDB74  4E 80 00 20 */	blr 
