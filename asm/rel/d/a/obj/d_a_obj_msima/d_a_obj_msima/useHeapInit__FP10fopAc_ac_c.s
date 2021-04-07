lbl_80C9C42C:
/* 80C9C42C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C9C430  7C 08 02 A6 */	mflr r0
/* 80C9C434  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C9C438  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9C43C  4B 6C 5D 85 */	bl _savegpr_22
/* 80C9C440  7C 7E 1B 78 */	mr r30, r3
/* 80C9C444  3C 60 80 CA */	lis r3, d_a_obj_msima__stringBase0@ha /* 0x80C9CDEC@ha */
/* 80C9C448  38 63 CD EC */	addi r3, r3, d_a_obj_msima__stringBase0@l /* 0x80C9CDEC@l */
/* 80C9C44C  38 80 00 07 */	li r4, 7
/* 80C9C450  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9C454  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9C458  3F E5 00 02 */	addis r31, r5, 2
/* 80C9C45C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C9C460  7F E5 FB 78 */	mr r5, r31
/* 80C9C464  38 C0 00 80 */	li r6, 0x80
/* 80C9C468  4B 39 FE 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9C46C  3C 80 00 08 */	lis r4, 8
/* 80C9C470  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C9C474  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C9C478  4B 37 87 DD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9C47C  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80C9C480  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80C9C484  28 00 00 00 */	cmplwi r0, 0
/* 80C9C488  40 82 00 0C */	bne lbl_80C9C494
/* 80C9C48C  38 60 00 00 */	li r3, 0
/* 80C9C490  48 00 02 78 */	b lbl_80C9C708
lbl_80C9C494:
/* 80C9C494  38 60 00 C0 */	li r3, 0xc0
/* 80C9C498  4B 63 27 B5 */	bl __nw__FUl
/* 80C9C49C  7C 60 1B 79 */	or. r0, r3, r3
/* 80C9C4A0  41 82 00 0C */	beq lbl_80C9C4AC
/* 80C9C4A4  4B 3D F4 CD */	bl __ct__4dBgWFv
/* 80C9C4A8  7C 60 1B 78 */	mr r0, r3
lbl_80C9C4AC:
/* 80C9C4AC  90 1E 05 FC */	stw r0, 0x5fc(r30)
/* 80C9C4B0  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80C9C4B4  28 00 00 00 */	cmplwi r0, 0
/* 80C9C4B8  40 82 00 0C */	bne lbl_80C9C4C4
/* 80C9C4BC  38 60 00 00 */	li r3, 0
/* 80C9C4C0  48 00 02 48 */	b lbl_80C9C708
lbl_80C9C4C4:
/* 80C9C4C4  3C 60 80 CA */	lis r3, d_a_obj_msima__stringBase0@ha /* 0x80C9CDEC@ha */
/* 80C9C4C8  38 63 CD EC */	addi r3, r3, d_a_obj_msima__stringBase0@l /* 0x80C9CDEC@l */
/* 80C9C4CC  38 80 00 10 */	li r4, 0x10
/* 80C9C4D0  7F E5 FB 78 */	mr r5, r31
/* 80C9C4D4  38 C0 00 80 */	li r6, 0x80
/* 80C9C4D8  4B 39 FE 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9C4DC  7C 64 1B 78 */	mr r4, r3
/* 80C9C4E0  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80C9C4E4  38 A0 00 01 */	li r5, 1
/* 80C9C4E8  38 DE 05 CC */	addi r6, r30, 0x5cc
/* 80C9C4EC  4B 3D DA 4D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C9C4F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C9C4F4  28 00 00 01 */	cmplwi r0, 1
/* 80C9C4F8  40 82 00 0C */	bne lbl_80C9C504
/* 80C9C4FC  38 60 00 00 */	li r3, 0
/* 80C9C500  48 00 02 08 */	b lbl_80C9C708
lbl_80C9C504:
/* 80C9C504  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C9C508  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C9C50C  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80C9C510  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C9C514  3C 60 80 CA */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C9B44C@ha */
/* 80C9C518  38 03 B4 4C */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C9B44C@l */
/* 80C9C51C  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80C9C520  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C9C524  38 60 00 18 */	li r3, 0x18
/* 80C9C528  4B 63 27 25 */	bl __nw__FUl
/* 80C9C52C  7C 79 1B 79 */	or. r25, r3, r3
/* 80C9C530  41 82 00 20 */	beq lbl_80C9C550
/* 80C9C534  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C9CE48@ha */
/* 80C9C538  38 04 CE 48 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C9CE48@l */
/* 80C9C53C  90 19 00 00 */	stw r0, 0(r25)
/* 80C9C540  38 80 00 00 */	li r4, 0
/* 80C9C544  4B 68 BE B9 */	bl init__12J3DFrameCtrlFs
/* 80C9C548  38 00 00 00 */	li r0, 0
/* 80C9C54C  90 19 00 14 */	stw r0, 0x14(r25)
lbl_80C9C550:
/* 80C9C550  93 3E 05 7C */	stw r25, 0x57c(r30)
/* 80C9C554  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 80C9C558  28 00 00 00 */	cmplwi r0, 0
/* 80C9C55C  40 82 00 0C */	bne lbl_80C9C568
/* 80C9C560  38 60 00 00 */	li r3, 0
/* 80C9C564  48 00 01 A4 */	b lbl_80C9C708
lbl_80C9C568:
/* 80C9C568  3C 60 80 CA */	lis r3, d_a_obj_msima__stringBase0@ha /* 0x80C9CDEC@ha */
/* 80C9C56C  38 63 CD EC */	addi r3, r3, d_a_obj_msima__stringBase0@l /* 0x80C9CDEC@l */
/* 80C9C570  38 80 00 0D */	li r4, 0xd
/* 80C9C574  7F E5 FB 78 */	mr r5, r31
/* 80C9C578  38 C0 00 80 */	li r6, 0x80
/* 80C9C57C  4B 39 FD 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9C580  7C 65 1B 78 */	mr r5, r3
/* 80C9C584  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C9C588  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9C58C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9C590  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9C594  38 C0 00 01 */	li r6, 1
/* 80C9C598  38 E0 00 02 */	li r7, 2
/* 80C9C59C  3D 00 80 CA */	lis r8, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9C5A0  C0 28 CD 4C */	lfs f1, lit_3863@l(r8)  /* 0x80C9CD4C@l */
/* 80C9C5A4  39 00 00 00 */	li r8, 0
/* 80C9C5A8  39 20 FF FF */	li r9, -1
/* 80C9C5AC  4B 37 10 91 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C9C5B0  2C 03 00 00 */	cmpwi r3, 0
/* 80C9C5B4  40 82 00 0C */	bne lbl_80C9C5C0
/* 80C9C5B8  38 60 00 00 */	li r3, 0
/* 80C9C5BC  48 00 01 4C */	b lbl_80C9C708
lbl_80C9C5C0:
/* 80C9C5C0  38 60 00 18 */	li r3, 0x18
/* 80C9C5C4  4B 63 26 89 */	bl __nw__FUl
/* 80C9C5C8  7C 79 1B 79 */	or. r25, r3, r3
/* 80C9C5CC  41 82 00 20 */	beq lbl_80C9C5EC
/* 80C9C5D0  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C9CE48@ha */
/* 80C9C5D4  38 04 CE 48 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C9CE48@l */
/* 80C9C5D8  90 19 00 00 */	stw r0, 0(r25)
/* 80C9C5DC  38 80 00 00 */	li r4, 0
/* 80C9C5E0  4B 68 BE 1D */	bl init__12J3DFrameCtrlFs
/* 80C9C5E4  38 00 00 00 */	li r0, 0
/* 80C9C5E8  90 19 00 14 */	stw r0, 0x14(r25)
lbl_80C9C5EC:
/* 80C9C5EC  93 3E 05 78 */	stw r25, 0x578(r30)
/* 80C9C5F0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80C9C5F4  28 00 00 00 */	cmplwi r0, 0
/* 80C9C5F8  40 82 00 0C */	bne lbl_80C9C604
/* 80C9C5FC  38 60 00 00 */	li r3, 0
/* 80C9C600  48 00 01 08 */	b lbl_80C9C708
lbl_80C9C604:
/* 80C9C604  3C 60 80 CA */	lis r3, d_a_obj_msima__stringBase0@ha /* 0x80C9CDEC@ha */
/* 80C9C608  38 63 CD EC */	addi r3, r3, d_a_obj_msima__stringBase0@l /* 0x80C9CDEC@l */
/* 80C9C60C  38 80 00 0A */	li r4, 0xa
/* 80C9C610  7F E5 FB 78 */	mr r5, r31
/* 80C9C614  38 C0 00 80 */	li r6, 0x80
/* 80C9C618  4B 39 FC D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9C61C  7C 65 1B 78 */	mr r5, r3
/* 80C9C620  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C9C624  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9C628  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C9C62C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9C630  38 C0 00 01 */	li r6, 1
/* 80C9C634  38 E0 00 02 */	li r7, 2
/* 80C9C638  3D 00 80 CA */	lis r8, lit_3863@ha /* 0x80C9CD4C@ha */
/* 80C9C63C  C0 28 CD 4C */	lfs f1, lit_3863@l(r8)  /* 0x80C9CD4C@l */
/* 80C9C640  39 00 00 00 */	li r8, 0
/* 80C9C644  39 20 FF FF */	li r9, -1
/* 80C9C648  4B 37 10 C5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C9C64C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9C650  40 82 00 0C */	bne lbl_80C9C65C
/* 80C9C654  38 60 00 00 */	li r3, 0
/* 80C9C658  48 00 00 B0 */	b lbl_80C9C708
lbl_80C9C65C:
/* 80C9C65C  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80C9C660  28 00 00 01 */	cmplwi r0, 1
/* 80C9C664  41 82 00 A0 */	beq lbl_80C9C704
/* 80C9C668  3A E0 00 00 */	li r23, 0
/* 80C9C66C  3B A0 00 00 */	li r29, 0
/* 80C9C670  3C 60 80 CA */	lis r3, d_a_obj_msima__stringBase0@ha /* 0x80C9CDEC@ha */
/* 80C9C674  3B 23 CD EC */	addi r25, r3, d_a_obj_msima__stringBase0@l /* 0x80C9CDEC@l */
/* 80C9C678  3F 40 11 00 */	lis r26, 0x1100
/* 80C9C67C  3C 60 80 CA */	lis r3, lit_4412@ha /* 0x80C9CDCC@ha */
/* 80C9C680  3B 63 CD CC */	addi r27, r3, lit_4412@l /* 0x80C9CDCC@l */
lbl_80C9C684:
/* 80C9C684  3A C0 00 00 */	li r22, 0
/* 80C9C688  3B 80 00 00 */	li r28, 0
/* 80C9C68C  7F 1E EA 14 */	add r24, r30, r29
lbl_80C9C690:
/* 80C9C690  7F 23 CB 78 */	mr r3, r25
/* 80C9C694  38 80 00 06 */	li r4, 6
/* 80C9C698  7F E5 FB 78 */	mr r5, r31
/* 80C9C69C  38 C0 00 80 */	li r6, 0x80
/* 80C9C6A0  4B 39 FC 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9C6A4  3C 80 00 08 */	lis r4, 8
/* 80C9C6A8  38 BA 00 84 */	addi r5, r26, 0x84
/* 80C9C6AC  4B 37 85 A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9C6B0  38 1C 06 20 */	addi r0, r28, 0x620
/* 80C9C6B4  7C 78 01 2E */	stwx r3, r24, r0
/* 80C9C6B8  7C 18 00 2E */	lwzx r0, r24, r0
/* 80C9C6BC  28 00 00 00 */	cmplwi r0, 0
/* 80C9C6C0  40 82 00 0C */	bne lbl_80C9C6CC
/* 80C9C6C4  38 60 00 00 */	li r3, 0
/* 80C9C6C8  48 00 00 40 */	b lbl_80C9C708
lbl_80C9C6CC:
/* 80C9C6CC  3A D6 00 01 */	addi r22, r22, 1
/* 80C9C6D0  2C 16 00 23 */	cmpwi r22, 0x23
/* 80C9C6D4  3B 9C 00 04 */	addi r28, r28, 4
/* 80C9C6D8  41 80 FF B8 */	blt lbl_80C9C690
/* 80C9C6DC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80C9C6E0  4B 5C B2 75 */	bl cM_rndF__Ff
/* 80C9C6E4  FC 00 08 1E */	fctiwz f0, f1
/* 80C9C6E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C9C6EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C9C6F0  B0 18 06 B0 */	sth r0, 0x6b0(r24)
/* 80C9C6F4  3A F7 00 01 */	addi r23, r23, 1
/* 80C9C6F8  2C 17 00 04 */	cmpwi r23, 4
/* 80C9C6FC  3B BD 00 A0 */	addi r29, r29, 0xa0
/* 80C9C700  41 80 FF 84 */	blt lbl_80C9C684
lbl_80C9C704:
/* 80C9C704  38 60 00 01 */	li r3, 1
lbl_80C9C708:
/* 80C9C708  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9C70C  4B 6C 5B 01 */	bl _restgpr_22
/* 80C9C710  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C9C714  7C 08 03 A6 */	mtlr r0
/* 80C9C718  38 21 00 40 */	addi r1, r1, 0x40
/* 80C9C71C  4E 80 00 20 */	blr 
