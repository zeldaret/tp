lbl_80C1CA2C:
/* 80C1CA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CA30  7C 08 02 A6 */	mflr r0
/* 80C1CA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CA38  4B 64 66 54 */	b ModuleEpilog
/* 80C1CA3C  3C 60 80 C2 */	lis r3, __destroy_global_chain_reference@ha
/* 80C1CA40  38 63 DA 88 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C1CA44  4B 64 67 4C */	b ModuleDestructorsX
/* 80C1CA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CA4C  7C 08 03 A6 */	mtlr r0
/* 80C1CA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CA54  4E 80 00 20 */	blr 
