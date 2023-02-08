lbl_80B6F1F8:
/* 80B6F1F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6F1FC  7C 08 02 A6 */	mflr r0
/* 80B6F200  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6F204  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6F208  4B 7F 2F CD */	bl _savegpr_27
/* 80B6F20C  7C 7F 1B 78 */	mr r31, r3
/* 80B6F210  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B6F214  28 00 00 01 */	cmplwi r0, 1
/* 80B6F218  38 00 00 00 */	li r0, 0
/* 80B6F21C  54 05 18 38 */	slwi r5, r0, 3
/* 80B6F220  3C 60 80 B7 */	lis r3, l_bmdData@ha /* 0x80B71BF8@ha */
/* 80B6F224  38 83 1B F8 */	addi r4, r3, l_bmdData@l /* 0x80B71BF8@l */
/* 80B6F228  7C 64 2A 14 */	add r3, r4, r5
/* 80B6F22C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B6F230  54 00 10 3A */	slwi r0, r0, 2
/* 80B6F234  3C 60 80 B7 */	lis r3, l_resNameList@ha /* 0x80B71C10@ha */
/* 80B6F238  38 63 1C 10 */	addi r3, r3, l_resNameList@l /* 0x80B71C10@l */
/* 80B6F23C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B6F240  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B6F244  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6F248  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6F24C  3C A5 00 02 */	addis r5, r5, 2
/* 80B6F250  38 C0 00 80 */	li r6, 0x80
/* 80B6F254  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B6F258  4B 4C D0 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B6F25C  7C 7E 1B 78 */	mr r30, r3
/* 80B6F260  38 60 00 58 */	li r3, 0x58
/* 80B6F264  4B 75 F9 E9 */	bl __nw__FUl
/* 80B6F268  7C 60 1B 79 */	or. r0, r3, r3
/* 80B6F26C  41 82 00 4C */	beq lbl_80B6F2B8
/* 80B6F270  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B6F274  90 01 00 08 */	stw r0, 8(r1)
/* 80B6F278  38 00 00 00 */	li r0, 0
/* 80B6F27C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6F280  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B6F284  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B6F288  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6F28C  7F C4 F3 78 */	mr r4, r30
/* 80B6F290  38 A0 00 00 */	li r5, 0
/* 80B6F294  38 C0 00 00 */	li r6, 0
/* 80B6F298  38 E0 00 00 */	li r7, 0
/* 80B6F29C  39 00 FF FF */	li r8, -1
/* 80B6F2A0  3D 20 80 B7 */	lis r9, lit_4339@ha /* 0x80B71B88@ha */
/* 80B6F2A4  C0 29 1B 88 */	lfs f1, lit_4339@l(r9)  /* 0x80B71B88@l */
/* 80B6F2A8  39 20 00 00 */	li r9, 0
/* 80B6F2AC  39 40 FF FF */	li r10, -1
/* 80B6F2B0  4B 4A 15 21 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B6F2B4  7C 60 1B 78 */	mr r0, r3
lbl_80B6F2B8:
/* 80B6F2B8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B6F2BC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B6F2C0  28 03 00 00 */	cmplwi r3, 0
/* 80B6F2C4  41 82 00 1C */	beq lbl_80B6F2E0
/* 80B6F2C8  80 03 00 04 */	lwz r0, 4(r3)
/* 80B6F2CC  28 00 00 00 */	cmplwi r0, 0
/* 80B6F2D0  40 82 00 10 */	bne lbl_80B6F2E0
/* 80B6F2D4  4B 4A 20 3D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B6F2D8  38 00 00 00 */	li r0, 0
/* 80B6F2DC  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80B6F2E0:
/* 80B6F2E0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B6F2E4  28 03 00 00 */	cmplwi r3, 0
/* 80B6F2E8  40 82 00 0C */	bne lbl_80B6F2F4
/* 80B6F2EC  38 60 00 00 */	li r3, 0
/* 80B6F2F0  48 00 01 A0 */	b lbl_80B6F490
lbl_80B6F2F4:
/* 80B6F2F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B6F2F8  38 C0 00 00 */	li r6, 0
/* 80B6F2FC  3C 60 80 B7 */	lis r3, ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi@ha /* 0x80B6F79C@ha */
/* 80B6F300  38 83 F7 9C */	addi r4, r3, ctrlJointCallBack__12daNpc_ZelR_cFP8J3DJointi@l /* 0x80B6F79C@l */
/* 80B6F304  48 00 00 18 */	b lbl_80B6F31C
lbl_80B6F308:
/* 80B6F308  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B6F30C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B6F310  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B6F314  90 83 00 04 */	stw r4, 4(r3)
/* 80B6F318  38 C6 00 01 */	addi r6, r6, 1
lbl_80B6F31C:
/* 80B6F31C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B6F320  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B6F324  7C 03 00 40 */	cmplw r3, r0
/* 80B6F328  41 80 FF E0 */	blt lbl_80B6F308
/* 80B6F32C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B6F330  3B A0 00 00 */	li r29, 0
/* 80B6F334  3B 60 00 00 */	li r27, 0
lbl_80B6F338:
/* 80B6F338  38 60 01 08 */	li r3, 0x108
/* 80B6F33C  4B 75 F9 11 */	bl __nw__FUl
/* 80B6F340  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6F344  41 82 00 D0 */	beq lbl_80B6F414
/* 80B6F348  7F DC F3 78 */	mr r28, r30
/* 80B6F34C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B6F350  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B6F354  90 1E 00 00 */	stw r0, 0(r30)
/* 80B6F358  38 7E 00 04 */	addi r3, r30, 4
/* 80B6F35C  3C 80 80 B7 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B6F64C@ha */
/* 80B6F360  38 84 F6 4C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B6F64C@l */
/* 80B6F364  3C A0 80 B7 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B6F610@ha */
/* 80B6F368  38 A5 F6 10 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B6F610@l */
/* 80B6F36C  38 C0 00 08 */	li r6, 8
/* 80B6F370  38 E0 00 02 */	li r7, 2
/* 80B6F374  4B 7F 29 ED */	bl __construct_array
/* 80B6F378  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B6F37C  3C 80 80 B7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B6F5F8@ha */
/* 80B6F380  38 84 F5 F8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B6F5F8@l */
/* 80B6F384  3C A0 80 B7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B6F5BC@ha */
/* 80B6F388  38 A5 F5 BC */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B6F5BC@l */
/* 80B6F38C  38 C0 00 08 */	li r6, 8
/* 80B6F390  38 E0 00 08 */	li r7, 8
/* 80B6F394  4B 7F 29 CD */	bl __construct_array
/* 80B6F398  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B6F39C  3C 80 80 B7 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B6F598@ha */
/* 80B6F3A0  38 84 F5 98 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B6F598@l */
/* 80B6F3A4  3C A0 80 B7 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B6F550@ha */
/* 80B6F3A8  38 A5 F5 50 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B6F550@l */
/* 80B6F3AC  38 C0 00 0C */	li r6, 0xc
/* 80B6F3B0  38 E0 00 08 */	li r7, 8
/* 80B6F3B4  4B 7F 29 AD */	bl __construct_array
/* 80B6F3B8  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B6F3BC  3C 80 80 B7 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B6F538@ha */
/* 80B6F3C0  38 84 F5 38 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B6F538@l */
/* 80B6F3C4  3C A0 80 B7 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B6F4FC@ha */
/* 80B6F3C8  38 A5 F4 FC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B6F4FC@l */
/* 80B6F3CC  38 C0 00 08 */	li r6, 8
/* 80B6F3D0  38 E0 00 04 */	li r7, 4
/* 80B6F3D4  4B 7F 29 8D */	bl __construct_array
/* 80B6F3D8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B6F3DC  3C 80 80 B7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B6F4E4@ha */
/* 80B6F3E0  38 84 F4 E4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B6F4E4@l */
/* 80B6F3E4  3C A0 80 B7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B6F4A8@ha */
/* 80B6F3E8  38 A5 F4 A8 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B6F4A8@l */
/* 80B6F3EC  38 C0 00 08 */	li r6, 8
/* 80B6F3F0  38 E0 00 04 */	li r7, 4
/* 80B6F3F4  4B 7F 29 6D */	bl __construct_array
/* 80B6F3F8  7F C3 F3 78 */	mr r3, r30
/* 80B6F3FC  4B 7B CF 25 */	bl initialize__14J3DMaterialAnmFv
/* 80B6F400  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80B6F404  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80B6F408  90 1C 00 00 */	stw r0, 0(r28)
/* 80B6F40C  7F 83 E3 78 */	mr r3, r28
/* 80B6F410  4B 5D 63 55 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B6F414:
/* 80B6F414  38 1B 09 6C */	addi r0, r27, 0x96c
/* 80B6F418  7F DF 01 2E */	stwx r30, r31, r0
/* 80B6F41C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80B6F420  28 00 00 00 */	cmplwi r0, 0
/* 80B6F424  40 82 00 0C */	bne lbl_80B6F430
/* 80B6F428  38 60 00 00 */	li r3, 0
/* 80B6F42C  48 00 00 64 */	b lbl_80B6F490
lbl_80B6F430:
/* 80B6F430  3B BD 00 01 */	addi r29, r29, 1
/* 80B6F434  2C 1D 00 02 */	cmpwi r29, 2
/* 80B6F438  3B 7B 00 04 */	addi r27, r27, 4
/* 80B6F43C  41 80 FE FC */	blt lbl_80B6F338
/* 80B6F440  7F E3 FB 78 */	mr r3, r31
/* 80B6F444  38 80 00 01 */	li r4, 1
/* 80B6F448  38 A0 00 00 */	li r5, 0
/* 80B6F44C  4B 5D AF 3D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B6F450  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6F454  41 82 00 38 */	beq lbl_80B6F48C
/* 80B6F458  7F E3 FB 78 */	mr r3, r31
/* 80B6F45C  38 80 00 00 */	li r4, 0
/* 80B6F460  3C A0 80 B7 */	lis r5, lit_4182@ha /* 0x80B71B7C@ha */
/* 80B6F464  C0 25 1B 7C */	lfs f1, lit_4182@l(r5)  /* 0x80B71B7C@l */
/* 80B6F468  38 A0 00 00 */	li r5, 0
/* 80B6F46C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B6F470  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B6F474  7D 89 03 A6 */	mtctr r12
/* 80B6F478  4E 80 04 21 */	bctrl 
/* 80B6F47C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6F480  41 82 00 0C */	beq lbl_80B6F48C
/* 80B6F484  38 60 00 01 */	li r3, 1
/* 80B6F488  48 00 00 08 */	b lbl_80B6F490
lbl_80B6F48C:
/* 80B6F48C  38 60 00 00 */	li r3, 0
lbl_80B6F490:
/* 80B6F490  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6F494  4B 7F 2D 8D */	bl _restgpr_27
/* 80B6F498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6F49C  7C 08 03 A6 */	mtlr r0
/* 80B6F4A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6F4A4  4E 80 00 20 */	blr 
