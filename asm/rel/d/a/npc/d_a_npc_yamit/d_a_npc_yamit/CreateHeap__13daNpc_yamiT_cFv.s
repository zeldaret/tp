lbl_80B49FD8:
/* 80B49FD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B49FDC  7C 08 02 A6 */	mflr r0
/* 80B49FE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B49FE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B49FE8  4B 81 81 F5 */	bl _savegpr_29
/* 80B49FEC  7C 7F 1B 78 */	mr r31, r3
/* 80B49FF0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B49FF4  28 00 00 01 */	cmplwi r0, 1
/* 80B49FF8  38 00 00 00 */	li r0, 0
/* 80B49FFC  54 05 18 38 */	slwi r5, r0, 3
/* 80B4A000  3C 60 80 B5 */	lis r3, l_bmdData@ha /* 0x80B4CEBC@ha */
/* 80B4A004  38 83 CE BC */	addi r4, r3, l_bmdData@l /* 0x80B4CEBC@l */
/* 80B4A008  7C 64 2A 14 */	add r3, r4, r5
/* 80B4A00C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B4A010  54 00 10 3A */	slwi r0, r0, 2
/* 80B4A014  3C 60 80 B5 */	lis r3, l_resNameList@ha /* 0x80B4CED4@ha */
/* 80B4A018  38 63 CE D4 */	addi r3, r3, l_resNameList@l /* 0x80B4CED4@l */
/* 80B4A01C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B4A020  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B4A024  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4A028  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4A02C  3C A5 00 02 */	addis r5, r5, 2
/* 80B4A030  38 C0 00 80 */	li r6, 0x80
/* 80B4A034  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B4A038  4B 4F 22 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B4A03C  7C 7E 1B 78 */	mr r30, r3
/* 80B4A040  38 60 00 58 */	li r3, 0x58
/* 80B4A044  4B 78 4C 09 */	bl __nw__FUl
/* 80B4A048  7C 60 1B 79 */	or. r0, r3, r3
/* 80B4A04C  41 82 00 4C */	beq lbl_80B4A098
/* 80B4A050  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B4A054  90 01 00 08 */	stw r0, 8(r1)
/* 80B4A058  3C 00 00 08 */	lis r0, 8
/* 80B4A05C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4A060  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B4A064  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B4A068  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4A06C  7F C4 F3 78 */	mr r4, r30
/* 80B4A070  38 A0 00 00 */	li r5, 0
/* 80B4A074  38 C0 00 00 */	li r6, 0
/* 80B4A078  38 E0 00 00 */	li r7, 0
/* 80B4A07C  39 00 FF FF */	li r8, -1
/* 80B4A080  3D 20 80 B5 */	lis r9, lit_4344@ha /* 0x80B4CE54@ha */
/* 80B4A084  C0 29 CE 54 */	lfs f1, lit_4344@l(r9)  /* 0x80B4CE54@l */
/* 80B4A088  39 20 00 00 */	li r9, 0
/* 80B4A08C  39 40 FF FF */	li r10, -1
/* 80B4A090  4B 4C 67 41 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B4A094  7C 60 1B 78 */	mr r0, r3
lbl_80B4A098:
/* 80B4A098  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B4A09C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B4A0A0  28 03 00 00 */	cmplwi r3, 0
/* 80B4A0A4  41 82 00 1C */	beq lbl_80B4A0C0
/* 80B4A0A8  80 03 00 04 */	lwz r0, 4(r3)
/* 80B4A0AC  28 00 00 00 */	cmplwi r0, 0
/* 80B4A0B0  40 82 00 10 */	bne lbl_80B4A0C0
/* 80B4A0B4  4B 4C 72 5D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B4A0B8  38 00 00 00 */	li r0, 0
/* 80B4A0BC  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80B4A0C0:
/* 80B4A0C0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B4A0C4  28 03 00 00 */	cmplwi r3, 0
/* 80B4A0C8  40 82 00 0C */	bne lbl_80B4A0D4
/* 80B4A0CC  38 60 00 00 */	li r3, 0
/* 80B4A0D0  48 00 01 84 */	b lbl_80B4A254
lbl_80B4A0D4:
/* 80B4A0D4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B4A0D8  38 C0 00 00 */	li r6, 0
/* 80B4A0DC  3C 60 80 B5 */	lis r3, ctrlJointCallBack__13daNpc_yamiT_cFP8J3DJointi@ha /* 0x80B4A5A8@ha */
/* 80B4A0E0  38 83 A5 A8 */	addi r4, r3, ctrlJointCallBack__13daNpc_yamiT_cFP8J3DJointi@l /* 0x80B4A5A8@l */
/* 80B4A0E4  48 00 00 18 */	b lbl_80B4A0FC
lbl_80B4A0E8:
/* 80B4A0E8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B4A0EC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B4A0F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B4A0F4  90 83 00 04 */	stw r4, 4(r3)
/* 80B4A0F8  38 C6 00 01 */	addi r6, r6, 1
lbl_80B4A0FC:
/* 80B4A0FC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B4A100  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B4A104  7C 03 00 40 */	cmplw r3, r0
/* 80B4A108  41 80 FF E0 */	blt lbl_80B4A0E8
/* 80B4A10C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B4A110  38 60 01 08 */	li r3, 0x108
/* 80B4A114  4B 78 4B 39 */	bl __nw__FUl
/* 80B4A118  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4A11C  41 82 00 D0 */	beq lbl_80B4A1EC
/* 80B4A120  7F DD F3 78 */	mr r29, r30
/* 80B4A124  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B4A128  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B4A12C  90 1E 00 00 */	stw r0, 0(r30)
/* 80B4A130  38 7E 00 04 */	addi r3, r30, 4
/* 80B4A134  3C 80 80 B5 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B4A410@ha */
/* 80B4A138  38 84 A4 10 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B4A410@l */
/* 80B4A13C  3C A0 80 B5 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B4A3D4@ha */
/* 80B4A140  38 A5 A3 D4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B4A3D4@l */
/* 80B4A144  38 C0 00 08 */	li r6, 8
/* 80B4A148  38 E0 00 02 */	li r7, 2
/* 80B4A14C  4B 81 7C 15 */	bl __construct_array
/* 80B4A150  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B4A154  3C 80 80 B5 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B4A3BC@ha */
/* 80B4A158  38 84 A3 BC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B4A3BC@l */
/* 80B4A15C  3C A0 80 B5 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B4A380@ha */
/* 80B4A160  38 A5 A3 80 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B4A380@l */
/* 80B4A164  38 C0 00 08 */	li r6, 8
/* 80B4A168  38 E0 00 08 */	li r7, 8
/* 80B4A16C  4B 81 7B F5 */	bl __construct_array
/* 80B4A170  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B4A174  3C 80 80 B5 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B4A35C@ha */
/* 80B4A178  38 84 A3 5C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B4A35C@l */
/* 80B4A17C  3C A0 80 B5 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B4A314@ha */
/* 80B4A180  38 A5 A3 14 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B4A314@l */
/* 80B4A184  38 C0 00 0C */	li r6, 0xc
/* 80B4A188  38 E0 00 08 */	li r7, 8
/* 80B4A18C  4B 81 7B D5 */	bl __construct_array
/* 80B4A190  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B4A194  3C 80 80 B5 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B4A2FC@ha */
/* 80B4A198  38 84 A2 FC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B4A2FC@l */
/* 80B4A19C  3C A0 80 B5 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B4A2C0@ha */
/* 80B4A1A0  38 A5 A2 C0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B4A2C0@l */
/* 80B4A1A4  38 C0 00 08 */	li r6, 8
/* 80B4A1A8  38 E0 00 04 */	li r7, 4
/* 80B4A1AC  4B 81 7B B5 */	bl __construct_array
/* 80B4A1B0  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B4A1B4  3C 80 80 B5 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B4A2A8@ha */
/* 80B4A1B8  38 84 A2 A8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B4A2A8@l */
/* 80B4A1BC  3C A0 80 B5 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B4A26C@ha */
/* 80B4A1C0  38 A5 A2 6C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B4A26C@l */
/* 80B4A1C4  38 C0 00 08 */	li r6, 8
/* 80B4A1C8  38 E0 00 04 */	li r7, 4
/* 80B4A1CC  4B 81 7B 95 */	bl __construct_array
/* 80B4A1D0  7F C3 F3 78 */	mr r3, r30
/* 80B4A1D4  4B 7E 21 4D */	bl initialize__14J3DMaterialAnmFv
/* 80B4A1D8  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80B4A1DC  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80B4A1E0  90 1D 00 00 */	stw r0, 0(r29)
/* 80B4A1E4  7F A3 EB 78 */	mr r3, r29
/* 80B4A1E8  4B 5F B5 7D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B4A1EC:
/* 80B4A1EC  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80B4A1F0  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B4A1F4  28 00 00 00 */	cmplwi r0, 0
/* 80B4A1F8  40 82 00 0C */	bne lbl_80B4A204
/* 80B4A1FC  38 60 00 00 */	li r3, 0
/* 80B4A200  48 00 00 54 */	b lbl_80B4A254
lbl_80B4A204:
/* 80B4A204  7F E3 FB 78 */	mr r3, r31
/* 80B4A208  38 80 00 01 */	li r4, 1
/* 80B4A20C  38 A0 00 00 */	li r5, 0
/* 80B4A210  4B 60 01 79 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B4A214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4A218  41 82 00 38 */	beq lbl_80B4A250
/* 80B4A21C  7F E3 FB 78 */	mr r3, r31
/* 80B4A220  38 80 00 00 */	li r4, 0
/* 80B4A224  3C A0 80 B5 */	lis r5, lit_4193@ha /* 0x80B4CE48@ha */
/* 80B4A228  C0 25 CE 48 */	lfs f1, lit_4193@l(r5)  /* 0x80B4CE48@l */
/* 80B4A22C  38 A0 00 00 */	li r5, 0
/* 80B4A230  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B4A234  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B4A238  7D 89 03 A6 */	mtctr r12
/* 80B4A23C  4E 80 04 21 */	bctrl 
/* 80B4A240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4A244  41 82 00 0C */	beq lbl_80B4A250
/* 80B4A248  38 60 00 01 */	li r3, 1
/* 80B4A24C  48 00 00 08 */	b lbl_80B4A254
lbl_80B4A250:
/* 80B4A250  38 60 00 00 */	li r3, 0
lbl_80B4A254:
/* 80B4A254  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4A258  4B 81 7F D1 */	bl _restgpr_29
/* 80B4A25C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4A260  7C 08 03 A6 */	mtlr r0
/* 80B4A264  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4A268  4E 80 00 20 */	blr 
