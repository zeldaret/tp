lbl_80BE818C:
/* 80BE818C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8190  7C 08 02 A6 */	mflr r0
/* 80BE8194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8198  4B 67 AE F4 */	b ModuleEpilog
/* 80BE819C  3C 60 80 BF */	lis r3, __destroy_global_chain_reference@ha
/* 80BE81A0  38 63 8F 28 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BE81A4  4B 67 AF EC */	b ModuleDestructorsX
/* 80BE81A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE81AC  7C 08 03 A6 */	mtlr r0
/* 80BE81B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE81B4  4E 80 00 20 */	blr 
