lbl_80C3C988:
/* 80C3C988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C3C98C  7C 08 02 A6 */	mflr r0
/* 80C3C990  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3C994  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3C998  4B 72 58 41 */	bl _savegpr_28
/* 80C3C99C  7C 7F 1B 78 */	mr r31, r3
/* 80C3C9A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C3C9A4  4B 3D 03 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C3C9A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3C9AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3C9B0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C3C9B4  4B 3C F9 E9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C3C9B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3C9BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3C9C0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C3C9C4  4B 3C FB 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C3C9C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3C9CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3C9D0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C3C9D4  4B 3C FA 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C3C9D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3C9DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3C9E0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C3C9E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3C9E8  4B 70 9A C9 */	bl PSMTXCopy
/* 80C3C9EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3C9F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3C9F4  38 9F 05 84 */	addi r4, r31, 0x584
/* 80C3C9F8  4B 70 9A B9 */	bl PSMTXCopy
/* 80C3C9FC  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 80C3CA00  2C 00 00 00 */	cmpwi r0, 0
/* 80C3CA04  40 82 00 70 */	bne lbl_80C3CA74
/* 80C3CA08  3C 60 80 C4 */	lis r3, lit_3890@ha /* 0x80C3D418@ha */
/* 80C3CA0C  C0 23 D4 18 */	lfs f1, lit_3890@l(r3)  /* 0x80C3D418@l */
/* 80C3CA10  3C 60 80 C4 */	lis r3, M_attr__15daObjKazeNeko_c@ha /* 0x80C3D3DC@ha */
/* 80C3CA14  38 63 D3 DC */	addi r3, r3, M_attr__15daObjKazeNeko_c@l /* 0x80C3D3DC@l */
/* 80C3CA18  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80C3CA1C  FC 60 08 90 */	fmr f3, f1
/* 80C3CA20  4B 3D 03 7D */	bl transM__14mDoMtx_stack_cFfff
/* 80C3CA24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3CA28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C3CA2C  A8 9F 07 48 */	lha r4, 0x748(r31)
/* 80C3CA30  4B 3C FA 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C3CA34  3B 80 00 00 */	li r28, 0
/* 80C3CA38  3B C0 00 00 */	li r30, 0
/* 80C3CA3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C3CA40  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80C3CA44:
/* 80C3CA44  7F A3 EB 78 */	mr r3, r29
/* 80C3CA48  38 80 40 00 */	li r4, 0x4000
/* 80C3CA4C  4B 3C F9 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C3CA50  7F A3 EB 78 */	mr r3, r29
/* 80C3CA54  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C3CA58  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80C3CA5C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3CA60  4B 70 9A 51 */	bl PSMTXCopy
/* 80C3CA64  3B 9C 00 01 */	addi r28, r28, 1
/* 80C3CA68  2C 1C 00 04 */	cmpwi r28, 4
/* 80C3CA6C  3B DE 00 04 */	addi r30, r30, 4
/* 80C3CA70  41 80 FF D4 */	blt lbl_80C3CA44
lbl_80C3CA74:
/* 80C3CA74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3CA78  4B 72 57 AD */	bl _restgpr_28
/* 80C3CA7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3CA80  7C 08 03 A6 */	mtlr r0
/* 80C3CA84  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3CA88  4E 80 00 20 */	blr 
