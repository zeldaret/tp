lbl_80CBD204:
/* 80CBD204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD208  7C 08 02 A6 */	mflr r0
/* 80CBD20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD214  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBD218  7C 7E 1B 78 */	mr r30, r3
/* 80CBD21C  3C 60 80 CC */	lis r3, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBD220  3B E3 DA 5C */	addi r31, r3, lit_3631@l /* 0x80CBDA5C@l */
/* 80CBD224  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 80CBD228  2C 00 00 01 */	cmpwi r0, 1
/* 80CBD22C  41 82 00 14 */	beq lbl_80CBD240
/* 80CBD230  2C 00 00 02 */	cmpwi r0, 2
/* 80CBD234  41 82 00 0C */	beq lbl_80CBD240
/* 80CBD238  2C 00 00 03 */	cmpwi r0, 3
/* 80CBD23C  40 82 00 6C */	bne lbl_80CBD2A8
lbl_80CBD240:
/* 80CBD240  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CBD244  4B 34 FB 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBD248  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CBD24C  4B 34 FC F9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBD250  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBD254  FC 40 08 90 */	fmr f2, f1
/* 80CBD258  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 80CBD25C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80CBD260  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CBD264  4B 34 FB 39 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBD268  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CBD26C  4B 34 FC D9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBD270  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CBD274  FC 40 08 90 */	fmr f2, f1
/* 80CBD278  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80CBD27C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80CBD280  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CBD284  4B 34 FB 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBD288  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80CBD28C  4B 34 FB E5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CBD290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBD294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBD298  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 80CBD29C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBD2A0  4B 68 92 11 */	bl PSMTXCopy
/* 80CBD2A4  48 00 00 30 */	b lbl_80CBD2D4
lbl_80CBD2A8:
/* 80CBD2A8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CBD2AC  4B 34 FA B9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBD2B0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CBD2B4  4B 34 FC 91 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBD2B8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80CBD2BC  4B 34 FB B5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80CBD2C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBD2C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBD2C8  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 80CBD2CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBD2D0  4B 68 91 E1 */	bl PSMTXCopy
lbl_80CBD2D4:
/* 80CBD2D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBD2D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBD2DC  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80CBD2E0  4B 68 91 D1 */	bl PSMTXCopy
/* 80CBD2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBD2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD2F0  7C 08 03 A6 */	mtlr r0
/* 80CBD2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD2F8  4E 80 00 20 */	blr 
