lbl_80D21500:
/* 80D21500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D21504  7C 08 02 A6 */	mflr r0
/* 80D21508  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2150C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D21510  4B 64 0C C5 */	bl _savegpr_27
/* 80D21514  7C 7E 1B 78 */	mr r30, r3
/* 80D21518  3C 60 80 D2 */	lis r3, l_arcName@ha /* 0x80D21A24@ha */
/* 80D2151C  38 63 1A 24 */	addi r3, r3, l_arcName@l /* 0x80D21A24@l */
/* 80D21520  80 63 00 00 */	lwz r3, 0(r3)
/* 80D21524  38 80 00 05 */	li r4, 5
/* 80D21528  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2152C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D21530  3F 85 00 02 */	addis r28, r5, 2
/* 80D21534  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80D21538  7F 85 E3 78 */	mr r5, r28
/* 80D2153C  38 C0 00 80 */	li r6, 0x80
/* 80D21540  4B 31 AD AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D21544  7C 7F 1B 78 */	mr r31, r3
/* 80D21548  3C 80 00 08 */	lis r4, 8
/* 80D2154C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D21550  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D21554  4B 2F 37 01 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D21558  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80D2155C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D21560  28 00 00 00 */	cmplwi r0, 0
/* 80D21564  40 82 00 0C */	bne lbl_80D21570
/* 80D21568  38 60 00 00 */	li r3, 0
/* 80D2156C  48 00 01 28 */	b lbl_80D21694
lbl_80D21570:
/* 80D21570  3C 60 80 D2 */	lis r3, l_arcName@ha /* 0x80D21A24@ha */
/* 80D21574  38 63 1A 24 */	addi r3, r3, l_arcName@l /* 0x80D21A24@l */
/* 80D21578  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2157C  38 80 00 0B */	li r4, 0xb
/* 80D21580  7F 85 E3 78 */	mr r5, r28
/* 80D21584  38 C0 00 80 */	li r6, 0x80
/* 80D21588  4B 31 AD 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2158C  7C 7B 1B 78 */	mr r27, r3
/* 80D21590  38 60 00 18 */	li r3, 0x18
/* 80D21594  4B 5A D6 B9 */	bl __nw__FUl
/* 80D21598  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D2159C  41 82 00 20 */	beq lbl_80D215BC
/* 80D215A0  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D21A78@ha */
/* 80D215A4  38 04 1A 78 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D21A78@l */
/* 80D215A8  90 1D 00 00 */	stw r0, 0(r29)
/* 80D215AC  38 80 00 00 */	li r4, 0
/* 80D215B0  4B 60 6E 4D */	bl init__12J3DFrameCtrlFs
/* 80D215B4  38 00 00 00 */	li r0, 0
/* 80D215B8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D215BC:
/* 80D215BC  93 BE 05 74 */	stw r29, 0x574(r30)
/* 80D215C0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D215C4  28 03 00 00 */	cmplwi r3, 0
/* 80D215C8  41 82 00 30 */	beq lbl_80D215F8
/* 80D215CC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D215D0  7F 65 DB 78 */	mr r5, r27
/* 80D215D4  38 C0 00 01 */	li r6, 1
/* 80D215D8  38 E0 00 00 */	li r7, 0
/* 80D215DC  3D 00 80 D2 */	lis r8, lit_3704@ha /* 0x80D21A0C@ha */
/* 80D215E0  C0 28 1A 0C */	lfs f1, lit_3704@l(r8)  /* 0x80D21A0C@l */
/* 80D215E4  39 00 00 00 */	li r8, 0
/* 80D215E8  39 20 FF FF */	li r9, -1
/* 80D215EC  4B 2E C0 51 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D215F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D215F4  40 82 00 0C */	bne lbl_80D21600
lbl_80D215F8:
/* 80D215F8  38 60 00 00 */	li r3, 0
/* 80D215FC  48 00 00 98 */	b lbl_80D21694
lbl_80D21600:
/* 80D21600  3C 60 80 D2 */	lis r3, l_arcName@ha /* 0x80D21A24@ha */
/* 80D21604  38 63 1A 24 */	addi r3, r3, l_arcName@l /* 0x80D21A24@l */
/* 80D21608  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2160C  38 80 00 08 */	li r4, 8
/* 80D21610  7F 85 E3 78 */	mr r5, r28
/* 80D21614  38 C0 00 80 */	li r6, 0x80
/* 80D21618  4B 31 AC D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2161C  7C 7B 1B 78 */	mr r27, r3
/* 80D21620  38 60 00 18 */	li r3, 0x18
/* 80D21624  4B 5A D6 29 */	bl __nw__FUl
/* 80D21628  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D2162C  41 82 00 20 */	beq lbl_80D2164C
/* 80D21630  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D21A78@ha */
/* 80D21634  38 04 1A 78 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D21A78@l */
/* 80D21638  90 1D 00 00 */	stw r0, 0(r29)
/* 80D2163C  38 80 00 00 */	li r4, 0
/* 80D21640  4B 60 6D BD */	bl init__12J3DFrameCtrlFs
/* 80D21644  38 00 00 00 */	li r0, 0
/* 80D21648  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D2164C:
/* 80D2164C  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80D21650  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D21654  28 03 00 00 */	cmplwi r3, 0
/* 80D21658  41 82 00 30 */	beq lbl_80D21688
/* 80D2165C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D21660  7F 65 DB 78 */	mr r5, r27
/* 80D21664  38 C0 00 01 */	li r6, 1
/* 80D21668  38 E0 00 00 */	li r7, 0
/* 80D2166C  3D 00 80 D2 */	lis r8, lit_3704@ha /* 0x80D21A0C@ha */
/* 80D21670  C0 28 1A 0C */	lfs f1, lit_3704@l(r8)  /* 0x80D21A0C@l */
/* 80D21674  39 00 00 00 */	li r8, 0
/* 80D21678  39 20 FF FF */	li r9, -1
/* 80D2167C  4B 2E C0 91 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D21680  2C 03 00 00 */	cmpwi r3, 0
/* 80D21684  40 82 00 0C */	bne lbl_80D21690
lbl_80D21688:
/* 80D21688  38 60 00 00 */	li r3, 0
/* 80D2168C  48 00 00 08 */	b lbl_80D21694
lbl_80D21690:
/* 80D21690  38 60 00 01 */	li r3, 1
lbl_80D21694:
/* 80D21694  39 61 00 20 */	addi r11, r1, 0x20
/* 80D21698  4B 64 0B 89 */	bl _restgpr_27
/* 80D2169C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D216A0  7C 08 03 A6 */	mtlr r0
/* 80D216A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D216A8  4E 80 00 20 */	blr 
