lbl_80C6D7E0:
/* 80C6D7E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C6D7E4  7C 08 02 A6 */	mflr r0
/* 80C6D7E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C6D7EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C6D7F0  4B 6F 49 CD */	bl _savegpr_21
/* 80C6D7F4  7C 7F 1B 78 */	mr r31, r3
/* 80C6D7F8  3A A0 00 00 */	li r21, 0
/* 80C6D7FC  3B C0 00 00 */	li r30, 0
/* 80C6D800  3B A0 00 00 */	li r29, 0
/* 80C6D804  3B 80 00 00 */	li r28, 0
/* 80C6D808  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D80C  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D810  3C 60 80 C7 */	lis r3, l_shaft_vec@ha /* 0x80C6E9F8@ha */
/* 80C6D814  3A E3 E9 F8 */	addi r23, r3, l_shaft_vec@l /* 0x80C6E9F8@l */
/* 80C6D818  7E D8 B3 78 */	mr r24, r22
/* 80C6D81C  7E D9 B3 78 */	mr r25, r22
/* 80C6D820  3C 60 80 C7 */	lis r3, l_shaft_roty@ha /* 0x80C6EA28@ha */
/* 80C6D824  3B 43 EA 28 */	addi r26, r3, l_shaft_roty@l /* 0x80C6EA28@l */
/* 80C6D828  7E DB B3 78 */	mr r27, r22
lbl_80C6D82C:
/* 80C6D82C  7E C3 B3 78 */	mr r3, r22
/* 80C6D830  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6D834  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6D838  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6D83C  4B 6D 90 AD */	bl PSMTXTrans
/* 80C6D840  7E C3 B3 78 */	mr r3, r22
/* 80C6D844  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C6D848  4B 39 EB ED */	bl mDoMtx_YrotM__FPA4_fs
/* 80C6D84C  7C 77 E2 14 */	add r3, r23, r28
/* 80C6D850  C0 23 00 00 */	lfs f1, 0(r3)
/* 80C6D854  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C6D858  C0 63 00 08 */	lfs f3, 8(r3)
/* 80C6D85C  4B 39 F5 41 */	bl transM__14mDoMtx_stack_cFfff
/* 80C6D860  7F 03 C3 78 */	mr r3, r24
/* 80C6D864  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 80C6D868  4B 39 EC 65 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C6D86C  7F 23 CB 78 */	mr r3, r25
/* 80C6D870  7C 9A EA AE */	lhax r4, r26, r29
/* 80C6D874  4B 39 EB C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C6D878  7F 63 DB 78 */	mr r3, r27
/* 80C6D87C  38 1E 06 0C */	addi r0, r30, 0x60c
/* 80C6D880  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80C6D884  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6D888  4B 6D 8C 29 */	bl PSMTXCopy
/* 80C6D88C  3A B5 00 01 */	addi r21, r21, 1
/* 80C6D890  2C 15 00 04 */	cmpwi r21, 4
/* 80C6D894  3B DE 00 04 */	addi r30, r30, 4
/* 80C6D898  3B BD 00 02 */	addi r29, r29, 2
/* 80C6D89C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80C6D8A0  41 80 FF 8C */	blt lbl_80C6D82C
/* 80C6D8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D8AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6D8B0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6D8B4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6D8B8  4B 6D 90 31 */	bl PSMTXTrans
/* 80C6D8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D8C4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C6D8C8  4B 39 EB 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C6D8CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D8D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D8D4  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80C6D8D8  4B 6D 8B D9 */	bl PSMTXCopy
/* 80C6D8DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D8E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D8E4  A8 9F 06 1C */	lha r4, 0x61c(r31)
/* 80C6D8E8  4B 39 EB E5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C6D8EC  3C 60 80 C7 */	lis r3, lit_3699@ha /* 0x80C6E9A0@ha */
/* 80C6D8F0  C0 23 E9 A0 */	lfs f1, lit_3699@l(r3)  /* 0x80C6E9A0@l */
/* 80C6D8F4  3C 60 80 C7 */	lis r3, lit_3700@ha /* 0x80C6E9A4@ha */
/* 80C6D8F8  C0 43 E9 A4 */	lfs f2, lit_3700@l(r3)  /* 0x80C6E9A4@l */
/* 80C6D8FC  FC 60 08 90 */	fmr f3, f1
/* 80C6D900  4B 39 F4 9D */	bl transM__14mDoMtx_stack_cFfff
/* 80C6D904  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D908  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D90C  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80C6D910  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80C6D914  38 BF 0C 94 */	addi r5, r31, 0xc94
/* 80C6D918  4B 6D 94 55 */	bl PSMTXMultVec
/* 80C6D91C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D924  C0 3F 0C 94 */	lfs f1, 0xc94(r31)
/* 80C6D928  C0 5F 0C 98 */	lfs f2, 0xc98(r31)
/* 80C6D92C  C0 7F 0C 9C */	lfs f3, 0xc9c(r31)
/* 80C6D930  4B 6D 8F B9 */	bl PSMTXTrans
/* 80C6D934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D93C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C6D940  4B 39 EA F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C6D944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D94C  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C6D950  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6D954  4B 6D 8B 5D */	bl PSMTXCopy
/* 80C6D958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6D95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C6D960  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C6D964  4B 6D 8B 4D */	bl PSMTXCopy
/* 80C6D968  39 61 00 40 */	addi r11, r1, 0x40
/* 80C6D96C  4B 6F 48 9D */	bl _restgpr_21
/* 80C6D970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C6D974  7C 08 03 A6 */	mtlr r0
/* 80C6D978  38 21 00 40 */	addi r1, r1, 0x40
/* 80C6D97C  4E 80 00 20 */	blr 
