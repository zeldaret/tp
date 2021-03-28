lbl_806AA100:
/* 806AA100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AA104  7C 08 02 A6 */	mflr r0
/* 806AA108  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AA10C  3C 60 80 6B */	lis r3, data_806AD524@ha
/* 806AA110  38 63 D5 24 */	addi r3, r3, data_806AD524@l
/* 806AA114  4B BB 90 38 */	b ModuleConstructorsX
/* 806AA118  4B BB 8F 70 */	b ModuleProlog
/* 806AA11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AA120  7C 08 03 A6 */	mtlr r0
/* 806AA124  38 21 00 10 */	addi r1, r1, 0x10
/* 806AA128  4E 80 00 20 */	blr 
