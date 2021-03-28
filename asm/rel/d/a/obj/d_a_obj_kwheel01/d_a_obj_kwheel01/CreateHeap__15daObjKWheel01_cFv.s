lbl_80C4EDCC:
/* 80C4EDCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4EDD0  7C 08 02 A6 */	mflr r0
/* 80C4EDD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4EDD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EDDC  4B 71 33 F0 */	b _savegpr_25
/* 80C4EDE0  7C 7C 1B 78 */	mr r28, r3
/* 80C4EDE4  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C4EDE8  38 63 F6 F8 */	addi r3, r3, l_arcName@l
/* 80C4EDEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4EDF0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C4EDF4  54 00 3F 7A */	rlwinm r0, r0, 7, 0x1d, 0x1d
/* 80C4EDF8  3C 80 80 C5 */	lis r4, l_bmdidx@ha
/* 80C4EDFC  38 84 F6 C4 */	addi r4, r4, l_bmdidx@l
/* 80C4EE00  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C4EE04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4EE08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4EE0C  3F C5 00 02 */	addis r30, r5, 2
/* 80C4EE10  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C4EE14  7F C5 F3 78 */	mr r5, r30
/* 80C4EE18  38 C0 00 80 */	li r6, 0x80
/* 80C4EE1C  4B 3E D4 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4EE20  3C 80 00 08 */	lis r4, 8
/* 80C4EE24  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C4EE28  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C4EE2C  4B 3C 5E 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C4EE30  90 7C 06 18 */	stw r3, 0x618(r28)
/* 80C4EE34  80 1C 06 18 */	lwz r0, 0x618(r28)
/* 80C4EE38  28 00 00 00 */	cmplwi r0, 0
/* 80C4EE3C  40 82 00 0C */	bne lbl_80C4EE48
/* 80C4EE40  38 60 00 00 */	li r3, 0
/* 80C4EE44  48 00 00 DC */	b lbl_80C4EF20
lbl_80C4EE48:
/* 80C4EE48  3B A0 00 00 */	li r29, 0
/* 80C4EE4C  3B 60 00 00 */	li r27, 0
/* 80C4EE50  3B 40 00 00 */	li r26, 0
/* 80C4EE54  3C 60 80 C5 */	lis r3, l_dzbidx@ha
/* 80C4EE58  3B E3 F6 B8 */	addi r31, r3, l_dzbidx@l
lbl_80C4EE5C:
/* 80C4EE5C  38 00 00 01 */	li r0, 1
/* 80C4EE60  7C 03 E8 30 */	slw r3, r0, r29
/* 80C4EE64  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C4EE68  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4EE6C  7C 60 00 39 */	and. r0, r3, r0
/* 80C4EE70  41 82 00 14 */	beq lbl_80C4EE84
/* 80C4EE74  38 60 00 00 */	li r3, 0
/* 80C4EE78  38 1A 06 30 */	addi r0, r26, 0x630
/* 80C4EE7C  7C 7C 01 2E */	stwx r3, r28, r0
/* 80C4EE80  48 00 00 88 */	b lbl_80C4EF08
lbl_80C4EE84:
/* 80C4EE84  38 60 00 C0 */	li r3, 0xc0
/* 80C4EE88  4B 67 FD C4 */	b __nw__FUl
/* 80C4EE8C  7C 60 1B 79 */	or. r0, r3, r3
/* 80C4EE90  41 82 00 0C */	beq lbl_80C4EE9C
/* 80C4EE94  4B 42 CA DC */	b __ct__4dBgWFv
/* 80C4EE98  7C 60 1B 78 */	mr r0, r3
lbl_80C4EE9C:
/* 80C4EE9C  3B 3A 06 30 */	addi r25, r26, 0x630
/* 80C4EEA0  7C 1C C9 2E */	stwx r0, r28, r25
/* 80C4EEA4  7C 1C C8 2E */	lwzx r0, r28, r25
/* 80C4EEA8  28 00 00 00 */	cmplwi r0, 0
/* 80C4EEAC  40 82 00 0C */	bne lbl_80C4EEB8
/* 80C4EEB0  38 60 00 00 */	li r3, 0
/* 80C4EEB4  48 00 00 6C */	b lbl_80C4EF20
lbl_80C4EEB8:
/* 80C4EEB8  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C4EEBC  38 63 F6 F8 */	addi r3, r3, l_arcName@l
/* 80C4EEC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4EEC4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80C4EEC8  7F C5 F3 78 */	mr r5, r30
/* 80C4EECC  38 C0 00 80 */	li r6, 0x80
/* 80C4EED0  4B 3E D4 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4EED4  7C 64 1B 78 */	mr r4, r3
/* 80C4EED8  7C 7C C8 2E */	lwzx r3, r28, r25
/* 80C4EEDC  38 A0 00 01 */	li r5, 1
/* 80C4EEE0  38 DB 06 40 */	addi r6, r27, 0x640
/* 80C4EEE4  7C DC 32 14 */	add r6, r28, r6
/* 80C4EEE8  4B 42 B0 50 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C4EEEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4EEF0  41 82 00 18 */	beq lbl_80C4EF08
/* 80C4EEF4  38 00 00 00 */	li r0, 0
/* 80C4EEF8  7C 7C D2 14 */	add r3, r28, r26
/* 80C4EEFC  90 03 06 30 */	stw r0, 0x630(r3)
/* 80C4EF00  38 60 00 00 */	li r3, 0
/* 80C4EF04  48 00 00 1C */	b lbl_80C4EF20
lbl_80C4EF08:
/* 80C4EF08  3B BD 00 01 */	addi r29, r29, 1
/* 80C4EF0C  2C 1D 00 04 */	cmpwi r29, 4
/* 80C4EF10  3B 7B 00 30 */	addi r27, r27, 0x30
/* 80C4EF14  3B 5A 00 04 */	addi r26, r26, 4
/* 80C4EF18  41 80 FF 44 */	blt lbl_80C4EE5C
/* 80C4EF1C  38 60 00 01 */	li r3, 1
lbl_80C4EF20:
/* 80C4EF20  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EF24  4B 71 32 F4 */	b _restgpr_25
/* 80C4EF28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4EF2C  7C 08 03 A6 */	mtlr r0
/* 80C4EF30  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4EF34  4E 80 00 20 */	blr 
