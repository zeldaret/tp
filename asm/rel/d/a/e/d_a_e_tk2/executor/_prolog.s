lbl_807BA480:
/* 807BA480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA484  7C 08 02 A6 */	mflr r0
/* 807BA488  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA48C  3C 60 80 7C */	lis r3, data_807BBD94@ha
/* 807BA490  38 63 BD 94 */	addi r3, r3, data_807BBD94@l
/* 807BA494  4B AA 8C B8 */	b ModuleConstructorsX
/* 807BA498  4B AA 8B F0 */	b ModuleProlog
/* 807BA49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA4A0  7C 08 03 A6 */	mtlr r0
/* 807BA4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA4A8  4E 80 00 20 */	blr 
