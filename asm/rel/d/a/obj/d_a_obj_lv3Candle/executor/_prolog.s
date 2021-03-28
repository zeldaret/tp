lbl_80C579E0:
/* 80C579E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C579E4  7C 08 02 A6 */	mflr r0
/* 80C579E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C579EC  3C 60 80 C6 */	lis r3, data_80C58550@ha
/* 80C579F0  38 63 85 50 */	addi r3, r3, data_80C58550@l
/* 80C579F4  4B 60 B7 58 */	b ModuleConstructorsX
/* 80C579F8  4B 60 B6 90 */	b ModuleProlog
/* 80C579FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57A00  7C 08 03 A6 */	mtlr r0
/* 80C57A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57A08  4E 80 00 20 */	blr 
