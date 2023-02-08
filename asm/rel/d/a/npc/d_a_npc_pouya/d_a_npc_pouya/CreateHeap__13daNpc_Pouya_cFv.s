lbl_80AAE1AC:
/* 80AAE1AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AAE1B0  7C 08 02 A6 */	mflr r0
/* 80AAE1B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAE1B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AAE1BC  4B 8B 40 19 */	bl _savegpr_27
/* 80AAE1C0  7C 7F 1B 78 */	mr r31, r3
/* 80AAE1C4  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AAE1C8  3B A3 20 00 */	addi r29, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AAE1CC  38 80 00 00 */	li r4, 0
/* 80AAE1D0  38 00 00 00 */	li r0, 0
/* 80AAE1D4  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAE1D8  28 03 00 02 */	cmplwi r3, 2
/* 80AAE1DC  41 82 00 14 */	beq lbl_80AAE1F0
/* 80AAE1E0  28 03 00 03 */	cmplwi r3, 3
/* 80AAE1E4  41 82 00 0C */	beq lbl_80AAE1F0
/* 80AAE1E8  28 03 00 04 */	cmplwi r3, 4
/* 80AAE1EC  40 82 00 08 */	bne lbl_80AAE1F4
lbl_80AAE1F0:
/* 80AAE1F0  38 00 00 01 */	li r0, 1
lbl_80AAE1F4:
/* 80AAE1F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAE1F8  41 82 00 08 */	beq lbl_80AAE200
/* 80AAE1FC  38 80 00 02 */	li r4, 2
lbl_80AAE200:
/* 80AAE200  54 85 18 38 */	slwi r5, r4, 3
/* 80AAE204  3C 60 80 AB */	lis r3, l_bmdData@ha /* 0x80AB2210@ha */
/* 80AAE208  38 83 22 10 */	addi r4, r3, l_bmdData@l /* 0x80AB2210@l */
/* 80AAE20C  7C 64 2A 14 */	add r3, r4, r5
/* 80AAE210  80 03 00 04 */	lwz r0, 4(r3)
/* 80AAE214  54 00 10 3A */	slwi r0, r0, 2
/* 80AAE218  3C 60 80 AB */	lis r3, l_resNameList@ha /* 0x80AB2270@ha */
/* 80AAE21C  38 63 22 70 */	addi r3, r3, l_resNameList@l /* 0x80AB2270@l */
/* 80AAE220  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AAE224  7C 84 28 2E */	lwzx r4, r4, r5
/* 80AAE228  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AAE22C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AAE230  3F C5 00 02 */	addis r30, r5, 2
/* 80AAE234  3B DE C2 F8 */	addi r30, r30, -15624
/* 80AAE238  7F C5 F3 78 */	mr r5, r30
/* 80AAE23C  38 C0 00 80 */	li r6, 0x80
/* 80AAE240  4B 58 E0 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AAE244  7C 7C 1B 79 */	or. r28, r3, r3
/* 80AAE248  40 82 00 0C */	bne lbl_80AAE254
/* 80AAE24C  38 60 00 00 */	li r3, 0
/* 80AAE250  48 00 03 64 */	b lbl_80AAE5B4
lbl_80AAE254:
/* 80AAE254  38 00 00 00 */	li r0, 0
/* 80AAE258  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAE25C  28 03 00 02 */	cmplwi r3, 2
/* 80AAE260  41 82 00 14 */	beq lbl_80AAE274
/* 80AAE264  28 03 00 03 */	cmplwi r3, 3
/* 80AAE268  41 82 00 0C */	beq lbl_80AAE274
/* 80AAE26C  28 03 00 04 */	cmplwi r3, 4
/* 80AAE270  40 82 00 08 */	bne lbl_80AAE278
lbl_80AAE274:
/* 80AAE274  38 00 00 01 */	li r0, 1
lbl_80AAE278:
/* 80AAE278  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAE27C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80AAE280  3B 63 02 84 */	addi r27, r3, 0x0284 /* 0x11000284@l */
/* 80AAE284  41 82 00 0C */	beq lbl_80AAE290
/* 80AAE288  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 80AAE28C  3B 63 02 84 */	addi r27, r3, 0x0284 /* 0x11020284@l */
lbl_80AAE290:
/* 80AAE290  38 60 00 58 */	li r3, 0x58
/* 80AAE294  4B 82 09 B9 */	bl __nw__FUl
/* 80AAE298  7C 60 1B 79 */	or. r0, r3, r3
/* 80AAE29C  41 82 00 40 */	beq lbl_80AAE2DC
/* 80AAE2A0  38 1F 05 80 */	addi r0, r31, 0x580
/* 80AAE2A4  90 01 00 08 */	stw r0, 8(r1)
/* 80AAE2A8  38 00 00 00 */	li r0, 0
/* 80AAE2AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAE2B0  93 61 00 10 */	stw r27, 0x10(r1)
/* 80AAE2B4  7F 84 E3 78 */	mr r4, r28
/* 80AAE2B8  38 A0 00 00 */	li r5, 0
/* 80AAE2BC  38 C0 00 00 */	li r6, 0
/* 80AAE2C0  38 E0 00 00 */	li r7, 0
/* 80AAE2C4  39 00 FF FF */	li r8, -1
/* 80AAE2C8  C0 3D 00 C8 */	lfs f1, 0xc8(r29)
/* 80AAE2CC  39 20 00 00 */	li r9, 0
/* 80AAE2D0  39 40 FF FF */	li r10, -1
/* 80AAE2D4  4B 56 24 FD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AAE2D8  7C 60 1B 78 */	mr r0, r3
lbl_80AAE2DC:
/* 80AAE2DC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80AAE2E0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AAE2E4  28 03 00 00 */	cmplwi r3, 0
/* 80AAE2E8  41 82 00 10 */	beq lbl_80AAE2F8
/* 80AAE2EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AAE2F0  28 05 00 00 */	cmplwi r5, 0
/* 80AAE2F4  40 82 00 0C */	bne lbl_80AAE300
lbl_80AAE2F8:
/* 80AAE2F8  38 60 00 00 */	li r3, 0
/* 80AAE2FC  48 00 02 B8 */	b lbl_80AAE5B4
lbl_80AAE300:
/* 80AAE300  38 C0 00 00 */	li r6, 0
/* 80AAE304  3C 60 80 AB */	lis r3, ctrlJointCallBack__13daNpc_Pouya_cFP8J3DJointi@ha /* 0x80AAE890@ha */
/* 80AAE308  38 83 E8 90 */	addi r4, r3, ctrlJointCallBack__13daNpc_Pouya_cFP8J3DJointi@l /* 0x80AAE890@l */
/* 80AAE30C  48 00 00 18 */	b lbl_80AAE324
lbl_80AAE310:
/* 80AAE310  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80AAE314  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AAE318  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AAE31C  90 83 00 04 */	stw r4, 4(r3)
/* 80AAE320  38 C6 00 01 */	addi r6, r6, 1
lbl_80AAE324:
/* 80AAE324  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AAE328  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80AAE32C  7C 03 00 40 */	cmplw r3, r0
/* 80AAE330  41 80 FF E0 */	blt lbl_80AAE310
/* 80AAE334  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80AAE338  38 00 00 00 */	li r0, 0
/* 80AAE33C  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAE340  28 03 00 02 */	cmplwi r3, 2
/* 80AAE344  41 82 00 14 */	beq lbl_80AAE358
/* 80AAE348  28 03 00 03 */	cmplwi r3, 3
/* 80AAE34C  41 82 00 0C */	beq lbl_80AAE358
/* 80AAE350  28 03 00 04 */	cmplwi r3, 4
/* 80AAE354  40 82 00 08 */	bne lbl_80AAE35C
lbl_80AAE358:
/* 80AAE358  38 00 00 01 */	li r0, 1
lbl_80AAE35C:
/* 80AAE35C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAE360  41 82 00 F8 */	beq lbl_80AAE458
/* 80AAE364  38 60 01 08 */	li r3, 0x108
/* 80AAE368  4B 82 08 E5 */	bl __nw__FUl
/* 80AAE36C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80AAE370  41 82 00 D0 */	beq lbl_80AAE440
/* 80AAE374  7F 9B E3 78 */	mr r27, r28
/* 80AAE378  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AAE37C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AAE380  90 1C 00 00 */	stw r0, 0(r28)
/* 80AAE384  38 7C 00 04 */	addi r3, r28, 4
/* 80AAE388  3C 80 80 AB */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AAE770@ha */
/* 80AAE38C  38 84 E7 70 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AAE770@l */
/* 80AAE390  3C A0 80 AB */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AAE734@ha */
/* 80AAE394  38 A5 E7 34 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AAE734@l */
/* 80AAE398  38 C0 00 08 */	li r6, 8
/* 80AAE39C  38 E0 00 02 */	li r7, 2
/* 80AAE3A0  4B 8B 39 C1 */	bl __construct_array
/* 80AAE3A4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80AAE3A8  3C 80 80 AB */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AAE71C@ha */
/* 80AAE3AC  38 84 E7 1C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AAE71C@l */
/* 80AAE3B0  3C A0 80 AB */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AAE6E0@ha */
/* 80AAE3B4  38 A5 E6 E0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AAE6E0@l */
/* 80AAE3B8  38 C0 00 08 */	li r6, 8
/* 80AAE3BC  38 E0 00 08 */	li r7, 8
/* 80AAE3C0  4B 8B 39 A1 */	bl __construct_array
/* 80AAE3C4  38 7C 00 54 */	addi r3, r28, 0x54
/* 80AAE3C8  3C 80 80 AB */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AAE6BC@ha */
/* 80AAE3CC  38 84 E6 BC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AAE6BC@l */
/* 80AAE3D0  3C A0 80 AB */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AAE674@ha */
/* 80AAE3D4  38 A5 E6 74 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AAE674@l */
/* 80AAE3D8  38 C0 00 0C */	li r6, 0xc
/* 80AAE3DC  38 E0 00 08 */	li r7, 8
/* 80AAE3E0  4B 8B 39 81 */	bl __construct_array
/* 80AAE3E4  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 80AAE3E8  3C 80 80 AB */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AAE65C@ha */
/* 80AAE3EC  38 84 E6 5C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AAE65C@l */
/* 80AAE3F0  3C A0 80 AB */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AAE620@ha */
/* 80AAE3F4  38 A5 E6 20 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AAE620@l */
/* 80AAE3F8  38 C0 00 08 */	li r6, 8
/* 80AAE3FC  38 E0 00 04 */	li r7, 4
/* 80AAE400  4B 8B 39 61 */	bl __construct_array
/* 80AAE404  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80AAE408  3C 80 80 AB */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AAE608@ha */
/* 80AAE40C  38 84 E6 08 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AAE608@l */
/* 80AAE410  3C A0 80 AB */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AAE5CC@ha */
/* 80AAE414  38 A5 E5 CC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AAE5CC@l */
/* 80AAE418  38 C0 00 08 */	li r6, 8
/* 80AAE41C  38 E0 00 04 */	li r7, 4
/* 80AAE420  4B 8B 39 41 */	bl __construct_array
/* 80AAE424  7F 83 E3 78 */	mr r3, r28
/* 80AAE428  4B 87 DE F9 */	bl initialize__14J3DMaterialAnmFv
/* 80AAE42C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80AAE430  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80AAE434  90 1B 00 00 */	stw r0, 0(r27)
/* 80AAE438  7F 63 DB 78 */	mr r3, r27
/* 80AAE43C  4B 69 73 29 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AAE440:
/* 80AAE440  93 9F 09 6C */	stw r28, 0x96c(r31)
/* 80AAE444  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80AAE448  28 00 00 00 */	cmplwi r0, 0
/* 80AAE44C  40 82 00 0C */	bne lbl_80AAE458
/* 80AAE450  38 60 00 00 */	li r3, 0
/* 80AAE454  48 00 01 60 */	b lbl_80AAE5B4
lbl_80AAE458:
/* 80AAE458  38 00 00 00 */	li r0, 0
/* 80AAE45C  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAE460  28 03 00 02 */	cmplwi r3, 2
/* 80AAE464  41 82 00 14 */	beq lbl_80AAE478
/* 80AAE468  28 03 00 03 */	cmplwi r3, 3
/* 80AAE46C  41 82 00 0C */	beq lbl_80AAE478
/* 80AAE470  28 03 00 04 */	cmplwi r3, 4
/* 80AAE474  40 82 00 08 */	bne lbl_80AAE47C
lbl_80AAE478:
/* 80AAE478  38 00 00 01 */	li r0, 1
lbl_80AAE47C:
/* 80AAE47C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAE480  40 82 00 74 */	bne lbl_80AAE4F4
/* 80AAE484  3C 60 80 AB */	lis r3, l_bmdData@ha /* 0x80AB2210@ha */
/* 80AAE488  38 03 22 10 */	addi r0, r3, l_bmdData@l /* 0x80AB2210@l */
/* 80AAE48C  80 7D 00 C4 */	lwz r3, 0xc4(r29)
/* 80AAE490  54 63 18 38 */	slwi r3, r3, 3
/* 80AAE494  7C 60 1A 14 */	add r3, r0, r3
/* 80AAE498  80 83 00 00 */	lwz r4, 0(r3)
/* 80AAE49C  2C 04 00 00 */	cmpwi r4, 0
/* 80AAE4A0  41 80 00 28 */	blt lbl_80AAE4C8
/* 80AAE4A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80AAE4A8  54 00 10 3A */	slwi r0, r0, 2
/* 80AAE4AC  3C 60 80 AB */	lis r3, l_resNameList@ha /* 0x80AB2270@ha */
/* 80AAE4B0  38 63 22 70 */	addi r3, r3, l_resNameList@l /* 0x80AB2270@l */
/* 80AAE4B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AAE4B8  7F C5 F3 78 */	mr r5, r30
/* 80AAE4BC  38 C0 00 80 */	li r6, 0x80
/* 80AAE4C0  4B 58 DE 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AAE4C4  48 00 00 08 */	b lbl_80AAE4CC
lbl_80AAE4C8:
/* 80AAE4C8  38 60 00 00 */	li r3, 0
lbl_80AAE4CC:
/* 80AAE4CC  28 03 00 00 */	cmplwi r3, 0
/* 80AAE4D0  41 82 00 1C */	beq lbl_80AAE4EC
/* 80AAE4D4  38 80 00 00 */	li r4, 0
/* 80AAE4D8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AAE4DC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AAE4E0  4B 56 67 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AAE4E4  90 7F 0E 44 */	stw r3, 0xe44(r31)
/* 80AAE4E8  48 00 00 0C */	b lbl_80AAE4F4
lbl_80AAE4EC:
/* 80AAE4EC  38 00 00 00 */	li r0, 0
/* 80AAE4F0  90 1F 0E 44 */	stw r0, 0xe44(r31)
lbl_80AAE4F4:
/* 80AAE4F4  38 00 00 00 */	li r0, 0
/* 80AAE4F8  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AAE4FC  28 03 00 02 */	cmplwi r3, 2
/* 80AAE500  41 82 00 14 */	beq lbl_80AAE514
/* 80AAE504  28 03 00 03 */	cmplwi r3, 3
/* 80AAE508  41 82 00 0C */	beq lbl_80AAE514
/* 80AAE50C  28 03 00 04 */	cmplwi r3, 4
/* 80AAE510  40 82 00 08 */	bne lbl_80AAE518
lbl_80AAE514:
/* 80AAE514  38 00 00 01 */	li r0, 1
lbl_80AAE518:
/* 80AAE518  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAE51C  41 82 00 4C */	beq lbl_80AAE568
/* 80AAE520  7F E3 FB 78 */	mr r3, r31
/* 80AAE524  38 80 00 06 */	li r4, 6
/* 80AAE528  38 A0 00 00 */	li r5, 0
/* 80AAE52C  4B 69 BE 5D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AAE530  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AAE534  41 82 00 7C */	beq lbl_80AAE5B0
/* 80AAE538  7F E3 FB 78 */	mr r3, r31
/* 80AAE53C  38 80 00 0A */	li r4, 0xa
/* 80AAE540  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80AAE544  38 A0 00 00 */	li r5, 0
/* 80AAE548  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AAE54C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AAE550  7D 89 03 A6 */	mtctr r12
/* 80AAE554  4E 80 04 21 */	bctrl 
/* 80AAE558  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AAE55C  41 82 00 54 */	beq lbl_80AAE5B0
/* 80AAE560  38 60 00 01 */	li r3, 1
/* 80AAE564  48 00 00 50 */	b lbl_80AAE5B4
lbl_80AAE568:
/* 80AAE568  7F E3 FB 78 */	mr r3, r31
/* 80AAE56C  38 80 00 01 */	li r4, 1
/* 80AAE570  38 A0 00 00 */	li r5, 0
/* 80AAE574  4B 69 BE 15 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AAE578  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AAE57C  41 82 00 34 */	beq lbl_80AAE5B0
/* 80AAE580  7F E3 FB 78 */	mr r3, r31
/* 80AAE584  38 80 00 00 */	li r4, 0
/* 80AAE588  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80AAE58C  38 A0 00 00 */	li r5, 0
/* 80AAE590  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80AAE594  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AAE598  7D 89 03 A6 */	mtctr r12
/* 80AAE59C  4E 80 04 21 */	bctrl 
/* 80AAE5A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AAE5A4  41 82 00 0C */	beq lbl_80AAE5B0
/* 80AAE5A8  38 60 00 01 */	li r3, 1
/* 80AAE5AC  48 00 00 08 */	b lbl_80AAE5B4
lbl_80AAE5B0:
/* 80AAE5B0  38 60 00 00 */	li r3, 0
lbl_80AAE5B4:
/* 80AAE5B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AAE5B8  4B 8B 3C 69 */	bl _restgpr_27
/* 80AAE5BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAE5C0  7C 08 03 A6 */	mtlr r0
/* 80AAE5C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAE5C8  4E 80 00 20 */	blr 
