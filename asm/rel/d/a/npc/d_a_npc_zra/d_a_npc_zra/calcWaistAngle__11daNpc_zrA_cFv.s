lbl_80B8204C:
/* 80B8204C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B82050  7C 08 02 A6 */	mflr r0
/* 80B82054  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B82058  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B8205C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B82060  7C 7F 1B 78 */	mr r31, r3
/* 80B82064  88 03 15 90 */	lbz r0, 0x1590(r3)
/* 80B82068  28 00 00 00 */	cmplwi r0, 0
/* 80B8206C  41 82 00 64 */	beq lbl_80B820D0
/* 80B82070  38 7F 15 30 */	addi r3, r31, 0x1530
/* 80B82074  38 80 00 00 */	li r4, 0
/* 80B82078  3C A0 80 B9 */	lis r5, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8207C  3B C5 C4 58 */	addi r30, r5, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B82080  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80B82084  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B82088  7C 00 01 94 */	addze r0, r0
/* 80B8208C  7C 05 07 34 */	extsh r5, r0
/* 80B82090  4B 6E EB 01 */	bl cLib_chaseAngleS__FPsss
/* 80B82094  38 7F 15 32 */	addi r3, r31, 0x1532
/* 80B82098  38 80 00 00 */	li r4, 0
/* 80B8209C  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80B820A0  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B820A4  7C 00 01 94 */	addze r0, r0
/* 80B820A8  7C 05 07 34 */	extsh r5, r0
/* 80B820AC  4B 6E EA E5 */	bl cLib_chaseAngleS__FPsss
/* 80B820B0  38 7F 15 34 */	addi r3, r31, 0x1534
/* 80B820B4  38 80 00 00 */	li r4, 0
/* 80B820B8  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80B820BC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B820C0  7C 00 01 94 */	addze r0, r0
/* 80B820C4  7C 05 07 34 */	extsh r5, r0
/* 80B820C8  4B 6E EA C9 */	bl cLib_chaseAngleS__FPsss
/* 80B820CC  48 00 01 54 */	b lbl_80B82220
lbl_80B820D0:
/* 80B820D0  4B 48 AB F9 */	bl push__14mDoMtx_stack_cFv
/* 80B820D4  38 7F 15 78 */	addi r3, r31, 0x1578
/* 80B820D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B820DC  4B 6E EB 99 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B820E0  B0 61 00 08 */	sth r3, 8(r1)
/* 80B820E4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B820E8  38 9F 15 78 */	addi r4, r31, 0x1578
/* 80B820EC  4B 6E EB 19 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B820F0  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80B820F4  38 00 00 00 */	li r0, 0
/* 80B820F8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B820FC  3C 60 80 B9 */	lis r3, lit_3939@ha /* 0x80B8C508@ha */
/* 80B82100  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)  /* 0x80B8C508@l */
/* 80B82104  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B82108  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B8210C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B82110  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B82114  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80B82118  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B8211C  38 61 00 08 */	addi r3, r1, 8
/* 80B82120  4B 48 AD ED */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B82124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B82128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8212C  38 81 00 28 */	addi r4, r1, 0x28
/* 80B82130  38 BF 15 78 */	addi r5, r31, 0x1578
/* 80B82134  4B 7C 4C 39 */	bl PSMTXMultVec
/* 80B82138  88 1F 15 91 */	lbz r0, 0x1591(r31)
/* 80B8213C  28 00 00 00 */	cmplwi r0, 0
/* 80B82140  41 82 00 6C */	beq lbl_80B821AC
/* 80B82144  3C 60 80 B9 */	lis r3, lit_3939@ha /* 0x80B8C508@ha */
/* 80B82148  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)  /* 0x80B8C508@l */
/* 80B8214C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B82150  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B82154  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B82158  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B8215C  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80B82160  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B82164  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80B82168  4B 48 AD A5 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B8216C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B82170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B82174  38 81 00 28 */	addi r4, r1, 0x28
/* 80B82178  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80B8217C  4B 7C 4B F1 */	bl PSMTXMultVec
/* 80B82180  38 7F 15 78 */	addi r3, r31, 0x1578
/* 80B82184  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B82188  7C 65 1B 78 */	mr r5, r3
/* 80B8218C  4B 7C 4F 29 */	bl PSVECSubtract
/* 80B82190  38 61 00 10 */	addi r3, r1, 0x10
/* 80B82194  38 9F 15 78 */	addi r4, r31, 0x1578
/* 80B82198  4B 6E 4D 5D */	bl normalize__4cXyzFv
/* 80B8219C  38 7F 15 78 */	addi r3, r31, 0x1578
/* 80B821A0  7C 64 1B 78 */	mr r4, r3
/* 80B821A4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80B821A8  4B 7C 4F 31 */	bl PSVECScale
lbl_80B821AC:
/* 80B821AC  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80B821B0  4B 48 AD 5D */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B821B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B821B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B821BC  7C 64 1B 78 */	mr r4, r3
/* 80B821C0  4B 7C 43 F1 */	bl PSMTXInverse
/* 80B821C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B821C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B821CC  38 9F 15 78 */	addi r4, r31, 0x1578
/* 80B821D0  38 BF 15 84 */	addi r5, r31, 0x1584
/* 80B821D4  4B 7C 4B 99 */	bl PSMTXMultVec
/* 80B821D8  38 7F 15 78 */	addi r3, r31, 0x1578
/* 80B821DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B821E0  7C 65 1B 78 */	mr r5, r3
/* 80B821E4  4B 7C 4E AD */	bl PSVECAdd
/* 80B821E8  C0 3F 15 88 */	lfs f1, 0x1588(r31)
/* 80B821EC  C0 1F 15 8C */	lfs f0, 0x158c(r31)
/* 80B821F0  FC 40 00 50 */	fneg f2, f0
/* 80B821F4  4B 6E 54 81 */	bl cM_atan2s__Fff
/* 80B821F8  B0 7F 15 30 */	sth r3, 0x1530(r31)
/* 80B821FC  C0 1F 15 84 */	lfs f0, 0x1584(r31)
/* 80B82200  FC 20 00 50 */	fneg f1, f0
/* 80B82204  C0 1F 15 8C */	lfs f0, 0x158c(r31)
/* 80B82208  FC 40 00 50 */	fneg f2, f0
/* 80B8220C  4B 6E 54 69 */	bl cM_atan2s__Fff
/* 80B82210  B0 7F 15 32 */	sth r3, 0x1532(r31)
/* 80B82214  38 00 00 00 */	li r0, 0
/* 80B82218  B0 1F 15 34 */	sth r0, 0x1534(r31)
/* 80B8221C  4B 48 AA F9 */	bl pop__14mDoMtx_stack_cFv
lbl_80B82220:
/* 80B82220  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B82224  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B82228  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8222C  7C 08 03 A6 */	mtlr r0
/* 80B82230  38 21 00 40 */	addi r1, r1, 0x40
/* 80B82234  4E 80 00 20 */	blr 
