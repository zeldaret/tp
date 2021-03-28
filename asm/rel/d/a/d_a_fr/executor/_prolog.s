lbl_80519800:
/* 80519800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519804  7C 08 02 A6 */	mflr r0
/* 80519808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051980C  3C 60 80 52 */	lis r3, data_8051B9B4@ha
/* 80519810  38 63 B9 B4 */	addi r3, r3, data_8051B9B4@l
/* 80519814  4B D4 99 38 */	b ModuleConstructorsX
/* 80519818  4B D4 98 70 */	b ModuleProlog
/* 8051981C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519820  7C 08 03 A6 */	mtlr r0
/* 80519824  38 21 00 10 */	addi r1, r1, 0x10
/* 80519828  4E 80 00 20 */	blr 
