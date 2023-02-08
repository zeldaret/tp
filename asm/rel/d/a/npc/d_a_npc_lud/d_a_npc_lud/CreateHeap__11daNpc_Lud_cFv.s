lbl_80A6AFA8:
/* 80A6AFA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6AFAC  7C 08 02 A6 */	mflr r0
/* 80A6AFB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6AFB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6AFB8  4B 8F 72 21 */	bl _savegpr_28
/* 80A6AFBC  7C 7F 1B 78 */	mr r31, r3
/* 80A6AFC0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A6AFC4  20 00 00 01 */	subfic r0, r0, 1
/* 80A6AFC8  7C 00 00 34 */	cntlzw r0, r0
/* 80A6AFCC  3C 60 80 A7 */	lis r3, l_bmdData@ha /* 0x80A6FFEC@ha */
/* 80A6AFD0  38 83 FF EC */	addi r4, r3, l_bmdData@l /* 0x80A6FFEC@l */
/* 80A6AFD4  54 00 F0 B8 */	rlwinm r0, r0, 0x1e, 2, 0x1c
/* 80A6AFD8  7C 64 02 14 */	add r3, r4, r0
/* 80A6AFDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6AFE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A6AFE4  54 60 10 3A */	slwi r0, r3, 2
/* 80A6AFE8  3C 60 80 A7 */	lis r3, l_resNameList@ha /* 0x80A70044@ha */
/* 80A6AFEC  38 63 00 44 */	addi r3, r3, l_resNameList@l /* 0x80A70044@l */
/* 80A6AFF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6AFF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6AFF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6AFFC  3F C5 00 02 */	addis r30, r5, 2
/* 80A6B000  3B DE C2 F8 */	addi r30, r30, -15624
/* 80A6B004  7F C5 F3 78 */	mr r5, r30
/* 80A6B008  38 C0 00 80 */	li r6, 0x80
/* 80A6B00C  4B 5D 12 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A6B010  7C 7C 1B 79 */	or. r28, r3, r3
/* 80A6B014  40 82 00 0C */	bne lbl_80A6B020
/* 80A6B018  38 60 00 00 */	li r3, 0
/* 80A6B01C  48 00 04 0C */	b lbl_80A6B428
lbl_80A6B020:
/* 80A6B020  38 60 00 58 */	li r3, 0x58
/* 80A6B024  4B 86 3C 29 */	bl __nw__FUl
/* 80A6B028  7C 60 1B 79 */	or. r0, r3, r3
/* 80A6B02C  41 82 00 4C */	beq lbl_80A6B078
/* 80A6B030  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A6B034  90 01 00 08 */	stw r0, 8(r1)
/* 80A6B038  3C 00 00 08 */	lis r0, 8
/* 80A6B03C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6B040  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A6B044  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A6B048  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6B04C  7F 84 E3 78 */	mr r4, r28
/* 80A6B050  38 A0 00 00 */	li r5, 0
/* 80A6B054  38 C0 00 00 */	li r6, 0
/* 80A6B058  38 E0 00 00 */	li r7, 0
/* 80A6B05C  39 00 FF FF */	li r8, -1
/* 80A6B060  3D 20 80 A7 */	lis r9, lit_4421@ha /* 0x80A6FE50@ha */
/* 80A6B064  C0 29 FE 50 */	lfs f1, lit_4421@l(r9)  /* 0x80A6FE50@l */
/* 80A6B068  39 20 00 00 */	li r9, 0
/* 80A6B06C  39 40 FF FF */	li r10, -1
/* 80A6B070  4B 5A 57 61 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A6B074  7C 60 1B 78 */	mr r0, r3
lbl_80A6B078:
/* 80A6B078  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A6B07C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A6B080  28 03 00 00 */	cmplwi r3, 0
/* 80A6B084  41 82 00 10 */	beq lbl_80A6B094
/* 80A6B088  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A6B08C  28 05 00 00 */	cmplwi r5, 0
/* 80A6B090  40 82 00 0C */	bne lbl_80A6B09C
lbl_80A6B094:
/* 80A6B094  38 60 00 00 */	li r3, 0
/* 80A6B098  48 00 03 90 */	b lbl_80A6B428
lbl_80A6B09C:
/* 80A6B09C  38 C0 00 00 */	li r6, 0
/* 80A6B0A0  3C 60 80 A7 */	lis r3, ctrlJointCallBack__11daNpc_Lud_cFP8J3DJointi@ha /* 0x80A6B704@ha */
/* 80A6B0A4  38 83 B7 04 */	addi r4, r3, ctrlJointCallBack__11daNpc_Lud_cFP8J3DJointi@l /* 0x80A6B704@l */
/* 80A6B0A8  48 00 00 18 */	b lbl_80A6B0C0
lbl_80A6B0AC:
/* 80A6B0AC  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80A6B0B0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A6B0B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6B0B8  90 83 00 04 */	stw r4, 4(r3)
/* 80A6B0BC  38 C6 00 01 */	addi r6, r6, 1
lbl_80A6B0C0:
/* 80A6B0C0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A6B0C4  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80A6B0C8  7C 03 00 40 */	cmplw r3, r0
/* 80A6B0CC  41 80 FF E0 */	blt lbl_80A6B0AC
/* 80A6B0D0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A6B0D4  38 60 01 08 */	li r3, 0x108
/* 80A6B0D8  4B 86 3B 75 */	bl __nw__FUl
/* 80A6B0DC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A6B0E0  41 82 00 D0 */	beq lbl_80A6B1B0
/* 80A6B0E4  7F BC EB 78 */	mr r28, r29
/* 80A6B0E8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A6B0EC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A6B0F0  90 1D 00 00 */	stw r0, 0(r29)
/* 80A6B0F4  38 7D 00 04 */	addi r3, r29, 4
/* 80A6B0F8  3C 80 80 A7 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A6B5E4@ha */
/* 80A6B0FC  38 84 B5 E4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A6B5E4@l */
/* 80A6B100  3C A0 80 A7 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A6B5A8@ha */
/* 80A6B104  38 A5 B5 A8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A6B5A8@l */
/* 80A6B108  38 C0 00 08 */	li r6, 8
/* 80A6B10C  38 E0 00 02 */	li r7, 2
/* 80A6B110  4B 8F 6C 51 */	bl __construct_array
/* 80A6B114  38 7D 00 14 */	addi r3, r29, 0x14
/* 80A6B118  3C 80 80 A7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A6B590@ha */
/* 80A6B11C  38 84 B5 90 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A6B590@l */
/* 80A6B120  3C A0 80 A7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A6B554@ha */
/* 80A6B124  38 A5 B5 54 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A6B554@l */
/* 80A6B128  38 C0 00 08 */	li r6, 8
/* 80A6B12C  38 E0 00 08 */	li r7, 8
/* 80A6B130  4B 8F 6C 31 */	bl __construct_array
/* 80A6B134  38 7D 00 54 */	addi r3, r29, 0x54
/* 80A6B138  3C 80 80 A7 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A6B530@ha */
/* 80A6B13C  38 84 B5 30 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A6B530@l */
/* 80A6B140  3C A0 80 A7 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A6B4E8@ha */
/* 80A6B144  38 A5 B4 E8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A6B4E8@l */
/* 80A6B148  38 C0 00 0C */	li r6, 0xc
/* 80A6B14C  38 E0 00 08 */	li r7, 8
/* 80A6B150  4B 8F 6C 11 */	bl __construct_array
/* 80A6B154  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80A6B158  3C 80 80 A7 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A6B4D0@ha */
/* 80A6B15C  38 84 B4 D0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A6B4D0@l */
/* 80A6B160  3C A0 80 A7 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A6B494@ha */
/* 80A6B164  38 A5 B4 94 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A6B494@l */
/* 80A6B168  38 C0 00 08 */	li r6, 8
/* 80A6B16C  38 E0 00 04 */	li r7, 4
/* 80A6B170  4B 8F 6B F1 */	bl __construct_array
/* 80A6B174  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80A6B178  3C 80 80 A7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A6B47C@ha */
/* 80A6B17C  38 84 B4 7C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A6B47C@l */
/* 80A6B180  3C A0 80 A7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A6B440@ha */
/* 80A6B184  38 A5 B4 40 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A6B440@l */
/* 80A6B188  38 C0 00 08 */	li r6, 8
/* 80A6B18C  38 E0 00 04 */	li r7, 4
/* 80A6B190  4B 8F 6B D1 */	bl __construct_array
/* 80A6B194  7F A3 EB 78 */	mr r3, r29
/* 80A6B198  4B 8C 11 89 */	bl initialize__14J3DMaterialAnmFv
/* 80A6B19C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80A6B1A0  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80A6B1A4  90 1C 00 00 */	stw r0, 0(r28)
/* 80A6B1A8  7F 83 E3 78 */	mr r3, r28
/* 80A6B1AC  4B 6D A5 B9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A6B1B0:
/* 80A6B1B0  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80A6B1B4  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A6B1B8  28 00 00 00 */	cmplwi r0, 0
/* 80A6B1BC  40 82 00 0C */	bne lbl_80A6B1C8
/* 80A6B1C0  38 60 00 00 */	li r3, 0
/* 80A6B1C4  48 00 02 64 */	b lbl_80A6B428
lbl_80A6B1C8:
/* 80A6B1C8  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6B1CC  28 00 00 05 */	cmplwi r0, 5
/* 80A6B1D0  40 82 00 B0 */	bne lbl_80A6B280
/* 80A6B1D4  3C 60 80 A7 */	lis r3, l_bmdData@ha /* 0x80A6FFEC@ha */
/* 80A6B1D8  38 63 FF EC */	addi r3, r3, l_bmdData@l /* 0x80A6FFEC@l */
/* 80A6B1DC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80A6B1E0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A6B1E4  54 00 10 3A */	slwi r0, r0, 2
/* 80A6B1E8  3C 60 80 A7 */	lis r3, l_resNameList@ha /* 0x80A70044@ha */
/* 80A6B1EC  38 63 00 44 */	addi r3, r3, l_resNameList@l /* 0x80A70044@l */
/* 80A6B1F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6B1F4  7F C5 F3 78 */	mr r5, r30
/* 80A6B1F8  38 C0 00 80 */	li r6, 0x80
/* 80A6B1FC  4B 5D 10 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A6B200  7C 7C 1B 78 */	mr r28, r3
/* 80A6B204  38 60 00 58 */	li r3, 0x58
/* 80A6B208  4B 86 3A 45 */	bl __nw__FUl
/* 80A6B20C  7C 60 1B 79 */	or. r0, r3, r3
/* 80A6B210  41 82 00 4C */	beq lbl_80A6B25C
/* 80A6B214  38 00 00 00 */	li r0, 0
/* 80A6B218  90 01 00 08 */	stw r0, 8(r1)
/* 80A6B21C  3C 00 00 08 */	lis r0, 8
/* 80A6B220  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6B224  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80A6B228  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80A6B22C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6B230  7F 84 E3 78 */	mr r4, r28
/* 80A6B234  38 A0 00 00 */	li r5, 0
/* 80A6B238  38 C0 00 00 */	li r6, 0
/* 80A6B23C  38 E0 00 00 */	li r7, 0
/* 80A6B240  39 00 FF FF */	li r8, -1
/* 80A6B244  3D 20 80 A7 */	lis r9, lit_4421@ha /* 0x80A6FE50@ha */
/* 80A6B248  C0 29 FE 50 */	lfs f1, lit_4421@l(r9)  /* 0x80A6FE50@l */
/* 80A6B24C  39 20 00 00 */	li r9, 0
/* 80A6B250  39 40 FF FF */	li r10, -1
/* 80A6B254  4B 5A 55 7D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A6B258  7C 60 1B 78 */	mr r0, r3
lbl_80A6B25C:
/* 80A6B25C  90 1F 0E 40 */	stw r0, 0xe40(r31)
/* 80A6B260  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80A6B264  28 03 00 00 */	cmplwi r3, 0
/* 80A6B268  41 82 00 10 */	beq lbl_80A6B278
/* 80A6B26C  80 03 00 04 */	lwz r0, 4(r3)
/* 80A6B270  28 00 00 00 */	cmplwi r0, 0
/* 80A6B274  40 82 00 0C */	bne lbl_80A6B280
lbl_80A6B278:
/* 80A6B278  38 60 00 00 */	li r3, 0
/* 80A6B27C  48 00 01 AC */	b lbl_80A6B428
lbl_80A6B280:
/* 80A6B280  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6B284  28 00 00 04 */	cmplwi r0, 4
/* 80A6B288  41 82 00 0C */	beq lbl_80A6B294
/* 80A6B28C  28 00 00 06 */	cmplwi r0, 6
/* 80A6B290  40 82 00 70 */	bne lbl_80A6B300
lbl_80A6B294:
/* 80A6B294  3C 60 80 A7 */	lis r3, l_bmdData@ha /* 0x80A6FFEC@ha */
/* 80A6B298  38 63 FF EC */	addi r3, r3, l_bmdData@l /* 0x80A6FFEC@l */
/* 80A6B29C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80A6B2A0  2C 04 00 00 */	cmpwi r4, 0
/* 80A6B2A4  41 80 00 28 */	blt lbl_80A6B2CC
/* 80A6B2A8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80A6B2AC  54 00 10 3A */	slwi r0, r0, 2
/* 80A6B2B0  3C 60 80 A7 */	lis r3, l_resNameList@ha /* 0x80A70044@ha */
/* 80A6B2B4  38 63 00 44 */	addi r3, r3, l_resNameList@l /* 0x80A70044@l */
/* 80A6B2B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6B2BC  7F C5 F3 78 */	mr r5, r30
/* 80A6B2C0  38 C0 00 80 */	li r6, 0x80
/* 80A6B2C4  4B 5D 10 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A6B2C8  48 00 00 08 */	b lbl_80A6B2D0
lbl_80A6B2CC:
/* 80A6B2CC  38 60 00 00 */	li r3, 0
lbl_80A6B2D0:
/* 80A6B2D0  28 03 00 00 */	cmplwi r3, 0
/* 80A6B2D4  41 82 00 18 */	beq lbl_80A6B2EC
/* 80A6B2D8  3C 80 00 08 */	lis r4, 8
/* 80A6B2DC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A6B2E0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A6B2E4  4B 5A 99 71 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A6B2E8  90 7F 0E 48 */	stw r3, 0xe48(r31)
lbl_80A6B2EC:
/* 80A6B2EC  80 1F 0E 48 */	lwz r0, 0xe48(r31)
/* 80A6B2F0  28 00 00 00 */	cmplwi r0, 0
/* 80A6B2F4  40 82 00 0C */	bne lbl_80A6B300
/* 80A6B2F8  38 60 00 00 */	li r3, 0
/* 80A6B2FC  48 00 01 2C */	b lbl_80A6B428
lbl_80A6B300:
/* 80A6B300  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6B304  28 00 00 05 */	cmplwi r0, 5
/* 80A6B308  40 82 00 70 */	bne lbl_80A6B378
/* 80A6B30C  3C 60 80 A7 */	lis r3, l_bmdData@ha /* 0x80A6FFEC@ha */
/* 80A6B310  38 63 FF EC */	addi r3, r3, l_bmdData@l /* 0x80A6FFEC@l */
/* 80A6B314  80 83 00 18 */	lwz r4, 0x18(r3)
/* 80A6B318  2C 04 00 00 */	cmpwi r4, 0
/* 80A6B31C  41 80 00 28 */	blt lbl_80A6B344
/* 80A6B320  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80A6B324  54 00 10 3A */	slwi r0, r0, 2
/* 80A6B328  3C 60 80 A7 */	lis r3, l_resNameList@ha /* 0x80A70044@ha */
/* 80A6B32C  38 63 00 44 */	addi r3, r3, l_resNameList@l /* 0x80A70044@l */
/* 80A6B330  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6B334  7F C5 F3 78 */	mr r5, r30
/* 80A6B338  38 C0 00 80 */	li r6, 0x80
/* 80A6B33C  4B 5D 0F B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A6B340  48 00 00 08 */	b lbl_80A6B348
lbl_80A6B344:
/* 80A6B344  38 60 00 00 */	li r3, 0
lbl_80A6B348:
/* 80A6B348  28 03 00 00 */	cmplwi r3, 0
/* 80A6B34C  41 82 00 18 */	beq lbl_80A6B364
/* 80A6B350  3C 80 00 08 */	lis r4, 8
/* 80A6B354  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A6B358  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A6B35C  4B 5A 98 F9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A6B360  90 7F 0E 4C */	stw r3, 0xe4c(r31)
lbl_80A6B364:
/* 80A6B364  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80A6B368  28 00 00 00 */	cmplwi r0, 0
/* 80A6B36C  40 82 00 0C */	bne lbl_80A6B378
/* 80A6B370  38 60 00 00 */	li r3, 0
/* 80A6B374  48 00 00 B4 */	b lbl_80A6B428
lbl_80A6B378:
/* 80A6B378  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A6B37C  28 00 00 00 */	cmplwi r0, 0
/* 80A6B380  41 82 00 58 */	beq lbl_80A6B3D8
/* 80A6B384  7F E3 FB 78 */	mr r3, r31
/* 80A6B388  38 80 00 12 */	li r4, 0x12
/* 80A6B38C  38 A0 00 00 */	li r5, 0
/* 80A6B390  4B 6D EF F9 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A6B394  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6B398  41 82 00 38 */	beq lbl_80A6B3D0
/* 80A6B39C  7F E3 FB 78 */	mr r3, r31
/* 80A6B3A0  38 80 00 13 */	li r4, 0x13
/* 80A6B3A4  3C A0 80 A7 */	lis r5, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6B3A8  C0 25 FE 44 */	lfs f1, lit_4218@l(r5)  /* 0x80A6FE44@l */
/* 80A6B3AC  38 A0 00 00 */	li r5, 0
/* 80A6B3B0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A6B3B4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A6B3B8  7D 89 03 A6 */	mtctr r12
/* 80A6B3BC  4E 80 04 21 */	bctrl 
/* 80A6B3C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6B3C4  41 82 00 0C */	beq lbl_80A6B3D0
/* 80A6B3C8  38 60 00 01 */	li r3, 1
/* 80A6B3CC  48 00 00 5C */	b lbl_80A6B428
lbl_80A6B3D0:
/* 80A6B3D0  38 60 00 00 */	li r3, 0
/* 80A6B3D4  48 00 00 54 */	b lbl_80A6B428
lbl_80A6B3D8:
/* 80A6B3D8  7F E3 FB 78 */	mr r3, r31
/* 80A6B3DC  38 80 00 01 */	li r4, 1
/* 80A6B3E0  38 A0 00 00 */	li r5, 0
/* 80A6B3E4  4B 6D EF A5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A6B3E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6B3EC  41 82 00 38 */	beq lbl_80A6B424
/* 80A6B3F0  7F E3 FB 78 */	mr r3, r31
/* 80A6B3F4  38 80 00 00 */	li r4, 0
/* 80A6B3F8  3C A0 80 A7 */	lis r5, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6B3FC  C0 25 FE 44 */	lfs f1, lit_4218@l(r5)  /* 0x80A6FE44@l */
/* 80A6B400  38 A0 00 00 */	li r5, 0
/* 80A6B404  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A6B408  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A6B40C  7D 89 03 A6 */	mtctr r12
/* 80A6B410  4E 80 04 21 */	bctrl 
/* 80A6B414  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6B418  41 82 00 0C */	beq lbl_80A6B424
/* 80A6B41C  38 60 00 01 */	li r3, 1
/* 80A6B420  48 00 00 08 */	b lbl_80A6B428
lbl_80A6B424:
/* 80A6B424  38 60 00 00 */	li r3, 0
lbl_80A6B428:
/* 80A6B428  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6B42C  4B 8F 6D F9 */	bl _restgpr_28
/* 80A6B430  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6B434  7C 08 03 A6 */	mtlr r0
/* 80A6B438  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6B43C  4E 80 00 20 */	blr 
