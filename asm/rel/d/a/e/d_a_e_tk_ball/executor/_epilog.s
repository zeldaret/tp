lbl_807BBFAC:
/* 807BBFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBFB0  7C 08 02 A6 */	mflr r0
/* 807BBFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBFB8  4B AA 70 D4 */	b ModuleEpilog
/* 807BBFBC  3C 60 80 7C */	lis r3, data_807BD568@ha
/* 807BBFC0  38 63 D5 68 */	addi r3, r3, data_807BD568@l
/* 807BBFC4  4B AA 71 CC */	b ModuleDestructorsX
/* 807BBFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBFCC  7C 08 03 A6 */	mtlr r0
/* 807BBFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBFD4  4E 80 00 20 */	blr 
