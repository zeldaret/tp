lbl_80672D80:
/* 80672D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672D84  7C 08 02 A6 */	mflr r0
/* 80672D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80672D90  7C 7F 1B 78 */	mr r31, r3
/* 80672D94  7C 83 23 78 */	mr r3, r4
/* 80672D98  3C 80 00 08 */	lis r4, 8
/* 80672D9C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80672DA0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80672DA4  4B 9A 1E B1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80672DA8  90 7F 00 00 */	stw r3, 0(r31)
/* 80672DAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80672DB0  30 03 FF FF */	addic r0, r3, -1
/* 80672DB4  7C 60 19 10 */	subfe r3, r0, r3
/* 80672DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80672DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672DC0  7C 08 03 A6 */	mtlr r0
/* 80672DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80672DC8  4E 80 00 20 */	blr 
