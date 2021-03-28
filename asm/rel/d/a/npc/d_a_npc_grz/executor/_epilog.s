lbl_809E834C:
/* 809E834C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E8350  7C 08 02 A6 */	mflr r0
/* 809E8354  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E8358  4B 87 AD 34 */	b ModuleEpilog
/* 809E835C  3C 60 80 9F */	lis r3, __destroy_global_chain_reference@ha
/* 809E8360  38 63 F1 E8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809E8364  4B 87 AE 2C */	b ModuleDestructorsX
/* 809E8368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E836C  7C 08 03 A6 */	mtlr r0
/* 809E8370  38 21 00 10 */	addi r1, r1, 0x10
/* 809E8374  4E 80 00 20 */	blr 
