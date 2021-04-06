lbl_80A71074:
/* 80A71074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A71078  7C 08 02 A6 */	mflr r0
/* 80A7107C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A71080  39 61 00 30 */	addi r11, r1, 0x30
/* 80A71084  4B 8F 11 51 */	bl _savegpr_27
/* 80A71088  7C 7F 1B 78 */	mr r31, r3
/* 80A7108C  3C 60 80 A7 */	lis r3, l_bmdData@ha /* 0x80A73AD4@ha */
/* 80A71090  38 83 3A D4 */	addi r4, r3, l_bmdData@l /* 0x80A73AD4@l */
/* 80A71094  80 04 00 04 */	lwz r0, 4(r4)
/* 80A71098  54 00 10 3A */	slwi r0, r0, 2
/* 80A7109C  3C 60 80 A7 */	lis r3, l_resNameList@ha /* 0x80A73AEC@ha */
/* 80A710A0  38 63 3A EC */	addi r3, r3, l_resNameList@l /* 0x80A73AEC@l */
/* 80A710A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A710A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80A710AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A710B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A710B4  3C A5 00 02 */	addis r5, r5, 2
/* 80A710B8  38 C0 00 80 */	li r6, 0x80
/* 80A710BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A710C0  4B 5C B2 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A710C4  7C 7B 1B 78 */	mr r27, r3
/* 80A710C8  38 60 00 58 */	li r3, 0x58
/* 80A710CC  4B 85 DB 81 */	bl __nw__FUl
/* 80A710D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80A710D4  41 82 00 4C */	beq lbl_80A71120
/* 80A710D8  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A710DC  90 01 00 08 */	stw r0, 8(r1)
/* 80A710E0  3C 00 00 08 */	lis r0, 8
/* 80A710E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A710E8  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A710EC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A710F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A710F4  7F 64 DB 78 */	mr r4, r27
/* 80A710F8  38 A0 00 00 */	li r5, 0
/* 80A710FC  38 C0 00 00 */	li r6, 0
/* 80A71100  38 E0 00 00 */	li r7, 0
/* 80A71104  39 00 FF FF */	li r8, -1
/* 80A71108  3D 20 80 A7 */	lis r9, lit_4338@ha /* 0x80A73A6C@ha */
/* 80A7110C  C0 29 3A 6C */	lfs f1, lit_4338@l(r9)  /* 0x80A73A6C@l */
/* 80A71110  39 20 00 00 */	li r9, 0
/* 80A71114  39 40 FF FF */	li r10, -1
/* 80A71118  4B 59 F6 B9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A7111C  7C 60 1B 78 */	mr r0, r3
lbl_80A71120:
/* 80A71120  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A71124  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A71128  28 03 00 00 */	cmplwi r3, 0
/* 80A7112C  41 82 00 10 */	beq lbl_80A7113C
/* 80A71130  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A71134  28 05 00 00 */	cmplwi r5, 0
/* 80A71138  40 82 00 18 */	bne lbl_80A71150
lbl_80A7113C:
/* 80A7113C  28 03 00 00 */	cmplwi r3, 0
/* 80A71140  41 82 00 08 */	beq lbl_80A71148
/* 80A71144  4B 5A 01 CD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A71148:
/* 80A71148  38 60 00 00 */	li r3, 0
/* 80A7114C  48 00 01 9C */	b lbl_80A712E8
lbl_80A71150:
/* 80A71150  38 C0 00 00 */	li r6, 0
/* 80A71154  3C 60 80 A7 */	lis r3, ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi@ha /* 0x80A715F4@ha */
/* 80A71158  38 83 15 F4 */	addi r4, r3, ctrlJointCallBack__12daNpc_midP_cFP8J3DJointi@l /* 0x80A715F4@l */
/* 80A7115C  48 00 00 18 */	b lbl_80A71174
lbl_80A71160:
/* 80A71160  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80A71164  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A71168  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A7116C  90 83 00 04 */	stw r4, 4(r3)
/* 80A71170  38 C6 00 01 */	addi r6, r6, 1
lbl_80A71174:
/* 80A71174  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A71178  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 80A7117C  7C 03 00 40 */	cmplw r3, r0
/* 80A71180  41 80 FF E0 */	blt lbl_80A71160
/* 80A71184  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A71188  3B A0 00 00 */	li r29, 0
/* 80A7118C  3B 60 00 00 */	li r27, 0
lbl_80A71190:
/* 80A71190  38 60 01 08 */	li r3, 0x108
/* 80A71194  4B 85 DA B9 */	bl __nw__FUl
/* 80A71198  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A7119C  41 82 00 D0 */	beq lbl_80A7126C
/* 80A711A0  7F DC F3 78 */	mr r28, r30
/* 80A711A4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A711A8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A711AC  90 1E 00 00 */	stw r0, 0(r30)
/* 80A711B0  38 7E 00 04 */	addi r3, r30, 4
/* 80A711B4  3C 80 80 A7 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A714A4@ha */
/* 80A711B8  38 84 14 A4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A714A4@l */
/* 80A711BC  3C A0 80 A7 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A71468@ha */
/* 80A711C0  38 A5 14 68 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A71468@l */
/* 80A711C4  38 C0 00 08 */	li r6, 8
/* 80A711C8  38 E0 00 02 */	li r7, 2
/* 80A711CC  4B 8F 0B 95 */	bl __construct_array
/* 80A711D0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A711D4  3C 80 80 A7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A71450@ha */
/* 80A711D8  38 84 14 50 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A71450@l */
/* 80A711DC  3C A0 80 A7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A71414@ha */
/* 80A711E0  38 A5 14 14 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A71414@l */
/* 80A711E4  38 C0 00 08 */	li r6, 8
/* 80A711E8  38 E0 00 08 */	li r7, 8
/* 80A711EC  4B 8F 0B 75 */	bl __construct_array
/* 80A711F0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80A711F4  3C 80 80 A7 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A713F0@ha */
/* 80A711F8  38 84 13 F0 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A713F0@l */
/* 80A711FC  3C A0 80 A7 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A713A8@ha */
/* 80A71200  38 A5 13 A8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A713A8@l */
/* 80A71204  38 C0 00 0C */	li r6, 0xc
/* 80A71208  38 E0 00 08 */	li r7, 8
/* 80A7120C  4B 8F 0B 55 */	bl __construct_array
/* 80A71210  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80A71214  3C 80 80 A7 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A71390@ha */
/* 80A71218  38 84 13 90 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A71390@l */
/* 80A7121C  3C A0 80 A7 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A71354@ha */
/* 80A71220  38 A5 13 54 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A71354@l */
/* 80A71224  38 C0 00 08 */	li r6, 8
/* 80A71228  38 E0 00 04 */	li r7, 4
/* 80A7122C  4B 8F 0B 35 */	bl __construct_array
/* 80A71230  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80A71234  3C 80 80 A7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A7133C@ha */
/* 80A71238  38 84 13 3C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A7133C@l */
/* 80A7123C  3C A0 80 A7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A71300@ha */
/* 80A71240  38 A5 13 00 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A71300@l */
/* 80A71244  38 C0 00 08 */	li r6, 8
/* 80A71248  38 E0 00 04 */	li r7, 4
/* 80A7124C  4B 8F 0B 15 */	bl __construct_array
/* 80A71250  7F C3 F3 78 */	mr r3, r30
/* 80A71254  4B 8B B0 CD */	bl initialize__14J3DMaterialAnmFv
/* 80A71258  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80A7125C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80A71260  90 1C 00 00 */	stw r0, 0(r28)
/* 80A71264  7F 83 E3 78 */	mr r3, r28
/* 80A71268  4B 6D 44 FD */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A7126C:
/* 80A7126C  38 1B 09 6C */	addi r0, r27, 0x96c
/* 80A71270  7F DF 01 2E */	stwx r30, r31, r0
/* 80A71274  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80A71278  28 00 00 00 */	cmplwi r0, 0
/* 80A7127C  40 82 00 0C */	bne lbl_80A71288
/* 80A71280  38 60 00 00 */	li r3, 0
/* 80A71284  48 00 00 64 */	b lbl_80A712E8
lbl_80A71288:
/* 80A71288  3B BD 00 01 */	addi r29, r29, 1
/* 80A7128C  2C 1D 00 02 */	cmpwi r29, 2
/* 80A71290  3B 7B 00 04 */	addi r27, r27, 4
/* 80A71294  41 80 FE FC */	blt lbl_80A71190
/* 80A71298  7F E3 FB 78 */	mr r3, r31
/* 80A7129C  38 80 00 00 */	li r4, 0
/* 80A712A0  38 A0 00 00 */	li r5, 0
/* 80A712A4  4B 6D 90 E5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A712A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A712AC  41 82 00 38 */	beq lbl_80A712E4
/* 80A712B0  7F E3 FB 78 */	mr r3, r31
/* 80A712B4  38 80 00 00 */	li r4, 0
/* 80A712B8  3C A0 80 A7 */	lis r5, lit_4186@ha /* 0x80A73A60@ha */
/* 80A712BC  C0 25 3A 60 */	lfs f1, lit_4186@l(r5)  /* 0x80A73A60@l */
/* 80A712C0  38 A0 00 00 */	li r5, 0
/* 80A712C4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A712C8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A712CC  7D 89 03 A6 */	mtctr r12
/* 80A712D0  4E 80 04 21 */	bctrl 
/* 80A712D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A712D8  41 82 00 0C */	beq lbl_80A712E4
/* 80A712DC  38 60 00 01 */	li r3, 1
/* 80A712E0  48 00 00 08 */	b lbl_80A712E8
lbl_80A712E4:
/* 80A712E4  38 60 00 00 */	li r3, 0
lbl_80A712E8:
/* 80A712E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A712EC  4B 8F 0F 35 */	bl _restgpr_27
/* 80A712F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A712F4  7C 08 03 A6 */	mtlr r0
/* 80A712F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80A712FC  4E 80 00 20 */	blr 
