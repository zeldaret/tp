lbl_80BD5254:
/* 80BD5254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5258  7C 08 02 A6 */	mflr r0
/* 80BD525C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD5264  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD5268  7C 7F 1B 78 */	mr r31, r3
/* 80BD526C  3C 60 80 BD */	lis r3, lit_3672@ha /* 0x80BD59FC@ha */
/* 80BD5270  3B C3 59 FC */	addi r30, r3, lit_3672@l /* 0x80BD59FC@l */
/* 80BD5274  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BD5278  4B 43 7A ED */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD527C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80BD5280  C0 5F 05 DC */	lfs f2, 0x5dc(r31)
/* 80BD5284  FC 60 08 90 */	fmr f3, f1
/* 80BD5288  4B 43 7B 15 */	bl transM__14mDoMtx_stack_cFfff
/* 80BD528C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD5290  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD5294  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BD5298  A8 1F 05 D6 */	lha r0, 0x5d6(r31)
/* 80BD529C  7C 04 00 50 */	subf r0, r4, r0
/* 80BD52A0  7C 04 07 34 */	extsh r4, r0
/* 80BD52A4  4B 43 71 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD52A8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80BD52AC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80BD52B0  FC 60 08 90 */	fmr f3, f1
/* 80BD52B4  4B 43 7A E9 */	bl transM__14mDoMtx_stack_cFfff
/* 80BD52B8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BD52BC  4B 43 7C 89 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD52C0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80BD52C4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80BD52C8  FC 60 08 90 */	fmr f3, f1
/* 80BD52CC  4B 43 7A D1 */	bl transM__14mDoMtx_stack_cFfff
/* 80BD52D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD52D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD52D8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BD52DC  A8 1F 05 D6 */	lha r0, 0x5d6(r31)
/* 80BD52E0  7C 04 00 50 */	subf r0, r4, r0
/* 80BD52E4  7C 00 00 D0 */	neg r0, r0
/* 80BD52E8  7C 04 07 34 */	extsh r4, r0
/* 80BD52EC  4B 43 71 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD52F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD52F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD52F8  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BD52FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD5300  4B 77 11 B1 */	bl PSMTXCopy
/* 80BD5304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD5308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD530C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BD5310  4B 77 11 A1 */	bl PSMTXCopy
/* 80BD5314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD5318  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD531C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5320  7C 08 03 A6 */	mtlr r0
/* 80BD5324  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5328  4E 80 00 20 */	blr 
