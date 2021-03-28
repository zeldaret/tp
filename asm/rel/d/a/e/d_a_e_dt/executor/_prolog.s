lbl_806AD820:
/* 806AD820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD824  7C 08 02 A6 */	mflr r0
/* 806AD828  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD82C  3C 60 80 6B */	lis r3, data_806B5CC0@ha
/* 806AD830  38 63 5C C0 */	addi r3, r3, data_806B5CC0@l
/* 806AD834  4B BB 59 18 */	b ModuleConstructorsX
/* 806AD838  4B BB 58 50 */	b ModuleProlog
/* 806AD83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD840  7C 08 03 A6 */	mtlr r0
/* 806AD844  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD848  4E 80 00 20 */	blr 
