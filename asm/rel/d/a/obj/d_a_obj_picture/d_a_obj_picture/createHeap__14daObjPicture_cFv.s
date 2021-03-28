lbl_80CAD908:
/* 80CAD908  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CAD90C  7C 08 02 A6 */	mflr r0
/* 80CAD910  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CAD914  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80CAD918  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80CAD91C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CAD920  4B 6B 48 94 */	b _savegpr_19
/* 80CAD924  7C 7C 1B 78 */	mr r28, r3
/* 80CAD928  3C 60 80 CB */	lis r3, l_dzbIdx@ha
/* 80CAD92C  3A A3 F0 1C */	addi r21, r3, l_dzbIdx@l
/* 80CAD930  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CAD934  54 1E 07 FE */	clrlwi r30, r0, 0x1f
/* 80CAD938  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CAD93C  38 63 F0 E8 */	addi r3, r3, l_arcName@l
/* 80CAD940  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAD944  38 80 00 05 */	li r4, 5
/* 80CAD948  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CAD94C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CAD950  3F E5 00 02 */	addis r31, r5, 2
/* 80CAD954  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CAD958  7F E5 FB 78 */	mr r5, r31
/* 80CAD95C  38 C0 00 80 */	li r6, 0x80
/* 80CAD960  4B 38 E9 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CAD964  3C 80 00 08 */	lis r4, 8
/* 80CAD968  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CAD96C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CAD970  4B 36 72 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CAD974  90 7C 0C B8 */	stw r3, 0xcb8(r28)
/* 80CAD978  80 1C 0C B8 */	lwz r0, 0xcb8(r28)
/* 80CAD97C  28 00 00 00 */	cmplwi r0, 0
/* 80CAD980  40 82 00 0C */	bne lbl_80CAD98C
/* 80CAD984  38 60 00 00 */	li r3, 0
/* 80CAD988  48 00 02 70 */	b lbl_80CADBF8
lbl_80CAD98C:
/* 80CAD98C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80CAD990  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CAD994  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80CAD998  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CAD99C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80CAD9A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CAD9A4  C3 F5 00 10 */	lfs f31, 0x10(r21)
/* 80CAD9A8  3B A0 00 00 */	li r29, 0
/* 80CAD9AC  3B 60 00 00 */	li r27, 0
/* 80CAD9B0  3B 40 00 00 */	li r26, 0
/* 80CAD9B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAD9B8  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 80CAD9BC  7E D7 B3 78 */	mr r23, r22
/* 80CAD9C0  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CAD9C4  3B 03 F0 E8 */	addi r24, r3, l_arcName@l
/* 80CAD9C8  3B 35 00 00 */	addi r25, r21, 0
lbl_80CAD9CC:
/* 80CAD9CC  2C 1D 00 01 */	cmpwi r29, 1
/* 80CAD9D0  40 82 00 10 */	bne lbl_80CAD9E0
/* 80CAD9D4  88 1C 0D 26 */	lbz r0, 0xd26(r28)
/* 80CAD9D8  28 00 00 00 */	cmplwi r0, 0
/* 80CAD9DC  40 82 01 18 */	bne lbl_80CADAF4
lbl_80CAD9E0:
/* 80CAD9E0  38 60 00 C0 */	li r3, 0xc0
/* 80CAD9E4  4B 62 12 68 */	b __nw__FUl
/* 80CAD9E8  7C 60 1B 79 */	or. r0, r3, r3
/* 80CAD9EC  41 82 00 0C */	beq lbl_80CAD9F8
/* 80CAD9F0  4B 3C DF 80 */	b __ct__4dBgWFv
/* 80CAD9F4  7C 60 1B 78 */	mr r0, r3
lbl_80CAD9F8:
/* 80CAD9F8  3A 9A 0C BC */	addi r20, r26, 0xcbc
/* 80CAD9FC  7C 1C A1 2E */	stwx r0, r28, r20
/* 80CADA00  7C 1C A0 2E */	lwzx r0, r28, r20
/* 80CADA04  28 00 00 00 */	cmplwi r0, 0
/* 80CADA08  40 82 00 0C */	bne lbl_80CADA14
/* 80CADA0C  38 60 00 00 */	li r3, 0
/* 80CADA10  48 00 01 E8 */	b lbl_80CADBF8
lbl_80CADA14:
/* 80CADA14  2C 1D 00 00 */	cmpwi r29, 0
/* 80CADA18  40 82 00 28 */	bne lbl_80CADA40
/* 80CADA1C  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 80CADA20  C0 35 00 14 */	lfs f1, 0x14(r21)
/* 80CADA24  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80CADA28  EC 21 00 2A */	fadds f1, f1, f0
/* 80CADA2C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80CADA30  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CADA34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CADA38  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80CADA3C  C3 F5 00 18 */	lfs f31, 0x18(r21)
lbl_80CADA40:
/* 80CADA40  7E C3 B3 78 */	mr r3, r22
/* 80CADA44  C0 21 00 08 */	lfs f1, 8(r1)
/* 80CADA48  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80CADA4C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80CADA50  4B 69 8E 98 */	b PSMTXTrans
/* 80CADA54  7E C3 B3 78 */	mr r3, r22
/* 80CADA58  A8 9C 04 B4 */	lha r4, 0x4b4(r28)
/* 80CADA5C  A8 BC 04 B6 */	lha r5, 0x4b6(r28)
/* 80CADA60  A8 DC 04 B8 */	lha r6, 0x4b8(r28)
/* 80CADA64  4B 35 E8 3C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CADA68  FC 20 F8 90 */	fmr f1, f31
/* 80CADA6C  FC 40 F8 90 */	fmr f2, f31
/* 80CADA70  FC 60 F8 90 */	fmr f3, f31
/* 80CADA74  4B 35 F3 C4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80CADA78  7E E3 BB 78 */	mr r3, r23
/* 80CADA7C  3A 7B 0C C4 */	addi r19, r27, 0xcc4
/* 80CADA80  7E 7C 9A 14 */	add r19, r28, r19
/* 80CADA84  7E 64 9B 78 */	mr r4, r19
/* 80CADA88  4B 69 8A 28 */	b PSMTXCopy
/* 80CADA8C  80 78 00 00 */	lwz r3, 0(r24)
/* 80CADA90  7C 99 D0 2E */	lwzx r4, r25, r26
/* 80CADA94  7F E5 FB 78 */	mr r5, r31
/* 80CADA98  38 C0 00 80 */	li r6, 0x80
/* 80CADA9C  4B 38 E8 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CADAA0  7C 64 1B 78 */	mr r4, r3
/* 80CADAA4  7C 7C A0 2E */	lwzx r3, r28, r20
/* 80CADAA8  38 A0 00 01 */	li r5, 1
/* 80CADAAC  7E 66 9B 78 */	mr r6, r19
/* 80CADAB0  4B 3C C4 88 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CADAB4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CADAB8  28 00 00 01 */	cmplwi r0, 1
/* 80CADABC  40 82 00 0C */	bne lbl_80CADAC8
/* 80CADAC0  38 60 00 00 */	li r3, 0
/* 80CADAC4  48 00 01 34 */	b lbl_80CADBF8
lbl_80CADAC8:
/* 80CADAC8  2C 1D 00 01 */	cmpwi r29, 1
/* 80CADACC  40 82 00 14 */	bne lbl_80CADAE0
/* 80CADAD0  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CADAD4  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CADAD8  7C 7C A0 2E */	lwzx r3, r28, r20
/* 80CADADC  90 03 00 B0 */	stw r0, 0xb0(r3)
lbl_80CADAE0:
/* 80CADAE0  3B BD 00 01 */	addi r29, r29, 1
/* 80CADAE4  2C 1D 00 02 */	cmpwi r29, 2
/* 80CADAE8  3B 7B 00 30 */	addi r27, r27, 0x30
/* 80CADAEC  3B 5A 00 04 */	addi r26, r26, 4
/* 80CADAF0  41 80 FE DC */	blt lbl_80CAD9CC
lbl_80CADAF4:
/* 80CADAF4  88 1C 0D 26 */	lbz r0, 0xd26(r28)
/* 80CADAF8  28 00 00 00 */	cmplwi r0, 0
/* 80CADAFC  41 82 00 0C */	beq lbl_80CADB08
/* 80CADB00  38 60 00 01 */	li r3, 1
/* 80CADB04  48 00 00 F4 */	b lbl_80CADBF8
lbl_80CADB08:
/* 80CADB08  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CADB0C  38 63 F0 E8 */	addi r3, r3, l_arcName@l
/* 80CADB10  80 63 00 00 */	lwz r3, 0(r3)
/* 80CADB14  57 C0 10 3A */	slwi r0, r30, 2
/* 80CADB18  38 95 00 08 */	addi r4, r21, 8
/* 80CADB1C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CADB20  7F E5 FB 78 */	mr r5, r31
/* 80CADB24  38 C0 00 80 */	li r6, 0x80
/* 80CADB28  4B 38 E7 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CADB2C  3C 80 00 08 */	lis r4, 8
/* 80CADB30  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CADB34  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CADB38  4B 36 71 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CADB3C  90 7C 0C B4 */	stw r3, 0xcb4(r28)
/* 80CADB40  80 1C 0C B4 */	lwz r0, 0xcb4(r28)
/* 80CADB44  28 00 00 00 */	cmplwi r0, 0
/* 80CADB48  40 82 00 0C */	bne lbl_80CADB54
/* 80CADB4C  38 60 00 00 */	li r3, 0
/* 80CADB50  48 00 00 A8 */	b lbl_80CADBF8
lbl_80CADB54:
/* 80CADB54  3A C0 00 00 */	li r22, 0
/* 80CADB58  3A 80 00 00 */	li r20, 0
/* 80CADB5C  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CADB60  3A A3 F0 E8 */	addi r21, r3, l_arcName@l
lbl_80CADB64:
/* 80CADB64  38 60 00 3C */	li r3, 0x3c
/* 80CADB68  4B 62 10 E4 */	b __nw__FUl
/* 80CADB6C  28 03 00 00 */	cmplwi r3, 0
/* 80CADB70  41 82 00 1C */	beq lbl_80CADB8C
/* 80CADB74  3C 80 80 CB */	lis r4, __vt__18mDoExt_3DlineMat_c@ha
/* 80CADB78  38 04 F1 F0 */	addi r0, r4, __vt__18mDoExt_3DlineMat_c@l
/* 80CADB7C  90 03 00 00 */	stw r0, 0(r3)
/* 80CADB80  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat1_c@ha
/* 80CADB84  38 04 32 48 */	addi r0, r4, __vt__19mDoExt_3DlineMat1_c@l
/* 80CADB88  90 03 00 00 */	stw r0, 0(r3)
lbl_80CADB8C:
/* 80CADB8C  3A 74 0C AC */	addi r19, r20, 0xcac
/* 80CADB90  7C 7C 99 2E */	stwx r3, r28, r19
/* 80CADB94  7C 1C 98 2E */	lwzx r0, r28, r19
/* 80CADB98  28 00 00 00 */	cmplwi r0, 0
/* 80CADB9C  40 82 00 0C */	bne lbl_80CADBA8
/* 80CADBA0  38 60 00 00 */	li r3, 0
/* 80CADBA4  48 00 00 54 */	b lbl_80CADBF8
lbl_80CADBA8:
/* 80CADBA8  80 75 00 00 */	lwz r3, 0(r21)
/* 80CADBAC  38 80 00 0E */	li r4, 0xe
/* 80CADBB0  7F E5 FB 78 */	mr r5, r31
/* 80CADBB4  38 C0 00 80 */	li r6, 0x80
/* 80CADBB8  4B 38 E7 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CADBBC  7C 66 1B 78 */	mr r6, r3
/* 80CADBC0  7C 7C 98 2E */	lwzx r3, r28, r19
/* 80CADBC4  38 80 00 01 */	li r4, 1
/* 80CADBC8  38 A0 00 0A */	li r5, 0xa
/* 80CADBCC  38 E0 00 01 */	li r7, 1
/* 80CADBD0  4B 36 57 90 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80CADBD4  2C 03 00 00 */	cmpwi r3, 0
/* 80CADBD8  40 82 00 0C */	bne lbl_80CADBE4
/* 80CADBDC  38 60 00 00 */	li r3, 0
/* 80CADBE0  48 00 00 18 */	b lbl_80CADBF8
lbl_80CADBE4:
/* 80CADBE4  3A D6 00 01 */	addi r22, r22, 1
/* 80CADBE8  2C 16 00 02 */	cmpwi r22, 2
/* 80CADBEC  3A 94 00 04 */	addi r20, r20, 4
/* 80CADBF0  41 80 FF 74 */	blt lbl_80CADB64
/* 80CADBF4  38 60 00 01 */	li r3, 1
lbl_80CADBF8:
/* 80CADBF8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80CADBFC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80CADC00  39 61 00 50 */	addi r11, r1, 0x50
/* 80CADC04  4B 6B 45 FC */	b _restgpr_19
/* 80CADC08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CADC0C  7C 08 03 A6 */	mtlr r0
/* 80CADC10  38 21 00 60 */	addi r1, r1, 0x60
/* 80CADC14  4E 80 00 20 */	blr 
