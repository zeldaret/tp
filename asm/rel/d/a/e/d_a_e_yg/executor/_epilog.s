lbl_807F828C:
/* 807F828C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F8290  7C 08 02 A6 */	mflr r0
/* 807F8294  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F8298  4B A6 AD F4 */	b ModuleEpilog
/* 807F829C  3C 60 80 80 */	lis r3, __destroy_global_chain_reference@ha
/* 807F82A0  38 63 CC A8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807F82A4  4B A6 AE EC */	b ModuleDestructorsX
/* 807F82A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F82AC  7C 08 03 A6 */	mtlr r0
/* 807F82B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807F82B4  4E 80 00 20 */	blr 
