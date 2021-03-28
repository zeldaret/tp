lbl_80CB418C:
/* 80CB418C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4190  7C 08 02 A6 */	mflr r0
/* 80CB4194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4198  4B 5A EE F4 */	b ModuleEpilog
/* 80CB419C  3C 60 80 CB */	lis r3, __destroy_global_chain_reference@ha
/* 80CB41A0  38 63 4F B4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CB41A4  4B 5A EF EC */	b ModuleDestructorsX
/* 80CB41A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB41AC  7C 08 03 A6 */	mtlr r0
/* 80CB41B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB41B4  4E 80 00 20 */	blr 
