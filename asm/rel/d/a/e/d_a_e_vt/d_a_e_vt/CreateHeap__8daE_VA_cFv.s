lbl_807CD048:
/* 807CD048  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807CD04C  7C 08 02 A6 */	mflr r0
/* 807CD050  90 01 00 44 */	stw r0, 0x44(r1)
/* 807CD054  39 61 00 40 */	addi r11, r1, 0x40
/* 807CD058  4B B9 51 75 */	bl _savegpr_25
/* 807CD05C  7C 7F 1B 78 */	mr r31, r3
/* 807CD060  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CD064  3B A3 EC A8 */	addi r29, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CD068  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD06C  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD070  38 80 00 33 */	li r4, 0x33
/* 807CD074  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CD078  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CD07C  3F C5 00 02 */	addis r30, r5, 2
/* 807CD080  3B DE C2 F8 */	addi r30, r30, -15624
/* 807CD084  7F C5 F3 78 */	mr r5, r30
/* 807CD088  38 C0 00 80 */	li r6, 0x80
/* 807CD08C  4B 86 F2 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD090  7C 7A 1B 78 */	mr r26, r3
/* 807CD094  38 60 00 58 */	li r3, 0x58
/* 807CD098  4B B0 1B B5 */	bl __nw__FUl
/* 807CD09C  7C 79 1B 79 */	or. r25, r3, r3
/* 807CD0A0  41 82 00 64 */	beq lbl_807CD104
/* 807CD0A4  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD0A8  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD0AC  38 80 00 0F */	li r4, 0xf
/* 807CD0B0  7F C5 F3 78 */	mr r5, r30
/* 807CD0B4  38 C0 00 80 */	li r6, 0x80
/* 807CD0B8  4B 86 F2 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD0BC  7C 67 1B 78 */	mr r7, r3
/* 807CD0C0  38 1F 12 54 */	addi r0, r31, 0x1254
/* 807CD0C4  90 01 00 08 */	stw r0, 8(r1)
/* 807CD0C8  3C 00 00 08 */	lis r0, 8
/* 807CD0CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CD0D0  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 807CD0D4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 807CD0D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CD0DC  7F 23 CB 78 */	mr r3, r25
/* 807CD0E0  7F 44 D3 78 */	mr r4, r26
/* 807CD0E4  38 A0 00 00 */	li r5, 0
/* 807CD0E8  38 C0 00 00 */	li r6, 0
/* 807CD0EC  39 00 00 00 */	li r8, 0
/* 807CD0F0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807CD0F4  39 20 00 00 */	li r9, 0
/* 807CD0F8  39 40 FF FF */	li r10, -1
/* 807CD0FC  4B 84 36 D5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807CD100  7C 79 1B 78 */	mr r25, r3
lbl_807CD104:
/* 807CD104  93 3F 05 B4 */	stw r25, 0x5b4(r31)
/* 807CD108  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CD10C  28 03 00 00 */	cmplwi r3, 0
/* 807CD110  41 82 00 10 */	beq lbl_807CD120
/* 807CD114  80 83 00 04 */	lwz r4, 4(r3)
/* 807CD118  28 04 00 00 */	cmplwi r4, 0
/* 807CD11C  40 82 00 0C */	bne lbl_807CD128
lbl_807CD120:
/* 807CD120  38 60 00 00 */	li r3, 0
/* 807CD124  48 00 04 C4 */	b lbl_807CD5E8
lbl_807CD128:
/* 807CD128  38 7F 12 44 */	addi r3, r31, 0x1244
/* 807CD12C  38 A0 00 01 */	li r5, 1
/* 807CD130  4B 84 14 0D */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 807CD134  2C 03 00 00 */	cmpwi r3, 0
/* 807CD138  40 82 00 0C */	bne lbl_807CD144
/* 807CD13C  38 60 00 00 */	li r3, 0
/* 807CD140  48 00 04 A8 */	b lbl_807CD5E8
lbl_807CD144:
/* 807CD144  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807CD148  80 A3 00 04 */	lwz r5, 4(r3)
/* 807CD14C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 807CD150  38 E0 00 01 */	li r7, 1
/* 807CD154  3C 60 80 7C */	lis r3, JointCallBack__8daE_VA_cFP8J3DJointi@ha /* 0x807C284C@ha */
/* 807CD158  38 83 28 4C */	addi r4, r3, JointCallBack__8daE_VA_cFP8J3DJointi@l /* 0x807C284C@l */
/* 807CD15C  48 00 00 44 */	b lbl_807CD1A0
lbl_807CD160:
/* 807CD160  38 07 FF F5 */	addi r0, r7, -11
/* 807CD164  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 807CD168  28 00 00 03 */	cmplwi r0, 3
/* 807CD16C  40 81 00 20 */	ble lbl_807CD18C
/* 807CD170  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807CD174  28 00 00 1B */	cmplwi r0, 0x1b
/* 807CD178  41 82 00 14 */	beq lbl_807CD18C
/* 807CD17C  28 00 00 21 */	cmplwi r0, 0x21
/* 807CD180  41 82 00 0C */	beq lbl_807CD18C
/* 807CD184  28 00 00 22 */	cmplwi r0, 0x22
/* 807CD188  40 82 00 14 */	bne lbl_807CD19C
lbl_807CD18C:
/* 807CD18C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807CD190  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807CD194  7C 63 00 2E */	lwzx r3, r3, r0
/* 807CD198  90 83 00 04 */	stw r4, 4(r3)
lbl_807CD19C:
/* 807CD19C  38 E7 00 01 */	addi r7, r7, 1
lbl_807CD1A0:
/* 807CD1A0  80 C5 00 04 */	lwz r6, 4(r5)
/* 807CD1A4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807CD1A8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807CD1AC  7C 00 18 40 */	cmplw r0, r3
/* 807CD1B0  41 80 FF B0 */	blt lbl_807CD160
/* 807CD1B4  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD1B8  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD1BC  38 80 00 30 */	li r4, 0x30
/* 807CD1C0  7F C5 F3 78 */	mr r5, r30
/* 807CD1C4  38 C0 00 80 */	li r6, 0x80
/* 807CD1C8  4B 86 F1 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD1CC  38 80 00 00 */	li r4, 0
/* 807CD1D0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 807CD1D4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 807CD1D8  4B 84 7A 7D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807CD1DC  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 807CD1E0  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 807CD1E4  28 00 00 00 */	cmplwi r0, 0
/* 807CD1E8  40 82 00 0C */	bne lbl_807CD1F4
/* 807CD1EC  38 60 00 00 */	li r3, 0
/* 807CD1F0  48 00 03 F8 */	b lbl_807CD5E8
lbl_807CD1F4:
/* 807CD1F4  38 60 00 18 */	li r3, 0x18
/* 807CD1F8  4B B0 1A 55 */	bl __nw__FUl
/* 807CD1FC  7C 79 1B 79 */	or. r25, r3, r3
/* 807CD200  41 82 00 20 */	beq lbl_807CD220
/* 807CD204  3C 80 80 7D */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x807CF43C@ha */
/* 807CD208  38 04 F4 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x807CF43C@l */
/* 807CD20C  90 19 00 00 */	stw r0, 0(r25)
/* 807CD210  38 80 00 00 */	li r4, 0
/* 807CD214  4B B5 B1 E9 */	bl init__12J3DFrameCtrlFs
/* 807CD218  38 00 00 00 */	li r0, 0
/* 807CD21C  90 19 00 14 */	stw r0, 0x14(r25)
lbl_807CD220:
/* 807CD220  93 3F 12 4C */	stw r25, 0x124c(r31)
/* 807CD224  80 1F 12 4C */	lwz r0, 0x124c(r31)
/* 807CD228  28 00 00 00 */	cmplwi r0, 0
/* 807CD22C  40 82 00 0C */	bne lbl_807CD238
/* 807CD230  38 60 00 00 */	li r3, 0
/* 807CD234  48 00 03 B4 */	b lbl_807CD5E8
lbl_807CD238:
/* 807CD238  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD23C  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD240  38 80 00 3B */	li r4, 0x3b
/* 807CD244  7F C5 F3 78 */	mr r5, r30
/* 807CD248  38 C0 00 80 */	li r6, 0x80
/* 807CD24C  4B 86 F0 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD250  7C 65 1B 78 */	mr r5, r3
/* 807CD254  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807CD258  80 83 00 04 */	lwz r4, 4(r3)
/* 807CD25C  80 7F 12 4C */	lwz r3, 0x124c(r31)
/* 807CD260  38 84 00 58 */	addi r4, r4, 0x58
/* 807CD264  38 C0 00 01 */	li r6, 1
/* 807CD268  38 E0 00 02 */	li r7, 2
/* 807CD26C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807CD270  39 00 00 00 */	li r8, 0
/* 807CD274  39 20 FF FF */	li r9, -1
/* 807CD278  4B 84 04 95 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807CD27C  2C 03 00 00 */	cmpwi r3, 0
/* 807CD280  40 82 00 0C */	bne lbl_807CD28C
/* 807CD284  38 60 00 00 */	li r3, 0
/* 807CD288  48 00 03 60 */	b lbl_807CD5E8
lbl_807CD28C:
/* 807CD28C  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD290  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD294  38 80 00 37 */	li r4, 0x37
/* 807CD298  7F C5 F3 78 */	mr r5, r30
/* 807CD29C  38 C0 00 80 */	li r6, 0x80
/* 807CD2A0  4B 86 F0 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD2A4  7C 7B 1B 78 */	mr r27, r3
/* 807CD2A8  38 60 00 58 */	li r3, 0x58
/* 807CD2AC  4B B0 19 A1 */	bl __nw__FUl
/* 807CD2B0  7C 79 1B 79 */	or. r25, r3, r3
/* 807CD2B4  41 82 00 64 */	beq lbl_807CD318
/* 807CD2B8  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD2BC  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD2C0  38 80 00 07 */	li r4, 7
/* 807CD2C4  7F C5 F3 78 */	mr r5, r30
/* 807CD2C8  38 C0 00 80 */	li r6, 0x80
/* 807CD2CC  4B 86 F0 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD2D0  7C 67 1B 78 */	mr r7, r3
/* 807CD2D4  38 1F 12 54 */	addi r0, r31, 0x1254
/* 807CD2D8  90 01 00 08 */	stw r0, 8(r1)
/* 807CD2DC  3C 00 00 08 */	lis r0, 8
/* 807CD2E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CD2E4  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 807CD2E8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 807CD2EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807CD2F0  7F 23 CB 78 */	mr r3, r25
/* 807CD2F4  7F 64 DB 78 */	mr r4, r27
/* 807CD2F8  38 A0 00 00 */	li r5, 0
/* 807CD2FC  38 C0 00 00 */	li r6, 0
/* 807CD300  39 00 00 00 */	li r8, 0
/* 807CD304  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807CD308  39 20 00 00 */	li r9, 0
/* 807CD30C  39 40 FF FF */	li r10, -1
/* 807CD310  4B 84 34 C1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807CD314  7C 79 1B 78 */	mr r25, r3
lbl_807CD318:
/* 807CD318  93 3F 05 B8 */	stw r25, 0x5b8(r31)
/* 807CD31C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807CD320  28 03 00 00 */	cmplwi r3, 0
/* 807CD324  41 82 00 10 */	beq lbl_807CD334
/* 807CD328  83 83 00 04 */	lwz r28, 4(r3)
/* 807CD32C  28 1C 00 00 */	cmplwi r28, 0
/* 807CD330  40 82 00 0C */	bne lbl_807CD33C
lbl_807CD334:
/* 807CD334  38 60 00 00 */	li r3, 0
/* 807CD338  48 00 02 B0 */	b lbl_807CD5E8
lbl_807CD33C:
/* 807CD33C  93 FC 00 14 */	stw r31, 0x14(r28)
/* 807CD340  38 C0 00 01 */	li r6, 1
/* 807CD344  3C 60 80 7C */	lis r3, JointCallBack__8daE_VA_cFP8J3DJointi@ha /* 0x807C284C@ha */
/* 807CD348  38 83 28 4C */	addi r4, r3, JointCallBack__8daE_VA_cFP8J3DJointi@l /* 0x807C284C@l */
/* 807CD34C  48 00 00 44 */	b lbl_807CD390
lbl_807CD350:
/* 807CD350  38 06 FF F5 */	addi r0, r6, -11
/* 807CD354  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 807CD358  28 00 00 03 */	cmplwi r0, 3
/* 807CD35C  40 81 00 20 */	ble lbl_807CD37C
/* 807CD360  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 807CD364  28 00 00 1B */	cmplwi r0, 0x1b
/* 807CD368  41 82 00 14 */	beq lbl_807CD37C
/* 807CD36C  28 00 00 21 */	cmplwi r0, 0x21
/* 807CD370  41 82 00 0C */	beq lbl_807CD37C
/* 807CD374  28 00 00 22 */	cmplwi r0, 0x22
/* 807CD378  40 82 00 14 */	bne lbl_807CD38C
lbl_807CD37C:
/* 807CD37C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 807CD380  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 807CD384  7C 63 00 2E */	lwzx r3, r3, r0
/* 807CD388  90 83 00 04 */	stw r4, 4(r3)
lbl_807CD38C:
/* 807CD38C  38 C6 00 01 */	addi r6, r6, 1
lbl_807CD390:
/* 807CD390  80 BC 00 04 */	lwz r5, 4(r28)
/* 807CD394  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 807CD398  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 807CD39C  7C 00 18 40 */	cmplw r0, r3
/* 807CD3A0  41 80 FF B0 */	blt lbl_807CD350
/* 807CD3A4  38 60 00 18 */	li r3, 0x18
/* 807CD3A8  4B B0 18 A5 */	bl __nw__FUl
/* 807CD3AC  7C 79 1B 79 */	or. r25, r3, r3
/* 807CD3B0  41 82 00 20 */	beq lbl_807CD3D0
/* 807CD3B4  3C 80 80 7D */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x807CF43C@ha */
/* 807CD3B8  38 04 F4 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x807CF43C@l */
/* 807CD3BC  90 19 00 00 */	stw r0, 0(r25)
/* 807CD3C0  38 80 00 00 */	li r4, 0
/* 807CD3C4  4B B5 B0 39 */	bl init__12J3DFrameCtrlFs
/* 807CD3C8  38 00 00 00 */	li r0, 0
/* 807CD3CC  90 19 00 14 */	stw r0, 0x14(r25)
lbl_807CD3D0:
/* 807CD3D0  93 3F 12 50 */	stw r25, 0x1250(r31)
/* 807CD3D4  80 1F 12 50 */	lwz r0, 0x1250(r31)
/* 807CD3D8  28 00 00 00 */	cmplwi r0, 0
/* 807CD3DC  40 82 00 0C */	bne lbl_807CD3E8
/* 807CD3E0  38 60 00 00 */	li r3, 0
/* 807CD3E4  48 00 02 04 */	b lbl_807CD5E8
lbl_807CD3E8:
/* 807CD3E8  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD3EC  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD3F0  38 80 00 3A */	li r4, 0x3a
/* 807CD3F4  7F C5 F3 78 */	mr r5, r30
/* 807CD3F8  38 C0 00 80 */	li r6, 0x80
/* 807CD3FC  4B 86 EE F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD400  7C 65 1B 78 */	mr r5, r3
/* 807CD404  80 9C 00 04 */	lwz r4, 4(r28)
/* 807CD408  80 7F 12 50 */	lwz r3, 0x1250(r31)
/* 807CD40C  38 84 00 58 */	addi r4, r4, 0x58
/* 807CD410  38 C0 00 01 */	li r6, 1
/* 807CD414  38 E0 00 00 */	li r7, 0
/* 807CD418  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807CD41C  39 00 00 00 */	li r8, 0
/* 807CD420  39 20 FF FF */	li r9, -1
/* 807CD424  4B 84 02 E9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807CD428  2C 03 00 00 */	cmpwi r3, 0
/* 807CD42C  40 82 00 0C */	bne lbl_807CD438
/* 807CD430  38 60 00 00 */	li r3, 0
/* 807CD434  48 00 01 B4 */	b lbl_807CD5E8
lbl_807CD438:
/* 807CD438  38 7F 13 9C */	addi r3, r31, 0x139c
/* 807CD43C  38 80 00 01 */	li r4, 1
/* 807CD440  38 A0 00 05 */	li r5, 5
/* 807CD444  38 C0 00 01 */	li r6, 1
/* 807CD448  4B 84 51 99 */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 807CD44C  2C 03 00 00 */	cmpwi r3, 0
/* 807CD450  40 82 00 0C */	bne lbl_807CD45C
/* 807CD454  38 60 00 00 */	li r3, 0
/* 807CD458  48 00 01 90 */	b lbl_807CD5E8
lbl_807CD45C:
/* 807CD45C  80 7F 13 B4 */	lwz r3, 0x13b4(r31)
/* 807CD460  80 63 00 04 */	lwz r3, 4(r3)
/* 807CD464  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 807CD468  38 00 00 05 */	li r0, 5
/* 807CD46C  7C 09 03 A6 */	mtctr r0
lbl_807CD470:
/* 807CD470  D0 03 00 00 */	stfs f0, 0(r3)
/* 807CD474  38 63 00 04 */	addi r3, r3, 4
/* 807CD478  42 00 FF F8 */	bdnz lbl_807CD470
/* 807CD47C  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD480  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD484  38 80 00 3E */	li r4, 0x3e
/* 807CD488  7F C5 F3 78 */	mr r5, r30
/* 807CD48C  38 C0 00 80 */	li r6, 0x80
/* 807CD490  4B 86 EE 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD494  7C 66 1B 78 */	mr r6, r3
/* 807CD498  38 7F 09 58 */	addi r3, r31, 0x958
/* 807CD49C  38 80 00 0B */	li r4, 0xb
/* 807CD4A0  38 A0 00 0A */	li r5, 0xa
/* 807CD4A4  38 E0 00 01 */	li r7, 1
/* 807CD4A8  4B 84 5E B9 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807CD4AC  2C 03 00 00 */	cmpwi r3, 0
/* 807CD4B0  40 82 00 0C */	bne lbl_807CD4BC
/* 807CD4B4  38 60 00 00 */	li r3, 0
/* 807CD4B8  48 00 01 30 */	b lbl_807CD5E8
lbl_807CD4BC:
/* 807CD4BC  38 A0 00 00 */	li r5, 0
/* 807CD4C0  38 60 00 00 */	li r3, 0
/* 807CD4C4  C0 1D 01 38 */	lfs f0, 0x138(r29)
lbl_807CD4C8:
/* 807CD4C8  80 9F 09 90 */	lwz r4, 0x990(r31)
/* 807CD4CC  38 03 00 04 */	addi r0, r3, 4
/* 807CD4D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 807CD4D4  38 00 00 0A */	li r0, 0xa
/* 807CD4D8  7C 09 03 A6 */	mtctr r0
lbl_807CD4DC:
/* 807CD4DC  D0 04 00 00 */	stfs f0, 0(r4)
/* 807CD4E0  38 84 00 04 */	addi r4, r4, 4
/* 807CD4E4  42 00 FF F8 */	bdnz lbl_807CD4DC
/* 807CD4E8  38 A5 00 01 */	addi r5, r5, 1
/* 807CD4EC  2C 05 00 0B */	cmpwi r5, 0xb
/* 807CD4F0  38 63 00 20 */	addi r3, r3, 0x20
/* 807CD4F4  41 80 FF D4 */	blt lbl_807CD4C8
/* 807CD4F8  3B 80 00 00 */	li r28, 0
/* 807CD4FC  3B A0 00 00 */	li r29, 0
/* 807CD500  3C 60 80 7D */	lis r3, va_tag_set_size@ha /* 0x807CF084@ha */
/* 807CD504  38 03 F0 84 */	addi r0, r3, va_tag_set_size@l /* 0x807CF084@l */
/* 807CD508  3F 20 11 00 */	lis r25, 0x1100
/* 807CD50C  7C 1A 03 78 */	mr r26, r0
lbl_807CD510:
/* 807CD510  88 1A 00 00 */	lbz r0, 0(r26)
/* 807CD514  2C 00 00 01 */	cmpwi r0, 1
/* 807CD518  41 82 00 4C */	beq lbl_807CD564
/* 807CD51C  40 80 00 10 */	bge lbl_807CD52C
/* 807CD520  2C 00 00 00 */	cmpwi r0, 0
/* 807CD524  40 80 00 14 */	bge lbl_807CD538
/* 807CD528  48 00 00 90 */	b lbl_807CD5B8
lbl_807CD52C:
/* 807CD52C  2C 00 00 03 */	cmpwi r0, 3
/* 807CD530  40 80 00 88 */	bge lbl_807CD5B8
/* 807CD534  48 00 00 5C */	b lbl_807CD590
lbl_807CD538:
/* 807CD538  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD53C  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD540  38 80 00 34 */	li r4, 0x34
/* 807CD544  7F C5 F3 78 */	mr r5, r30
/* 807CD548  38 C0 00 80 */	li r6, 0x80
/* 807CD54C  4B 86 ED A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD550  7C 7B 1B 78 */	mr r27, r3
/* 807CD554  38 60 00 00 */	li r3, 0
/* 807CD558  38 1C 09 30 */	addi r0, r28, 0x930
/* 807CD55C  7C 7F 01 AE */	stbx r3, r31, r0
/* 807CD560  48 00 00 58 */	b lbl_807CD5B8
lbl_807CD564:
/* 807CD564  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD568  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD56C  38 80 00 35 */	li r4, 0x35
/* 807CD570  7F C5 F3 78 */	mr r5, r30
/* 807CD574  38 C0 00 80 */	li r6, 0x80
/* 807CD578  4B 86 ED 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD57C  7C 7B 1B 78 */	mr r27, r3
/* 807CD580  38 60 00 01 */	li r3, 1
/* 807CD584  38 1C 09 30 */	addi r0, r28, 0x930
/* 807CD588  7C 7F 01 AE */	stbx r3, r31, r0
/* 807CD58C  48 00 00 2C */	b lbl_807CD5B8
lbl_807CD590:
/* 807CD590  3C 60 80 7D */	lis r3, d_a_e_vt__stringBase0@ha /* 0x807CEEFC@ha */
/* 807CD594  38 63 EE FC */	addi r3, r3, d_a_e_vt__stringBase0@l /* 0x807CEEFC@l */
/* 807CD598  38 80 00 36 */	li r4, 0x36
/* 807CD59C  7F C5 F3 78 */	mr r5, r30
/* 807CD5A0  38 C0 00 80 */	li r6, 0x80
/* 807CD5A4  4B 86 ED 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807CD5A8  7C 7B 1B 78 */	mr r27, r3
/* 807CD5AC  38 60 00 02 */	li r3, 2
/* 807CD5B0  38 1C 09 30 */	addi r0, r28, 0x930
/* 807CD5B4  7C 7F 01 AE */	stbx r3, r31, r0
lbl_807CD5B8:
/* 807CD5B8  7F 63 DB 78 */	mr r3, r27
/* 807CD5BC  38 80 00 00 */	li r4, 0
/* 807CD5C0  38 B9 00 84 */	addi r5, r25, 0x84
/* 807CD5C4  4B 84 76 91 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807CD5C8  38 1D 05 C0 */	addi r0, r29, 0x5c0
/* 807CD5CC  7C 7F 01 2E */	stwx r3, r31, r0
/* 807CD5D0  3B 9C 00 01 */	addi r28, r28, 1
/* 807CD5D4  2C 1C 00 28 */	cmpwi r28, 0x28
/* 807CD5D8  3B BD 00 04 */	addi r29, r29, 4
/* 807CD5DC  3B 5A 00 01 */	addi r26, r26, 1
/* 807CD5E0  41 80 FF 30 */	blt lbl_807CD510
/* 807CD5E4  38 60 00 01 */	li r3, 1
lbl_807CD5E8:
/* 807CD5E8  39 61 00 40 */	addi r11, r1, 0x40
/* 807CD5EC  4B B9 4C 2D */	bl _restgpr_25
/* 807CD5F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807CD5F4  7C 08 03 A6 */	mtlr r0
/* 807CD5F8  38 21 00 40 */	addi r1, r1, 0x40
/* 807CD5FC  4E 80 00 20 */	blr 
