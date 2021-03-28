lbl_80CA34C0:
/* 80CA34C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA34C4  7C 08 02 A6 */	mflr r0
/* 80CA34C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA34CC  3C 60 80 CA */	lis r3, data_80CA3A3C@ha
/* 80CA34D0  38 63 3A 3C */	addi r3, r3, data_80CA3A3C@l
/* 80CA34D4  4B 5B FC 78 */	b ModuleConstructorsX
/* 80CA34D8  4B 5B FB B0 */	b ModuleProlog
/* 80CA34DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA34E0  7C 08 03 A6 */	mtlr r0
/* 80CA34E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA34E8  4E 80 00 20 */	blr 
