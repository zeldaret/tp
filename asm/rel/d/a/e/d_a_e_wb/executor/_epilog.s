lbl_807D23CC:
/* 807D23CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D23D0  7C 08 02 A6 */	mflr r0
/* 807D23D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D23D8  4B A9 0C B4 */	b ModuleEpilog
/* 807D23DC  3C 60 80 7E */	lis r3, __destroy_global_chain_reference@ha
/* 807D23E0  38 63 29 80 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807D23E4  4B A9 0D AC */	b ModuleDestructorsX
/* 807D23E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D23EC  7C 08 03 A6 */	mtlr r0
/* 807D23F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807D23F4  4E 80 00 20 */	blr 
