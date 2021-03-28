lbl_80ACD458:
/* 80ACD458  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACD45C  7C 08 02 A6 */	mflr r0
/* 80ACD460  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACD464  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80ACD468  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80ACD46C  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACD470  4B 89 4D 6C */	b _savegpr_29
/* 80ACD474  7C 7D 1B 78 */	mr r29, r3
/* 80ACD478  7C BE 2B 78 */	mr r30, r5
/* 80ACD47C  FF E0 08 90 */	fmr f31, f1
/* 80ACD480  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha
/* 80ACD484  3B E3 FD F0 */	addi r31, r3, m__19daNpc_Seira_Param_c@l
/* 80ACD488  38 E0 00 00 */	li r7, 0
/* 80ACD48C  80 1D 0F 7C */	lwz r0, 0xf7c(r29)
/* 80ACD490  28 00 00 00 */	cmplwi r0, 0
/* 80ACD494  41 82 00 80 */	beq lbl_80ACD514
/* 80ACD498  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80ACD49C  40 82 00 14 */	bne lbl_80ACD4B0
/* 80ACD4A0  88 1D 10 C1 */	lbz r0, 0x10c1(r29)
/* 80ACD4A4  30 00 FF FF */	addic r0, r0, -1
/* 80ACD4A8  7C 60 01 10 */	subfe r3, r0, r0
/* 80ACD4AC  38 83 00 1B */	addi r4, r3, 0x1b
lbl_80ACD4B0:
/* 80ACD4B0  54 80 18 38 */	slwi r0, r4, 3
/* 80ACD4B4  3C 60 80 AD */	lis r3, bottlAnmData@ha
/* 80ACD4B8  38 83 07 84 */	addi r4, r3, bottlAnmData@l
/* 80ACD4BC  7C A4 00 2E */	lwzx r5, r4, r0
/* 80ACD4C0  2C 05 00 00 */	cmpwi r5, 0
/* 80ACD4C4  40 81 00 28 */	ble lbl_80ACD4EC
/* 80ACD4C8  7F A3 EB 78 */	mr r3, r29
/* 80ACD4CC  7C 84 02 14 */	add r4, r4, r0
/* 80ACD4D0  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACD4D4  54 00 10 3A */	slwi r0, r0, 2
/* 80ACD4D8  3C 80 80 AD */	lis r4, l_resNameList@ha
/* 80ACD4DC  38 84 FF E0 */	addi r4, r4, l_resNameList@l
/* 80ACD4E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACD4E4  4B 67 AB B0 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80ACD4E8  7C 67 1B 78 */	mr r7, r3
lbl_80ACD4EC:
/* 80ACD4EC  28 07 00 00 */	cmplwi r7, 0
/* 80ACD4F0  41 82 00 24 */	beq lbl_80ACD514
/* 80ACD4F4  80 7D 0F 7C */	lwz r3, 0xf7c(r29)
/* 80ACD4F8  7C E4 3B 78 */	mr r4, r7
/* 80ACD4FC  7F C5 F3 78 */	mr r5, r30
/* 80ACD500  FC 20 F8 90 */	fmr f1, f31
/* 80ACD504  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80ACD508  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80ACD50C  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80ACD510  4B 54 39 60 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80ACD514:
/* 80ACD514  38 60 00 01 */	li r3, 1
/* 80ACD518  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80ACD51C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80ACD520  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACD524  4B 89 4D 04 */	b _restgpr_29
/* 80ACD528  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACD52C  7C 08 03 A6 */	mtlr r0
/* 80ACD530  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACD534  4E 80 00 20 */	blr 
