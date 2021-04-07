lbl_80BEBFC8:
/* 80BEBFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEBFCC  7C 08 02 A6 */	mflr r0
/* 80BEBFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEBFD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BEBFD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BEBFDC  2C 04 00 00 */	cmpwi r4, 0
/* 80BEBFE0  41 82 00 0C */	beq lbl_80BEBFEC
/* 80BEBFE4  38 60 00 01 */	li r3, 1
/* 80BEBFE8  48 00 00 B8 */	b lbl_80BEC0A0
lbl_80BEBFEC:
/* 80BEBFEC  A3 C3 00 14 */	lhz r30, 0x14(r3)
/* 80BEBFF0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BEBFF4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BEBFF8  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80BEBFFC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80BEC000  38 81 00 08 */	addi r4, r1, 8
/* 80BEC004  7F C5 F3 78 */	mr r5, r30
/* 80BEC008  4B FF F9 7D */	bl getJointAngle__11daObjFlag_cFP5csXyzi
/* 80BEC00C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80BEC010  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BEC014  1F DE 00 30 */	mulli r30, r30, 0x30
/* 80BEC018  7C 60 F2 14 */	add r3, r0, r30
/* 80BEC01C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC020  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC024  4B 75 A4 8D */	bl PSMTXCopy
/* 80BEC028  A8 81 00 08 */	lha r4, 8(r1)
/* 80BEC02C  7C 80 07 35 */	extsh. r0, r4
/* 80BEC030  41 82 00 10 */	beq lbl_80BEC040
/* 80BEC034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC03C  4B 42 03 61 */	bl mDoMtx_XrotM__FPA4_fs
lbl_80BEC040:
/* 80BEC040  A8 81 00 0C */	lha r4, 0xc(r1)
/* 80BEC044  7C 80 07 35 */	extsh. r0, r4
/* 80BEC048  41 82 00 10 */	beq lbl_80BEC058
/* 80BEC04C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC054  4B 42 04 79 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80BEC058:
/* 80BEC058  A8 81 00 0A */	lha r4, 0xa(r1)
/* 80BEC05C  7C 80 07 35 */	extsh. r0, r4
/* 80BEC060  41 82 00 10 */	beq lbl_80BEC070
/* 80BEC064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC068  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC06C  4B 42 03 C9 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80BEC070:
/* 80BEC070  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC074  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC078  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80BEC07C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80BEC080  7C 80 F2 14 */	add r4, r0, r30
/* 80BEC084  4B 75 A4 2D */	bl PSMTXCopy
/* 80BEC088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BEC08C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BEC090  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80BEC094  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80BEC098  4B 75 A4 19 */	bl PSMTXCopy
/* 80BEC09C  38 60 00 01 */	li r3, 1
lbl_80BEC0A0:
/* 80BEC0A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BEC0A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BEC0A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEC0AC  7C 08 03 A6 */	mtlr r0
/* 80BEC0B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEC0B4  4E 80 00 20 */	blr 
