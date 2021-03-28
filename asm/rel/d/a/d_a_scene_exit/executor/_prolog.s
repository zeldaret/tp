lbl_804857C0:
/* 804857C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804857C4  7C 08 02 A6 */	mflr r0
/* 804857C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804857CC  3C 60 80 48 */	lis r3, data_80485C90@ha
/* 804857D0  38 63 5C 90 */	addi r3, r3, data_80485C90@l
/* 804857D4  4B DD D9 78 */	b ModuleConstructorsX
/* 804857D8  4B DD D8 B0 */	b ModuleProlog
/* 804857DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804857E0  7C 08 03 A6 */	mtlr r0
/* 804857E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804857E8  4E 80 00 20 */	blr 
