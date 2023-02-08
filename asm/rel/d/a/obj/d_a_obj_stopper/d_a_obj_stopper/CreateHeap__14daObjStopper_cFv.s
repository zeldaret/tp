lbl_80CED20C:
/* 80CED20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED210  7C 08 02 A6 */	mflr r0
/* 80CED214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED21C  7C 7F 1B 78 */	mr r31, r3
/* 80CED220  4B FF FC ED */	bl getStopModelData__Fv
/* 80CED224  3C 80 00 08 */	lis r4, 8
/* 80CED228  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CED22C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CED230  4B 32 7A 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CED234  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80CED238  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CED23C  30 03 FF FF */	addic r0, r3, -1
/* 80CED240  7C 60 19 10 */	subfe r3, r0, r3
/* 80CED244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED24C  7C 08 03 A6 */	mtlr r0
/* 80CED250  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED254  4E 80 00 20 */	blr 
