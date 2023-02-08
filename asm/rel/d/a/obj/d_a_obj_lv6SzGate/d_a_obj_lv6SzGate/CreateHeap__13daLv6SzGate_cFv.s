lbl_80C75A54:
/* 80C75A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C75A58  7C 08 02 A6 */	mflr r0
/* 80C75A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C75A60  39 61 00 20 */	addi r11, r1, 0x20
/* 80C75A64  4B 6E C7 79 */	bl _savegpr_29
/* 80C75A68  7C 7D 1B 78 */	mr r29, r3
/* 80C75A6C  3C 60 80 C7 */	lis r3, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75A70  38 63 66 5C */	addi r3, r3, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75A74  38 80 00 06 */	li r4, 6
/* 80C75A78  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C75A7C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C75A80  3F E5 00 02 */	addis r31, r5, 2
/* 80C75A84  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C75A88  7F E5 FB 78 */	mr r5, r31
/* 80C75A8C  38 C0 00 80 */	li r6, 0x80
/* 80C75A90  4B 3C 68 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C75A94  7C 60 1B 78 */	mr r0, r3
/* 80C75A98  7C 1E 03 78 */	mr r30, r0
/* 80C75A9C  3C 80 00 08 */	lis r4, 8
/* 80C75AA0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C75AA4  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C75AA8  4B 39 F1 AD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C75AAC  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80C75AB0  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80C75AB4  28 00 00 00 */	cmplwi r0, 0
/* 80C75AB8  40 82 00 0C */	bne lbl_80C75AC4
/* 80C75ABC  38 60 00 00 */	li r3, 0
/* 80C75AC0  48 00 01 34 */	b lbl_80C75BF4
lbl_80C75AC4:
/* 80C75AC4  7F C3 F3 78 */	mr r3, r30
/* 80C75AC8  3C 80 00 08 */	lis r4, 8
/* 80C75ACC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C75AD0  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C75AD4  4B 39 F1 81 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C75AD8  90 7D 05 AC */	stw r3, 0x5ac(r29)
/* 80C75ADC  80 1D 05 AC */	lwz r0, 0x5ac(r29)
/* 80C75AE0  28 00 00 00 */	cmplwi r0, 0
/* 80C75AE4  40 82 00 0C */	bne lbl_80C75AF0
/* 80C75AE8  38 60 00 00 */	li r3, 0
/* 80C75AEC  48 00 01 08 */	b lbl_80C75BF4
lbl_80C75AF0:
/* 80C75AF0  38 60 00 C0 */	li r3, 0xc0
/* 80C75AF4  4B 65 91 59 */	bl __nw__FUl
/* 80C75AF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80C75AFC  41 82 00 0C */	beq lbl_80C75B08
/* 80C75B00  4B 40 5E 71 */	bl __ct__4dBgWFv
/* 80C75B04  7C 60 1B 78 */	mr r0, r3
lbl_80C75B08:
/* 80C75B08  90 1D 05 E8 */	stw r0, 0x5e8(r29)
/* 80C75B0C  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 80C75B10  28 00 00 00 */	cmplwi r0, 0
/* 80C75B14  41 82 00 4C */	beq lbl_80C75B60
/* 80C75B18  3C 60 80 C7 */	lis r3, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75B1C  38 63 66 5C */	addi r3, r3, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75B20  38 80 00 0F */	li r4, 0xf
/* 80C75B24  7F E5 FB 78 */	mr r5, r31
/* 80C75B28  38 C0 00 80 */	li r6, 0x80
/* 80C75B2C  4B 3C 67 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C75B30  7C 64 1B 78 */	mr r4, r3
/* 80C75B34  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80C75B38  38 A0 00 01 */	li r5, 1
/* 80C75B3C  38 DD 05 EC */	addi r6, r29, 0x5ec
/* 80C75B40  4B 40 43 F9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C75B44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C75B48  40 82 00 18 */	bne lbl_80C75B60
/* 80C75B4C  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C75B50  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C75B54  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80C75B58  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C75B5C  48 00 00 14 */	b lbl_80C75B70
lbl_80C75B60:
/* 80C75B60  38 00 00 00 */	li r0, 0
/* 80C75B64  90 1D 05 E8 */	stw r0, 0x5e8(r29)
/* 80C75B68  38 60 00 00 */	li r3, 0
/* 80C75B6C  48 00 00 88 */	b lbl_80C75BF4
lbl_80C75B70:
/* 80C75B70  3C 60 80 C7 */	lis r3, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75B74  38 63 66 5C */	addi r3, r3, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75B78  38 80 00 09 */	li r4, 9
/* 80C75B7C  7F E5 FB 78 */	mr r5, r31
/* 80C75B80  38 C0 00 80 */	li r6, 0x80
/* 80C75B84  4B 3C 67 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C75B88  7C 65 1B 78 */	mr r5, r3
/* 80C75B8C  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80C75B90  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C75B94  38 C0 00 01 */	li r6, 1
/* 80C75B98  38 E0 00 00 */	li r7, 0
/* 80C75B9C  3D 00 80 C7 */	lis r8, lit_3697@ha /* 0x80C76648@ha */
/* 80C75BA0  C0 28 66 48 */	lfs f1, lit_3697@l(r8)  /* 0x80C76648@l */
/* 80C75BA4  39 00 00 00 */	li r8, 0
/* 80C75BA8  39 20 FF FF */	li r9, -1
/* 80C75BAC  4B 39 7B 61 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C75BB0  3C 60 80 C7 */	lis r3, d_a_obj_lv6SzGate__stringBase0@ha /* 0x80C7665C@ha */
/* 80C75BB4  38 63 66 5C */	addi r3, r3, d_a_obj_lv6SzGate__stringBase0@l /* 0x80C7665C@l */
/* 80C75BB8  38 80 00 0C */	li r4, 0xc
/* 80C75BBC  7F E5 FB 78 */	mr r5, r31
/* 80C75BC0  38 C0 00 80 */	li r6, 0x80
/* 80C75BC4  4B 3C 67 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C75BC8  7C 65 1B 78 */	mr r5, r3
/* 80C75BCC  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 80C75BD0  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C75BD4  38 C0 00 01 */	li r6, 1
/* 80C75BD8  38 E0 00 00 */	li r7, 0
/* 80C75BDC  3D 00 80 C7 */	lis r8, lit_3697@ha /* 0x80C76648@ha */
/* 80C75BE0  C0 28 66 48 */	lfs f1, lit_3697@l(r8)  /* 0x80C76648@l */
/* 80C75BE4  39 00 00 00 */	li r8, 0
/* 80C75BE8  39 20 FF FF */	li r9, -1
/* 80C75BEC  4B 39 7A 51 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C75BF0  38 60 00 01 */	li r3, 1
lbl_80C75BF4:
/* 80C75BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C75BF8  4B 6E C6 31 */	bl _restgpr_29
/* 80C75BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C75C00  7C 08 03 A6 */	mtlr r0
/* 80C75C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80C75C08  4E 80 00 20 */	blr 
