lbl_80758480:
/* 80758480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80758484  7C 08 02 A6 */	mflr r0
/* 80758488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075848C  3C 60 80 76 */	lis r3, data_807614E8@ha
/* 80758490  38 63 14 E8 */	addi r3, r3, data_807614E8@l
/* 80758494  4B B0 AC B8 */	b ModuleConstructorsX
/* 80758498  4B B0 AB F0 */	b ModuleProlog
/* 8075849C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807584A0  7C 08 03 A6 */	mtlr r0
/* 807584A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807584A8  4E 80 00 20 */	blr 
