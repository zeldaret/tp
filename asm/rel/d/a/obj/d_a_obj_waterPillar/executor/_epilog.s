lbl_80D2C60C:
/* 80D2C60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C610  7C 08 02 A6 */	mflr r0
/* 80D2C614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C618  4B 53 6A 74 */	b ModuleEpilog
/* 80D2C61C  3C 60 80 D3 */	lis r3, __destroy_global_chain_reference@ha
/* 80D2C620  38 63 E7 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D2C624  4B 53 6B 6C */	b ModuleDestructorsX
/* 80D2C628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C62C  7C 08 03 A6 */	mtlr r0
/* 80D2C630  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C634  4E 80 00 20 */	blr 
