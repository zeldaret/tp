lbl_806C88C8:
/* 806C88C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806C88CC  7C 08 02 A6 */	mflr r0
/* 806C88D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 806C88D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806C88D8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806C88DC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 806C88E0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 806C88E4  39 61 00 30 */	addi r11, r1, 0x30
/* 806C88E8  4B C9 98 F4 */	b _savegpr_29
/* 806C88EC  7C 7D 1B 78 */	mr r29, r3
/* 806C88F0  7C 9E 23 78 */	mr r30, r4
/* 806C88F4  FF C0 08 90 */	fmr f30, f1
/* 806C88F8  7D 1F 43 78 */	mr r31, r8
/* 806C88FC  FF E0 10 90 */	fmr f31, f2
/* 806C8900  28 06 00 00 */	cmplwi r6, 0
/* 806C8904  41 82 00 18 */	beq lbl_806C891C
/* 806C8908  38 61 00 08 */	addi r3, r1, 8
/* 806C890C  7C A4 2B 78 */	mr r4, r5
/* 806C8910  7C E5 3B 78 */	mr r5, r7
/* 806C8914  4B BA 84 AC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806C8918  48 00 00 1C */	b lbl_806C8934
lbl_806C891C:
/* 806C891C  C0 05 00 00 */	lfs f0, 0(r5)
/* 806C8920  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C8924  C0 05 00 04 */	lfs f0, 4(r5)
/* 806C8928  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C892C  C0 05 00 08 */	lfs f0, 8(r5)
/* 806C8930  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_806C8934:
/* 806C8934  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C8938  38 81 00 08 */	addi r4, r1, 8
/* 806C893C  4B BA 82 C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806C8940  7C 64 07 34 */	extsh r4, r3
/* 806C8944  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806C8948  7F E5 FB 78 */	mr r5, r31
/* 806C894C  38 C0 08 00 */	li r6, 0x800
/* 806C8950  38 E0 01 00 */	li r7, 0x100
/* 806C8954  4B BA 7B EC */	b cLib_addCalcAngleS__FPsssss
/* 806C8958  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806C895C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806C8960  7F C3 F3 78 */	mr r3, r30
/* 806C8964  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C8968  38 A1 00 08 */	addi r5, r1, 8
/* 806C896C  3C C0 80 6D */	lis r6, lit_4304@ha
/* 806C8970  C0 26 D0 80 */	lfs f1, lit_4304@l(r6)
/* 806C8974  FC 40 F0 90 */	fmr f2, f30
/* 806C8978  3C C0 80 6D */	lis r6, lit_3906@ha
/* 806C897C  C0 66 D0 08 */	lfs f3, lit_3906@l(r6)
/* 806C8980  FC 80 F8 90 */	fmr f4, f31
/* 806C8984  4B FF FB 95 */	bl setAddCalcSpeed__8daE_GE_cFR4cXyzRC4cXyzffff
/* 806C8988  7F A3 EB 78 */	mr r3, r29
/* 806C898C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C8990  38 A1 00 08 */	addi r5, r1, 8
/* 806C8994  4B B9 E1 A0 */	b __mi__4cXyzCFRC3Vec
/* 806C8998  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806C899C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806C89A0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 806C89A4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 806C89A8  39 61 00 30 */	addi r11, r1, 0x30
/* 806C89AC  4B C9 98 7C */	b _restgpr_29
/* 806C89B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C89B4  7C 08 03 A6 */	mtlr r0
/* 806C89B8  38 21 00 50 */	addi r1, r1, 0x50
/* 806C89BC  4E 80 00 20 */	blr 
