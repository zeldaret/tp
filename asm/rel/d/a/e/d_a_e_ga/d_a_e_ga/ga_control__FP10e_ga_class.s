lbl_804FB5C0:
/* 804FB5C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB5C4  7C 08 02 A6 */	mflr r0
/* 804FB5C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB5CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804FB5D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804FB5D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB5D8  4B E6 6C 00 */	b _savegpr_28
/* 804FB5DC  7C 7C 1B 78 */	mr r28, r3
/* 804FB5E0  3C 60 80 50 */	lis r3, lit_3646@ha
/* 804FB5E4  3B E3 BB 90 */	addi r31, r3, lit_3646@l
/* 804FB5E8  3B DC 05 74 */	addi r30, r28, 0x574
/* 804FB5EC  88 1C 05 71 */	lbz r0, 0x571(r28)
/* 804FB5F0  28 00 00 00 */	cmplwi r0, 0
/* 804FB5F4  40 82 00 0C */	bne lbl_804FB600
/* 804FB5F8  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 804FB5FC  48 00 00 08 */	b lbl_804FB604
lbl_804FB600:
/* 804FB600  C3 FF 00 2C */	lfs f31, 0x2c(r31)
lbl_804FB604:
/* 804FB604  3B A0 00 00 */	li r29, 0
/* 804FB608  48 00 00 C4 */	b lbl_804FB6CC
lbl_804FB60C:
/* 804FB60C  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 804FB610  7C 00 07 75 */	extsb. r0, r0
/* 804FB614  41 82 00 B0 */	beq lbl_804FB6C4
/* 804FB618  88 7E 00 46 */	lbz r3, 0x46(r30)
/* 804FB61C  28 03 00 00 */	cmplwi r3, 0
/* 804FB620  41 82 00 0C */	beq lbl_804FB62C
/* 804FB624  38 03 FF FF */	addi r0, r3, -1
/* 804FB628  98 1E 00 46 */	stb r0, 0x46(r30)
lbl_804FB62C:
/* 804FB62C  88 1C 05 71 */	lbz r0, 0x571(r28)
/* 804FB630  28 00 00 00 */	cmplwi r0, 0
/* 804FB634  40 82 00 14 */	bne lbl_804FB648
/* 804FB638  7F 83 E3 78 */	mr r3, r28
/* 804FB63C  7F C4 F3 78 */	mr r4, r30
/* 804FB640  4B FF FB 71 */	bl ga_fly__FP10e_ga_classP4ga_s
/* 804FB644  48 00 00 10 */	b lbl_804FB654
lbl_804FB648:
/* 804FB648  7F 83 E3 78 */	mr r3, r28
/* 804FB64C  7F C4 F3 78 */	mr r4, r30
/* 804FB650  4B FF FD 59 */	bl bt_fly__FP10e_ga_classP4ga_s
lbl_804FB654:
/* 804FB654  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FB658  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FB65C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804FB660  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FB664  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 804FB668  4B E4 B2 80 */	b PSMTXTrans
/* 804FB66C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FB670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FB674  A8 9E 00 2A */	lha r4, 0x2a(r30)
/* 804FB678  4B B1 0D BC */	b mDoMtx_YrotM__FPA4_fs
/* 804FB67C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FB680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FB684  A8 9E 00 28 */	lha r4, 0x28(r30)
/* 804FB688  4B B1 0D 14 */	b mDoMtx_XrotM__FPA4_fs
/* 804FB68C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 804FB690  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804FB694  EC 41 00 32 */	fmuls f2, f1, f0
/* 804FB698  FC 60 08 90 */	fmr f3, f1
/* 804FB69C  4B B1 17 9C */	b scaleM__14mDoMtx_stack_cFfff
/* 804FB6A0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804FB6A4  FC 40 F8 90 */	fmr f2, f31
/* 804FB6A8  FC 60 08 90 */	fmr f3, f1
/* 804FB6AC  4B B1 16 F0 */	b transM__14mDoMtx_stack_cFfff
/* 804FB6B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FB6B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FB6B8  80 9E 00 00 */	lwz r4, 0(r30)
/* 804FB6BC  38 84 00 24 */	addi r4, r4, 0x24
/* 804FB6C0  4B E4 AD F0 */	b PSMTXCopy
lbl_804FB6C4:
/* 804FB6C4  3B BD 00 01 */	addi r29, r29, 1
/* 804FB6C8  3B DE 00 48 */	addi r30, r30, 0x48
lbl_804FB6CC:
/* 804FB6CC  80 1C 4D 74 */	lwz r0, 0x4d74(r28)
/* 804FB6D0  7C 1D 00 00 */	cmpw r29, r0
/* 804FB6D4  41 80 FF 38 */	blt lbl_804FB60C
/* 804FB6D8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804FB6DC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804FB6E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FB6E4  4B E6 6B 40 */	b _restgpr_28
/* 804FB6E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FB6EC  7C 08 03 A6 */	mtlr r0
/* 804FB6F0  38 21 00 30 */	addi r1, r1, 0x30
/* 804FB6F4  4E 80 00 20 */	blr 
