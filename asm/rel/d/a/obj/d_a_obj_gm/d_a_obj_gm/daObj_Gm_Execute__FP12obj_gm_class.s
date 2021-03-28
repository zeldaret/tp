lbl_80BFC8A8:
/* 80BFC8A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BFC8AC  7C 08 02 A6 */	mflr r0
/* 80BFC8B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFC8B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BFC8B8  7C 7F 1B 78 */	mr r31, r3
/* 80BFC8BC  80 03 06 50 */	lwz r0, 0x650(r3)
/* 80BFC8C0  28 00 00 00 */	cmplwi r0, 0
/* 80BFC8C4  40 82 00 44 */	bne lbl_80BFC908
/* 80BFC8C8  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFC8CC  28 00 00 05 */	cmplwi r0, 5
/* 80BFC8D0  40 82 00 1C */	bne lbl_80BFC8EC
/* 80BFC8D4  3C 60 80 C0 */	lis r3, s_tbox_sub__FPvPv@ha
/* 80BFC8D8  38 63 C7 D0 */	addi r3, r3, s_tbox_sub__FPvPv@l
/* 80BFC8DC  7F E4 FB 78 */	mr r4, r31
/* 80BFC8E0  4B 42 4A 58 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80BFC8E4  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80BFC8E8  48 00 00 20 */	b lbl_80BFC908
lbl_80BFC8EC:
/* 80BFC8EC  28 00 00 06 */	cmplwi r0, 6
/* 80BFC8F0  40 82 00 18 */	bne lbl_80BFC908
/* 80BFC8F4  3C 60 80 C0 */	lis r3, s_so_sub__FPvPv@ha
/* 80BFC8F8  38 63 C8 5C */	addi r3, r3, s_so_sub__FPvPv@l
/* 80BFC8FC  7F E4 FB 78 */	mr r4, r31
/* 80BFC900  4B 42 4A 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80BFC904  90 7F 06 50 */	stw r3, 0x650(r31)
lbl_80BFC908:
/* 80BFC908  A8 7F 06 08 */	lha r3, 0x608(r31)
/* 80BFC90C  38 03 00 01 */	addi r0, r3, 1
/* 80BFC910  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80BFC914  A8 7F 09 48 */	lha r3, 0x948(r31)
/* 80BFC918  2C 03 00 00 */	cmpwi r3, 0
/* 80BFC91C  41 82 00 0C */	beq lbl_80BFC928
/* 80BFC920  38 03 FF FF */	addi r0, r3, -1
/* 80BFC924  B0 1F 09 48 */	sth r0, 0x948(r31)
lbl_80BFC928:
/* 80BFC928  38 60 00 00 */	li r3, 0
/* 80BFC92C  38 00 00 02 */	li r0, 2
/* 80BFC930  7C 09 03 A6 */	mtctr r0
lbl_80BFC934:
/* 80BFC934  38 A3 06 0E */	addi r5, r3, 0x60e
/* 80BFC938  7C 9F 2A AE */	lhax r4, r31, r5
/* 80BFC93C  2C 04 00 00 */	cmpwi r4, 0
/* 80BFC940  41 82 00 0C */	beq lbl_80BFC94C
/* 80BFC944  38 04 FF FF */	addi r0, r4, -1
/* 80BFC948  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80BFC94C:
/* 80BFC94C  38 63 00 02 */	addi r3, r3, 2
/* 80BFC950  42 00 FF E4 */	bdnz lbl_80BFC934
/* 80BFC954  7F E3 FB 78 */	mr r3, r31
/* 80BFC958  4B FF FD 0D */	bl action__FP12obj_gm_class
/* 80BFC95C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFC960  7C 03 07 74 */	extsb r3, r0
/* 80BFC964  4B 43 07 08 */	b dComIfGp_getReverb__Fi
/* 80BFC968  7C 65 1B 78 */	mr r5, r3
/* 80BFC96C  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFC970  38 80 00 00 */	li r4, 0
/* 80BFC974  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80BFC978  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80BFC97C  7D 89 03 A6 */	mtctr r12
/* 80BFC980  4E 80 04 21 */	bctrl 
/* 80BFC984  88 1F 07 2C */	lbz r0, 0x72c(r31)
/* 80BFC988  7C 00 07 75 */	extsb. r0, r0
/* 80BFC98C  41 82 01 54 */	beq lbl_80BFCAE0
/* 80BFC990  88 9F 05 72 */	lbz r4, 0x572(r31)
/* 80BFC994  28 04 00 00 */	cmplwi r4, 0
/* 80BFC998  41 82 00 18 */	beq lbl_80BFC9B0
/* 80BFC99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFC9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFC9A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFC9A8  7C 05 07 74 */	extsb r5, r0
/* 80BFC9AC  4B 43 88 54 */	b onSwitch__10dSv_info_cFii
lbl_80BFC9B0:
/* 80BFC9B0  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BFC9B4  28 00 00 00 */	cmplwi r0, 0
/* 80BFC9B8  40 82 00 70 */	bne lbl_80BFCA28
/* 80BFC9BC  7F E3 FB 78 */	mr r3, r31
/* 80BFC9C0  4B 43 A8 E0 */	b make_eff_break_gm_kotubo__5daObjFP10fopAc_ac_c
/* 80BFC9C4  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040021@ha */
/* 80BFC9C8  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00040021@l */
/* 80BFC9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFC9D0  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFC9D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BFC9D8  38 A0 00 00 */	li r5, 0
/* 80BFC9DC  38 C0 FF FF */	li r6, -1
/* 80BFC9E0  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80BFC9E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BFC9E8  7D 89 03 A6 */	mtctr r12
/* 80BFC9EC  4E 80 04 21 */	bctrl 
/* 80BFC9F0  81 3F 00 B0 */	lwz r9, 0xb0(r31)
/* 80BFC9F4  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 80BFC9F8  28 00 00 20 */	cmplwi r0, 0x20
/* 80BFC9FC  40 82 00 A8 */	bne lbl_80BFCAA4
/* 80BFCA00  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BFCA04  38 80 00 20 */	li r4, 0x20
/* 80BFCA08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFCA0C  7C 05 07 74 */	extsb r5, r0
/* 80BFCA10  38 C0 00 00 */	li r6, 0
/* 80BFCA14  38 E0 00 00 */	li r7, 0
/* 80BFCA18  39 00 00 00 */	li r8, 0
/* 80BFCA1C  55 29 46 3E */	srwi r9, r9, 0x18
/* 80BFCA20  4B 41 F7 54 */	b fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii
/* 80BFCA24  48 00 00 80 */	b lbl_80BFCAA4
lbl_80BFCA28:
/* 80BFCA28  28 00 00 01 */	cmplwi r0, 1
/* 80BFCA2C  40 82 00 3C */	bne lbl_80BFCA68
/* 80BFCA30  7F E3 FB 78 */	mr r3, r31
/* 80BFCA34  4B 43 A8 FC */	b make_eff_break_gm_ootubo__5daObjFP10fopAc_ac_c
/* 80BFCA38  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040022@ha */
/* 80BFCA3C  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00040022@l */
/* 80BFCA40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BFCA44  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFCA48  38 81 00 10 */	addi r4, r1, 0x10
/* 80BFCA4C  38 A0 00 00 */	li r5, 0
/* 80BFCA50  38 C0 FF FF */	li r6, -1
/* 80BFCA54  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80BFCA58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BFCA5C  7D 89 03 A6 */	mtctr r12
/* 80BFCA60  4E 80 04 21 */	bctrl 
/* 80BFCA64  48 00 00 40 */	b lbl_80BFCAA4
lbl_80BFCA68:
/* 80BFCA68  7F E3 FB 78 */	mr r3, r31
/* 80BFCA6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BFCA70  3C A0 80 C0 */	lis r5, lit_4291@ha
/* 80BFCA74  C0 25 D3 AC */	lfs f1, lit_4291@l(r5)
/* 80BFCA78  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80BFCA7C  3C A0 80 C0 */	lis r5, obj_size@ha
/* 80BFCA80  38 A5 D3 E8 */	addi r5, r5, obj_size@l
/* 80BFCA84  7C 05 04 2E */	lfsx f0, r5, r0
/* 80BFCA88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFCA8C  FC 00 00 1E */	fctiwz f0, f0
/* 80BFCA90  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BFCA94  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80BFCA98  38 C0 00 00 */	li r6, 0
/* 80BFCA9C  88 FF 05 64 */	lbz r7, 0x564(r31)
/* 80BFCAA0  4B 42 00 38 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_80BFCAA4:
/* 80BFCAA4  38 00 00 00 */	li r0, 0
/* 80BFCAA8  90 01 00 08 */	stw r0, 8(r1)
/* 80BFCAAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BFCAB0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BFCAB4  88 9F 05 65 */	lbz r4, 0x565(r31)
/* 80BFCAB8  38 A0 FF FF */	li r5, -1
/* 80BFCABC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFCAC0  7C 06 07 74 */	extsb r6, r0
/* 80BFCAC4  38 FF 04 DC */	addi r7, r31, 0x4dc
/* 80BFCAC8  39 00 00 00 */	li r8, 0
/* 80BFCACC  39 20 00 00 */	li r9, 0
/* 80BFCAD0  39 40 00 00 */	li r10, 0
/* 80BFCAD4  4B 41 F4 90 */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 80BFCAD8  7F E3 FB 78 */	mr r3, r31
/* 80BFCADC  4B 41 D1 A0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80BFCAE0:
/* 80BFCAE0  38 60 00 01 */	li r3, 1
/* 80BFCAE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BFCAE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFCAEC  7C 08 03 A6 */	mtlr r0
/* 80BFCAF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BFCAF4  4E 80 00 20 */	blr 
