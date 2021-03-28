lbl_80BF928C:
/* 80BF928C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9290  7C 08 02 A6 */	mflr r0
/* 80BF9294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9298  4B 66 9D F4 */	b ModuleEpilog
/* 80BF929C  3C 60 80 C0 */	lis r3, __destroy_global_chain_reference@ha
/* 80BF92A0  38 63 A9 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BF92A4  4B 66 9E EC */	b ModuleDestructorsX
/* 80BF92A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF92AC  7C 08 03 A6 */	mtlr r0
/* 80BF92B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF92B4  4E 80 00 20 */	blr 
