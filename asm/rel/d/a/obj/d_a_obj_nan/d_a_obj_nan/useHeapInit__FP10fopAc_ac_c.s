lbl_80CA0678:
/* 80CA0678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA067C  7C 08 02 A6 */	mflr r0
/* 80CA0680  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA0684  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA0688  4B 6C 1B 4D */	bl _savegpr_27
/* 80CA068C  7C 7F 1B 78 */	mr r31, r3
/* 80CA0690  3C 60 80 CA */	lis r3, lit_3774@ha /* 0x80CA31BC@ha */
/* 80CA0694  3B C3 31 BC */	addi r30, r3, lit_3774@l /* 0x80CA31BC@l */
/* 80CA0698  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA069C  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA06A0  38 80 00 09 */	li r4, 9
/* 80CA06A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA06A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA06AC  3F A5 00 02 */	addis r29, r5, 2
/* 80CA06B0  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CA06B4  7F A5 EB 78 */	mr r5, r29
/* 80CA06B8  38 C0 00 80 */	li r6, 0x80
/* 80CA06BC  4B 39 BC 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA06C0  7C 7B 1B 78 */	mr r27, r3
/* 80CA06C4  38 60 00 58 */	li r3, 0x58
/* 80CA06C8  4B 62 E5 85 */	bl __nw__FUl
/* 80CA06CC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CA06D0  41 82 00 64 */	beq lbl_80CA0734
/* 80CA06D4  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA06D8  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA06DC  38 80 00 06 */	li r4, 6
/* 80CA06E0  7F A5 EB 78 */	mr r5, r29
/* 80CA06E4  38 C0 00 80 */	li r6, 0x80
/* 80CA06E8  4B 39 BC 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA06EC  7C 67 1B 78 */	mr r7, r3
/* 80CA06F0  38 1F 05 98 */	addi r0, r31, 0x598
/* 80CA06F4  90 01 00 08 */	stw r0, 8(r1)
/* 80CA06F8  38 00 00 00 */	li r0, 0
/* 80CA06FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA0700  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80CA0704  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80CA0708  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA070C  7F 83 E3 78 */	mr r3, r28
/* 80CA0710  7F 64 DB 78 */	mr r4, r27
/* 80CA0714  38 A0 00 00 */	li r5, 0
/* 80CA0718  38 C0 00 00 */	li r6, 0
/* 80CA071C  39 00 00 02 */	li r8, 2
/* 80CA0720  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80CA0724  39 20 00 00 */	li r9, 0
/* 80CA0728  39 40 FF FF */	li r10, -1
/* 80CA072C  4B 37 00 A5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80CA0730  7C 7C 1B 78 */	mr r28, r3
lbl_80CA0734:
/* 80CA0734  93 9F 06 28 */	stw r28, 0x628(r31)
/* 80CA0738  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA073C  28 03 00 00 */	cmplwi r3, 0
/* 80CA0740  41 82 00 10 */	beq lbl_80CA0750
/* 80CA0744  83 83 00 04 */	lwz r28, 4(r3)
/* 80CA0748  28 1C 00 00 */	cmplwi r28, 0
/* 80CA074C  40 82 00 0C */	bne lbl_80CA0758
lbl_80CA0750:
/* 80CA0750  38 60 00 00 */	li r3, 0
/* 80CA0754  48 00 01 80 */	b lbl_80CA08D4
lbl_80CA0758:
/* 80CA0758  38 60 00 18 */	li r3, 0x18
/* 80CA075C  4B 62 E4 F1 */	bl __nw__FUl
/* 80CA0760  7C 7B 1B 79 */	or. r27, r3, r3
/* 80CA0764  41 82 00 20 */	beq lbl_80CA0784
/* 80CA0768  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CA3474@ha */
/* 80CA076C  38 04 34 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CA3474@l */
/* 80CA0770  90 1B 00 00 */	stw r0, 0(r27)
/* 80CA0774  38 80 00 00 */	li r4, 0
/* 80CA0778  4B 68 7C 85 */	bl init__12J3DFrameCtrlFs
/* 80CA077C  38 00 00 00 */	li r0, 0
/* 80CA0780  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80CA0784:
/* 80CA0784  93 7F 06 2C */	stw r27, 0x62c(r31)
/* 80CA0788  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 80CA078C  28 00 00 00 */	cmplwi r0, 0
/* 80CA0790  40 82 00 0C */	bne lbl_80CA079C
/* 80CA0794  38 60 00 00 */	li r3, 0
/* 80CA0798  48 00 01 3C */	b lbl_80CA08D4
lbl_80CA079C:
/* 80CA079C  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA07A0  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA07A4  88 1F 07 FB */	lbz r0, 0x7fb(r31)
/* 80CA07A8  54 00 10 3A */	slwi r0, r0, 2
/* 80CA07AC  38 9E 00 04 */	addi r4, r30, 4
/* 80CA07B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA07B4  7F A5 EB 78 */	mr r5, r29
/* 80CA07B8  38 C0 00 80 */	li r6, 0x80
/* 80CA07BC  4B 39 BB 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA07C0  7C 65 1B 78 */	mr r5, r3
/* 80CA07C4  80 9C 00 04 */	lwz r4, 4(r28)
/* 80CA07C8  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 80CA07CC  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA07D0  38 C0 00 01 */	li r6, 1
/* 80CA07D4  38 E0 00 02 */	li r7, 2
/* 80CA07D8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80CA07DC  39 00 00 00 */	li r8, 0
/* 80CA07E0  39 20 FF FF */	li r9, -1
/* 80CA07E4  4B 36 CF 29 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CA07E8  2C 03 00 00 */	cmpwi r3, 0
/* 80CA07EC  40 82 00 0C */	bne lbl_80CA07F8
/* 80CA07F0  38 60 00 00 */	li r3, 0
/* 80CA07F4  48 00 00 E0 */	b lbl_80CA08D4
lbl_80CA07F8:
/* 80CA07F8  38 60 00 18 */	li r3, 0x18
/* 80CA07FC  4B 62 E4 51 */	bl __nw__FUl
/* 80CA0800  7C 7B 1B 79 */	or. r27, r3, r3
/* 80CA0804  41 82 00 20 */	beq lbl_80CA0824
/* 80CA0808  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CA3474@ha */
/* 80CA080C  38 04 34 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CA3474@l */
/* 80CA0810  90 1B 00 00 */	stw r0, 0(r27)
/* 80CA0814  38 80 00 00 */	li r4, 0
/* 80CA0818  4B 68 7B E5 */	bl init__12J3DFrameCtrlFs
/* 80CA081C  38 00 00 00 */	li r0, 0
/* 80CA0820  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80CA0824:
/* 80CA0824  93 7F 06 30 */	stw r27, 0x630(r31)
/* 80CA0828  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 80CA082C  28 00 00 00 */	cmplwi r0, 0
/* 80CA0830  40 82 00 0C */	bne lbl_80CA083C
/* 80CA0834  38 60 00 00 */	li r3, 0
/* 80CA0838  48 00 00 9C */	b lbl_80CA08D4
lbl_80CA083C:
/* 80CA083C  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA0840  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA0844  88 1F 07 FB */	lbz r0, 0x7fb(r31)
/* 80CA0848  54 00 10 3A */	slwi r0, r0, 2
/* 80CA084C  38 9E 00 0C */	addi r4, r30, 0xc
/* 80CA0850  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA0854  7F A5 EB 78 */	mr r5, r29
/* 80CA0858  38 C0 00 80 */	li r6, 0x80
/* 80CA085C  4B 39 BA 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA0860  7C 65 1B 78 */	mr r5, r3
/* 80CA0864  80 9C 00 04 */	lwz r4, 4(r28)
/* 80CA0868  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 80CA086C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA0870  38 C0 00 01 */	li r6, 1
/* 80CA0874  38 E0 00 02 */	li r7, 2
/* 80CA0878  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80CA087C  39 00 00 00 */	li r8, 0
/* 80CA0880  39 20 FF FF */	li r9, -1
/* 80CA0884  4B 36 CD B9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CA0888  2C 03 00 00 */	cmpwi r3, 0
/* 80CA088C  40 82 00 0C */	bne lbl_80CA0898
/* 80CA0890  38 60 00 00 */	li r3, 0
/* 80CA0894  48 00 00 40 */	b lbl_80CA08D4
lbl_80CA0898:
/* 80CA0898  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA089C  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA08A0  38 80 00 06 */	li r4, 6
/* 80CA08A4  7F A5 EB 78 */	mr r5, r29
/* 80CA08A8  38 C0 00 80 */	li r6, 0x80
/* 80CA08AC  4B 39 BA 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA08B0  7C 64 1B 78 */	mr r4, r3
/* 80CA08B4  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA08B8  38 A0 00 02 */	li r5, 2
/* 80CA08BC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80CA08C0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80CA08C4  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80CA08C8  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 80CA08CC  4B 37 05 A5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80CA08D0  38 60 00 01 */	li r3, 1
lbl_80CA08D4:
/* 80CA08D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA08D8  4B 6C 19 49 */	bl _restgpr_27
/* 80CA08DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA08E0  7C 08 03 A6 */	mtlr r0
/* 80CA08E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA08E8  4E 80 00 20 */	blr 
