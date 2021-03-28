lbl_80C31460:
/* 80C31460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31464  7C 08 02 A6 */	mflr r0
/* 80C31468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3146C  3C 60 80 C3 */	lis r3, data_80C31954@ha
/* 80C31470  38 63 19 54 */	addi r3, r3, data_80C31954@l
/* 80C31474  4B 63 1C D8 */	b ModuleConstructorsX
/* 80C31478  4B 63 1C 10 */	b ModuleProlog
/* 80C3147C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31480  7C 08 03 A6 */	mtlr r0
/* 80C31484  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31488  4E 80 00 20 */	blr 
