lbl_80579934:
/* 80579934  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80579938  7C 08 02 A6 */	mflr r0
/* 8057993C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80579940  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80579944  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80579948  39 61 00 40 */	addi r11, r1, 0x40
/* 8057994C  4B DE 88 6D */	bl _savegpr_20
/* 80579950  7C 7B 1B 78 */	mr r27, r3
/* 80579954  3C 60 80 58 */	lis r3, l_hair_offset@ha /* 0x8057B360@ha */
/* 80579958  3B C3 B3 60 */	addi r30, r3, l_hair_offset@l /* 0x8057B360@l */
/* 8057995C  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x8057B678@ha */
/* 80579960  38 63 B6 78 */	addi r3, r3, l_arcName@l /* 0x8057B678@l */
/* 80579964  80 63 00 00 */	lwz r3, 0(r3)
/* 80579968  38 80 00 06 */	li r4, 6
/* 8057996C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80579970  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80579974  3F A5 00 02 */	addis r29, r5, 2
/* 80579978  3B BD C2 F8 */	addi r29, r29, -15624
/* 8057997C  7F A5 EB 78 */	mr r5, r29
/* 80579980  38 C0 00 80 */	li r6, 0x80
/* 80579984  4B AC 29 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80579988  7C 7F 1B 78 */	mr r31, r3
/* 8057998C  3C 80 00 08 */	lis r4, 8
/* 80579990  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80579994  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80579998  4B A9 B2 BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8057999C  90 7B 05 70 */	stw r3, 0x570(r27)
/* 805799A0  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 805799A4  28 00 00 00 */	cmplwi r0, 0
/* 805799A8  40 82 00 0C */	bne lbl_805799B4
/* 805799AC  38 60 00 00 */	li r3, 0
/* 805799B0  48 00 01 58 */	b lbl_80579B08
lbl_805799B4:
/* 805799B4  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x8057B678@ha */
/* 805799B8  38 63 B6 78 */	addi r3, r3, l_arcName@l /* 0x8057B678@l */
/* 805799BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805799C0  38 80 00 09 */	li r4, 9
/* 805799C4  7F A5 EB 78 */	mr r5, r29
/* 805799C8  38 C0 00 80 */	li r6, 0x80
/* 805799CC  4B AC 29 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805799D0  7C 75 1B 78 */	mr r21, r3
/* 805799D4  38 60 00 18 */	li r3, 0x18
/* 805799D8  4B D5 52 75 */	bl __nw__FUl
/* 805799DC  7C 76 1B 79 */	or. r22, r3, r3
/* 805799E0  41 82 00 20 */	beq lbl_80579A00
/* 805799E4  3C 80 80 58 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8057B8C0@ha */
/* 805799E8  38 04 B8 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8057B8C0@l */
/* 805799EC  90 16 00 00 */	stw r0, 0(r22)
/* 805799F0  38 80 00 00 */	li r4, 0
/* 805799F4  4B DA EA 09 */	bl init__12J3DFrameCtrlFs
/* 805799F8  38 00 00 00 */	li r0, 0
/* 805799FC  90 16 00 14 */	stw r0, 0x14(r22)
lbl_80579A00:
/* 80579A00  92 DB 05 7C */	stw r22, 0x57c(r27)
/* 80579A04  80 7B 05 7C */	lwz r3, 0x57c(r27)
/* 80579A08  28 03 00 00 */	cmplwi r3, 0
/* 80579A0C  41 82 00 2C */	beq lbl_80579A38
/* 80579A10  38 9F 00 58 */	addi r4, r31, 0x58
/* 80579A14  7E A5 AB 78 */	mr r5, r21
/* 80579A18  38 C0 00 01 */	li r6, 1
/* 80579A1C  38 E0 00 00 */	li r7, 0
/* 80579A20  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80579A24  39 00 00 00 */	li r8, 0
/* 80579A28  39 20 FF FF */	li r9, -1
/* 80579A2C  4B A9 3C E1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80579A30  2C 03 00 00 */	cmpwi r3, 0
/* 80579A34  40 82 00 0C */	bne lbl_80579A40
lbl_80579A38:
/* 80579A38  38 60 00 00 */	li r3, 0
/* 80579A3C  48 00 00 CC */	b lbl_80579B08
lbl_80579A40:
/* 80579A40  C3 FE 00 E8 */	lfs f31, 0xe8(r30)
/* 80579A44  80 7B 05 7C */	lwz r3, 0x57c(r27)
/* 80579A48  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 80579A4C  3B 80 00 00 */	li r28, 0
/* 80579A50  3B 40 00 00 */	li r26, 0
/* 80579A54  3C 60 80 58 */	lis r3, l_arcName@ha /* 0x8057B678@ha */
/* 80579A58  3A C3 B6 78 */	addi r22, r3, l_arcName@l /* 0x8057B678@l */
/* 80579A5C  3A FE 00 D8 */	addi r23, r30, 0xd8
/* 80579A60  3B 3E 00 E0 */	addi r25, r30, 0xe0
lbl_80579A64:
/* 80579A64  80 76 00 00 */	lwz r3, 0(r22)
/* 80579A68  7C 97 D0 2E */	lwzx r4, r23, r26
/* 80579A6C  7F A5 EB 78 */	mr r5, r29
/* 80579A70  38 C0 00 80 */	li r6, 0x80
/* 80579A74  4B AC 28 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80579A78  7C 74 1B 78 */	mr r20, r3
/* 80579A7C  38 60 00 18 */	li r3, 0x18
/* 80579A80  4B D5 51 CD */	bl __nw__FUl
/* 80579A84  7C 78 1B 79 */	or. r24, r3, r3
/* 80579A88  41 82 00 20 */	beq lbl_80579AA8
/* 80579A8C  3C 80 80 58 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8057B8C0@ha */
/* 80579A90  38 04 B8 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8057B8C0@l */
/* 80579A94  90 18 00 00 */	stw r0, 0(r24)
/* 80579A98  38 80 00 00 */	li r4, 0
/* 80579A9C  4B DA E9 61 */	bl init__12J3DFrameCtrlFs
/* 80579AA0  38 00 00 00 */	li r0, 0
/* 80579AA4  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80579AA8:
/* 80579AA8  3A BA 05 74 */	addi r21, r26, 0x574
/* 80579AAC  7F 1B A9 2E */	stwx r24, r27, r21
/* 80579AB0  7C 7B A8 2E */	lwzx r3, r27, r21
/* 80579AB4  28 03 00 00 */	cmplwi r3, 0
/* 80579AB8  41 82 00 2C */	beq lbl_80579AE4
/* 80579ABC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80579AC0  7E 85 A3 78 */	mr r5, r20
/* 80579AC4  38 C0 00 01 */	li r6, 1
/* 80579AC8  7C F9 D0 2E */	lwzx r7, r25, r26
/* 80579ACC  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 80579AD0  39 00 00 00 */	li r8, 0
/* 80579AD4  39 20 FF FF */	li r9, -1
/* 80579AD8  4B A9 3B 65 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80579ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80579AE0  40 82 00 0C */	bne lbl_80579AEC
lbl_80579AE4:
/* 80579AE4  38 60 00 00 */	li r3, 0
/* 80579AE8  48 00 00 20 */	b lbl_80579B08
lbl_80579AEC:
/* 80579AEC  7C 7B A8 2E */	lwzx r3, r27, r21
/* 80579AF0  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 80579AF4  3B 9C 00 01 */	addi r28, r28, 1
/* 80579AF8  2C 1C 00 02 */	cmpwi r28, 2
/* 80579AFC  3B 5A 00 04 */	addi r26, r26, 4
/* 80579B00  41 80 FF 64 */	blt lbl_80579A64
/* 80579B04  38 60 00 01 */	li r3, 1
lbl_80579B08:
/* 80579B08  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80579B0C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80579B10  39 61 00 40 */	addi r11, r1, 0x40
/* 80579B14  4B DE 86 F1 */	bl _restgpr_20
/* 80579B18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80579B1C  7C 08 03 A6 */	mtlr r0
/* 80579B20  38 21 00 50 */	addi r1, r1, 0x50
/* 80579B24  4E 80 00 20 */	blr 
