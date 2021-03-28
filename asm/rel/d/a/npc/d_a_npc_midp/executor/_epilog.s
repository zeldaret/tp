lbl_80A70BAC:
/* 80A70BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A70BB0  7C 08 02 A6 */	mflr r0
/* 80A70BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A70BB8  4B 7F 24 D4 */	b ModuleEpilog
/* 80A70BBC  3C 60 80 A7 */	lis r3, __destroy_global_chain_reference@ha
/* 80A70BC0  38 63 39 B4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A70BC4  4B 7F 25 CC */	b ModuleDestructorsX
/* 80A70BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A70BCC  7C 08 03 A6 */	mtlr r0
/* 80A70BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A70BD4  4E 80 00 20 */	blr 
