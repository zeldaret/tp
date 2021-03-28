lbl_8082F88C:
/* 8082F88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F890  7C 08 02 A6 */	mflr r0
/* 8082F894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F898  4B A3 37 F4 */	b ModuleEpilog
/* 8082F89C  3C 60 80 83 */	lis r3, __destroy_global_chain_reference@ha
/* 8082F8A0  38 63 2C EC */	addi r3, r3, __destroy_global_chain_reference@l
/* 8082F8A4  4B A3 38 EC */	b ModuleDestructorsX
/* 8082F8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F8AC  7C 08 03 A6 */	mtlr r0
/* 8082F8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F8B4  4E 80 00 20 */	blr 
