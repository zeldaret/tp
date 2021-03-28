lbl_80B8DB4C:
/* 80B8DB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DB50  7C 08 02 A6 */	mflr r0
/* 80B8DB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DB58  4B 6D 55 34 */	b ModuleEpilog
/* 80B8DB5C  3C 60 80 B9 */	lis r3, __destroy_global_chain_reference@ha
/* 80B8DB60  38 63 31 F0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B8DB64  4B 6D 56 2C */	b ModuleDestructorsX
/* 80B8DB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DB6C  7C 08 03 A6 */	mtlr r0
/* 80B8DB70  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DB74  4E 80 00 20 */	blr 
