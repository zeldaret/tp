lbl_80CECE4C:
/* 80CECE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECE50  7C 08 02 A6 */	mflr r0
/* 80CECE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECE58  4B 57 62 34 */	b ModuleEpilog
/* 80CECE5C  3C 60 80 CF */	lis r3, __destroy_global_chain_reference@ha
/* 80CECE60  38 63 EF 94 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CECE64  4B 57 63 2C */	b ModuleDestructorsX
/* 80CECE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECE6C  7C 08 03 A6 */	mtlr r0
/* 80CECE70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECE74  4E 80 00 20 */	blr 
