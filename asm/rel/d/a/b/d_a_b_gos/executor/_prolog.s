lbl_80604180:
/* 80604180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80604184  7C 08 02 A6 */	mflr r0
/* 80604188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060418C  3C 60 80 60 */	lis r3, data_806053B4@ha
/* 80604190  38 63 53 B4 */	addi r3, r3, data_806053B4@l
/* 80604194  4B C5 EF B8 */	b ModuleConstructorsX
/* 80604198  4B C5 EE F0 */	b ModuleProlog
/* 8060419C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806041A0  7C 08 03 A6 */	mtlr r0
/* 806041A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806041A8  4E 80 00 20 */	blr 
