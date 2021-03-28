lbl_80BFB08C:
/* 80BFB08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFB090  7C 08 02 A6 */	mflr r0
/* 80BFB094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFB098  4B 66 7F F4 */	b ModuleEpilog
/* 80BFB09C  3C 60 80 C0 */	lis r3, __destroy_global_chain_reference@ha
/* 80BFB0A0  38 63 D3 20 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BFB0A4  4B 66 80 EC */	b ModuleDestructorsX
/* 80BFB0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFB0AC  7C 08 03 A6 */	mtlr r0
/* 80BFB0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFB0B4  4E 80 00 20 */	blr 
