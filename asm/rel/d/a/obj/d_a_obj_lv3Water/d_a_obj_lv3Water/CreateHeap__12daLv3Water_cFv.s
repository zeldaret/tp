lbl_80C5891C:
/* 80C5891C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C58920  7C 08 02 A6 */	mflr r0
/* 80C58924  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C58928  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5892C  4B 70 98 AD */	bl _savegpr_28
/* 80C58930  7C 7D 1B 78 */	mr r29, r3
/* 80C58934  3C 60 80 C6 */	lis r3, l_bmdIdx@ha /* 0x80C59E70@ha */
/* 80C58938  3B E3 9E 70 */	addi r31, r3, l_bmdIdx@l /* 0x80C59E70@l */
/* 80C5893C  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80C58940  54 00 10 3A */	slwi r0, r0, 2
/* 80C58944  3C 60 80 C6 */	lis r3, l_resNameIdx@ha /* 0x80C5A15C@ha */
/* 80C58948  38 63 A1 5C */	addi r3, r3, l_resNameIdx@l /* 0x80C5A15C@l */
/* 80C5894C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C58950  38 9F 00 00 */	addi r4, r31, 0
/* 80C58954  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C58958  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5895C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C58960  3F C5 00 02 */	addis r30, r5, 2
/* 80C58964  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C58968  7F C5 F3 78 */	mr r5, r30
/* 80C5896C  38 C0 00 80 */	li r6, 0x80
/* 80C58970  4B 3E 39 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C58974  7C 7C 1B 78 */	mr r28, r3
/* 80C58978  3C 80 00 08 */	lis r4, 8
/* 80C5897C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C58980  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C58984  4B 3B C2 D1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C58988  90 7D 05 C0 */	stw r3, 0x5c0(r29)
/* 80C5898C  80 1D 05 C0 */	lwz r0, 0x5c0(r29)
/* 80C58990  28 00 00 00 */	cmplwi r0, 0
/* 80C58994  40 82 00 0C */	bne lbl_80C589A0
/* 80C58998  38 60 00 00 */	li r3, 0
/* 80C5899C  48 00 01 08 */	b lbl_80C58AA4
lbl_80C589A0:
/* 80C589A0  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80C589A4  54 00 10 3A */	slwi r0, r0, 2
/* 80C589A8  3C 60 80 C6 */	lis r3, l_resNameIdx@ha /* 0x80C5A15C@ha */
/* 80C589AC  38 63 A1 5C */	addi r3, r3, l_resNameIdx@l /* 0x80C5A15C@l */
/* 80C589B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C589B4  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 80C589B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C589BC  7F C5 F3 78 */	mr r5, r30
/* 80C589C0  38 C0 00 80 */	li r6, 0x80
/* 80C589C4  4B 3E 39 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C589C8  7C 65 1B 78 */	mr r5, r3
/* 80C589CC  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80C589D0  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C589D4  38 C0 00 01 */	li r6, 1
/* 80C589D8  38 E0 00 02 */	li r7, 2
/* 80C589DC  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 80C589E0  39 00 00 00 */	li r8, 0
/* 80C589E4  39 20 FF FF */	li r9, -1
/* 80C589E8  4B 3B 4C 55 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C589EC  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80C589F0  54 00 10 3A */	slwi r0, r0, 2
/* 80C589F4  38 7F 00 FC */	addi r3, r31, 0xfc
/* 80C589F8  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C589FC  2C 04 FF FF */	cmpwi r4, -1
/* 80C58A00  41 82 00 98 */	beq lbl_80C58A98
/* 80C58A04  3C 60 80 C6 */	lis r3, l_resNameIdx@ha /* 0x80C5A15C@ha */
/* 80C58A08  38 63 A1 5C */	addi r3, r3, l_resNameIdx@l /* 0x80C5A15C@l */
/* 80C58A0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C58A10  7F C5 F3 78 */	mr r5, r30
/* 80C58A14  38 C0 00 80 */	li r6, 0x80
/* 80C58A18  4B 3E 38 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C58A1C  7C 7C 1B 78 */	mr r28, r3
/* 80C58A20  3C 80 00 08 */	lis r4, 8
/* 80C58A24  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80C58A28  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80C58A2C  4B 3B C2 29 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C58A30  90 7D 05 C4 */	stw r3, 0x5c4(r29)
/* 80C58A34  80 1D 05 C4 */	lwz r0, 0x5c4(r29)
/* 80C58A38  28 00 00 00 */	cmplwi r0, 0
/* 80C58A3C  40 82 00 0C */	bne lbl_80C58A48
/* 80C58A40  38 60 00 00 */	li r3, 0
/* 80C58A44  48 00 00 60 */	b lbl_80C58AA4
lbl_80C58A48:
/* 80C58A48  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 80C58A4C  54 00 10 3A */	slwi r0, r0, 2
/* 80C58A50  3C 60 80 C6 */	lis r3, l_resNameIdx@ha /* 0x80C5A15C@ha */
/* 80C58A54  38 63 A1 5C */	addi r3, r3, l_resNameIdx@l /* 0x80C5A15C@l */
/* 80C58A58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C58A5C  38 9F 01 50 */	addi r4, r31, 0x150
/* 80C58A60  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C58A64  7F C5 F3 78 */	mr r5, r30
/* 80C58A68  38 C0 00 80 */	li r6, 0x80
/* 80C58A6C  4B 3E 38 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C58A70  7C 65 1B 78 */	mr r5, r3
/* 80C58A74  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80C58A78  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C58A7C  38 C0 00 01 */	li r6, 1
/* 80C58A80  38 E0 00 02 */	li r7, 2
/* 80C58A84  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 80C58A88  39 00 00 00 */	li r8, 0
/* 80C58A8C  39 20 FF FF */	li r9, -1
/* 80C58A90  4B 3B 4B AD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C58A94  48 00 00 0C */	b lbl_80C58AA0
lbl_80C58A98:
/* 80C58A98  38 00 00 00 */	li r0, 0
/* 80C58A9C  90 1D 05 C4 */	stw r0, 0x5c4(r29)
lbl_80C58AA0:
/* 80C58AA0  38 60 00 01 */	li r3, 1
lbl_80C58AA4:
/* 80C58AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C58AA8  4B 70 97 7D */	bl _restgpr_28
/* 80C58AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C58AB0  7C 08 03 A6 */	mtlr r0
/* 80C58AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C58AB8  4E 80 00 20 */	blr 
