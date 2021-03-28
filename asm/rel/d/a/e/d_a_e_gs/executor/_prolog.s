lbl_806DF380:
/* 806DF380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DF384  7C 08 02 A6 */	mflr r0
/* 806DF388  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DF38C  3C 60 80 6E */	lis r3, data_806DFDE0@ha
/* 806DF390  38 63 FD E0 */	addi r3, r3, data_806DFDE0@l
/* 806DF394  4B B8 3D B8 */	b ModuleConstructorsX
/* 806DF398  4B B8 3C F0 */	b ModuleProlog
/* 806DF39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DF3A0  7C 08 03 A6 */	mtlr r0
/* 806DF3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806DF3A8  4E 80 00 20 */	blr 
