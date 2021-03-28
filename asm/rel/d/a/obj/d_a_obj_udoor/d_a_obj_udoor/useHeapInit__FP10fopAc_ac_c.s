lbl_80D20A1C:
/* 80D20A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20A20  7C 08 02 A6 */	mflr r0
/* 80D20A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D20A2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D20A30  7C 7F 1B 78 */	mr r31, r3
/* 80D20A34  3C 60 80 D2 */	lis r3, stringBase0@ha
/* 80D20A38  38 63 0E 10 */	addi r3, r3, stringBase0@l
/* 80D20A3C  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D20A40  54 00 10 3A */	slwi r0, r0, 2
/* 80D20A44  3C 80 80 D2 */	lis r4, bmdd@ha
/* 80D20A48  38 84 0E 1C */	addi r4, r4, bmdd@l
/* 80D20A4C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D20A50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D20A54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D20A58  3F C5 00 02 */	addis r30, r5, 2
/* 80D20A5C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D20A60  7F C5 F3 78 */	mr r5, r30
/* 80D20A64  38 C0 00 80 */	li r6, 0x80
/* 80D20A68  4B 31 B8 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D20A6C  3C 80 00 08 */	lis r4, 8
/* 80D20A70  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D20A74  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D20A78  4B 2F 41 DC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D20A7C  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D20A80  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D20A84  28 00 00 00 */	cmplwi r0, 0
/* 80D20A88  40 82 00 0C */	bne lbl_80D20A94
/* 80D20A8C  38 60 00 00 */	li r3, 0
/* 80D20A90  48 00 00 98 */	b lbl_80D20B28
lbl_80D20A94:
/* 80D20A94  38 60 00 C0 */	li r3, 0xc0
/* 80D20A98  4B 5A E1 B4 */	b __nw__FUl
/* 80D20A9C  7C 60 1B 79 */	or. r0, r3, r3
/* 80D20AA0  41 82 00 0C */	beq lbl_80D20AAC
/* 80D20AA4  4B 35 AE CC */	b __ct__4dBgWFv
/* 80D20AA8  7C 60 1B 78 */	mr r0, r3
lbl_80D20AAC:
/* 80D20AAC  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80D20AB0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80D20AB4  28 00 00 00 */	cmplwi r0, 0
/* 80D20AB8  40 82 00 0C */	bne lbl_80D20AC4
/* 80D20ABC  38 60 00 00 */	li r3, 0
/* 80D20AC0  48 00 00 68 */	b lbl_80D20B28
lbl_80D20AC4:
/* 80D20AC4  3C 60 80 D2 */	lis r3, stringBase0@ha
/* 80D20AC8  38 63 0E 10 */	addi r3, r3, stringBase0@l
/* 80D20ACC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80D20AD0  54 00 10 3A */	slwi r0, r0, 2
/* 80D20AD4  3C 80 80 D2 */	lis r4, dzbd@ha
/* 80D20AD8  38 84 0E 24 */	addi r4, r4, dzbd@l
/* 80D20ADC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D20AE0  7F C5 F3 78 */	mr r5, r30
/* 80D20AE4  38 C0 00 80 */	li r6, 0x80
/* 80D20AE8  4B 31 B8 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D20AEC  7C 64 1B 78 */	mr r4, r3
/* 80D20AF0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D20AF4  38 A0 00 01 */	li r5, 1
/* 80D20AF8  38 DF 05 88 */	addi r6, r31, 0x588
/* 80D20AFC  4B 35 94 3C */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D20B00  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D20B04  28 00 00 01 */	cmplwi r0, 1
/* 80D20B08  40 82 00 0C */	bne lbl_80D20B14
/* 80D20B0C  38 60 00 00 */	li r3, 0
/* 80D20B10  48 00 00 18 */	b lbl_80D20B28
lbl_80D20B14:
/* 80D20B14  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D20B18  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D20B1C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D20B20  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D20B24  38 60 00 01 */	li r3, 1
lbl_80D20B28:
/* 80D20B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D20B2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D20B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20B34  7C 08 03 A6 */	mtlr r0
/* 80D20B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20B3C  4E 80 00 20 */	blr 
