lbl_80B43338:
/* 80B43338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4333C  7C 08 02 A6 */	mflr r0
/* 80B43340  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B43344  39 61 00 30 */	addi r11, r1, 0x30
/* 80B43348  4B 81 EE 95 */	bl _savegpr_29
/* 80B4334C  7C 7F 1B 78 */	mr r31, r3
/* 80B43350  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B43354  28 00 00 01 */	cmplwi r0, 1
/* 80B43358  38 00 00 00 */	li r0, 0
/* 80B4335C  54 05 18 38 */	slwi r5, r0, 3
/* 80B43360  3C 60 80 B4 */	lis r3, l_bmdData@ha /* 0x80B46164@ha */
/* 80B43364  38 83 61 64 */	addi r4, r3, l_bmdData@l /* 0x80B46164@l */
/* 80B43368  7C 64 2A 14 */	add r3, r4, r5
/* 80B4336C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B43370  54 00 10 3A */	slwi r0, r0, 2
/* 80B43374  3C 60 80 B4 */	lis r3, l_resNameList@ha /* 0x80B4617C@ha */
/* 80B43378  38 63 61 7C */	addi r3, r3, l_resNameList@l /* 0x80B4617C@l */
/* 80B4337C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B43380  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B43384  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B43388  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4338C  3C A5 00 02 */	addis r5, r5, 2
/* 80B43390  38 C0 00 80 */	li r6, 0x80
/* 80B43394  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B43398  4B 4F 8F 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B4339C  7C 7E 1B 78 */	mr r30, r3
/* 80B433A0  38 60 00 58 */	li r3, 0x58
/* 80B433A4  4B 78 B8 A9 */	bl __nw__FUl
/* 80B433A8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B433AC  41 82 00 4C */	beq lbl_80B433F8
/* 80B433B0  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B433B4  90 01 00 08 */	stw r0, 8(r1)
/* 80B433B8  3C 00 00 08 */	lis r0, 8
/* 80B433BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B433C0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B433C4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B433C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B433CC  7F C4 F3 78 */	mr r4, r30
/* 80B433D0  38 A0 00 00 */	li r5, 0
/* 80B433D4  38 C0 00 00 */	li r6, 0
/* 80B433D8  38 E0 00 00 */	li r7, 0
/* 80B433DC  39 00 FF FF */	li r8, -1
/* 80B433E0  3D 20 80 B4 */	lis r9, lit_4345@ha /* 0x80B460FC@ha */
/* 80B433E4  C0 29 60 FC */	lfs f1, lit_4345@l(r9)  /* 0x80B460FC@l */
/* 80B433E8  39 20 00 00 */	li r9, 0
/* 80B433EC  39 40 FF FF */	li r10, -1
/* 80B433F0  4B 4C D3 E1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B433F4  7C 60 1B 78 */	mr r0, r3
lbl_80B433F8:
/* 80B433F8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B433FC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B43400  28 03 00 00 */	cmplwi r3, 0
/* 80B43404  41 82 00 1C */	beq lbl_80B43420
/* 80B43408  80 03 00 04 */	lwz r0, 4(r3)
/* 80B4340C  28 00 00 00 */	cmplwi r0, 0
/* 80B43410  40 82 00 10 */	bne lbl_80B43420
/* 80B43414  4B 4C DE FD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B43418  38 00 00 00 */	li r0, 0
/* 80B4341C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80B43420:
/* 80B43420  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B43424  28 03 00 00 */	cmplwi r3, 0
/* 80B43428  40 82 00 0C */	bne lbl_80B43434
/* 80B4342C  38 60 00 00 */	li r3, 0
/* 80B43430  48 00 01 84 */	b lbl_80B435B4
lbl_80B43434:
/* 80B43434  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B43438  38 C0 00 00 */	li r6, 0
/* 80B4343C  3C 60 80 B4 */	lis r3, ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi@ha /* 0x80B438A4@ha */
/* 80B43440  38 83 38 A4 */	addi r4, r3, ctrlJointCallBack__13daNpc_yamiD_cFP8J3DJointi@l /* 0x80B438A4@l */
/* 80B43444  48 00 00 18 */	b lbl_80B4345C
lbl_80B43448:
/* 80B43448  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B4344C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B43450  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B43454  90 83 00 04 */	stw r4, 4(r3)
/* 80B43458  38 C6 00 01 */	addi r6, r6, 1
lbl_80B4345C:
/* 80B4345C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B43460  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B43464  7C 03 00 40 */	cmplw r3, r0
/* 80B43468  41 80 FF E0 */	blt lbl_80B43448
/* 80B4346C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B43470  38 60 01 08 */	li r3, 0x108
/* 80B43474  4B 78 B7 D9 */	bl __nw__FUl
/* 80B43478  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4347C  41 82 00 D0 */	beq lbl_80B4354C
/* 80B43480  7F DD F3 78 */	mr r29, r30
/* 80B43484  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B43488  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B4348C  90 1E 00 00 */	stw r0, 0(r30)
/* 80B43490  38 7E 00 04 */	addi r3, r30, 4
/* 80B43494  3C 80 80 B4 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B43770@ha */
/* 80B43498  38 84 37 70 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B43770@l */
/* 80B4349C  3C A0 80 B4 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B43734@ha */
/* 80B434A0  38 A5 37 34 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B43734@l */
/* 80B434A4  38 C0 00 08 */	li r6, 8
/* 80B434A8  38 E0 00 02 */	li r7, 2
/* 80B434AC  4B 81 E8 B5 */	bl __construct_array
/* 80B434B0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B434B4  3C 80 80 B4 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B4371C@ha */
/* 80B434B8  38 84 37 1C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B4371C@l */
/* 80B434BC  3C A0 80 B4 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B436E0@ha */
/* 80B434C0  38 A5 36 E0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B436E0@l */
/* 80B434C4  38 C0 00 08 */	li r6, 8
/* 80B434C8  38 E0 00 08 */	li r7, 8
/* 80B434CC  4B 81 E8 95 */	bl __construct_array
/* 80B434D0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B434D4  3C 80 80 B4 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B436BC@ha */
/* 80B434D8  38 84 36 BC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B436BC@l */
/* 80B434DC  3C A0 80 B4 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B43674@ha */
/* 80B434E0  38 A5 36 74 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B43674@l */
/* 80B434E4  38 C0 00 0C */	li r6, 0xc
/* 80B434E8  38 E0 00 08 */	li r7, 8
/* 80B434EC  4B 81 E8 75 */	bl __construct_array
/* 80B434F0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B434F4  3C 80 80 B4 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B4365C@ha */
/* 80B434F8  38 84 36 5C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B4365C@l */
/* 80B434FC  3C A0 80 B4 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B43620@ha */
/* 80B43500  38 A5 36 20 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B43620@l */
/* 80B43504  38 C0 00 08 */	li r6, 8
/* 80B43508  38 E0 00 04 */	li r7, 4
/* 80B4350C  4B 81 E8 55 */	bl __construct_array
/* 80B43510  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B43514  3C 80 80 B4 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B43608@ha */
/* 80B43518  38 84 36 08 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B43608@l */
/* 80B4351C  3C A0 80 B4 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B435CC@ha */
/* 80B43520  38 A5 35 CC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B435CC@l */
/* 80B43524  38 C0 00 08 */	li r6, 8
/* 80B43528  38 E0 00 04 */	li r7, 4
/* 80B4352C  4B 81 E8 35 */	bl __construct_array
/* 80B43530  7F C3 F3 78 */	mr r3, r30
/* 80B43534  4B 7E 8D ED */	bl initialize__14J3DMaterialAnmFv
/* 80B43538  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80B4353C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80B43540  90 1D 00 00 */	stw r0, 0(r29)
/* 80B43544  7F A3 EB 78 */	mr r3, r29
/* 80B43548  4B 60 22 1D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B4354C:
/* 80B4354C  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80B43550  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B43554  28 00 00 00 */	cmplwi r0, 0
/* 80B43558  40 82 00 0C */	bne lbl_80B43564
/* 80B4355C  38 60 00 00 */	li r3, 0
/* 80B43560  48 00 00 54 */	b lbl_80B435B4
lbl_80B43564:
/* 80B43564  7F E3 FB 78 */	mr r3, r31
/* 80B43568  38 80 00 01 */	li r4, 1
/* 80B4356C  38 A0 00 00 */	li r5, 0
/* 80B43570  4B 60 6E 19 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B43574  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B43578  41 82 00 38 */	beq lbl_80B435B0
/* 80B4357C  7F E3 FB 78 */	mr r3, r31
/* 80B43580  38 80 00 00 */	li r4, 0
/* 80B43584  3C A0 80 B4 */	lis r5, lit_4194@ha /* 0x80B460F0@ha */
/* 80B43588  C0 25 60 F0 */	lfs f1, lit_4194@l(r5)  /* 0x80B460F0@l */
/* 80B4358C  38 A0 00 00 */	li r5, 0
/* 80B43590  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B43594  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B43598  7D 89 03 A6 */	mtctr r12
/* 80B4359C  4E 80 04 21 */	bctrl 
/* 80B435A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B435A4  41 82 00 0C */	beq lbl_80B435B0
/* 80B435A8  38 60 00 01 */	li r3, 1
/* 80B435AC  48 00 00 08 */	b lbl_80B435B4
lbl_80B435B0:
/* 80B435B0  38 60 00 00 */	li r3, 0
lbl_80B435B4:
/* 80B435B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B435B8  4B 81 EC 71 */	bl _restgpr_29
/* 80B435BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B435C0  7C 08 03 A6 */	mtlr r0
/* 80B435C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B435C8  4E 80 00 20 */	blr 
