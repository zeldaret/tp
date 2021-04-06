lbl_80BF95D4:
/* 80BF95D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF95D8  7C 08 02 A6 */	mflr r0
/* 80BF95DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF95E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF95E4  4B 76 8B F5 */	bl _savegpr_28
/* 80BF95E8  7C 7E 1B 78 */	mr r30, r3
/* 80BF95EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF95F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF95F4  40 82 01 28 */	bne lbl_80BF971C
/* 80BF95F8  7F C0 F3 79 */	or. r0, r30, r30
/* 80BF95FC  41 82 01 14 */	beq lbl_80BF9710
/* 80BF9600  7C 1C 03 78 */	mr r28, r0
/* 80BF9604  4B 41 F5 61 */	bl __ct__10fopAc_ac_cFv
/* 80BF9608  3B BC 05 74 */	addi r29, r28, 0x574
/* 80BF960C  3C 60 80 C0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80BFAB70@ha */
/* 80BF9610  38 03 AB 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80BFAB70@l */
/* 80BF9614  90 1C 05 74 */	stw r0, 0x574(r28)
/* 80BF9618  7F A3 EB 78 */	mr r3, r29
/* 80BF961C  38 80 00 00 */	li r4, 0
/* 80BF9620  4B 72 ED DD */	bl init__12J3DFrameCtrlFs
/* 80BF9624  38 00 00 00 */	li r0, 0
/* 80BF9628  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BF962C  3B BC 05 8C */	addi r29, r28, 0x58c
/* 80BF9630  3C 60 80 C0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80BFAB70@ha */
/* 80BF9634  38 03 AB 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80BFAB70@l */
/* 80BF9638  90 1C 05 8C */	stw r0, 0x58c(r28)
/* 80BF963C  7F A3 EB 78 */	mr r3, r29
/* 80BF9640  38 80 00 00 */	li r4, 0
/* 80BF9644  4B 72 ED B9 */	bl init__12J3DFrameCtrlFs
/* 80BF9648  38 00 00 00 */	li r0, 0
/* 80BF964C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BF9650  3B BC 05 A4 */	addi r29, r28, 0x5a4
/* 80BF9654  7F A3 EB 78 */	mr r3, r29
/* 80BF9658  4B 47 CA 49 */	bl __ct__9dBgS_AcchFv
/* 80BF965C  3C 60 80 C0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BFAB4C@ha */
/* 80BF9660  38 63 AB 4C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BFAB4C@l */
/* 80BF9664  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BF9668  38 03 00 0C */	addi r0, r3, 0xc
/* 80BF966C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BF9670  38 03 00 18 */	addi r0, r3, 0x18
/* 80BF9674  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BF9678  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BF967C  4B 47 F7 ED */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BF9680  38 7C 07 7C */	addi r3, r28, 0x77c
/* 80BF9684  4B 47 C8 29 */	bl __ct__12dBgS_AcchCirFv
/* 80BF9688  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BF968C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BF9690  90 1C 07 D4 */	stw r0, 0x7d4(r28)
/* 80BF9694  38 7C 07 D8 */	addi r3, r28, 0x7d8
/* 80BF9698  4B 48 A0 C9 */	bl __ct__10dCcD_GSttsFv
/* 80BF969C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BF96A0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BF96A4  90 7C 07 D4 */	stw r3, 0x7d4(r28)
/* 80BF96A8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BF96AC  90 1C 07 D8 */	stw r0, 0x7d8(r28)
/* 80BF96B0  3B 9C 07 F8 */	addi r28, r28, 0x7f8
/* 80BF96B4  7F 83 E3 78 */	mr r3, r28
/* 80BF96B8  4B 48 A3 71 */	bl __ct__12dCcD_GObjInfFv
/* 80BF96BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BF96C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BF96C4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BF96C8  3C 60 80 C0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80BFAB40@ha */
/* 80BF96CC  38 03 AB 40 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BFAB40@l */
/* 80BF96D0  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BF96D4  3C 60 80 C0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80BFAB34@ha */
/* 80BF96D8  38 03 AB 34 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BFAB34@l */
/* 80BF96DC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BF96E0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BF96E4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BF96E8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BF96EC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BF96F0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BF96F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BF96F8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BF96FC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BF9700  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BF9704  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BF9708  38 03 00 84 */	addi r0, r3, 0x84
/* 80BF970C  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_80BF9710:
/* 80BF9710  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BF9714  60 00 00 08 */	ori r0, r0, 8
/* 80BF9718  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BF971C:
/* 80BF971C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BF9720  3C 80 80 C0 */	lis r4, d_a_obj_glowSphere__stringBase0@ha /* 0x80BFA9C4@ha */
/* 80BF9724  38 84 A9 C4 */	addi r4, r4, d_a_obj_glowSphere__stringBase0@l /* 0x80BFA9C4@l */
/* 80BF9728  4B 43 37 95 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF972C  7C 7F 1B 78 */	mr r31, r3
/* 80BF9730  2C 1F 00 04 */	cmpwi r31, 4
/* 80BF9734  41 82 00 08 */	beq lbl_80BF973C
/* 80BF9738  48 00 01 B8 */	b lbl_80BF98F0
lbl_80BF973C:
/* 80BF973C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF9740  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80BF9744  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BF9748  7C 1C 03 78 */	mr r28, r0
/* 80BF974C  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF9750  40 82 00 08 */	bne lbl_80BF9758
/* 80BF9754  3B 80 00 00 */	li r28, 0
lbl_80BF9758:
/* 80BF9758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF975C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF9760  7F A4 EB 78 */	mr r4, r29
/* 80BF9764  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BF9768  7C 05 07 74 */	extsb r5, r0
/* 80BF976C  4B 43 BB F5 */	bl isSwitch__10dSv_info_cCFii
/* 80BF9770  2C 03 00 01 */	cmpwi r3, 1
/* 80BF9774  40 82 00 10 */	bne lbl_80BF9784
/* 80BF9778  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80BF977C  28 00 00 01 */	cmplwi r0, 1
/* 80BF9780  41 82 00 2C */	beq lbl_80BF97AC
lbl_80BF9784:
/* 80BF9784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF9788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF978C  7F A4 EB 78 */	mr r4, r29
/* 80BF9790  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BF9794  7C 05 07 74 */	extsb r5, r0
/* 80BF9798  4B 43 BB C9 */	bl isSwitch__10dSv_info_cCFii
/* 80BF979C  2C 03 00 00 */	cmpwi r3, 0
/* 80BF97A0  40 82 00 14 */	bne lbl_80BF97B4
/* 80BF97A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BF97A8  40 82 00 0C */	bne lbl_80BF97B4
lbl_80BF97AC:
/* 80BF97AC  38 60 00 05 */	li r3, 5
/* 80BF97B0  48 00 01 40 */	b lbl_80BF98F0
lbl_80BF97B4:
/* 80BF97B4  7F C3 F3 78 */	mr r3, r30
/* 80BF97B8  3C 80 80 C0 */	lis r4, createHeapCallBack__10daGlwSph_cFP10fopAc_ac_c@ha /* 0x80BF94AC@ha */
/* 80BF97BC  38 84 94 AC */	addi r4, r4, createHeapCallBack__10daGlwSph_cFP10fopAc_ac_c@l /* 0x80BF94AC@l */
/* 80BF97C0  38 A0 09 E0 */	li r5, 0x9e0
/* 80BF97C4  4B 42 0C ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BF97C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF97CC  40 82 00 0C */	bne lbl_80BF97D8
/* 80BF97D0  38 60 00 05 */	li r3, 5
/* 80BF97D4  48 00 01 1C */	b lbl_80BF98F0
lbl_80BF97D8:
/* 80BF97D8  38 7E 07 BC */	addi r3, r30, 0x7bc
/* 80BF97DC  38 80 00 0A */	li r4, 0xa
/* 80BF97E0  38 A0 00 FF */	li r5, 0xff
/* 80BF97E4  7F C6 F3 78 */	mr r6, r30
/* 80BF97E8  4B 48 A0 79 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BF97EC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80BF97F0  3C 80 80 C0 */	lis r4, mCcDSph__10daGlwSph_c@ha /* 0x80BFAA08@ha */
/* 80BF97F4  38 84 AA 08 */	addi r4, r4, mCcDSph__10daGlwSph_c@l /* 0x80BFAA08@l */
/* 80BF97F8  4B 48 B2 3D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BF97FC  38 1E 07 BC */	addi r0, r30, 0x7bc
/* 80BF9800  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80BF9804  7F C3 F3 78 */	mr r3, r30
/* 80BF9808  3C 80 80 C0 */	lis r4, l_cull_box@ha /* 0x80BFA9F0@ha */
/* 80BF980C  C4 24 A9 F0 */	lfsu f1, l_cull_box@l(r4)  /* 0x80BFA9F0@l */
/* 80BF9810  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BF9814  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BF9818  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BF981C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BF9820  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BF9824  4B 42 0D 25 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BF9828  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80BF982C  3C 80 80 C0 */	lis r4, lit_3826@ha /* 0x80BFA9AC@ha */
/* 80BF9830  C0 24 A9 AC */	lfs f1, lit_3826@l(r4)  /* 0x80BFA9AC@l */
/* 80BF9834  FC 40 08 90 */	fmr f2, f1
/* 80BF9838  4B 47 C7 21 */	bl SetWall__12dBgS_AcchCirFff
/* 80BF983C  38 00 00 00 */	li r0, 0
/* 80BF9840  90 01 00 08 */	stw r0, 8(r1)
/* 80BF9844  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80BF9848  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF984C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BF9850  7F C6 F3 78 */	mr r6, r30
/* 80BF9854  38 E0 00 01 */	li r7, 1
/* 80BF9858  39 1E 07 7C */	addi r8, r30, 0x77c
/* 80BF985C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BF9860  39 40 00 00 */	li r10, 0
/* 80BF9864  4B 47 C9 E5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BF9868  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF986C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BF9870  98 1E 09 54 */	stb r0, 0x954(r30)
/* 80BF9874  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BF9878  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF987C  40 82 00 0C */	bne lbl_80BF9888
/* 80BF9880  38 00 00 00 */	li r0, 0
/* 80BF9884  98 1E 09 54 */	stb r0, 0x954(r30)
lbl_80BF9888:
/* 80BF9888  38 60 00 00 */	li r3, 0
/* 80BF988C  98 7E 09 55 */	stb r3, 0x955(r30)
/* 80BF9890  98 7E 09 53 */	stb r3, 0x953(r30)
/* 80BF9894  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF9898  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80BF989C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF98A0  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 80BF98A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF98A8  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 80BF98AC  38 00 FF FF */	li r0, -1
/* 80BF98B0  90 1E 09 84 */	stw r0, 0x984(r30)
/* 80BF98B4  90 1E 09 88 */	stw r0, 0x988(r30)
/* 80BF98B8  98 7E 09 50 */	stb r3, 0x950(r30)
/* 80BF98BC  88 1E 09 50 */	lbz r0, 0x950(r30)
/* 80BF98C0  98 1E 09 51 */	stb r0, 0x951(r30)
/* 80BF98C4  3C 60 80 C0 */	lis r3, mSphMng__10daGlwSph_c@ha /* 0x80BFAC0C@ha */
/* 80BF98C8  38 63 AC 0C */	addi r3, r3, mSphMng__10daGlwSph_c@l /* 0x80BFAC0C@l */
/* 80BF98CC  7F C4 F3 78 */	mr r4, r30
/* 80BF98D0  48 00 0C 0D */	bl entry__12_GlSph_Mng_cFP10daGlwSph_c
/* 80BF98D4  38 00 FF FF */	li r0, -1
/* 80BF98D8  B0 1E 09 80 */	sth r0, 0x980(r30)
/* 80BF98DC  7F C3 F3 78 */	mr r3, r30
/* 80BF98E0  4B FF FB 5D */	bl setBaseMtx__10daGlwSph_cFv
/* 80BF98E4  7F C3 F3 78 */	mr r3, r30
/* 80BF98E8  48 00 07 7D */	bl actionWaitInit__10daGlwSph_cFv
/* 80BF98EC  7F E3 FB 78 */	mr r3, r31
lbl_80BF98F0:
/* 80BF98F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF98F4  4B 76 89 31 */	bl _restgpr_28
/* 80BF98F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF98FC  7C 08 03 A6 */	mtlr r0
/* 80BF9900  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF9904  4E 80 00 20 */	blr 
