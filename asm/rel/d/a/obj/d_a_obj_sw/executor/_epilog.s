lbl_80CF05EC:
/* 80CF05EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF05F0  7C 08 02 A6 */	mflr r0
/* 80CF05F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF05F8  4B 57 2A 94 */	b ModuleEpilog
/* 80CF05FC  3C 60 80 CF */	lis r3, data_80CF2FFC@ha
/* 80CF0600  38 63 2F FC */	addi r3, r3, data_80CF2FFC@l
/* 80CF0604  4B 57 2B 8C */	b ModuleDestructorsX
/* 80CF0608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF060C  7C 08 03 A6 */	mtlr r0
/* 80CF0610  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0614  4E 80 00 20 */	blr 
