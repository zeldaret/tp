lbl_809B26E8:
/* 809B26E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B26EC  7C 08 02 A6 */	mflr r0
/* 809B26F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B26F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809B26F8  4B 9A FA E4 */	b _savegpr_29
/* 809B26FC  7C 7F 1B 78 */	mr r31, r3
/* 809B2700  3C 60 80 9C */	lis r3, l_bmdData@ha
/* 809B2704  38 83 96 18 */	addi r4, r3, l_bmdData@l
/* 809B2708  80 04 00 04 */	lwz r0, 4(r4)
/* 809B270C  54 00 10 3A */	slwi r0, r0, 2
/* 809B2710  3C 60 80 9C */	lis r3, l_resNameList@ha
/* 809B2714  38 63 95 F8 */	addi r3, r3, l_resNameList@l
/* 809B2718  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B271C  80 84 00 00 */	lwz r4, 0(r4)
/* 809B2720  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B2724  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B2728  3C A5 00 02 */	addis r5, r5, 2
/* 809B272C  38 C0 00 80 */	li r6, 0x80
/* 809B2730  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B2734  4B 68 9B B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B2738  7C 7E 1B 78 */	mr r30, r3
/* 809B273C  38 60 00 58 */	li r3, 0x58
/* 809B2740  4B 91 C5 0C */	b __nw__FUl
/* 809B2744  7C 60 1B 79 */	or. r0, r3, r3
/* 809B2748  41 82 00 4C */	beq lbl_809B2794
/* 809B274C  38 1F 05 80 */	addi r0, r31, 0x580
/* 809B2750  90 01 00 08 */	stw r0, 8(r1)
/* 809B2754  38 00 00 00 */	li r0, 0
/* 809B2758  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B275C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020285@ha */
/* 809B2760  38 04 02 85 */	addi r0, r4, 0x0285 /* 0x11020285@l */
/* 809B2764  90 01 00 10 */	stw r0, 0x10(r1)
/* 809B2768  7F C4 F3 78 */	mr r4, r30
/* 809B276C  38 A0 00 00 */	li r5, 0
/* 809B2770  38 C0 00 00 */	li r6, 0
/* 809B2774  38 E0 00 00 */	li r7, 0
/* 809B2778  39 00 FF FF */	li r8, -1
/* 809B277C  3D 20 80 9C */	lis r9, lit_3916@ha
/* 809B2780  C0 29 93 78 */	lfs f1, lit_3916@l(r9)
/* 809B2784  39 20 00 00 */	li r9, 0
/* 809B2788  39 40 FF FF */	li r10, -1
/* 809B278C  4B 65 E0 44 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809B2790  7C 60 1B 78 */	mr r0, r3
lbl_809B2794:
/* 809B2794  90 1F 05 78 */	stw r0, 0x578(r31)
/* 809B2798  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809B279C  28 03 00 00 */	cmplwi r3, 0
/* 809B27A0  41 82 00 1C */	beq lbl_809B27BC
/* 809B27A4  80 03 00 04 */	lwz r0, 4(r3)
/* 809B27A8  28 00 00 00 */	cmplwi r0, 0
/* 809B27AC  40 82 00 10 */	bne lbl_809B27BC
/* 809B27B0  4B 65 EB 60 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809B27B4  38 00 00 00 */	li r0, 0
/* 809B27B8  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_809B27BC:
/* 809B27BC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809B27C0  28 03 00 00 */	cmplwi r3, 0
/* 809B27C4  40 82 00 0C */	bne lbl_809B27D0
/* 809B27C8  38 60 00 00 */	li r3, 0
/* 809B27CC  48 00 01 A4 */	b lbl_809B2970
lbl_809B27D0:
/* 809B27D0  83 A3 00 04 */	lwz r29, 4(r3)
/* 809B27D4  38 A0 00 00 */	li r5, 0
/* 809B27D8  3C 60 80 9B */	lis r3, ctrlJointCallBack__13daNpc_Fairy_cFP8J3DJointi@ha
/* 809B27DC  38 83 30 94 */	addi r4, r3, ctrlJointCallBack__13daNpc_Fairy_cFP8J3DJointi@l
/* 809B27E0  48 00 00 18 */	b lbl_809B27F8
lbl_809B27E4:
/* 809B27E4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809B27E8  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 809B27EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B27F0  90 83 00 04 */	stw r4, 4(r3)
/* 809B27F4  38 A5 00 01 */	addi r5, r5, 1
lbl_809B27F8:
/* 809B27F8  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 809B27FC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809B2800  7C 03 00 40 */	cmplw r3, r0
/* 809B2804  41 80 FF E0 */	blt lbl_809B27E4
/* 809B2808  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 809B280C  4B FF F3 01 */	bl create__16_Fairy_Feather_cFv
/* 809B2810  2C 03 00 00 */	cmpwi r3, 0
/* 809B2814  40 82 00 0C */	bne lbl_809B2820
/* 809B2818  38 60 00 00 */	li r3, 0
/* 809B281C  48 00 01 54 */	b lbl_809B2970
lbl_809B2820:
/* 809B2820  93 FD 00 14 */	stw r31, 0x14(r29)
/* 809B2824  38 60 01 08 */	li r3, 0x108
/* 809B2828  4B 91 C4 24 */	b __nw__FUl
/* 809B282C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B2830  41 82 00 D0 */	beq lbl_809B2900
/* 809B2834  7F DD F3 78 */	mr r29, r30
/* 809B2838  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809B283C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809B2840  90 1E 00 00 */	stw r0, 0(r30)
/* 809B2844  38 7E 00 04 */	addi r3, r30, 4
/* 809B2848  3C 80 80 9B */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809B284C  38 84 2B 2C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809B2850  3C A0 80 9B */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809B2854  38 A5 2A F0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809B2858  38 C0 00 08 */	li r6, 8
/* 809B285C  38 E0 00 02 */	li r7, 2
/* 809B2860  4B 9A F5 00 */	b __construct_array
/* 809B2864  38 7E 00 14 */	addi r3, r30, 0x14
/* 809B2868  3C 80 80 9B */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809B286C  38 84 2A D8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809B2870  3C A0 80 9B */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809B2874  38 A5 2A 9C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809B2878  38 C0 00 08 */	li r6, 8
/* 809B287C  38 E0 00 08 */	li r7, 8
/* 809B2880  4B 9A F4 E0 */	b __construct_array
/* 809B2884  38 7E 00 54 */	addi r3, r30, 0x54
/* 809B2888  3C 80 80 9B */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809B288C  38 84 2A 78 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809B2890  3C A0 80 9B */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809B2894  38 A5 2A 30 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809B2898  38 C0 00 0C */	li r6, 0xc
/* 809B289C  38 E0 00 08 */	li r7, 8
/* 809B28A0  4B 9A F4 C0 */	b __construct_array
/* 809B28A4  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809B28A8  3C 80 80 9B */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809B28AC  38 84 2A 18 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809B28B0  3C A0 80 9B */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809B28B4  38 A5 29 DC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809B28B8  38 C0 00 08 */	li r6, 8
/* 809B28BC  38 E0 00 04 */	li r7, 4
/* 809B28C0  4B 9A F4 A0 */	b __construct_array
/* 809B28C4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809B28C8  3C 80 80 9B */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809B28CC  38 84 29 C4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809B28D0  3C A0 80 9B */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809B28D4  38 A5 29 88 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809B28D8  38 C0 00 08 */	li r6, 8
/* 809B28DC  38 E0 00 04 */	li r7, 4
/* 809B28E0  4B 9A F4 80 */	b __construct_array
/* 809B28E4  7F C3 F3 78 */	mr r3, r30
/* 809B28E8  4B 97 9A 38 */	b initialize__14J3DMaterialAnmFv
/* 809B28EC  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 809B28F0  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 809B28F4  90 1D 00 00 */	stw r0, 0(r29)
/* 809B28F8  7F A3 EB 78 */	mr r3, r29
/* 809B28FC  4B 79 2E 68 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809B2900:
/* 809B2900  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 809B2904  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 809B2908  28 00 00 00 */	cmplwi r0, 0
/* 809B290C  40 82 00 0C */	bne lbl_809B2918
/* 809B2910  38 60 00 00 */	li r3, 0
/* 809B2914  48 00 00 5C */	b lbl_809B2970
lbl_809B2918:
/* 809B2918  7F E3 FB 78 */	mr r3, r31
/* 809B291C  48 00 02 29 */	bl setAnmData__13daNpc_Fairy_cFv
/* 809B2920  7F E3 FB 78 */	mr r3, r31
/* 809B2924  38 80 00 01 */	li r4, 1
/* 809B2928  38 A0 00 00 */	li r5, 0
/* 809B292C  4B 79 7A 5C */	b setFaceMotionAnm__8daNpcT_cFib
/* 809B2930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809B2934  41 82 00 38 */	beq lbl_809B296C
/* 809B2938  7F E3 FB 78 */	mr r3, r31
/* 809B293C  38 80 00 00 */	li r4, 0
/* 809B2940  3C A0 80 9C */	lis r5, lit_3943@ha
/* 809B2944  C0 25 93 C4 */	lfs f1, lit_3943@l(r5)
/* 809B2948  38 A0 00 00 */	li r5, 0
/* 809B294C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 809B2950  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809B2954  7D 89 03 A6 */	mtctr r12
/* 809B2958  4E 80 04 21 */	bctrl 
/* 809B295C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809B2960  41 82 00 0C */	beq lbl_809B296C
/* 809B2964  38 60 00 01 */	li r3, 1
/* 809B2968  48 00 00 08 */	b lbl_809B2970
lbl_809B296C:
/* 809B296C  38 60 00 01 */	li r3, 1
lbl_809B2970:
/* 809B2970  39 61 00 30 */	addi r11, r1, 0x30
/* 809B2974  4B 9A F8 B4 */	b _restgpr_29
/* 809B2978  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B297C  7C 08 03 A6 */	mtlr r0
/* 809B2980  38 21 00 30 */	addi r1, r1, 0x30
/* 809B2984  4E 80 00 20 */	blr 
