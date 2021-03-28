lbl_80C19540:
/* 80C19540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C19544  7C 08 02 A6 */	mflr r0
/* 80C19548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1954C  3C 60 80 C2 */	lis r3, data_80C1B5F8@ha
/* 80C19550  38 63 B5 F8 */	addi r3, r3, data_80C1B5F8@l
/* 80C19554  4B 64 9B F8 */	b ModuleConstructorsX
/* 80C19558  4B 64 9B 30 */	b ModuleProlog
/* 80C1955C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C19560  7C 08 03 A6 */	mtlr r0
/* 80C19564  38 21 00 10 */	addi r1, r1, 0x10
/* 80C19568  4E 80 00 20 */	blr 
