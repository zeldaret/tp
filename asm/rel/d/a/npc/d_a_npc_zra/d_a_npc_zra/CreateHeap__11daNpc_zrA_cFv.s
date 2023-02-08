lbl_80B79F38:
/* 80B79F38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B79F3C  7C 08 02 A6 */	mflr r0
/* 80B79F40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B79F44  39 61 00 30 */	addi r11, r1, 0x30
/* 80B79F48  4B 7E 82 8D */	bl _savegpr_27
/* 80B79F4C  7C 7F 1B 78 */	mr r31, r3
/* 80B79F50  3C 60 80 B9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B8CE90@ha */
/* 80B79F54  3B C3 CE 90 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80B8CE90@l */
/* 80B79F58  3B A0 00 00 */	li r29, 0
/* 80B79F5C  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B79F60  28 00 00 00 */	cmplwi r0, 0
/* 80B79F64  41 82 00 48 */	beq lbl_80B79FAC
/* 80B79F68  38 7E 00 24 */	addi r3, r30, 0x24
/* 80B79F6C  80 83 00 08 */	lwz r4, 8(r3)
/* 80B79F70  2C 04 00 00 */	cmpwi r4, 0
/* 80B79F74  41 80 00 30 */	blt lbl_80B79FA4
/* 80B79F78  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B79F7C  54 00 10 3A */	slwi r0, r0, 2
/* 80B79F80  38 7E 04 70 */	addi r3, r30, 0x470
/* 80B79F84  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B79F88  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B79F8C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B79F90  3C A5 00 02 */	addis r5, r5, 2
/* 80B79F94  38 C0 00 80 */	li r6, 0x80
/* 80B79F98  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B79F9C  4B 4C 23 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B79FA0  7C 7D 1B 78 */	mr r29, r3
lbl_80B79FA4:
/* 80B79FA4  3F 60 00 08 */	lis r27, 8
/* 80B79FA8  48 00 00 44 */	b lbl_80B79FEC
lbl_80B79FAC:
/* 80B79FAC  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80B79FB0  2C 04 00 00 */	cmpwi r4, 0
/* 80B79FB4  41 80 00 34 */	blt lbl_80B79FE8
/* 80B79FB8  38 7E 00 24 */	addi r3, r30, 0x24
/* 80B79FBC  80 03 00 04 */	lwz r0, 4(r3)
/* 80B79FC0  54 00 10 3A */	slwi r0, r0, 2
/* 80B79FC4  38 7E 04 70 */	addi r3, r30, 0x470
/* 80B79FC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B79FCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B79FD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B79FD4  3C A5 00 02 */	addis r5, r5, 2
/* 80B79FD8  38 C0 00 80 */	li r6, 0x80
/* 80B79FDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B79FE0  4B 4C 23 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B79FE4  7C 7D 1B 78 */	mr r29, r3
lbl_80B79FE8:
/* 80B79FE8  3B 60 00 00 */	li r27, 0
lbl_80B79FEC:
/* 80B79FEC  38 60 00 58 */	li r3, 0x58
/* 80B79FF0  4B 75 4C 5D */	bl __nw__FUl
/* 80B79FF4  7C 60 1B 79 */	or. r0, r3, r3
/* 80B79FF8  41 82 00 48 */	beq lbl_80B7A040
/* 80B79FFC  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B7A000  90 01 00 08 */	stw r0, 8(r1)
/* 80B7A004  93 61 00 0C */	stw r27, 0xc(r1)
/* 80B7A008  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020285@ha */
/* 80B7A00C  38 04 02 85 */	addi r0, r4, 0x0285 /* 0x11020285@l */
/* 80B7A010  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B7A014  7F A4 EB 78 */	mr r4, r29
/* 80B7A018  38 A0 00 00 */	li r5, 0
/* 80B7A01C  38 C0 00 00 */	li r6, 0
/* 80B7A020  38 E0 00 00 */	li r7, 0
/* 80B7A024  39 00 FF FF */	li r8, -1
/* 80B7A028  3D 20 80 B9 */	lis r9, lit_5070@ha /* 0x80B8C548@ha */
/* 80B7A02C  C0 29 C5 48 */	lfs f1, lit_5070@l(r9)  /* 0x80B8C548@l */
/* 80B7A030  39 20 00 00 */	li r9, 0
/* 80B7A034  39 40 FF FF */	li r10, -1
/* 80B7A038  4B 49 67 99 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B7A03C  7C 60 1B 78 */	mr r0, r3
lbl_80B7A040:
/* 80B7A040  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B7A044  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7A048  28 03 00 00 */	cmplwi r3, 0
/* 80B7A04C  41 82 00 1C */	beq lbl_80B7A068
/* 80B7A050  80 03 00 04 */	lwz r0, 4(r3)
/* 80B7A054  28 00 00 00 */	cmplwi r0, 0
/* 80B7A058  40 82 00 10 */	bne lbl_80B7A068
/* 80B7A05C  4B 49 72 B5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B7A060  38 00 00 00 */	li r0, 0
/* 80B7A064  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B7A068:
/* 80B7A068  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7A06C  28 03 00 00 */	cmplwi r3, 0
/* 80B7A070  40 82 00 0C */	bne lbl_80B7A07C
/* 80B7A074  38 60 00 00 */	li r3, 0
/* 80B7A078  48 00 02 D0 */	b lbl_80B7A348
lbl_80B7A07C:
/* 80B7A07C  80 83 00 04 */	lwz r4, 4(r3)
/* 80B7A080  38 C0 00 00 */	li r6, 0
/* 80B7A084  48 00 00 78 */	b lbl_80B7A0FC
lbl_80B7A088:
/* 80B7A088  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80B7A08C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80B7A090  41 82 00 38 */	beq lbl_80B7A0C8
/* 80B7A094  40 80 00 28 */	bge lbl_80B7A0BC
/* 80B7A098  2C 00 00 02 */	cmpwi r0, 2
/* 80B7A09C  41 82 00 48 */	beq lbl_80B7A0E4
/* 80B7A0A0  40 80 00 10 */	bge lbl_80B7A0B0
/* 80B7A0A4  2C 00 00 00 */	cmpwi r0, 0
/* 80B7A0A8  40 80 00 20 */	bge lbl_80B7A0C8
/* 80B7A0AC  48 00 00 38 */	b lbl_80B7A0E4
lbl_80B7A0B0:
/* 80B7A0B0  2C 00 00 06 */	cmpwi r0, 6
/* 80B7A0B4  40 80 00 30 */	bge lbl_80B7A0E4
/* 80B7A0B8  48 00 00 10 */	b lbl_80B7A0C8
lbl_80B7A0BC:
/* 80B7A0BC  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B7A0C0  41 82 00 08 */	beq lbl_80B7A0C8
/* 80B7A0C4  48 00 00 20 */	b lbl_80B7A0E4
lbl_80B7A0C8:
/* 80B7A0C8  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B7A0CC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B7A0D0  7C A3 00 2E */	lwzx r5, r3, r0
/* 80B7A0D4  3C 60 80 B8 */	lis r3, ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi@ha /* 0x80B7ABBC@ha */
/* 80B7A0D8  38 03 AB BC */	addi r0, r3, ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi@l /* 0x80B7ABBC@l */
/* 80B7A0DC  90 05 00 04 */	stw r0, 4(r5)
/* 80B7A0E0  48 00 00 18 */	b lbl_80B7A0F8
lbl_80B7A0E4:
/* 80B7A0E4  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B7A0E8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B7A0EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B7A0F0  38 00 00 00 */	li r0, 0
/* 80B7A0F4  90 03 00 04 */	stw r0, 4(r3)
lbl_80B7A0F8:
/* 80B7A0F8  38 C6 00 01 */	addi r6, r6, 1
lbl_80B7A0FC:
/* 80B7A0FC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B7A100  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80B7A104  7C 03 00 40 */	cmplw r3, r0
/* 80B7A108  41 80 FF 80 */	blt lbl_80B7A088
/* 80B7A10C  93 E4 00 14 */	stw r31, 0x14(r4)
/* 80B7A110  38 60 01 08 */	li r3, 0x108
/* 80B7A114  4B 75 4B 39 */	bl __nw__FUl
/* 80B7A118  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B7A11C  41 82 00 D0 */	beq lbl_80B7A1EC
/* 80B7A120  7F BC EB 78 */	mr r28, r29
/* 80B7A124  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B7A128  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B7A12C  90 1D 00 00 */	stw r0, 0(r29)
/* 80B7A130  38 7C 00 04 */	addi r3, r28, 4
/* 80B7A134  3C 80 80 B8 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B7A504@ha */
/* 80B7A138  38 84 A5 04 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B7A504@l */
/* 80B7A13C  3C A0 80 B8 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B7A4C8@ha */
/* 80B7A140  38 A5 A4 C8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B7A4C8@l */
/* 80B7A144  38 C0 00 08 */	li r6, 8
/* 80B7A148  38 E0 00 02 */	li r7, 2
/* 80B7A14C  4B 7E 7C 15 */	bl __construct_array
/* 80B7A150  38 7C 00 14 */	addi r3, r28, 0x14
/* 80B7A154  3C 80 80 B8 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B7A4B0@ha */
/* 80B7A158  38 84 A4 B0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B7A4B0@l */
/* 80B7A15C  3C A0 80 B8 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B7A474@ha */
/* 80B7A160  38 A5 A4 74 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B7A474@l */
/* 80B7A164  38 C0 00 08 */	li r6, 8
/* 80B7A168  38 E0 00 08 */	li r7, 8
/* 80B7A16C  4B 7E 7B F5 */	bl __construct_array
/* 80B7A170  38 7C 00 54 */	addi r3, r28, 0x54
/* 80B7A174  3C 80 80 B8 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B7A450@ha */
/* 80B7A178  38 84 A4 50 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B7A450@l */
/* 80B7A17C  3C A0 80 B8 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B7A408@ha */
/* 80B7A180  38 A5 A4 08 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B7A408@l */
/* 80B7A184  38 C0 00 0C */	li r6, 0xc
/* 80B7A188  38 E0 00 08 */	li r7, 8
/* 80B7A18C  4B 7E 7B D5 */	bl __construct_array
/* 80B7A190  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 80B7A194  3C 80 80 B8 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B7A3F0@ha */
/* 80B7A198  38 84 A3 F0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B7A3F0@l */
/* 80B7A19C  3C A0 80 B8 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B7A3B4@ha */
/* 80B7A1A0  38 A5 A3 B4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B7A3B4@l */
/* 80B7A1A4  38 C0 00 08 */	li r6, 8
/* 80B7A1A8  38 E0 00 04 */	li r7, 4
/* 80B7A1AC  4B 7E 7B B5 */	bl __construct_array
/* 80B7A1B0  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80B7A1B4  3C 80 80 B8 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B7A39C@ha */
/* 80B7A1B8  38 84 A3 9C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B7A39C@l */
/* 80B7A1BC  3C A0 80 B8 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B7A360@ha */
/* 80B7A1C0  38 A5 A3 60 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B7A360@l */
/* 80B7A1C4  38 C0 00 08 */	li r6, 8
/* 80B7A1C8  38 E0 00 04 */	li r7, 4
/* 80B7A1CC  4B 7E 7B 95 */	bl __construct_array
/* 80B7A1D0  7F 83 E3 78 */	mr r3, r28
/* 80B7A1D4  4B 7B 21 4D */	bl initialize__14J3DMaterialAnmFv
/* 80B7A1D8  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80B7A1DC  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80B7A1E0  90 1D 00 00 */	stw r0, 0(r29)
/* 80B7A1E4  7F A3 EB 78 */	mr r3, r29
/* 80B7A1E8  4B 5D 65 51 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80B7A1EC:
/* 80B7A1EC  93 BF 0B E4 */	stw r29, 0xbe4(r31)
/* 80B7A1F0  80 1F 0B E4 */	lwz r0, 0xbe4(r31)
/* 80B7A1F4  28 00 00 00 */	cmplwi r0, 0
/* 80B7A1F8  40 82 00 0C */	bne lbl_80B7A204
/* 80B7A1FC  38 60 00 00 */	li r3, 0
/* 80B7A200  48 00 01 48 */	b lbl_80B7A348
lbl_80B7A204:
/* 80B7A204  7F E3 FB 78 */	mr r3, r31
/* 80B7A208  38 80 00 01 */	li r4, 1
/* 80B7A20C  48 00 1E 65 */	bl setMotionWaterAnm__11daNpc_zrA_cFi
/* 80B7A210  7F E3 FB 78 */	mr r3, r31
/* 80B7A214  38 80 00 01 */	li r4, 1
/* 80B7A218  38 A0 00 00 */	li r5, 0
/* 80B7A21C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7A220  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B7A224  7D 89 03 A6 */	mtctr r12
/* 80B7A228  4E 80 04 21 */	bctrl 
/* 80B7A22C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B7A230  40 82 00 0C */	bne lbl_80B7A23C
/* 80B7A234  38 60 00 00 */	li r3, 0
/* 80B7A238  48 00 01 10 */	b lbl_80B7A348
lbl_80B7A23C:
/* 80B7A23C  7F E3 FB 78 */	mr r3, r31
/* 80B7A240  38 80 00 29 */	li r4, 0x29
/* 80B7A244  3C A0 80 B9 */	lis r5, lit_3939@ha /* 0x80B8C508@ha */
/* 80B7A248  C0 25 C5 08 */	lfs f1, lit_3939@l(r5)  /* 0x80B8C508@l */
/* 80B7A24C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7A250  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B7A254  7D 89 03 A6 */	mtctr r12
/* 80B7A258  4E 80 04 21 */	bctrl 
/* 80B7A25C  88 1F 14 E9 */	lbz r0, 0x14e9(r31)
/* 80B7A260  28 00 00 02 */	cmplwi r0, 2
/* 80B7A264  41 82 00 E0 */	beq lbl_80B7A344
/* 80B7A268  3B 80 00 00 */	li r28, 0
/* 80B7A26C  3B 60 00 00 */	li r27, 0
/* 80B7A270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7A274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7A278  3F A3 00 02 */	addis r29, r3, 2
/* 80B7A27C  3B BD C2 F8 */	addi r29, r29, -15624
lbl_80B7A280:
/* 80B7A280  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B7A284  28 00 00 00 */	cmplwi r0, 0
/* 80B7A288  41 82 00 1C */	beq lbl_80B7A2A4
/* 80B7A28C  88 1F 14 E9 */	lbz r0, 0x14e9(r31)
/* 80B7A290  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B7A294  38 7E 03 8C */	addi r3, r30, 0x38c
/* 80B7A298  7C 00 DA 14 */	add r0, r0, r27
/* 80B7A29C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B7A2A0  48 00 00 18 */	b lbl_80B7A2B8
lbl_80B7A2A4:
/* 80B7A2A4  88 1F 14 E9 */	lbz r0, 0x14e9(r31)
/* 80B7A2A8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B7A2AC  38 7E 03 68 */	addi r3, r30, 0x368
/* 80B7A2B0  7C 00 DA 14 */	add r0, r0, r27
/* 80B7A2B4  7C 03 00 2E */	lwzx r0, r3, r0
lbl_80B7A2B8:
/* 80B7A2B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B7A2BC  40 81 00 6C */	ble lbl_80B7A328
/* 80B7A2C0  54 00 18 38 */	slwi r0, r0, 3
/* 80B7A2C4  38 9E 00 24 */	addi r4, r30, 0x24
/* 80B7A2C8  7C 84 02 14 */	add r4, r4, r0
/* 80B7A2CC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7A2D0  54 00 10 3A */	slwi r0, r0, 2
/* 80B7A2D4  38 7E 04 70 */	addi r3, r30, 0x470
/* 80B7A2D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B7A2DC  80 84 00 00 */	lwz r4, 0(r4)
/* 80B7A2E0  7F A5 EB 78 */	mr r5, r29
/* 80B7A2E4  38 C0 00 80 */	li r6, 0x80
/* 80B7A2E8  4B 4C 20 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B7A2EC  28 03 00 00 */	cmplwi r3, 0
/* 80B7A2F0  41 82 00 30 */	beq lbl_80B7A320
/* 80B7A2F4  3C 80 00 08 */	lis r4, 8
/* 80B7A2F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B7A2FC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B7A300  4B 49 A9 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B7A304  38 1B 0B D8 */	addi r0, r27, 0xbd8
/* 80B7A308  7C 7F 01 2E */	stwx r3, r31, r0
/* 80B7A30C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80B7A310  28 00 00 00 */	cmplwi r0, 0
/* 80B7A314  40 82 00 20 */	bne lbl_80B7A334
/* 80B7A318  38 60 00 00 */	li r3, 0
/* 80B7A31C  48 00 00 2C */	b lbl_80B7A348
lbl_80B7A320:
/* 80B7A320  38 60 00 00 */	li r3, 0
/* 80B7A324  48 00 00 24 */	b lbl_80B7A348
lbl_80B7A328:
/* 80B7A328  38 60 00 00 */	li r3, 0
/* 80B7A32C  38 1B 0B D8 */	addi r0, r27, 0xbd8
/* 80B7A330  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80B7A334:
/* 80B7A334  3B 9C 00 01 */	addi r28, r28, 1
/* 80B7A338  2C 1C 00 03 */	cmpwi r28, 3
/* 80B7A33C  3B 7B 00 04 */	addi r27, r27, 4
/* 80B7A340  41 80 FF 40 */	blt lbl_80B7A280
lbl_80B7A344:
/* 80B7A344  38 60 00 01 */	li r3, 1
lbl_80B7A348:
/* 80B7A348  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7A34C  4B 7E 7E D5 */	bl _restgpr_27
/* 80B7A350  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7A354  7C 08 03 A6 */	mtlr r0
/* 80B7A358  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7A35C  4E 80 00 20 */	blr 
