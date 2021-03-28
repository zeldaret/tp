lbl_80C14B60:
/* 80C14B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14B64  7C 08 02 A6 */	mflr r0
/* 80C14B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14B6C  3C 60 80 C1 */	lis r3, data_80C15358@ha
/* 80C14B70  38 63 53 58 */	addi r3, r3, data_80C15358@l
/* 80C14B74  4B 64 E5 D8 */	b ModuleConstructorsX
/* 80C14B78  4B 64 E5 10 */	b ModuleProlog
/* 80C14B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14B80  7C 08 03 A6 */	mtlr r0
/* 80C14B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14B88  4E 80 00 20 */	blr 
