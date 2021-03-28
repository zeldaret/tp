lbl_8078E28C:
/* 8078E28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078E290  7C 08 02 A6 */	mflr r0
/* 8078E294  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078E298  4B AD 4D F4 */	b ModuleEpilog
/* 8078E29C  3C 60 80 79 */	lis r3, __destroy_global_chain_reference@ha
/* 8078E2A0  38 63 1D 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8078E2A4  4B AD 4E EC */	b ModuleDestructorsX
/* 8078E2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078E2AC  7C 08 03 A6 */	mtlr r0
/* 8078E2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8078E2B4  4E 80 00 20 */	blr 
