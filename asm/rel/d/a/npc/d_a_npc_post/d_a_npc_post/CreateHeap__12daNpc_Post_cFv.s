lbl_80AA90B0:
/* 80AA90B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AA90B4  7C 08 02 A6 */	mflr r0
/* 80AA90B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AA90BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AA90C0  4B 8B 91 0D */	bl _savegpr_25
/* 80AA90C4  7C 7F 1B 78 */	mr r31, r3
/* 80AA90C8  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AA90CC  3B A3 D1 EC */	addi r29, r3, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AA90D0  3C 60 80 AB */	lis r3, l_bmdData@ha /* 0x80AAD3CC@ha */
/* 80AA90D4  38 63 D3 CC */	addi r3, r3, l_bmdData@l /* 0x80AAD3CC@l */
/* 80AA90D8  80 03 00 04 */	lwz r0, 4(r3)
/* 80AA90DC  80 83 00 00 */	lwz r4, 0(r3)
/* 80AA90E0  54 00 10 3A */	slwi r0, r0, 2
/* 80AA90E4  3C 60 80 AB */	lis r3, l_resNameList@ha /* 0x80AAD414@ha */
/* 80AA90E8  38 63 D4 14 */	addi r3, r3, l_resNameList@l /* 0x80AAD414@l */
/* 80AA90EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AA90F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA90F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA90F8  3F C5 00 02 */	addis r30, r5, 2
/* 80AA90FC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80AA9100  7F C5 F3 78 */	mr r5, r30
/* 80AA9104  38 C0 00 80 */	li r6, 0x80
/* 80AA9108  4B 59 31 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AA910C  7C 79 1B 79 */	or. r25, r3, r3
/* 80AA9110  40 82 00 0C */	bne lbl_80AA911C
/* 80AA9114  38 60 00 00 */	li r3, 0
/* 80AA9118  48 00 03 48 */	b lbl_80AA9460
lbl_80AA911C:
/* 80AA911C  38 60 00 58 */	li r3, 0x58
/* 80AA9120  4B 82 5B 2D */	bl __nw__FUl
/* 80AA9124  7C 60 1B 79 */	or. r0, r3, r3
/* 80AA9128  41 82 00 48 */	beq lbl_80AA9170
/* 80AA912C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AA9130  90 01 00 08 */	stw r0, 8(r1)
/* 80AA9134  3C 00 00 08 */	lis r0, 8
/* 80AA9138  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA913C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AA9140  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AA9144  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA9148  7F 24 CB 78 */	mr r4, r25
/* 80AA914C  38 A0 00 00 */	li r5, 0
/* 80AA9150  38 C0 00 00 */	li r6, 0
/* 80AA9154  38 E0 00 00 */	li r7, 0
/* 80AA9158  39 00 FF FF */	li r8, -1
/* 80AA915C  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 80AA9160  39 20 00 00 */	li r9, 0
/* 80AA9164  39 40 FF FF */	li r10, -1
/* 80AA9168  4B 56 76 69 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AA916C  7C 60 1B 78 */	mr r0, r3
lbl_80AA9170:
/* 80AA9170  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AA9174  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AA9178  28 03 00 00 */	cmplwi r3, 0
/* 80AA917C  41 82 00 10 */	beq lbl_80AA918C
/* 80AA9180  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AA9184  28 05 00 00 */	cmplwi r5, 0
/* 80AA9188  40 82 00 0C */	bne lbl_80AA9194
lbl_80AA918C:
/* 80AA918C  38 60 00 00 */	li r3, 0
/* 80AA9190  48 00 02 D0 */	b lbl_80AA9460
lbl_80AA9194:
/* 80AA9194  38 C0 00 00 */	li r6, 0
/* 80AA9198  3C 60 80 AB */	lis r3, ctrlJointCallBack__12daNpc_Post_cFP8J3DJointi@ha /* 0x80AA973C@ha */
/* 80AA919C  38 83 97 3C */	addi r4, r3, ctrlJointCallBack__12daNpc_Post_cFP8J3DJointi@l /* 0x80AA973C@l */
/* 80AA91A0  48 00 00 18 */	b lbl_80AA91B8
lbl_80AA91A4:
/* 80AA91A4  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80AA91A8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AA91AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AA91B0  90 83 00 04 */	stw r4, 4(r3)
/* 80AA91B4  38 C6 00 01 */	addi r6, r6, 1
lbl_80AA91B8:
/* 80AA91B8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AA91BC  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80AA91C0  7C 03 00 40 */	cmplw r3, r0
/* 80AA91C4  41 80 FF E0 */	blt lbl_80AA91A4
/* 80AA91C8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80AA91CC  38 60 01 08 */	li r3, 0x108
/* 80AA91D0  4B 82 5A 7D */	bl __nw__FUl
/* 80AA91D4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80AA91D8  41 82 00 D0 */	beq lbl_80AA92A8
/* 80AA91DC  7F 7A DB 78 */	mr r26, r27
/* 80AA91E0  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AA91E4  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AA91E8  90 1B 00 00 */	stw r0, 0(r27)
/* 80AA91EC  38 7A 00 04 */	addi r3, r26, 4
/* 80AA91F0  3C 80 80 AB */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AA961C@ha */
/* 80AA91F4  38 84 96 1C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AA961C@l */
/* 80AA91F8  3C A0 80 AB */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AA95E0@ha */
/* 80AA91FC  38 A5 95 E0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AA95E0@l */
/* 80AA9200  38 C0 00 08 */	li r6, 8
/* 80AA9204  38 E0 00 02 */	li r7, 2
/* 80AA9208  4B 8B 8B 59 */	bl __construct_array
/* 80AA920C  38 7A 00 14 */	addi r3, r26, 0x14
/* 80AA9210  3C 80 80 AB */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AA95C8@ha */
/* 80AA9214  38 84 95 C8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AA95C8@l */
/* 80AA9218  3C A0 80 AB */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AA958C@ha */
/* 80AA921C  38 A5 95 8C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AA958C@l */
/* 80AA9220  38 C0 00 08 */	li r6, 8
/* 80AA9224  38 E0 00 08 */	li r7, 8
/* 80AA9228  4B 8B 8B 39 */	bl __construct_array
/* 80AA922C  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AA9230  3C 80 80 AB */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AA9568@ha */
/* 80AA9234  38 84 95 68 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AA9568@l */
/* 80AA9238  3C A0 80 AB */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AA9520@ha */
/* 80AA923C  38 A5 95 20 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AA9520@l */
/* 80AA9240  38 C0 00 0C */	li r6, 0xc
/* 80AA9244  38 E0 00 08 */	li r7, 8
/* 80AA9248  4B 8B 8B 19 */	bl __construct_array
/* 80AA924C  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 80AA9250  3C 80 80 AB */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AA9508@ha */
/* 80AA9254  38 84 95 08 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AA9508@l */
/* 80AA9258  3C A0 80 AB */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AA94CC@ha */
/* 80AA925C  38 A5 94 CC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AA94CC@l */
/* 80AA9260  38 C0 00 08 */	li r6, 8
/* 80AA9264  38 E0 00 04 */	li r7, 4
/* 80AA9268  4B 8B 8A F9 */	bl __construct_array
/* 80AA926C  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 80AA9270  3C 80 80 AB */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AA94B4@ha */
/* 80AA9274  38 84 94 B4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AA94B4@l */
/* 80AA9278  3C A0 80 AB */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AA9478@ha */
/* 80AA927C  38 A5 94 78 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AA9478@l */
/* 80AA9280  38 C0 00 08 */	li r6, 8
/* 80AA9284  38 E0 00 04 */	li r7, 4
/* 80AA9288  4B 8B 8A D9 */	bl __construct_array
/* 80AA928C  7F 43 D3 78 */	mr r3, r26
/* 80AA9290  4B 88 30 91 */	bl initialize__14J3DMaterialAnmFv
/* 80AA9294  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80AA9298  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80AA929C  90 1B 00 00 */	stw r0, 0(r27)
/* 80AA92A0  7F 63 DB 78 */	mr r3, r27
/* 80AA92A4  4B 69 C4 C1 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AA92A8:
/* 80AA92A8  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 80AA92AC  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80AA92B0  28 00 00 00 */	cmplwi r0, 0
/* 80AA92B4  40 82 00 0C */	bne lbl_80AA92C0
/* 80AA92B8  38 60 00 00 */	li r3, 0
/* 80AA92BC  48 00 01 A4 */	b lbl_80AA9460
lbl_80AA92C0:
/* 80AA92C0  3C 60 80 AB */	lis r3, l_bmdData@ha /* 0x80AAD3CC@ha */
/* 80AA92C4  38 63 D3 CC */	addi r3, r3, l_bmdData@l /* 0x80AAD3CC@l */
/* 80AA92C8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AA92CC  80 83 00 08 */	lwz r4, 8(r3)
/* 80AA92D0  54 00 10 3A */	slwi r0, r0, 2
/* 80AA92D4  3C 60 80 AB */	lis r3, l_resNameList@ha /* 0x80AAD414@ha */
/* 80AA92D8  38 63 D4 14 */	addi r3, r3, l_resNameList@l /* 0x80AAD414@l */
/* 80AA92DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AA92E0  7F C5 F3 78 */	mr r5, r30
/* 80AA92E4  38 C0 00 80 */	li r6, 0x80
/* 80AA92E8  4B 59 30 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AA92EC  7C 79 1B 79 */	or. r25, r3, r3
/* 80AA92F0  40 82 00 0C */	bne lbl_80AA92FC
/* 80AA92F4  38 60 00 00 */	li r3, 0
/* 80AA92F8  48 00 01 68 */	b lbl_80AA9460
lbl_80AA92FC:
/* 80AA92FC  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80AA9300  28 00 00 02 */	cmplwi r0, 2
/* 80AA9304  41 82 00 7C */	beq lbl_80AA9380
/* 80AA9308  38 60 00 58 */	li r3, 0x58
/* 80AA930C  4B 82 59 41 */	bl __nw__FUl
/* 80AA9310  7C 60 1B 79 */	or. r0, r3, r3
/* 80AA9314  41 82 00 48 */	beq lbl_80AA935C
/* 80AA9318  38 00 00 00 */	li r0, 0
/* 80AA931C  90 01 00 08 */	stw r0, 8(r1)
/* 80AA9320  3C 00 00 08 */	lis r0, 8
/* 80AA9324  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA9328  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80AA932C  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80AA9330  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA9334  7F 24 CB 78 */	mr r4, r25
/* 80AA9338  38 A0 00 00 */	li r5, 0
/* 80AA933C  38 C0 00 00 */	li r6, 0
/* 80AA9340  38 E0 00 00 */	li r7, 0
/* 80AA9344  39 00 FF FF */	li r8, -1
/* 80AA9348  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 80AA934C  39 20 00 00 */	li r9, 0
/* 80AA9350  39 40 FF FF */	li r10, -1
/* 80AA9354  4B 56 74 7D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AA9358  7C 60 1B 78 */	mr r0, r3
lbl_80AA935C:
/* 80AA935C  90 1F 0E 40 */	stw r0, 0xe40(r31)
/* 80AA9360  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80AA9364  28 03 00 00 */	cmplwi r3, 0
/* 80AA9368  41 82 00 10 */	beq lbl_80AA9378
/* 80AA936C  80 03 00 04 */	lwz r0, 4(r3)
/* 80AA9370  28 00 00 00 */	cmplwi r0, 0
/* 80AA9374  40 82 00 0C */	bne lbl_80AA9380
lbl_80AA9378:
/* 80AA9378  38 60 00 00 */	li r3, 0
/* 80AA937C  48 00 00 E4 */	b lbl_80AA9460
lbl_80AA9380:
/* 80AA9380  3B 40 00 00 */	li r26, 0
/* 80AA9384  3B 20 00 00 */	li r25, 0
/* 80AA9388  3B 7D 00 C4 */	addi r27, r29, 0xc4
/* 80AA938C  3C 60 80 AB */	lis r3, l_bmdData@ha /* 0x80AAD3CC@ha */
/* 80AA9390  3B 83 D3 CC */	addi r28, r3, l_bmdData@l /* 0x80AAD3CC@l */
lbl_80AA9394:
/* 80AA9394  7C 1B C8 2E */	lwzx r0, r27, r25
/* 80AA9398  54 00 18 38 */	slwi r0, r0, 3
/* 80AA939C  7C 7C 02 14 */	add r3, r28, r0
/* 80AA93A0  80 83 00 00 */	lwz r4, 0(r3)
/* 80AA93A4  2C 04 00 00 */	cmpwi r4, 0
/* 80AA93A8  41 80 00 28 */	blt lbl_80AA93D0
/* 80AA93AC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AA93B0  54 00 10 3A */	slwi r0, r0, 2
/* 80AA93B4  3C 60 80 AB */	lis r3, l_resNameList@ha /* 0x80AAD414@ha */
/* 80AA93B8  38 63 D4 14 */	addi r3, r3, l_resNameList@l /* 0x80AAD414@l */
/* 80AA93BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AA93C0  7F C5 F3 78 */	mr r5, r30
/* 80AA93C4  38 C0 00 80 */	li r6, 0x80
/* 80AA93C8  4B 59 2F 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AA93CC  48 00 00 08 */	b lbl_80AA93D4
lbl_80AA93D0:
/* 80AA93D0  38 60 00 00 */	li r3, 0
lbl_80AA93D4:
/* 80AA93D4  28 03 00 00 */	cmplwi r3, 0
/* 80AA93D8  41 82 00 20 */	beq lbl_80AA93F8
/* 80AA93DC  3C 80 00 08 */	lis r4, 8
/* 80AA93E0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AA93E4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AA93E8  4B 56 B8 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AA93EC  38 19 0E 48 */	addi r0, r25, 0xe48
/* 80AA93F0  7C 7F 01 2E */	stwx r3, r31, r0
/* 80AA93F4  48 00 00 10 */	b lbl_80AA9404
lbl_80AA93F8:
/* 80AA93F8  38 60 00 00 */	li r3, 0
/* 80AA93FC  38 19 0E 48 */	addi r0, r25, 0xe48
/* 80AA9400  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80AA9404:
/* 80AA9404  3B 5A 00 01 */	addi r26, r26, 1
/* 80AA9408  2C 1A 00 02 */	cmpwi r26, 2
/* 80AA940C  3B 39 00 04 */	addi r25, r25, 4
/* 80AA9410  41 80 FF 84 */	blt lbl_80AA9394
/* 80AA9414  7F E3 FB 78 */	mr r3, r31
/* 80AA9418  38 80 00 02 */	li r4, 2
/* 80AA941C  38 A0 00 00 */	li r5, 0
/* 80AA9420  4B 6A 0F 69 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AA9424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA9428  41 82 00 34 */	beq lbl_80AA945C
/* 80AA942C  7F E3 FB 78 */	mr r3, r31
/* 80AA9430  38 80 00 00 */	li r4, 0
/* 80AA9434  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80AA9438  38 A0 00 00 */	li r5, 0
/* 80AA943C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AA9440  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AA9444  7D 89 03 A6 */	mtctr r12
/* 80AA9448  4E 80 04 21 */	bctrl 
/* 80AA944C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA9450  41 82 00 0C */	beq lbl_80AA945C
/* 80AA9454  38 60 00 01 */	li r3, 1
/* 80AA9458  48 00 00 08 */	b lbl_80AA9460
lbl_80AA945C:
/* 80AA945C  38 60 00 00 */	li r3, 0
lbl_80AA9460:
/* 80AA9460  39 61 00 40 */	addi r11, r1, 0x40
/* 80AA9464  4B 8B 8D B5 */	bl _restgpr_25
/* 80AA9468  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AA946C  7C 08 03 A6 */	mtlr r0
/* 80AA9470  38 21 00 40 */	addi r1, r1, 0x40
/* 80AA9474  4E 80 00 20 */	blr 
