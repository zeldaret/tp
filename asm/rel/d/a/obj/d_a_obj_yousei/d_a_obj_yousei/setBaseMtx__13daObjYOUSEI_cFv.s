lbl_804D0FCC:
/* 804D0FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0FD0  7C 08 02 A6 */	mflr r0
/* 804D0FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0FD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D0FDC  7C 7F 1B 78 */	mr r31, r3
/* 804D0FE0  3C 60 80 4D */	lis r3, lit_3798@ha /* 0x804D165C@ha */
/* 804D0FE4  C0 03 16 5C */	lfs f0, lit_3798@l(r3)  /* 0x804D165C@l */
/* 804D0FE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D0FEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D0FF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D0FF4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804D0FF8  4B B3 BD 6D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 804D0FFC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804D1000  4B B3 BF 45 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804D1004  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 804D1008  4B B3 BE 69 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 804D100C  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804D1010  80 83 00 04 */	lwz r4, 4(r3)
/* 804D1014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D1018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D101C  38 84 00 24 */	addi r4, r4, 0x24
/* 804D1020  4B E7 54 91 */	bl PSMTXCopy
/* 804D1024  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804D1028  4B B4 01 C5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 804D102C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D1030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1034  7C 08 03 A6 */	mtlr r0
/* 804D1038  38 21 00 20 */	addi r1, r1, 0x20
/* 804D103C  4E 80 00 20 */	blr 
