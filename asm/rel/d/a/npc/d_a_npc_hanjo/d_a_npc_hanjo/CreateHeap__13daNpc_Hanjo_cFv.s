lbl_809F9578:
/* 809F9578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F957C  7C 08 02 A6 */	mflr r0
/* 809F9580  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F9584  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9588  4B 96 8C 44 */	b _savegpr_25
/* 809F958C  7C 7F 1B 78 */	mr r31, r3
/* 809F9590  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809F9594  3B A3 06 00 */	addi r29, r3, m__19daNpc_Hanjo_Param_c@l
/* 809F9598  3C 60 80 A0 */	lis r3, l_bmdData@ha
/* 809F959C  38 83 09 60 */	addi r4, r3, l_bmdData@l
/* 809F95A0  80 04 00 04 */	lwz r0, 4(r4)
/* 809F95A4  54 00 10 3A */	slwi r0, r0, 2
/* 809F95A8  3C 60 80 A0 */	lis r3, l_resNameList@ha
/* 809F95AC  38 63 09 D8 */	addi r3, r3, l_resNameList@l
/* 809F95B0  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F95B4  80 84 00 00 */	lwz r4, 0(r4)
/* 809F95B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809F95BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809F95C0  3F C5 00 02 */	addis r30, r5, 2
/* 809F95C4  3B DE C2 F8 */	addi r30, r30, -15624
/* 809F95C8  7F C5 F3 78 */	mr r5, r30
/* 809F95CC  38 C0 00 80 */	li r6, 0x80
/* 809F95D0  4B 64 2D 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809F95D4  7C 79 1B 79 */	or. r25, r3, r3
/* 809F95D8  40 82 00 0C */	bne lbl_809F95E4
/* 809F95DC  38 60 00 00 */	li r3, 0
/* 809F95E0  48 00 03 84 */	b lbl_809F9964
lbl_809F95E4:
/* 809F95E4  38 60 00 58 */	li r3, 0x58
/* 809F95E8  4B 8D 56 64 */	b __nw__FUl
/* 809F95EC  7C 60 1B 79 */	or. r0, r3, r3
/* 809F95F0  41 82 00 48 */	beq lbl_809F9638
/* 809F95F4  38 1F 05 80 */	addi r0, r31, 0x580
/* 809F95F8  90 01 00 08 */	stw r0, 8(r1)
/* 809F95FC  3C 00 00 08 */	lis r0, 8
/* 809F9600  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F9604  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809F9608  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809F960C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F9610  7F 24 CB 78 */	mr r4, r25
/* 809F9614  38 A0 00 00 */	li r5, 0
/* 809F9618  38 C0 00 00 */	li r6, 0
/* 809F961C  38 E0 00 00 */	li r7, 0
/* 809F9620  39 00 FF FF */	li r8, -1
/* 809F9624  C0 3D 01 18 */	lfs f1, 0x118(r29)
/* 809F9628  39 20 00 00 */	li r9, 0
/* 809F962C  39 40 FF FF */	li r10, -1
/* 809F9630  4B 61 71 A0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809F9634  7C 60 1B 78 */	mr r0, r3
lbl_809F9638:
/* 809F9638  90 1F 05 78 */	stw r0, 0x578(r31)
/* 809F963C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809F9640  28 03 00 00 */	cmplwi r3, 0
/* 809F9644  41 82 00 10 */	beq lbl_809F9654
/* 809F9648  80 A3 00 04 */	lwz r5, 4(r3)
/* 809F964C  28 05 00 00 */	cmplwi r5, 0
/* 809F9650  40 82 00 0C */	bne lbl_809F965C
lbl_809F9654:
/* 809F9654  38 60 00 00 */	li r3, 0
/* 809F9658  48 00 03 0C */	b lbl_809F9964
lbl_809F965C:
/* 809F965C  38 C0 00 00 */	li r6, 0
/* 809F9660  3C 60 80 A0 */	lis r3, ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi@ha
/* 809F9664  38 83 9C 40 */	addi r4, r3, ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi@l
/* 809F9668  48 00 00 18 */	b lbl_809F9680
lbl_809F966C:
/* 809F966C  80 79 00 28 */	lwz r3, 0x28(r25)
/* 809F9670  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809F9674  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F9678  90 83 00 04 */	stw r4, 4(r3)
/* 809F967C  38 C6 00 01 */	addi r6, r6, 1
lbl_809F9680:
/* 809F9680  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809F9684  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 809F9688  7C 03 00 40 */	cmplw r3, r0
/* 809F968C  41 80 FF E0 */	blt lbl_809F966C
/* 809F9690  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809F9694  38 60 01 08 */	li r3, 0x108
/* 809F9698  4B 8D 55 B4 */	b __nw__FUl
/* 809F969C  7C 7B 1B 79 */	or. r27, r3, r3
/* 809F96A0  41 82 00 D0 */	beq lbl_809F9770
/* 809F96A4  7F 7A DB 78 */	mr r26, r27
/* 809F96A8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809F96AC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809F96B0  90 1B 00 00 */	stw r0, 0(r27)
/* 809F96B4  38 7A 00 04 */	addi r3, r26, 4
/* 809F96B8  3C 80 80 A0 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809F96BC  38 84 9B 20 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809F96C0  3C A0 80 A0 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809F96C4  38 A5 9A E4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809F96C8  38 C0 00 08 */	li r6, 8
/* 809F96CC  38 E0 00 02 */	li r7, 2
/* 809F96D0  4B 96 86 90 */	b __construct_array
/* 809F96D4  38 7A 00 14 */	addi r3, r26, 0x14
/* 809F96D8  3C 80 80 A0 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809F96DC  38 84 9A CC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809F96E0  3C A0 80 A0 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809F96E4  38 A5 9A 90 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809F96E8  38 C0 00 08 */	li r6, 8
/* 809F96EC  38 E0 00 08 */	li r7, 8
/* 809F96F0  4B 96 86 70 */	b __construct_array
/* 809F96F4  38 7A 00 54 */	addi r3, r26, 0x54
/* 809F96F8  3C 80 80 A0 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809F96FC  38 84 9A 6C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809F9700  3C A0 80 A0 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809F9704  38 A5 9A 24 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809F9708  38 C0 00 0C */	li r6, 0xc
/* 809F970C  38 E0 00 08 */	li r7, 8
/* 809F9710  4B 96 86 50 */	b __construct_array
/* 809F9714  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 809F9718  3C 80 80 A0 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809F971C  38 84 9A 0C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809F9720  3C A0 80 A0 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809F9724  38 A5 99 D0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809F9728  38 C0 00 08 */	li r6, 8
/* 809F972C  38 E0 00 04 */	li r7, 4
/* 809F9730  4B 96 86 30 */	b __construct_array
/* 809F9734  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 809F9738  3C 80 80 A0 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809F973C  38 84 99 B8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809F9740  3C A0 80 A0 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809F9744  38 A5 99 7C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809F9748  38 C0 00 08 */	li r6, 8
/* 809F974C  38 E0 00 04 */	li r7, 4
/* 809F9750  4B 96 86 10 */	b __construct_array
/* 809F9754  7F 43 D3 78 */	mr r3, r26
/* 809F9758  4B 93 2B C8 */	b initialize__14J3DMaterialAnmFv
/* 809F975C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 809F9760  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 809F9764  90 1B 00 00 */	stw r0, 0(r27)
/* 809F9768  7F 63 DB 78 */	mr r3, r27
/* 809F976C  4B 74 BF F8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809F9770:
/* 809F9770  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 809F9774  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 809F9778  28 00 00 00 */	cmplwi r0, 0
/* 809F977C  40 82 00 0C */	bne lbl_809F9788
/* 809F9780  38 60 00 00 */	li r3, 0
/* 809F9784  48 00 01 E0 */	b lbl_809F9964
lbl_809F9788:
/* 809F9788  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 809F978C  2C 00 00 01 */	cmpwi r0, 1
/* 809F9790  41 82 01 14 */	beq lbl_809F98A4
/* 809F9794  40 80 01 84 */	bge lbl_809F9918
/* 809F9798  2C 00 00 00 */	cmpwi r0, 0
/* 809F979C  40 80 00 08 */	bge lbl_809F97A4
/* 809F97A0  48 00 01 78 */	b lbl_809F9918
lbl_809F97A4:
/* 809F97A4  3C 60 80 A0 */	lis r3, l_bmdData@ha
/* 809F97A8  38 03 09 60 */	addi r0, r3, l_bmdData@l
/* 809F97AC  80 7D 01 10 */	lwz r3, 0x110(r29)
/* 809F97B0  54 63 18 38 */	slwi r3, r3, 3
/* 809F97B4  7C 60 1A 14 */	add r3, r0, r3
/* 809F97B8  80 83 00 00 */	lwz r4, 0(r3)
/* 809F97BC  2C 04 00 00 */	cmpwi r4, 0
/* 809F97C0  41 80 00 28 */	blt lbl_809F97E8
/* 809F97C4  80 03 00 04 */	lwz r0, 4(r3)
/* 809F97C8  54 00 10 3A */	slwi r0, r0, 2
/* 809F97CC  3C 60 80 A0 */	lis r3, l_resNameList@ha
/* 809F97D0  38 63 09 D8 */	addi r3, r3, l_resNameList@l
/* 809F97D4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F97D8  7F C5 F3 78 */	mr r5, r30
/* 809F97DC  38 C0 00 80 */	li r6, 0x80
/* 809F97E0  4B 64 2B 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809F97E4  48 00 00 08 */	b lbl_809F97EC
lbl_809F97E8:
/* 809F97E8  38 60 00 00 */	li r3, 0
lbl_809F97EC:
/* 809F97EC  28 03 00 00 */	cmplwi r3, 0
/* 809F97F0  41 82 00 1C */	beq lbl_809F980C
/* 809F97F4  3C 80 00 08 */	lis r4, 8
/* 809F97F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809F97FC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809F9800  4B 61 B4 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809F9804  90 7F 0E 44 */	stw r3, 0xe44(r31)
/* 809F9808  48 00 00 0C */	b lbl_809F9814
lbl_809F980C:
/* 809F980C  38 00 00 00 */	li r0, 0
/* 809F9810  90 1F 0E 44 */	stw r0, 0xe44(r31)
lbl_809F9814:
/* 809F9814  3B 40 00 00 */	li r26, 0
/* 809F9818  3B 20 00 00 */	li r25, 0
/* 809F981C  38 9D 01 10 */	addi r4, r29, 0x110
/* 809F9820  3C 60 80 A0 */	lis r3, l_bmdData@ha
/* 809F9824  3B 63 09 60 */	addi r27, r3, l_bmdData@l
/* 809F9828  80 04 00 04 */	lwz r0, 4(r4)
/* 809F982C  54 1C 18 38 */	slwi r28, r0, 3
lbl_809F9830:
/* 809F9830  7C 1B E0 2E */	lwzx r0, r27, r28
/* 809F9834  2C 00 00 00 */	cmpwi r0, 0
/* 809F9838  41 80 00 2C */	blt lbl_809F9864
/* 809F983C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 809F9840  54 00 10 3A */	slwi r0, r0, 2
/* 809F9844  3C 60 80 A0 */	lis r3, l_resNameList@ha
/* 809F9848  38 63 09 D8 */	addi r3, r3, l_resNameList@l
/* 809F984C  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F9850  80 9B 00 08 */	lwz r4, 8(r27)
/* 809F9854  7F C5 F3 78 */	mr r5, r30
/* 809F9858  38 C0 00 80 */	li r6, 0x80
/* 809F985C  4B 64 2A 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809F9860  48 00 00 08 */	b lbl_809F9868
lbl_809F9864:
/* 809F9864  38 60 00 00 */	li r3, 0
lbl_809F9868:
/* 809F9868  28 03 00 00 */	cmplwi r3, 0
/* 809F986C  41 82 00 18 */	beq lbl_809F9884
/* 809F9870  3C 80 00 08 */	lis r4, 8
/* 809F9874  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809F9878  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809F987C  4B 61 B3 D8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809F9880  48 00 00 08 */	b lbl_809F9888
lbl_809F9884:
/* 809F9884  38 60 00 00 */	li r3, 0
lbl_809F9888:
/* 809F9888  38 19 11 10 */	addi r0, r25, 0x1110
/* 809F988C  7C 7F 01 2E */	stwx r3, r31, r0
/* 809F9890  3B 5A 00 01 */	addi r26, r26, 1
/* 809F9894  2C 1A 00 04 */	cmpwi r26, 4
/* 809F9898  3B 39 01 74 */	addi r25, r25, 0x174
/* 809F989C  41 80 FF 94 */	blt lbl_809F9830
/* 809F98A0  48 00 00 78 */	b lbl_809F9918
lbl_809F98A4:
/* 809F98A4  38 9D 01 10 */	addi r4, r29, 0x110
/* 809F98A8  3C 60 80 A0 */	lis r3, l_bmdData@ha
/* 809F98AC  38 03 09 60 */	addi r0, r3, l_bmdData@l
/* 809F98B0  80 64 00 04 */	lwz r3, 4(r4)
/* 809F98B4  54 63 18 38 */	slwi r3, r3, 3
/* 809F98B8  7C 60 1A 14 */	add r3, r0, r3
/* 809F98BC  80 83 00 00 */	lwz r4, 0(r3)
/* 809F98C0  2C 04 00 00 */	cmpwi r4, 0
/* 809F98C4  41 80 00 28 */	blt lbl_809F98EC
/* 809F98C8  80 03 00 04 */	lwz r0, 4(r3)
/* 809F98CC  54 00 10 3A */	slwi r0, r0, 2
/* 809F98D0  3C 60 80 A0 */	lis r3, l_resNameList@ha
/* 809F98D4  38 63 09 D8 */	addi r3, r3, l_resNameList@l
/* 809F98D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F98DC  7F C5 F3 78 */	mr r5, r30
/* 809F98E0  38 C0 00 80 */	li r6, 0x80
/* 809F98E4  4B 64 2A 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809F98E8  48 00 00 08 */	b lbl_809F98F0
lbl_809F98EC:
/* 809F98EC  38 60 00 00 */	li r3, 0
lbl_809F98F0:
/* 809F98F0  28 03 00 00 */	cmplwi r3, 0
/* 809F98F4  41 82 00 1C */	beq lbl_809F9910
/* 809F98F8  3C 80 00 08 */	lis r4, 8
/* 809F98FC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809F9900  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809F9904  4B 61 B3 50 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809F9908  90 7F 0E 48 */	stw r3, 0xe48(r31)
/* 809F990C  48 00 00 0C */	b lbl_809F9918
lbl_809F9910:
/* 809F9910  38 00 00 00 */	li r0, 0
/* 809F9914  90 1F 0E 48 */	stw r0, 0xe48(r31)
lbl_809F9918:
/* 809F9918  7F E3 FB 78 */	mr r3, r31
/* 809F991C  38 80 00 01 */	li r4, 1
/* 809F9920  38 A0 00 00 */	li r5, 0
/* 809F9924  4B 75 0A 64 */	b setFaceMotionAnm__8daNpcT_cFib
/* 809F9928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F992C  41 82 00 34 */	beq lbl_809F9960
/* 809F9930  7F E3 FB 78 */	mr r3, r31
/* 809F9934  38 80 00 00 */	li r4, 0
/* 809F9938  C0 3D 00 FC */	lfs f1, 0xfc(r29)
/* 809F993C  38 A0 00 00 */	li r5, 0
/* 809F9940  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 809F9944  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809F9948  7D 89 03 A6 */	mtctr r12
/* 809F994C  4E 80 04 21 */	bctrl 
/* 809F9950  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F9954  41 82 00 0C */	beq lbl_809F9960
/* 809F9958  38 60 00 01 */	li r3, 1
/* 809F995C  48 00 00 08 */	b lbl_809F9964
lbl_809F9960:
/* 809F9960  38 60 00 00 */	li r3, 0
lbl_809F9964:
/* 809F9964  39 61 00 40 */	addi r11, r1, 0x40
/* 809F9968  4B 96 88 B0 */	b _restgpr_25
/* 809F996C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F9970  7C 08 03 A6 */	mtlr r0
/* 809F9974  38 21 00 40 */	addi r1, r1, 0x40
/* 809F9978  4E 80 00 20 */	blr 
