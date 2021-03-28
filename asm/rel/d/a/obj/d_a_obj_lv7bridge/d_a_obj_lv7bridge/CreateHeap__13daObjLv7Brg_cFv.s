lbl_80C867CC:
/* 80C867CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C867D0  7C 08 02 A6 */	mflr r0
/* 80C867D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C867D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C867DC  4B 6D B9 E8 */	b _savegpr_23
/* 80C867E0  7C 7C 1B 78 */	mr r28, r3
/* 80C867E4  3C 60 80 C8 */	lis r3, l_bmd@ha
/* 80C867E8  3B E3 79 A0 */	addi r31, r3, l_bmd@l
/* 80C867EC  88 1C 0A 7E */	lbz r0, 0xa7e(r28)
/* 80C867F0  54 00 10 3A */	slwi r0, r0, 2
/* 80C867F4  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C867F8  38 63 7A 54 */	addi r3, r3, l_arcName@l
/* 80C867FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C86800  38 9F 00 00 */	addi r4, r31, 0
/* 80C86804  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C86808  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C8680C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C86810  3F C5 00 02 */	addis r30, r5, 2
/* 80C86814  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C86818  7F C5 F3 78 */	mr r5, r30
/* 80C8681C  38 C0 00 80 */	li r6, 0x80
/* 80C86820  4B 3B 5A CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C86824  3C 80 00 08 */	lis r4, 8
/* 80C86828  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C8682C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C86830  4B 38 E4 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C86834  90 7C 05 A8 */	stw r3, 0x5a8(r28)
/* 80C86838  80 1C 05 A8 */	lwz r0, 0x5a8(r28)
/* 80C8683C  28 00 00 00 */	cmplwi r0, 0
/* 80C86840  40 82 00 0C */	bne lbl_80C8684C
/* 80C86844  38 60 00 00 */	li r3, 0
/* 80C86848  48 00 01 9C */	b lbl_80C869E4
lbl_80C8684C:
/* 80C8684C  88 1C 0A 7E */	lbz r0, 0xa7e(r28)
/* 80C86850  28 00 00 01 */	cmplwi r0, 1
/* 80C86854  40 82 01 8C */	bne lbl_80C869E0
/* 80C86858  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80C8685C  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C86860  38 63 7A 54 */	addi r3, r3, l_arcName@l
/* 80C86864  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C86868  38 80 00 09 */	li r4, 9
/* 80C8686C  7F C5 F3 78 */	mr r5, r30
/* 80C86870  38 C0 00 80 */	li r6, 0x80
/* 80C86874  4B 3B 5A 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C86878  3C 80 00 08 */	lis r4, 8
/* 80C8687C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C86880  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C86884  4B 38 E3 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C86888  90 7C 0A 84 */	stw r3, 0xa84(r28)
/* 80C8688C  80 1C 0A 84 */	lwz r0, 0xa84(r28)
/* 80C86890  28 00 00 00 */	cmplwi r0, 0
/* 80C86894  40 82 00 0C */	bne lbl_80C868A0
/* 80C86898  38 60 00 00 */	li r3, 0
/* 80C8689C  48 00 01 48 */	b lbl_80C869E4
lbl_80C868A0:
/* 80C868A0  3B A0 00 00 */	li r29, 0
/* 80C868A4  3B 60 00 00 */	li r27, 0
/* 80C868A8  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C868AC  3B 03 7A 54 */	addi r24, r3, l_arcName@l
/* 80C868B0  3B 3F 00 40 */	addi r25, r31, 0x40
lbl_80C868B4:
/* 80C868B4  88 1C 0A 7E */	lbz r0, 0xa7e(r28)
/* 80C868B8  54 00 10 3A */	slwi r0, r0, 2
/* 80C868BC  7C 78 00 2E */	lwzx r3, r24, r0
/* 80C868C0  7C 99 D8 2E */	lwzx r4, r25, r27
/* 80C868C4  7F C5 F3 78 */	mr r5, r30
/* 80C868C8  38 C0 00 80 */	li r6, 0x80
/* 80C868CC  4B 3B 5A 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C868D0  7C 77 1B 78 */	mr r23, r3
/* 80C868D4  38 60 00 1C */	li r3, 0x1c
/* 80C868D8  4B 64 83 74 */	b __nw__FUl
/* 80C868DC  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C868E0  41 82 00 20 */	beq lbl_80C86900
/* 80C868E4  3C 80 80 C8 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C868E8  38 04 7B 80 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C868EC  90 1A 00 00 */	stw r0, 0(r26)
/* 80C868F0  38 80 00 00 */	li r4, 0
/* 80C868F4  4B 6A 1B 08 */	b init__12J3DFrameCtrlFs
/* 80C868F8  38 00 00 00 */	li r0, 0
/* 80C868FC  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_80C86900:
/* 80C86900  38 1B 0A 88 */	addi r0, r27, 0xa88
/* 80C86904  7F 5C 01 2E */	stwx r26, r28, r0
/* 80C86908  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80C8690C  28 03 00 00 */	cmplwi r3, 0
/* 80C86910  41 82 00 2C */	beq lbl_80C8693C
/* 80C86914  7E E4 BB 78 */	mr r4, r23
/* 80C86918  38 A0 00 01 */	li r5, 1
/* 80C8691C  38 C0 00 00 */	li r6, 0
/* 80C86920  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C86924  38 E0 00 00 */	li r7, 0
/* 80C86928  39 00 FF FF */	li r8, -1
/* 80C8692C  39 20 00 00 */	li r9, 0
/* 80C86930  4B 38 6E AC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C86934  2C 03 00 00 */	cmpwi r3, 0
/* 80C86938  40 82 00 0C */	bne lbl_80C86944
lbl_80C8693C:
/* 80C8693C  38 60 00 00 */	li r3, 0
/* 80C86940  48 00 00 A4 */	b lbl_80C869E4
lbl_80C86944:
/* 80C86944  3B BD 00 01 */	addi r29, r29, 1
/* 80C86948  2C 1D 00 02 */	cmpwi r29, 2
/* 80C8694C  3B 7B 00 04 */	addi r27, r27, 4
/* 80C86950  41 80 FF 64 */	blt lbl_80C868B4
/* 80C86954  38 60 00 C0 */	li r3, 0xc0
/* 80C86958  4B 64 82 F4 */	b __nw__FUl
/* 80C8695C  7C 60 1B 79 */	or. r0, r3, r3
/* 80C86960  41 82 00 0C */	beq lbl_80C8696C
/* 80C86964  4B 3F 50 0C */	b __ct__4dBgWFv
/* 80C86968  7C 60 1B 78 */	mr r0, r3
lbl_80C8696C:
/* 80C8696C  90 1C 0A 90 */	stw r0, 0xa90(r28)
/* 80C86970  80 1C 0A 90 */	lwz r0, 0xa90(r28)
/* 80C86974  28 00 00 00 */	cmplwi r0, 0
/* 80C86978  41 82 00 58 */	beq lbl_80C869D0
/* 80C8697C  88 1C 0A 7E */	lbz r0, 0xa7e(r28)
/* 80C86980  54 00 10 3A */	slwi r0, r0, 2
/* 80C86984  3C 60 80 C8 */	lis r3, l_arcName@ha
/* 80C86988  38 63 7A 54 */	addi r3, r3, l_arcName@l
/* 80C8698C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C86990  38 80 00 0E */	li r4, 0xe
/* 80C86994  7F C5 F3 78 */	mr r5, r30
/* 80C86998  38 C0 00 80 */	li r6, 0x80
/* 80C8699C  4B 3B 59 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C869A0  7C 64 1B 78 */	mr r4, r3
/* 80C869A4  80 7C 0A 90 */	lwz r3, 0xa90(r28)
/* 80C869A8  38 A0 00 01 */	li r5, 1
/* 80C869AC  38 DC 05 6C */	addi r6, r28, 0x56c
/* 80C869B0  4B 3F 35 88 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C869B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C869B8  40 82 00 18 */	bne lbl_80C869D0
/* 80C869BC  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C869C0  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C869C4  80 7C 0A 90 */	lwz r3, 0xa90(r28)
/* 80C869C8  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C869CC  48 00 00 14 */	b lbl_80C869E0
lbl_80C869D0:
/* 80C869D0  38 00 00 00 */	li r0, 0
/* 80C869D4  90 1C 0A 90 */	stw r0, 0xa90(r28)
/* 80C869D8  38 60 00 00 */	li r3, 0
/* 80C869DC  48 00 00 08 */	b lbl_80C869E4
lbl_80C869E0:
/* 80C869E0  38 60 00 01 */	li r3, 1
lbl_80C869E4:
/* 80C869E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C869E8  4B 6D B8 28 */	b _restgpr_23
/* 80C869EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C869F0  7C 08 03 A6 */	mtlr r0
/* 80C869F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C869F8  4E 80 00 20 */	blr 
