lbl_80CACA44:
/* 80CACA44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CACA48  7C 08 02 A6 */	mflr r0
/* 80CACA4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CACA50  39 61 00 30 */	addi r11, r1, 0x30
/* 80CACA54  4B 6B 57 74 */	b _savegpr_24
/* 80CACA58  7C 7D 1B 78 */	mr r29, r3
/* 80CACA5C  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CACA60  38 63 D1 FC */	addi r3, r3, l_arcName@l
/* 80CACA64  80 63 00 00 */	lwz r3, 0(r3)
/* 80CACA68  38 80 00 04 */	li r4, 4
/* 80CACA6C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CACA70  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CACA74  3F E5 00 02 */	addis r31, r5, 2
/* 80CACA78  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CACA7C  7F E5 FB 78 */	mr r5, r31
/* 80CACA80  38 C0 00 80 */	li r6, 0x80
/* 80CACA84  4B 38 F8 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CACA88  7C 78 1B 78 */	mr r24, r3
/* 80CACA8C  3B 40 00 00 */	li r26, 0
/* 80CACA90  3B 60 00 00 */	li r27, 0
/* 80CACA94  3F 20 11 00 */	lis r25, 0x1100 /* 0x11000084@ha */
lbl_80CACA98:
/* 80CACA98  7F 03 C3 78 */	mr r3, r24
/* 80CACA9C  3C 80 00 08 */	lis r4, 8
/* 80CACAA0  38 B9 00 84 */	addi r5, r25, 0x0084 /* 0x11000084@l */
/* 80CACAA4  4B 36 81 B0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CACAA8  38 1B 05 D8 */	addi r0, r27, 0x5d8
/* 80CACAAC  7C 7D 01 2E */	stwx r3, r29, r0
/* 80CACAB0  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80CACAB4  28 00 00 00 */	cmplwi r0, 0
/* 80CACAB8  40 82 00 0C */	bne lbl_80CACAC4
/* 80CACABC  38 60 00 00 */	li r3, 0
/* 80CACAC0  48 00 00 D0 */	b lbl_80CACB90
lbl_80CACAC4:
/* 80CACAC4  3B 5A 00 01 */	addi r26, r26, 1
/* 80CACAC8  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80CACACC  3B 7B 00 04 */	addi r27, r27, 4
/* 80CACAD0  41 80 FF C8 */	blt lbl_80CACA98
/* 80CACAD4  3B C0 00 00 */	li r30, 0
/* 80CACAD8  3B 80 00 00 */	li r28, 0
/* 80CACADC  3B 60 00 00 */	li r27, 0
/* 80CACAE0  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CACAE4  3B 23 D1 FC */	addi r25, r3, l_arcName@l
/* 80CACAE8  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CACAEC  3B 43 5A D8 */	addi r26, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
lbl_80CACAF0:
/* 80CACAF0  38 60 00 C0 */	li r3, 0xc0
/* 80CACAF4  4B 62 21 58 */	b __nw__FUl
/* 80CACAF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80CACAFC  41 82 00 0C */	beq lbl_80CACB08
/* 80CACB00  4B 3C EE 70 */	b __ct__4dBgWFv
/* 80CACB04  7C 60 1B 78 */	mr r0, r3
lbl_80CACB08:
/* 80CACB08  3B 1B 08 3C */	addi r24, r27, 0x83c
/* 80CACB0C  7C 1D C1 2E */	stwx r0, r29, r24
/* 80CACB10  7C 1D C0 2E */	lwzx r0, r29, r24
/* 80CACB14  28 00 00 00 */	cmplwi r0, 0
/* 80CACB18  40 82 00 0C */	bne lbl_80CACB24
/* 80CACB1C  38 60 00 00 */	li r3, 0
/* 80CACB20  48 00 00 70 */	b lbl_80CACB90
lbl_80CACB24:
/* 80CACB24  80 79 00 00 */	lwz r3, 0(r25)
/* 80CACB28  38 80 00 07 */	li r4, 7
/* 80CACB2C  7F E5 FB 78 */	mr r5, r31
/* 80CACB30  38 C0 00 80 */	li r6, 0x80
/* 80CACB34  4B 38 F7 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CACB38  7C 64 1B 78 */	mr r4, r3
/* 80CACB3C  7C 7D C0 2E */	lwzx r3, r29, r24
/* 80CACB40  38 A0 00 01 */	li r5, 1
/* 80CACB44  38 DC 08 60 */	addi r6, r28, 0x860
/* 80CACB48  7C DD 32 14 */	add r6, r29, r6
/* 80CACB4C  4B 3C D3 EC */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CACB50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CACB54  40 82 00 10 */	bne lbl_80CACB64
/* 80CACB58  7C 7D C0 2E */	lwzx r3, r29, r24
/* 80CACB5C  93 43 00 B0 */	stw r26, 0xb0(r3)
/* 80CACB60  48 00 00 18 */	b lbl_80CACB78
lbl_80CACB64:
/* 80CACB64  38 00 00 00 */	li r0, 0
/* 80CACB68  7C 7D DA 14 */	add r3, r29, r27
/* 80CACB6C  90 03 08 3C */	stw r0, 0x83c(r3)
/* 80CACB70  38 60 00 00 */	li r3, 0
/* 80CACB74  48 00 00 1C */	b lbl_80CACB90
lbl_80CACB78:
/* 80CACB78  3B DE 00 01 */	addi r30, r30, 1
/* 80CACB7C  2C 1E 00 09 */	cmpwi r30, 9
/* 80CACB80  3B 9C 00 30 */	addi r28, r28, 0x30
/* 80CACB84  3B 7B 00 04 */	addi r27, r27, 4
/* 80CACB88  41 80 FF 68 */	blt lbl_80CACAF0
/* 80CACB8C  38 60 00 01 */	li r3, 1
lbl_80CACB90:
/* 80CACB90  39 61 00 30 */	addi r11, r1, 0x30
/* 80CACB94  4B 6B 56 80 */	b _restgpr_24
/* 80CACB98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CACB9C  7C 08 03 A6 */	mtlr r0
/* 80CACBA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CACBA4  4E 80 00 20 */	blr 
