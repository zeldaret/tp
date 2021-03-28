lbl_80C8FD4C:
/* 80C8FD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FD50  7C 08 02 A6 */	mflr r0
/* 80C8FD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FD58  4B 5D 33 34 */	b ModuleEpilog
/* 80C8FD5C  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C8FD60  38 63 09 28 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C8FD64  4B 5D 34 2C */	b ModuleDestructorsX
/* 80C8FD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FD6C  7C 08 03 A6 */	mtlr r0
/* 80C8FD70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FD74  4E 80 00 20 */	blr 
