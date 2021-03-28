lbl_80CC5238:
/* 80CC5238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC523C  7C 08 02 A6 */	mflr r0
/* 80CC5240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC5248  7C 7F 1B 78 */	mr r31, r3
/* 80CC524C  7C 83 23 78 */	mr r3, r4
/* 80CC5250  3C 80 00 02 */	lis r4, 2
/* 80CC5254  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC5258  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC525C  4B 34 F9 F8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC5260  90 7F 00 00 */	stw r3, 0(r31)
/* 80CC5264  38 60 00 01 */	li r3, 1
/* 80CC5268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC526C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5270  7C 08 03 A6 */	mtlr r0
/* 80CC5274  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5278  4E 80 00 20 */	blr 
