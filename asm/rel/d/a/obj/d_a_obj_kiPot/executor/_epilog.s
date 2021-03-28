lbl_80C44C4C:
/* 80C44C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44C50  7C 08 02 A6 */	mflr r0
/* 80C44C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44C58  4B 61 E4 34 */	b ModuleEpilog
/* 80C44C5C  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C44C60  38 63 51 88 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C44C64  4B 61 E5 2C */	b ModuleDestructorsX
/* 80C44C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44C6C  7C 08 03 A6 */	mtlr r0
/* 80C44C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44C74  4E 80 00 20 */	blr 
