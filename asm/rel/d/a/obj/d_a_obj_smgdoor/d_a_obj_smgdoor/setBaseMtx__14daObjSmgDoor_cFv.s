lbl_80CDBBEC:
/* 80CDBBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDBBF0  7C 08 02 A6 */	mflr r0
/* 80CDBBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDBBF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDBBFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CDBC00  7C 7F 1B 78 */	mr r31, r3
/* 80CDBC04  3C 60 80 CE */	lis r3, lit_3705@ha /* 0x80CDCBF4@ha */
/* 80CDBC08  3B C3 CB F4 */	addi r30, r3, lit_3705@l /* 0x80CDCBF4@l */
/* 80CDBC0C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CDBC10  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CDBC14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CDBC18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CDBC1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDBC20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBC24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBC28  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDBC2C  4B 33 07 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CDBC30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBC34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBC38  38 81 00 08 */	addi r4, r1, 8
/* 80CDBC3C  7C 85 23 78 */	mr r5, r4
/* 80CDBC40  4B 66 B1 2D */	bl PSMTXMultVec
/* 80CDBC44  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDBC48  4B 33 11 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDBC4C  38 61 00 08 */	addi r3, r1, 8
/* 80CDBC50  4B 33 11 85 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CDBC54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBC58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBC5C  A8 9F 05 B0 */	lha r4, 0x5b0(r31)
/* 80CDBC60  4B 33 07 D5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDBC64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBC68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBC6C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDBC70  4B 33 07 C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDBC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBC7C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CDBC80  38 84 00 24 */	addi r4, r4, 0x24
/* 80CDBC84  4B 66 A8 2D */	bl PSMTXCopy
/* 80CDBC88  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CDBC8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CDBC90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CDBC94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CDBC98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDBC9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBCA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBCA4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDBCA8  4B 33 07 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CDBCAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBCB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBCB4  38 81 00 08 */	addi r4, r1, 8
/* 80CDBCB8  7C 85 23 78 */	mr r5, r4
/* 80CDBCBC  4B 66 B0 B1 */	bl PSMTXMultVec
/* 80CDBCC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CDBCC4  4B 33 10 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CDBCC8  38 61 00 08 */	addi r3, r1, 8
/* 80CDBCCC  4B 33 11 09 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CDBCD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBCD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBCD8  A8 9F 05 B2 */	lha r4, 0x5b2(r31)
/* 80CDBCDC  4B 33 07 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDBCE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBCE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBCE8  38 80 7F FF */	li r4, 0x7fff
/* 80CDBCEC  4B 33 07 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDBCF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBCF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBCF8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CDBCFC  4B 33 07 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CDBD00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDBD04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDBD08  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CDBD0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CDBD10  4B 66 A7 A1 */	bl PSMTXCopy
/* 80CDBD14  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80CDBD18  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CDBD1C  4B 66 A7 95 */	bl PSMTXCopy
/* 80CDBD20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDBD24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CDBD28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDBD2C  7C 08 03 A6 */	mtlr r0
/* 80CDBD30  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDBD34  4E 80 00 20 */	blr 
