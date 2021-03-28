lbl_80C1F980:
/* 80C1F980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F984  7C 08 02 A6 */	mflr r0
/* 80C1F988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F98C  3C 60 80 C2 */	lis r3, data_80C20784@ha
/* 80C1F990  38 63 07 84 */	addi r3, r3, data_80C20784@l
/* 80C1F994  4B 64 37 B8 */	b ModuleConstructorsX
/* 80C1F998  4B 64 36 F0 */	b ModuleProlog
/* 80C1F99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F9A0  7C 08 03 A6 */	mtlr r0
/* 80C1F9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F9A8  4E 80 00 20 */	blr 
