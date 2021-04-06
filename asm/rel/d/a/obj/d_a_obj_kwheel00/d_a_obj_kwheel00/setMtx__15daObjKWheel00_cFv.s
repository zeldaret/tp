lbl_80C4D86C:
/* 80C4D86C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4D870  7C 08 02 A6 */	mflr r0
/* 80C4D874  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4D878  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C4D87C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C4D880  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80C4D884  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80C4D888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D88C  7C 7F 1B 78 */	mr r31, r3
/* 80C4D890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D898  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C4D89C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C4D8A0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C4D8A4  4B 6F 90 45 */	bl PSMTXTrans
/* 80C4D8A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D8AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D8B0  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C4D8B4  4B 3B EB 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4D8B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D8BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D8C0  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 80C4D8C4  4B 3B EC 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C4D8C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D8CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D8D0  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C4D8D4  4B 6F 8B DD */	bl PSMTXCopy
/* 80C4D8D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D8DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D8E0  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80C4D8E4  4B 6F 8B CD */	bl PSMTXCopy
/* 80C4D8E8  A8 1F 06 1C */	lha r0, 0x61c(r31)
/* 80C4D8EC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4D8F0  41 82 00 A4 */	beq lbl_80C4D994
/* 80C4D8F4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C4D8F8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D8FC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D900  4B 6F 8B B1 */	bl PSMTXCopy
/* 80C4D904  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C4D908  2C 00 00 00 */	cmpwi r0, 0
/* 80C4D90C  40 82 00 40 */	bne lbl_80C4D94C
/* 80C4D910  3C 60 80 C5 */	lis r3, lit_3696@ha /* 0x80C4E840@ha */
/* 80C4D914  C0 23 E8 40 */	lfs f1, lit_3696@l(r3)  /* 0x80C4E840@l */
/* 80C4D918  4B 61 A0 75 */	bl cM_rndFX__Ff
/* 80C4D91C  FF E0 08 90 */	fmr f31, f1
/* 80C4D920  3C 60 80 C5 */	lis r3, lit_3696@ha /* 0x80C4E840@ha */
/* 80C4D924  C0 23 E8 40 */	lfs f1, lit_3696@l(r3)  /* 0x80C4E840@l */
/* 80C4D928  4B 61 A0 65 */	bl cM_rndFX__Ff
/* 80C4D92C  FF C0 08 90 */	fmr f30, f1
/* 80C4D930  3C 60 80 C5 */	lis r3, lit_3696@ha /* 0x80C4E840@ha */
/* 80C4D934  C0 23 E8 40 */	lfs f1, lit_3696@l(r3)  /* 0x80C4E840@l */
/* 80C4D938  4B 61 A0 55 */	bl cM_rndFX__Ff
/* 80C4D93C  FC 40 F0 90 */	fmr f2, f30
/* 80C4D940  FC 60 F8 90 */	fmr f3, f31
/* 80C4D944  4B 3B F4 59 */	bl transM__14mDoMtx_stack_cFfff
/* 80C4D948  48 00 00 3C */	b lbl_80C4D984
lbl_80C4D94C:
/* 80C4D94C  3C 60 80 C5 */	lis r3, lit_3697@ha /* 0x80C4E844@ha */
/* 80C4D950  C0 23 E8 44 */	lfs f1, lit_3697@l(r3)  /* 0x80C4E844@l */
/* 80C4D954  4B 61 A0 39 */	bl cM_rndFX__Ff
/* 80C4D958  FF C0 08 90 */	fmr f30, f1
/* 80C4D95C  3C 60 80 C5 */	lis r3, lit_3697@ha /* 0x80C4E844@ha */
/* 80C4D960  C0 23 E8 44 */	lfs f1, lit_3697@l(r3)  /* 0x80C4E844@l */
/* 80C4D964  4B 61 A0 29 */	bl cM_rndFX__Ff
/* 80C4D968  FF E0 08 90 */	fmr f31, f1
/* 80C4D96C  3C 60 80 C5 */	lis r3, lit_3697@ha /* 0x80C4E844@ha */
/* 80C4D970  C0 23 E8 44 */	lfs f1, lit_3697@l(r3)  /* 0x80C4E844@l */
/* 80C4D974  4B 61 A0 19 */	bl cM_rndFX__Ff
/* 80C4D978  FC 40 F8 90 */	fmr f2, f31
/* 80C4D97C  FC 60 F0 90 */	fmr f3, f30
/* 80C4D980  4B 3B F4 1D */	bl transM__14mDoMtx_stack_cFfff
lbl_80C4D984:
/* 80C4D984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4D988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4D98C  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C4D990  4B 6F 8B 21 */	bl PSMTXCopy
lbl_80C4D994:
/* 80C4D994  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C4D998  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C4D99C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80C4D9A0  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80C4D9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D9A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4D9AC  7C 08 03 A6 */	mtlr r0
/* 80C4D9B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4D9B4  4E 80 00 20 */	blr 
