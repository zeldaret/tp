lbl_80854FE0:
/* 80854FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80854FE4  7C 08 02 A6 */	mflr r0
/* 80854FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80854FEC  3C 60 80 85 */	lis r3, data_80855984@ha
/* 80854FF0  38 63 59 84 */	addi r3, r3, data_80855984@l
/* 80854FF4  4B A0 E1 58 */	b ModuleConstructorsX
/* 80854FF8  4B A0 E0 90 */	b ModuleProlog
/* 80854FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855000  7C 08 03 A6 */	mtlr r0
/* 80855004  38 21 00 10 */	addi r1, r1, 0x10
/* 80855008  4E 80 00 20 */	blr 
