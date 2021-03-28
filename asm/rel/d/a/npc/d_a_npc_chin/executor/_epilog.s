lbl_8098BE4C:
/* 8098BE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098BE50  7C 08 02 A6 */	mflr r0
/* 8098BE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098BE58  4B 8D 72 34 */	b ModuleEpilog
/* 8098BE5C  3C 60 80 99 */	lis r3, __destroy_global_chain_reference@ha
/* 8098BE60  38 63 18 EC */	addi r3, r3, __destroy_global_chain_reference@l
/* 8098BE64  4B 8D 73 2C */	b ModuleDestructorsX
/* 8098BE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098BE6C  7C 08 03 A6 */	mtlr r0
/* 8098BE70  38 21 00 10 */	addi r1, r1, 0x10
/* 8098BE74  4E 80 00 20 */	blr 
