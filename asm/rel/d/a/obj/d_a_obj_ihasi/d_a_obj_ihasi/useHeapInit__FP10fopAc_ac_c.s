lbl_80C26324:
/* 80C26324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C26328  7C 08 02 A6 */	mflr r0
/* 80C2632C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C26330  39 61 00 20 */	addi r11, r1, 0x20
/* 80C26334  4B 73 BE A9 */	bl _savegpr_29
/* 80C26338  7C 7E 1B 78 */	mr r30, r3
/* 80C2633C  3C 60 80 C2 */	lis r3, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C26340  38 63 68 C4 */	addi r3, r3, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C26344  38 80 00 05 */	li r4, 5
/* 80C26348  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2634C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C26350  3F E5 00 02 */	addis r31, r5, 2
/* 80C26354  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C26358  7F E5 FB 78 */	mr r5, r31
/* 80C2635C  38 C0 00 80 */	li r6, 0x80
/* 80C26360  4B 41 5F 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C26364  3C 80 00 08 */	lis r4, 8
/* 80C26368  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C2636C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C26370  4B 3E E8 E5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C26374  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80C26378  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80C2637C  28 00 00 00 */	cmplwi r0, 0
/* 80C26380  40 82 00 0C */	bne lbl_80C2638C
/* 80C26384  38 60 00 00 */	li r3, 0
/* 80C26388  48 00 01 58 */	b lbl_80C264E0
lbl_80C2638C:
/* 80C2638C  38 60 00 C0 */	li r3, 0xc0
/* 80C26390  4B 6A 88 BD */	bl __nw__FUl
/* 80C26394  7C 60 1B 79 */	or. r0, r3, r3
/* 80C26398  41 82 00 0C */	beq lbl_80C263A4
/* 80C2639C  4B 45 55 D5 */	bl __ct__4dBgWFv
/* 80C263A0  7C 60 1B 78 */	mr r0, r3
lbl_80C263A4:
/* 80C263A4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80C263A8  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80C263AC  28 00 00 00 */	cmplwi r0, 0
/* 80C263B0  40 82 00 0C */	bne lbl_80C263BC
/* 80C263B4  38 60 00 00 */	li r3, 0
/* 80C263B8  48 00 01 28 */	b lbl_80C264E0
lbl_80C263BC:
/* 80C263BC  3C 60 80 C2 */	lis r3, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C263C0  38 63 68 C4 */	addi r3, r3, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C263C4  38 80 00 0C */	li r4, 0xc
/* 80C263C8  7F E5 FB 78 */	mr r5, r31
/* 80C263CC  38 C0 00 80 */	li r6, 0x80
/* 80C263D0  4B 41 5F 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C263D4  7C 64 1B 78 */	mr r4, r3
/* 80C263D8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C263DC  38 A0 00 01 */	li r5, 1
/* 80C263E0  38 DE 05 88 */	addi r6, r30, 0x588
/* 80C263E4  4B 45 3B 55 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C263E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C263EC  28 00 00 01 */	cmplwi r0, 1
/* 80C263F0  40 82 00 0C */	bne lbl_80C263FC
/* 80C263F4  38 60 00 00 */	li r3, 0
/* 80C263F8  48 00 00 E8 */	b lbl_80C264E0
lbl_80C263FC:
/* 80C263FC  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C26400  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C26404  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C26408  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C2640C  3C 60 80 C2 */	lis r3, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C26410  38 63 68 C4 */	addi r3, r3, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C26414  38 80 00 06 */	li r4, 6
/* 80C26418  7F E5 FB 78 */	mr r5, r31
/* 80C2641C  38 C0 00 80 */	li r6, 0x80
/* 80C26420  4B 41 5E CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C26424  3C 80 00 08 */	lis r4, 8
/* 80C26428  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C2642C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C26430  4B 3E E8 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C26434  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80C26438  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C2643C  28 00 00 00 */	cmplwi r0, 0
/* 80C26440  40 82 00 0C */	bne lbl_80C2644C
/* 80C26444  38 60 00 00 */	li r3, 0
/* 80C26448  48 00 00 98 */	b lbl_80C264E0
lbl_80C2644C:
/* 80C2644C  38 60 00 18 */	li r3, 0x18
/* 80C26450  4B 6A 87 FD */	bl __nw__FUl
/* 80C26454  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C26458  41 82 00 20 */	beq lbl_80C26478
/* 80C2645C  3C 80 80 C2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C26928@ha */
/* 80C26460  38 04 69 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C26928@l */
/* 80C26464  90 1D 00 00 */	stw r0, 0(r29)
/* 80C26468  38 80 00 00 */	li r4, 0
/* 80C2646C  4B 70 1F 91 */	bl init__12J3DFrameCtrlFs
/* 80C26470  38 00 00 00 */	li r0, 0
/* 80C26474  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C26478:
/* 80C26478  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80C2647C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80C26480  28 00 00 00 */	cmplwi r0, 0
/* 80C26484  40 82 00 0C */	bne lbl_80C26490
/* 80C26488  38 60 00 00 */	li r3, 0
/* 80C2648C  48 00 00 54 */	b lbl_80C264E0
lbl_80C26490:
/* 80C26490  3C 60 80 C2 */	lis r3, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C26494  38 63 68 C4 */	addi r3, r3, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C26498  38 80 00 09 */	li r4, 9
/* 80C2649C  7F E5 FB 78 */	mr r5, r31
/* 80C264A0  38 C0 00 80 */	li r6, 0x80
/* 80C264A4  4B 41 5E 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C264A8  7C 65 1B 78 */	mr r5, r3
/* 80C264AC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C264B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C264B4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C264B8  38 84 00 58 */	addi r4, r4, 0x58
/* 80C264BC  38 C0 00 01 */	li r6, 1
/* 80C264C0  38 E0 00 00 */	li r7, 0
/* 80C264C4  3D 00 80 C2 */	lis r8, lit_3922@ha /* 0x80C26894@ha */
/* 80C264C8  C0 28 68 94 */	lfs f1, lit_3922@l(r8)  /* 0x80C26894@l */
/* 80C264CC  39 00 00 00 */	li r8, 0
/* 80C264D0  39 20 FF FF */	li r9, -1
/* 80C264D4  4B 3E 71 69 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C264D8  30 03 FF FF */	addic r0, r3, -1
/* 80C264DC  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C264E0:
/* 80C264E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C264E4  4B 73 BD 45 */	bl _restgpr_29
/* 80C264E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C264EC  7C 08 03 A6 */	mtlr r0
/* 80C264F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C264F4  4E 80 00 20 */	blr 
