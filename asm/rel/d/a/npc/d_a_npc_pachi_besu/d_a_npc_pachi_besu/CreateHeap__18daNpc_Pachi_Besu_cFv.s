lbl_80A9317C:
/* 80A9317C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A93180  7C 08 02 A6 */	mflr r0
/* 80A93184  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A93188  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9318C  4B 8C F0 50 */	b _savegpr_29
/* 80A93190  7C 7E 1B 78 */	mr r30, r3
/* 80A93194  3C 60 80 A9 */	lis r3, l_bmdData@ha
/* 80A93198  38 83 6C 60 */	addi r4, r3, l_bmdData@l
/* 80A9319C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A931A0  54 00 10 3A */	slwi r0, r0, 2
/* 80A931A4  3C 60 80 A9 */	lis r3, l_resNameList@ha
/* 80A931A8  38 63 6C A0 */	addi r3, r3, l_resNameList@l
/* 80A931AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A931B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80A931B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A931B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A931BC  3C A5 00 02 */	addis r5, r5, 2
/* 80A931C0  38 C0 00 80 */	li r6, 0x80
/* 80A931C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A931C8  4B 5A 91 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A931CC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A931D0  40 82 00 0C */	bne lbl_80A931DC
/* 80A931D4  38 60 00 01 */	li r3, 1
/* 80A931D8  48 00 02 5C */	b lbl_80A93434
lbl_80A931DC:
/* 80A931DC  38 60 00 58 */	li r3, 0x58
/* 80A931E0  4B 83 BA 6C */	b __nw__FUl
/* 80A931E4  7C 60 1B 79 */	or. r0, r3, r3
/* 80A931E8  41 82 00 4C */	beq lbl_80A93234
/* 80A931EC  38 1E 05 80 */	addi r0, r30, 0x580
/* 80A931F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A931F4  3C 00 00 08 */	lis r0, 8
/* 80A931F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A931FC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A93200  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A93204  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A93208  7F A4 EB 78 */	mr r4, r29
/* 80A9320C  38 A0 00 00 */	li r5, 0
/* 80A93210  38 C0 00 00 */	li r6, 0
/* 80A93214  38 E0 00 00 */	li r7, 0
/* 80A93218  39 00 FF FF */	li r8, -1
/* 80A9321C  3D 20 80 A9 */	lis r9, lit_4497@ha
/* 80A93220  C0 29 6B 18 */	lfs f1, lit_4497@l(r9)
/* 80A93224  39 20 00 00 */	li r9, 0
/* 80A93228  39 40 FF FF */	li r10, -1
/* 80A9322C  4B 57 D5 A4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A93230  7C 60 1B 78 */	mr r0, r3
lbl_80A93234:
/* 80A93234  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80A93238  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A9323C  28 03 00 00 */	cmplwi r3, 0
/* 80A93240  41 82 00 10 */	beq lbl_80A93250
/* 80A93244  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A93248  28 05 00 00 */	cmplwi r5, 0
/* 80A9324C  40 82 00 0C */	bne lbl_80A93258
lbl_80A93250:
/* 80A93250  38 60 00 00 */	li r3, 0
/* 80A93254  48 00 01 E0 */	b lbl_80A93434
lbl_80A93258:
/* 80A93258  38 C0 00 00 */	li r6, 0
/* 80A9325C  3C 60 80 A9 */	lis r3, ctrlJointCallBack__18daNpc_Pachi_Besu_cFP8J3DJointi@ha
/* 80A93260  38 83 37 10 */	addi r4, r3, ctrlJointCallBack__18daNpc_Pachi_Besu_cFP8J3DJointi@l
/* 80A93264  48 00 00 18 */	b lbl_80A9327C
lbl_80A93268:
/* 80A93268  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A9326C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A93270  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A93274  90 83 00 04 */	stw r4, 4(r3)
/* 80A93278  38 C6 00 01 */	addi r6, r6, 1
lbl_80A9327C:
/* 80A9327C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A93280  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A93284  7C 03 00 40 */	cmplw r3, r0
/* 80A93288  41 80 FF E0 */	blt lbl_80A93268
/* 80A9328C  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A93290  38 60 01 08 */	li r3, 0x108
/* 80A93294  4B 83 B9 B8 */	b __nw__FUl
/* 80A93298  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9329C  41 82 00 D0 */	beq lbl_80A9336C
/* 80A932A0  7F FD FB 78 */	mr r29, r31
/* 80A932A4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A932A8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A932AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A932B0  38 7F 00 04 */	addi r3, r31, 4
/* 80A932B4  3C 80 80 A9 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A932B8  38 84 35 F0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A932BC  3C A0 80 A9 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A932C0  38 A5 35 B4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A932C4  38 C0 00 08 */	li r6, 8
/* 80A932C8  38 E0 00 02 */	li r7, 2
/* 80A932CC  4B 8C EA 94 */	b __construct_array
/* 80A932D0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80A932D4  3C 80 80 A9 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A932D8  38 84 35 9C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A932DC  3C A0 80 A9 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A932E0  38 A5 35 60 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A932E4  38 C0 00 08 */	li r6, 8
/* 80A932E8  38 E0 00 08 */	li r7, 8
/* 80A932EC  4B 8C EA 74 */	b __construct_array
/* 80A932F0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A932F4  3C 80 80 A9 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A932F8  38 84 35 3C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A932FC  3C A0 80 A9 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A93300  38 A5 34 F4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A93304  38 C0 00 0C */	li r6, 0xc
/* 80A93308  38 E0 00 08 */	li r7, 8
/* 80A9330C  4B 8C EA 54 */	b __construct_array
/* 80A93310  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80A93314  3C 80 80 A9 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A93318  38 84 34 DC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A9331C  3C A0 80 A9 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A93320  38 A5 34 A0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A93324  38 C0 00 08 */	li r6, 8
/* 80A93328  38 E0 00 04 */	li r7, 4
/* 80A9332C  4B 8C EA 34 */	b __construct_array
/* 80A93330  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80A93334  3C 80 80 A9 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A93338  38 84 34 88 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A9333C  3C A0 80 A9 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A93340  38 A5 34 4C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A93344  38 C0 00 08 */	li r6, 8
/* 80A93348  38 E0 00 04 */	li r7, 4
/* 80A9334C  4B 8C EA 14 */	b __construct_array
/* 80A93350  7F E3 FB 78 */	mr r3, r31
/* 80A93354  4B 89 8F CC */	b initialize__14J3DMaterialAnmFv
/* 80A93358  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80A9335C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80A93360  90 1D 00 00 */	stw r0, 0(r29)
/* 80A93364  7F A3 EB 78 */	mr r3, r29
/* 80A93368  4B 6B 23 FC */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A9336C:
/* 80A9336C  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80A93370  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80A93374  28 00 00 00 */	cmplwi r0, 0
/* 80A93378  40 82 00 0C */	bne lbl_80A93384
/* 80A9337C  38 60 00 00 */	li r3, 0
/* 80A93380  48 00 00 B4 */	b lbl_80A93434
lbl_80A93384:
/* 80A93384  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A93388  28 00 00 00 */	cmplwi r0, 0
/* 80A9338C  41 82 00 58 */	beq lbl_80A933E4
/* 80A93390  7F C3 F3 78 */	mr r3, r30
/* 80A93394  38 80 00 1A */	li r4, 0x1a
/* 80A93398  38 A0 00 00 */	li r5, 0
/* 80A9339C  4B 6B 6F EC */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A933A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A933A4  41 82 00 38 */	beq lbl_80A933DC
/* 80A933A8  7F C3 F3 78 */	mr r3, r30
/* 80A933AC  38 80 00 18 */	li r4, 0x18
/* 80A933B0  3C A0 80 A9 */	lis r5, lit_4347@ha
/* 80A933B4  C0 25 6B 0C */	lfs f1, lit_4347@l(r5)
/* 80A933B8  38 A0 00 00 */	li r5, 0
/* 80A933BC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A933C0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A933C4  7D 89 03 A6 */	mtctr r12
/* 80A933C8  4E 80 04 21 */	bctrl 
/* 80A933CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A933D0  41 82 00 0C */	beq lbl_80A933DC
/* 80A933D4  38 60 00 01 */	li r3, 1
/* 80A933D8  48 00 00 5C */	b lbl_80A93434
lbl_80A933DC:
/* 80A933DC  38 60 00 00 */	li r3, 0
/* 80A933E0  48 00 00 54 */	b lbl_80A93434
lbl_80A933E4:
/* 80A933E4  7F C3 F3 78 */	mr r3, r30
/* 80A933E8  38 80 00 03 */	li r4, 3
/* 80A933EC  38 A0 00 00 */	li r5, 0
/* 80A933F0  4B 6B 6F 98 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A933F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A933F8  41 82 00 38 */	beq lbl_80A93430
/* 80A933FC  7F C3 F3 78 */	mr r3, r30
/* 80A93400  38 80 00 00 */	li r4, 0
/* 80A93404  3C A0 80 A9 */	lis r5, lit_4347@ha
/* 80A93408  C0 25 6B 0C */	lfs f1, lit_4347@l(r5)
/* 80A9340C  38 A0 00 00 */	li r5, 0
/* 80A93410  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A93414  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A93418  7D 89 03 A6 */	mtctr r12
/* 80A9341C  4E 80 04 21 */	bctrl 
/* 80A93420  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A93424  41 82 00 0C */	beq lbl_80A93430
/* 80A93428  38 60 00 01 */	li r3, 1
/* 80A9342C  48 00 00 08 */	b lbl_80A93434
lbl_80A93430:
/* 80A93430  38 60 00 00 */	li r3, 0
lbl_80A93434:
/* 80A93434  39 61 00 30 */	addi r11, r1, 0x30
/* 80A93438  4B 8C ED F0 */	b _restgpr_29
/* 80A9343C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A93440  7C 08 03 A6 */	mtlr r0
/* 80A93444  38 21 00 30 */	addi r1, r1, 0x30
/* 80A93448  4E 80 00 20 */	blr 
