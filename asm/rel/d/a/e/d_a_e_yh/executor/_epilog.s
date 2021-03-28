lbl_807FD40C:
/* 807FD40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FD410  7C 08 02 A6 */	mflr r0
/* 807FD414  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FD418  4B A6 5C 74 */	b ModuleEpilog
/* 807FD41C  3C 60 80 80 */	lis r3, __destroy_global_chain_reference@ha
/* 807FD420  38 63 42 70 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807FD424  4B A6 5D 6C */	b ModuleDestructorsX
/* 807FD428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FD42C  7C 08 03 A6 */	mtlr r0
/* 807FD430  38 21 00 10 */	addi r1, r1, 0x10
/* 807FD434  4E 80 00 20 */	blr 
