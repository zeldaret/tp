lbl_80C12580:
/* 80C12580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12584  7C 08 02 A6 */	mflr r0
/* 80C12588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1258C  3C 60 80 C1 */	lis r3, data_80C13248@ha
/* 80C12590  38 63 32 48 */	addi r3, r3, data_80C13248@l
/* 80C12594  4B 65 0B B8 */	b ModuleConstructorsX
/* 80C12598  4B 65 0A F0 */	b ModuleProlog
/* 80C1259C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C125A0  7C 08 03 A6 */	mtlr r0
/* 80C125A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C125A8  4E 80 00 20 */	blr 
