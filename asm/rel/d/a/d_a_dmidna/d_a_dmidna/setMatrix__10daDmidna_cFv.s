lbl_8045D144:
/* 8045D144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D148  7C 08 02 A6 */	mflr r0
/* 8045D14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D154  7C 7F 1B 78 */	mr r31, r3
/* 8045D158  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045D15C  4B BA FC 08 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8045D160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045D164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045D168  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8045D16C  4B BA F2 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 8045D170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045D174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045D178  80 9F 05 24 */	lwz r4, 0x524(r31)
/* 8045D17C  38 84 00 24 */	addi r4, r4, 0x24
/* 8045D180  4B EE 93 30 */	b PSMTXCopy
/* 8045D184  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8045D188  4B BB 40 64 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8045D18C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D194  7C 08 03 A6 */	mtlr r0
/* 8045D198  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D19C  4E 80 00 20 */	blr 
