lbl_80BD2528:
/* 80BD2528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD252C  7C 08 02 A6 */	mflr r0
/* 80BD2530  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD2534  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD2538  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BD253C  7C 7E 1B 78 */	mr r30, r3
/* 80BD2540  3C 60 80 BD */	lis r3, ccCylSrc@ha /* 0x80BD30C0@ha */
/* 80BD2544  3B E3 30 C0 */	addi r31, r3, ccCylSrc@l /* 0x80BD30C0@l */
/* 80BD2548  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BD254C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BD2550  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BD2554  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80BD2558  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD255C  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80BD2560  4B 43 A8 05 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD2564  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BD2568  4B 43 A9 DD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD256C  38 61 00 08 */	addi r3, r1, 8
/* 80BD2570  4B 43 A8 65 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80BD2574  88 1E 05 AA */	lbz r0, 0x5aa(r30)
/* 80BD2578  28 00 00 01 */	cmplwi r0, 1
/* 80BD257C  40 82 00 14 */	bne lbl_80BD2590
/* 80BD2580  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BD2584  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80BD2588  FC 60 08 90 */	fmr f3, f1
/* 80BD258C  4B 43 A8 11 */	bl transM__14mDoMtx_stack_cFfff
lbl_80BD2590:
/* 80BD2590  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80BD2594  4B 43 A9 B1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD2598  88 1E 05 AA */	lbz r0, 0x5aa(r30)
/* 80BD259C  28 00 00 01 */	cmplwi r0, 1
/* 80BD25A0  40 82 00 14 */	bne lbl_80BD25B4
/* 80BD25A4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BD25A8  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80BD25AC  FC 60 08 90 */	fmr f3, f1
/* 80BD25B0  4B 43 A7 ED */	bl transM__14mDoMtx_stack_cFfff
lbl_80BD25B4:
/* 80BD25B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD25B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD25BC  80 9E 06 78 */	lwz r4, 0x678(r30)
/* 80BD25C0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD25C4  4B 77 3E ED */	bl PSMTXCopy
/* 80BD25C8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BD25CC  4B 43 A7 99 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD25D0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BD25D4  4B 43 A9 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BD25D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD25DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD25E0  A8 9E 06 46 */	lha r4, 0x646(r30)
/* 80BD25E4  4B 43 9E 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BD25E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD25EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD25F0  80 9E 06 74 */	lwz r4, 0x674(r30)
/* 80BD25F4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BD25F8  4B 77 3E B9 */	bl PSMTXCopy
/* 80BD25FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD2600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD2604  38 9E 05 6C */	addi r4, r30, 0x56c
/* 80BD2608  4B 77 3E A9 */	bl PSMTXCopy
/* 80BD260C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD2610  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BD2614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD2618  7C 08 03 A6 */	mtlr r0
/* 80BD261C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD2620  4E 80 00 20 */	blr 
