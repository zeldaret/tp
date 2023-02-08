lbl_805889A4:
/* 805889A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805889A8  7C 08 02 A6 */	mflr r0
/* 805889AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805889B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805889B4  4B DD 98 21 */	bl _savegpr_27
/* 805889B8  7C 7D 1B 78 */	mr r29, r3
/* 805889BC  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha /* 0x8058AB30@ha */
/* 805889C0  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l /* 0x8058AB30@l */
/* 805889C4  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 805889C8  54 00 10 3A */	slwi r0, r0, 2
/* 805889CC  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 805889D0  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 805889D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805889D8  38 9F 00 00 */	addi r4, r31, 0
/* 805889DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 805889E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805889E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805889E8  3F C5 00 02 */	addis r30, r5, 2
/* 805889EC  3B DE C2 F8 */	addi r30, r30, -15624
/* 805889F0  7F C5 F3 78 */	mr r5, r30
/* 805889F4  38 C0 00 80 */	li r6, 0x80
/* 805889F8  4B AB 38 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805889FC  7C 60 1B 78 */	mr r0, r3
/* 80588A00  7C 1C 03 78 */	mr r28, r0
/* 80588A04  3C 80 00 08 */	lis r4, 8
/* 80588A08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80588A0C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80588A10  4B A8 C2 45 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80588A14  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80588A18  7F 83 E3 78 */	mr r3, r28
/* 80588A1C  3C 80 00 08 */	lis r4, 8
/* 80588A20  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80588A24  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80588A28  4B A8 C2 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80588A2C  90 7D 05 AC */	stw r3, 0x5ac(r29)
/* 80588A30  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80588A34  28 00 00 00 */	cmplwi r0, 0
/* 80588A38  41 82 00 10 */	beq lbl_80588A48
/* 80588A3C  80 1D 05 AC */	lwz r0, 0x5ac(r29)
/* 80588A40  28 00 00 00 */	cmplwi r0, 0
/* 80588A44  40 82 00 0C */	bne lbl_80588A50
lbl_80588A48:
/* 80588A48  38 60 00 00 */	li r3, 0
/* 80588A4C  48 00 01 94 */	b lbl_80588BE0
lbl_80588A50:
/* 80588A50  88 7D 0B EC */	lbz r3, 0xbec(r29)
/* 80588A54  28 03 00 00 */	cmplwi r3, 0
/* 80588A58  41 82 00 0C */	beq lbl_80588A64
/* 80588A5C  28 03 00 02 */	cmplwi r3, 2
/* 80588A60  40 82 01 00 */	bne lbl_80588B60
lbl_80588A64:
/* 80588A64  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80588A68  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80588A6C  28 00 00 FF */	cmplwi r0, 0xff
/* 80588A70  41 82 00 F0 */	beq lbl_80588B60
/* 80588A74  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80588A78  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 80588A7C  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 80588A80  7C 63 00 2E */	lwzx r3, r3, r0
/* 80588A84  38 9F 00 0C */	addi r4, r31, 0xc
/* 80588A88  7C 84 00 2E */	lwzx r4, r4, r0
/* 80588A8C  7F C5 F3 78 */	mr r5, r30
/* 80588A90  38 C0 00 80 */	li r6, 0x80
/* 80588A94  4B AB 38 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80588A98  7C 7C 1B 78 */	mr r28, r3
/* 80588A9C  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80588AA0  54 00 10 3A */	slwi r0, r0, 2
/* 80588AA4  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 80588AA8  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 80588AAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80588AB0  38 9F 00 00 */	addi r4, r31, 0
/* 80588AB4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80588AB8  7F C5 F3 78 */	mr r5, r30
/* 80588ABC  38 C0 00 80 */	li r6, 0x80
/* 80588AC0  4B AB 38 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80588AC4  7C 7B 1B 78 */	mr r27, r3
/* 80588AC8  7F 83 E3 78 */	mr r3, r28
/* 80588ACC  7F 64 DB 78 */	mr r4, r27
/* 80588AD0  4B A8 5D 65 */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80588AD4  7F 83 E3 78 */	mr r3, r28
/* 80588AD8  3C 80 00 08 */	lis r4, 8
/* 80588ADC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80588AE0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80588AE4  4B A8 C1 71 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80588AE8  90 7D 05 B0 */	stw r3, 0x5b0(r29)
/* 80588AEC  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 80588AF0  28 00 00 00 */	cmplwi r0, 0
/* 80588AF4  40 82 00 0C */	bne lbl_80588B00
/* 80588AF8  38 60 00 00 */	li r3, 0
/* 80588AFC  48 00 00 E4 */	b lbl_80588BE0
lbl_80588B00:
/* 80588B00  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80588B04  54 00 10 3A */	slwi r0, r0, 2
/* 80588B08  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 80588B0C  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 80588B10  7C 63 00 2E */	lwzx r3, r3, r0
/* 80588B14  38 9F 00 18 */	addi r4, r31, 0x18
/* 80588B18  7C 84 00 2E */	lwzx r4, r4, r0
/* 80588B1C  7F C5 F3 78 */	mr r5, r30
/* 80588B20  38 C0 00 80 */	li r6, 0x80
/* 80588B24  4B AB 37 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80588B28  7C 7C 1B 78 */	mr r28, r3
/* 80588B2C  7F 64 DB 78 */	mr r4, r27
/* 80588B30  4B A8 5D 05 */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80588B34  7F 83 E3 78 */	mr r3, r28
/* 80588B38  3C 80 00 08 */	lis r4, 8
/* 80588B3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80588B40  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80588B44  4B A8 C1 11 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80588B48  90 7D 05 B4 */	stw r3, 0x5b4(r29)
/* 80588B4C  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 80588B50  28 00 00 00 */	cmplwi r0, 0
/* 80588B54  40 82 00 0C */	bne lbl_80588B60
/* 80588B58  38 60 00 00 */	li r3, 0
/* 80588B5C  48 00 00 84 */	b lbl_80588BE0
lbl_80588B60:
/* 80588B60  38 60 00 C0 */	li r3, 0xc0
/* 80588B64  4B D4 60 E9 */	bl __nw__FUl
/* 80588B68  7C 60 1B 79 */	or. r0, r3, r3
/* 80588B6C  41 82 00 0C */	beq lbl_80588B78
/* 80588B70  4B AF 2E 01 */	bl __ct__4dBgWFv
/* 80588B74  7C 60 1B 78 */	mr r0, r3
lbl_80588B78:
/* 80588B78  90 1D 0A E4 */	stw r0, 0xae4(r29)
/* 80588B7C  80 1D 0A E4 */	lwz r0, 0xae4(r29)
/* 80588B80  28 00 00 00 */	cmplwi r0, 0
/* 80588B84  41 82 00 48 */	beq lbl_80588BCC
/* 80588B88  88 1D 0B EC */	lbz r0, 0xbec(r29)
/* 80588B8C  54 00 10 3A */	slwi r0, r0, 2
/* 80588B90  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 80588B94  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 80588B98  7C 63 00 2E */	lwzx r3, r3, r0
/* 80588B9C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80588BA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80588BA4  7F C5 F3 78 */	mr r5, r30
/* 80588BA8  38 C0 00 80 */	li r6, 0x80
/* 80588BAC  4B AB 37 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80588BB0  7C 64 1B 78 */	mr r4, r3
/* 80588BB4  80 7D 0A E4 */	lwz r3, 0xae4(r29)
/* 80588BB8  38 A0 00 01 */	li r5, 1
/* 80588BBC  38 DD 0A E8 */	addi r6, r29, 0xae8
/* 80588BC0  4B AF 13 79 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80588BC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80588BC8  41 82 00 14 */	beq lbl_80588BDC
lbl_80588BCC:
/* 80588BCC  38 00 00 00 */	li r0, 0
/* 80588BD0  90 1D 0A E4 */	stw r0, 0xae4(r29)
/* 80588BD4  38 60 00 00 */	li r3, 0
/* 80588BD8  48 00 00 08 */	b lbl_80588BE0
lbl_80588BDC:
/* 80588BDC  38 60 00 01 */	li r3, 1
lbl_80588BE0:
/* 80588BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80588BE4  4B DD 96 3D */	bl _restgpr_27
/* 80588BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80588BEC  7C 08 03 A6 */	mtlr r0
/* 80588BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80588BF4  4E 80 00 20 */	blr 
