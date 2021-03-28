lbl_804660F4:
/* 804660F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804660F8  7C 08 02 A6 */	mflr r0
/* 804660FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80466100  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80466104  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80466108  7C 7E 1B 78 */	mr r30, r3
/* 8046610C  7C 9F 23 78 */	mr r31, r4
/* 80466110  88 03 00 08 */	lbz r0, 8(r3)
/* 80466114  28 00 00 00 */	cmplwi r0, 0
/* 80466118  41 82 00 80 */	beq lbl_80466198
/* 8046611C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80466120  28 00 00 00 */	cmplwi r0, 0
/* 80466124  40 82 00 08 */	bne lbl_8046612C
/* 80466128  48 00 00 70 */	b lbl_80466198
lbl_8046612C:
/* 8046612C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80466130  D0 21 00 08 */	stfs f1, 8(r1)
/* 80466134  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80466138  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8046613C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80466140  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80466144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80466148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046614C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80466150  EC 42 00 2A */	fadds f2, f2, f0
/* 80466154  4B EE 07 94 */	b PSMTXTrans
/* 80466158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8046615C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80466160  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80466164  4B BA 62 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80466168  88 1E 00 09 */	lbz r0, 9(r30)
/* 8046616C  28 00 00 01 */	cmplwi r0, 1
/* 80466170  40 82 00 14 */	bne lbl_80466184
/* 80466174  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80466178  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046617C  38 80 7F FF */	li r4, 0x7fff
/* 80466180  4B BA 62 B4 */	b mDoMtx_YrotM__FPA4_fs
lbl_80466184:
/* 80466184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80466188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8046618C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80466190  38 84 00 24 */	addi r4, r4, 0x24
/* 80466194  4B EE 03 1C */	b PSMTXCopy
lbl_80466198:
/* 80466198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046619C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804661A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804661A4  7C 08 03 A6 */	mtlr r0
/* 804661A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804661AC  4E 80 00 20 */	blr 
