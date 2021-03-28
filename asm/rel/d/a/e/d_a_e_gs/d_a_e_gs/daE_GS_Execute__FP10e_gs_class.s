lbl_806DF874:
/* 806DF874  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806DF878  7C 08 02 A6 */	mflr r0
/* 806DF87C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DF880  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 806DF884  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 806DF888  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 806DF88C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 806DF890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DF894  93 C1 00 08 */	stw r30, 8(r1)
/* 806DF898  7C 7F 1B 78 */	mr r31, r3
/* 806DF89C  3C 60 80 6E */	lis r3, lit_3646@ha
/* 806DF8A0  3B C3 FD F4 */	addi r30, r3, lit_3646@l
/* 806DF8A4  C3 FE 00 10 */	lfs f31, 0x10(r30)
/* 806DF8A8  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DF8AC  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DF8B0  C3 C3 00 14 */	lfs f30, 0x14(r3)
/* 806DF8B4  4B A7 FB 70 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 806DF8B8  2C 03 00 00 */	cmpwi r3, 0
/* 806DF8BC  41 82 00 24 */	beq lbl_806DF8E0
/* 806DF8C0  A8 1F 06 8A */	lha r0, 0x68a(r31)
/* 806DF8C4  2C 00 00 00 */	cmpwi r0, 0
/* 806DF8C8  40 82 00 28 */	bne lbl_806DF8F0
/* 806DF8CC  C3 FE 00 2C */	lfs f31, 0x2c(r30)
/* 806DF8D0  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DF8D4  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DF8D8  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 806DF8DC  48 00 00 14 */	b lbl_806DF8F0
lbl_806DF8E0:
/* 806DF8E0  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DF8E4  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DF8E8  A8 03 00 0C */	lha r0, 0xc(r3)
/* 806DF8EC  B0 1F 06 8A */	sth r0, 0x68a(r31)
lbl_806DF8F0:
/* 806DF8F0  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806DF8F4  FC 20 F8 90 */	fmr f1, f31
/* 806DF8F8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 806DF8FC  FC 60 F0 90 */	fmr f3, f30
/* 806DF900  4B B9 01 3C */	b cLib_addCalc2__FPffff
/* 806DF904  4B 93 89 A4 */	b cDmrNowMidnaTalk__Fv
/* 806DF908  2C 03 00 00 */	cmpwi r3, 0
/* 806DF90C  40 82 00 18 */	bne lbl_806DF924
/* 806DF910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DF914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DF918  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806DF91C  28 00 00 00 */	cmplwi r0, 0
/* 806DF920  41 82 00 0C */	beq lbl_806DF92C
lbl_806DF924:
/* 806DF924  38 60 00 01 */	li r3, 1
/* 806DF928  48 00 00 F8 */	b lbl_806DFA20
lbl_806DF92C:
/* 806DF92C  A8 7F 06 80 */	lha r3, 0x680(r31)
/* 806DF930  38 03 00 01 */	addi r0, r3, 1
/* 806DF934  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 806DF938  38 60 00 00 */	li r3, 0
/* 806DF93C  38 00 00 04 */	li r0, 4
/* 806DF940  7C 09 03 A6 */	mtctr r0
lbl_806DF944:
/* 806DF944  38 A3 06 8A */	addi r5, r3, 0x68a
/* 806DF948  7C 9F 2A AE */	lhax r4, r31, r5
/* 806DF94C  2C 04 00 00 */	cmpwi r4, 0
/* 806DF950  41 82 00 0C */	beq lbl_806DF95C
/* 806DF954  38 04 FF FF */	addi r0, r4, -1
/* 806DF958  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_806DF95C:
/* 806DF95C  38 63 00 02 */	addi r3, r3, 2
/* 806DF960  42 00 FF E4 */	bdnz lbl_806DF944
/* 806DF964  A8 7F 06 92 */	lha r3, 0x692(r31)
/* 806DF968  2C 03 00 00 */	cmpwi r3, 0
/* 806DF96C  41 82 00 0C */	beq lbl_806DF978
/* 806DF970  38 03 FF FF */	addi r0, r3, -1
/* 806DF974  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_806DF978:
/* 806DF978  7F E3 FB 78 */	mr r3, r31
/* 806DF97C  4B FF FE 51 */	bl action__FP10e_gs_class
/* 806DF980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806DF984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806DF988  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806DF98C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806DF990  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806DF994  4B C6 6F 54 */	b PSMTXTrans
/* 806DF998  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806DF99C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806DF9A0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806DF9A4  4B 92 CA 90 */	b mDoMtx_YrotM__FPA4_fs
/* 806DF9A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806DF9AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806DF9B0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806DF9B4  4B 92 C9 E8 */	b mDoMtx_XrotM__FPA4_fs
/* 806DF9B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806DF9BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806DF9C0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806DF9C4  4B 92 CB 08 */	b mDoMtx_ZrotM__FPA4_fs
/* 806DF9C8  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806DF9CC  38 63 FE A8 */	addi r3, r3, l_HIO@l
/* 806DF9D0  C0 23 00 08 */	lfs f1, 8(r3)
/* 806DF9D4  FC 40 08 90 */	fmr f2, f1
/* 806DF9D8  FC 60 08 90 */	fmr f3, f1
/* 806DF9DC  4B 92 D4 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 806DF9E0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DF9E4  80 83 00 04 */	lwz r4, 4(r3)
/* 806DF9E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806DF9EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806DF9F0  38 84 00 24 */	addi r4, r4, 0x24
/* 806DF9F4  4B C6 6A BC */	b PSMTXCopy
/* 806DF9F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DF9FC  7C 03 07 74 */	extsb r3, r0
/* 806DFA00  4B 94 D6 6C */	b dComIfGp_getReverb__Fi
/* 806DFA04  7C 65 1B 78 */	mr r5, r3
/* 806DFA08  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFA0C  38 80 00 00 */	li r4, 0
/* 806DFA10  4B 93 16 A0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806DFA14  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFA18  4B 93 17 D4 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806DFA1C  38 60 00 01 */	li r3, 1
lbl_806DFA20:
/* 806DFA20  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 806DFA24  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 806DFA28  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 806DFA2C  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 806DFA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DFA34  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DFA38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806DFA3C  7C 08 03 A6 */	mtlr r0
/* 806DFA40  38 21 00 30 */	addi r1, r1, 0x30
/* 806DFA44  4E 80 00 20 */	blr 
