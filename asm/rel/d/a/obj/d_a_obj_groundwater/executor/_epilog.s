lbl_80C133EC:
/* 80C133EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C133F0  7C 08 02 A6 */	mflr r0
/* 80C133F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C133F8  4B 64 FC 94 */	b ModuleEpilog
/* 80C133FC  3C 60 80 C1 */	lis r3, __destroy_global_chain_reference@ha
/* 80C13400  38 63 49 D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C13404  4B 64 FD 8C */	b ModuleDestructorsX
/* 80C13408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1340C  7C 08 03 A6 */	mtlr r0
/* 80C13410  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13414  4E 80 00 20 */	blr 
