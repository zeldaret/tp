lbl_804DA460:
/* 804DA460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA464  7C 08 02 A6 */	mflr r0
/* 804DA468  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA46C  3C 60 80 4E */	lis r3, data_804DD5CC@ha
/* 804DA470  38 63 D5 CC */	addi r3, r3, data_804DD5CC@l
/* 804DA474  4B D8 8C D8 */	b ModuleConstructorsX
/* 804DA478  4B D8 8C 10 */	b ModuleProlog
/* 804DA47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA480  7C 08 03 A6 */	mtlr r0
/* 804DA484  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA488  4E 80 00 20 */	blr 
