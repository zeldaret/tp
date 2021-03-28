lbl_8072992C:
/* 8072992C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80729930  7C 08 02 A6 */	mflr r0
/* 80729934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80729938  4B B3 97 54 */	b ModuleEpilog
/* 8072993C  3C 60 80 73 */	lis r3, __destroy_global_chain_reference@ha
/* 80729940  38 63 C1 74 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80729944  4B B3 98 4C */	b ModuleDestructorsX
/* 80729948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072994C  7C 08 03 A6 */	mtlr r0
/* 80729950  38 21 00 10 */	addi r1, r1, 0x10
/* 80729954  4E 80 00 20 */	blr 
