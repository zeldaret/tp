lbl_806E0300:
/* 806E0300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E0304  7C 08 02 A6 */	mflr r0
/* 806E0308  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E030C  3C 60 80 6E */	lis r3, data_806E590C@ha
/* 806E0310  38 63 59 0C */	addi r3, r3, data_806E590C@l
/* 806E0314  4B B8 2E 38 */	b ModuleConstructorsX
/* 806E0318  4B B8 2D 70 */	b ModuleProlog
/* 806E031C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E0320  7C 08 03 A6 */	mtlr r0
/* 806E0324  38 21 00 10 */	addi r1, r1, 0x10
/* 806E0328  4E 80 00 20 */	blr 
