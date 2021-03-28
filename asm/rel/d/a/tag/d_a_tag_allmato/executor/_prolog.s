lbl_804874C0:
/* 804874C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804874C4  7C 08 02 A6 */	mflr r0
/* 804874C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804874CC  3C 60 80 49 */	lis r3, data_804896DC@ha
/* 804874D0  38 63 96 DC */	addi r3, r3, data_804896DC@l
/* 804874D4  4B DD BC 78 */	b ModuleConstructorsX
/* 804874D8  4B DD BB B0 */	b ModuleProlog
/* 804874DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804874E0  7C 08 03 A6 */	mtlr r0
/* 804874E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804874E8  4E 80 00 20 */	blr 
