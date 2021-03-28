lbl_80C4F7E0:
/* 80C4F7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F7E4  7C 08 02 A6 */	mflr r0
/* 80C4F7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F7EC  3C 60 80 C5 */	lis r3, data_80C50CFC@ha
/* 80C4F7F0  38 63 0C FC */	addi r3, r3, data_80C50CFC@l
/* 80C4F7F4  4B 61 39 58 */	b ModuleConstructorsX
/* 80C4F7F8  4B 61 38 90 */	b ModuleProlog
/* 80C4F7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F800  7C 08 03 A6 */	mtlr r0
/* 80C4F804  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F808  4E 80 00 20 */	blr 
