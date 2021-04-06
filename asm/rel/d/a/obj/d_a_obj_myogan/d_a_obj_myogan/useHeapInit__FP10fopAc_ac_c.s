lbl_80C9EE28:
/* 80C9EE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9EE2C  7C 08 02 A6 */	mflr r0
/* 80C9EE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9EE34  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9EE38  4B 6C 33 A5 */	bl _savegpr_29
/* 80C9EE3C  7C 7E 1B 78 */	mr r30, r3
/* 80C9EE40  3C 60 80 CA */	lis r3, d_a_obj_myogan__stringBase0@ha /* 0x80C9F2A0@ha */
/* 80C9EE44  38 63 F2 A0 */	addi r3, r3, d_a_obj_myogan__stringBase0@l /* 0x80C9F2A0@l */
/* 80C9EE48  38 80 00 06 */	li r4, 6
/* 80C9EE4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9EE50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9EE54  3F E5 00 02 */	addis r31, r5, 2
/* 80C9EE58  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C9EE5C  7F E5 FB 78 */	mr r5, r31
/* 80C9EE60  38 C0 00 80 */	li r6, 0x80
/* 80C9EE64  4B 39 D4 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9EE68  3C 80 00 08 */	lis r4, 8
/* 80C9EE6C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C9EE70  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C9EE74  4B 37 5D E1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9EE78  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80C9EE7C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80C9EE80  28 00 00 00 */	cmplwi r0, 0
/* 80C9EE84  40 82 00 0C */	bne lbl_80C9EE90
/* 80C9EE88  38 60 00 00 */	li r3, 0
/* 80C9EE8C  48 00 01 C0 */	b lbl_80C9F04C
lbl_80C9EE90:
/* 80C9EE90  38 60 00 18 */	li r3, 0x18
/* 80C9EE94  4B 62 FD B9 */	bl __nw__FUl
/* 80C9EE98  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C9EE9C  41 82 00 20 */	beq lbl_80C9EEBC
/* 80C9EEA0  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C9F2F8@ha */
/* 80C9EEA4  38 04 F2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C9F2F8@l */
/* 80C9EEA8  90 1D 00 00 */	stw r0, 0(r29)
/* 80C9EEAC  38 80 00 00 */	li r4, 0
/* 80C9EEB0  4B 68 95 4D */	bl init__12J3DFrameCtrlFs
/* 80C9EEB4  38 00 00 00 */	li r0, 0
/* 80C9EEB8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C9EEBC:
/* 80C9EEBC  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80C9EEC0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80C9EEC4  28 00 00 00 */	cmplwi r0, 0
/* 80C9EEC8  40 82 00 0C */	bne lbl_80C9EED4
/* 80C9EECC  38 60 00 00 */	li r3, 0
/* 80C9EED0  48 00 01 7C */	b lbl_80C9F04C
lbl_80C9EED4:
/* 80C9EED4  3C 60 80 CA */	lis r3, d_a_obj_myogan__stringBase0@ha /* 0x80C9F2A0@ha */
/* 80C9EED8  38 63 F2 A0 */	addi r3, r3, d_a_obj_myogan__stringBase0@l /* 0x80C9F2A0@l */
/* 80C9EEDC  38 80 00 09 */	li r4, 9
/* 80C9EEE0  7F E5 FB 78 */	mr r5, r31
/* 80C9EEE4  38 C0 00 80 */	li r6, 0x80
/* 80C9EEE8  4B 39 D4 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9EEEC  7C 65 1B 78 */	mr r5, r3
/* 80C9EEF0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C9EEF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9EEF8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C9EEFC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9EF00  38 C0 00 01 */	li r6, 1
/* 80C9EF04  38 E0 00 02 */	li r7, 2
/* 80C9EF08  3D 00 80 CA */	lis r8, lit_3762@ha /* 0x80C9F288@ha */
/* 80C9EF0C  C0 28 F2 88 */	lfs f1, lit_3762@l(r8)  /* 0x80C9F288@l */
/* 80C9EF10  39 00 00 00 */	li r8, 0
/* 80C9EF14  39 20 FF FF */	li r9, -1
/* 80C9EF18  4B 36 E7 F5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C9EF1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9EF20  40 82 00 0C */	bne lbl_80C9EF2C
/* 80C9EF24  38 60 00 00 */	li r3, 0
/* 80C9EF28  48 00 01 24 */	b lbl_80C9F04C
lbl_80C9EF2C:
/* 80C9EF2C  38 60 00 18 */	li r3, 0x18
/* 80C9EF30  4B 62 FD 1D */	bl __nw__FUl
/* 80C9EF34  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C9EF38  41 82 00 20 */	beq lbl_80C9EF58
/* 80C9EF3C  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C9F2F8@ha */
/* 80C9EF40  38 04 F2 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C9F2F8@l */
/* 80C9EF44  90 1D 00 00 */	stw r0, 0(r29)
/* 80C9EF48  38 80 00 00 */	li r4, 0
/* 80C9EF4C  4B 68 94 B1 */	bl init__12J3DFrameCtrlFs
/* 80C9EF50  38 00 00 00 */	li r0, 0
/* 80C9EF54  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C9EF58:
/* 80C9EF58  93 BE 05 74 */	stw r29, 0x574(r30)
/* 80C9EF5C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C9EF60  28 00 00 00 */	cmplwi r0, 0
/* 80C9EF64  40 82 00 0C */	bne lbl_80C9EF70
/* 80C9EF68  38 60 00 00 */	li r3, 0
/* 80C9EF6C  48 00 00 E0 */	b lbl_80C9F04C
lbl_80C9EF70:
/* 80C9EF70  3C 60 80 CA */	lis r3, d_a_obj_myogan__stringBase0@ha /* 0x80C9F2A0@ha */
/* 80C9EF74  38 63 F2 A0 */	addi r3, r3, d_a_obj_myogan__stringBase0@l /* 0x80C9F2A0@l */
/* 80C9EF78  38 80 00 0C */	li r4, 0xc
/* 80C9EF7C  7F E5 FB 78 */	mr r5, r31
/* 80C9EF80  38 C0 00 80 */	li r6, 0x80
/* 80C9EF84  4B 39 D3 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9EF88  7C 65 1B 78 */	mr r5, r3
/* 80C9EF8C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C9EF90  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9EF94  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C9EF98  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9EF9C  38 C0 00 01 */	li r6, 1
/* 80C9EFA0  38 E0 00 02 */	li r7, 2
/* 80C9EFA4  3D 00 80 CA */	lis r8, lit_3762@ha /* 0x80C9F288@ha */
/* 80C9EFA8  C0 28 F2 88 */	lfs f1, lit_3762@l(r8)  /* 0x80C9F288@l */
/* 80C9EFAC  39 00 00 00 */	li r8, 0
/* 80C9EFB0  39 20 FF FF */	li r9, -1
/* 80C9EFB4  4B 36 E6 89 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C9EFB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C9EFBC  40 82 00 0C */	bne lbl_80C9EFC8
/* 80C9EFC0  38 60 00 00 */	li r3, 0
/* 80C9EFC4  48 00 00 88 */	b lbl_80C9F04C
lbl_80C9EFC8:
/* 80C9EFC8  38 60 00 C0 */	li r3, 0xc0
/* 80C9EFCC  4B 62 FC 81 */	bl __nw__FUl
/* 80C9EFD0  7C 60 1B 79 */	or. r0, r3, r3
/* 80C9EFD4  41 82 00 0C */	beq lbl_80C9EFE0
/* 80C9EFD8  4B 3D C9 99 */	bl __ct__4dBgWFv
/* 80C9EFDC  7C 60 1B 78 */	mr r0, r3
lbl_80C9EFE0:
/* 80C9EFE0  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80C9EFE4  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80C9EFE8  28 00 00 00 */	cmplwi r0, 0
/* 80C9EFEC  40 82 00 0C */	bne lbl_80C9EFF8
/* 80C9EFF0  38 60 00 00 */	li r3, 0
/* 80C9EFF4  48 00 00 58 */	b lbl_80C9F04C
lbl_80C9EFF8:
/* 80C9EFF8  3C 60 80 CA */	lis r3, d_a_obj_myogan__stringBase0@ha /* 0x80C9F2A0@ha */
/* 80C9EFFC  38 63 F2 A0 */	addi r3, r3, d_a_obj_myogan__stringBase0@l /* 0x80C9F2A0@l */
/* 80C9F000  38 80 00 0F */	li r4, 0xf
/* 80C9F004  7F E5 FB 78 */	mr r5, r31
/* 80C9F008  38 C0 00 80 */	li r6, 0x80
/* 80C9F00C  4B 39 D2 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9F010  7C 64 1B 78 */	mr r4, r3
/* 80C9F014  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C9F018  38 A0 00 01 */	li r5, 1
/* 80C9F01C  38 DE 05 8C */	addi r6, r30, 0x58c
/* 80C9F020  4B 3D AF 19 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C9F024  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C9F028  28 00 00 01 */	cmplwi r0, 1
/* 80C9F02C  40 82 00 0C */	bne lbl_80C9F038
/* 80C9F030  38 60 00 00 */	li r3, 0
/* 80C9F034  48 00 00 18 */	b lbl_80C9F04C
lbl_80C9F038:
/* 80C9F038  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C9F03C  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C9F040  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C9F044  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C9F048  38 60 00 01 */	li r3, 1
lbl_80C9F04C:
/* 80C9F04C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F050  4B 6C 31 D9 */	bl _restgpr_29
/* 80C9F054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9F058  7C 08 03 A6 */	mtlr r0
/* 80C9F05C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9F060  4E 80 00 20 */	blr 
