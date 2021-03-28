lbl_80C847EC:
/* 80C847EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C847F0  7C 08 02 A6 */	mflr r0
/* 80C847F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C847F8  4B 5D E8 94 */	b ModuleEpilog
/* 80C847FC  3C 60 80 C8 */	lis r3, __destroy_global_chain_reference@ha
/* 80C84800  38 63 52 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C84804  4B 5D E9 8C */	b ModuleDestructorsX
/* 80C84808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8480C  7C 08 03 A6 */	mtlr r0
/* 80C84810  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84814  4E 80 00 20 */	blr 
