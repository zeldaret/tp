lbl_805AB020:
/* 805AB020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB024  7C 08 02 A6 */	mflr r0
/* 805AB028  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB02C  3C 60 80 5B */	lis r3, data_805ADF48@ha
/* 805AB030  38 63 DF 48 */	addi r3, r3, data_805ADF48@l
/* 805AB034  4B CB 81 18 */	b ModuleConstructorsX
/* 805AB038  4B CB 80 50 */	b ModuleProlog
/* 805AB03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB040  7C 08 03 A6 */	mtlr r0
/* 805AB044  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB048  4E 80 00 20 */	blr 
