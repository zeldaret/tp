lbl_80A9809C:
/* 80A9809C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A980A0  7C 08 02 A6 */	mflr r0
/* 80A980A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A980A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A980AC  4B 8C A1 30 */	b _savegpr_29
/* 80A980B0  7C 7E 1B 78 */	mr r30, r3
/* 80A980B4  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A980B8  20 00 00 01 */	subfic r0, r0, 1
/* 80A980BC  7C 00 00 34 */	cntlzw r0, r0
/* 80A980C0  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80A980C4  3C 60 80 AA */	lis r3, l_bmdData@ha
/* 80A980C8  38 83 BA 98 */	addi r4, r3, l_bmdData@l
/* 80A980CC  7C 64 2A 14 */	add r3, r4, r5
/* 80A980D0  80 03 00 04 */	lwz r0, 4(r3)
/* 80A980D4  54 00 10 3A */	slwi r0, r0, 2
/* 80A980D8  3C 60 80 AA */	lis r3, l_resNameList@ha
/* 80A980DC  38 63 BA B8 */	addi r3, r3, l_resNameList@l
/* 80A980E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A980E4  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A980E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A980EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A980F0  3C A5 00 02 */	addis r5, r5, 2
/* 80A980F4  38 C0 00 80 */	li r6, 0x80
/* 80A980F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A980FC  4B 5A 41 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A98100  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A98104  40 82 00 0C */	bne lbl_80A98110
/* 80A98108  38 60 00 01 */	li r3, 1
/* 80A9810C  48 00 01 FC */	b lbl_80A98308
lbl_80A98110:
/* 80A98110  38 60 00 58 */	li r3, 0x58
/* 80A98114  4B 83 6B 38 */	b __nw__FUl
/* 80A98118  7C 60 1B 79 */	or. r0, r3, r3
/* 80A9811C  41 82 00 4C */	beq lbl_80A98168
/* 80A98120  38 1E 05 80 */	addi r0, r30, 0x580
/* 80A98124  90 01 00 08 */	stw r0, 8(r1)
/* 80A98128  3C 00 00 08 */	lis r0, 8
/* 80A9812C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A98130  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A98134  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A98138  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9813C  7F A4 EB 78 */	mr r4, r29
/* 80A98140  38 A0 00 00 */	li r5, 0
/* 80A98144  38 C0 00 00 */	li r6, 0
/* 80A98148  38 E0 00 00 */	li r7, 0
/* 80A9814C  39 00 FF FF */	li r8, -1
/* 80A98150  3D 20 80 AA */	lis r9, lit_4494@ha
/* 80A98154  C0 29 B9 3C */	lfs f1, lit_4494@l(r9)
/* 80A98158  39 20 00 00 */	li r9, 0
/* 80A9815C  39 40 FF FF */	li r10, -1
/* 80A98160  4B 57 86 70 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A98164  7C 60 1B 78 */	mr r0, r3
lbl_80A98168:
/* 80A98168  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80A9816C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A98170  28 03 00 00 */	cmplwi r3, 0
/* 80A98174  41 82 00 10 */	beq lbl_80A98184
/* 80A98178  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A9817C  28 05 00 00 */	cmplwi r5, 0
/* 80A98180  40 82 00 0C */	bne lbl_80A9818C
lbl_80A98184:
/* 80A98184  38 60 00 00 */	li r3, 0
/* 80A98188  48 00 01 80 */	b lbl_80A98308
lbl_80A9818C:
/* 80A9818C  38 C0 00 00 */	li r6, 0
/* 80A98190  3C 60 80 AA */	lis r3, ctrlJointCallBack__18daNpc_Pachi_Maro_cFP8J3DJointi@ha
/* 80A98194  38 83 85 E4 */	addi r4, r3, ctrlJointCallBack__18daNpc_Pachi_Maro_cFP8J3DJointi@l
/* 80A98198  48 00 00 18 */	b lbl_80A981B0
lbl_80A9819C:
/* 80A9819C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A981A0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A981A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A981A8  90 83 00 04 */	stw r4, 4(r3)
/* 80A981AC  38 C6 00 01 */	addi r6, r6, 1
lbl_80A981B0:
/* 80A981B0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A981B4  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A981B8  7C 03 00 40 */	cmplw r3, r0
/* 80A981BC  41 80 FF E0 */	blt lbl_80A9819C
/* 80A981C0  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A981C4  38 60 01 08 */	li r3, 0x108
/* 80A981C8  4B 83 6A 84 */	b __nw__FUl
/* 80A981CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A981D0  41 82 00 D0 */	beq lbl_80A982A0
/* 80A981D4  7F FD FB 78 */	mr r29, r31
/* 80A981D8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A981DC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A981E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80A981E4  38 7F 00 04 */	addi r3, r31, 4
/* 80A981E8  3C 80 80 AA */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A981EC  38 84 84 C4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A981F0  3C A0 80 AA */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A981F4  38 A5 84 88 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A981F8  38 C0 00 08 */	li r6, 8
/* 80A981FC  38 E0 00 02 */	li r7, 2
/* 80A98200  4B 8C 9B 60 */	b __construct_array
/* 80A98204  38 7F 00 14 */	addi r3, r31, 0x14
/* 80A98208  3C 80 80 AA */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A9820C  38 84 84 70 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A98210  3C A0 80 AA */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A98214  38 A5 84 34 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A98218  38 C0 00 08 */	li r6, 8
/* 80A9821C  38 E0 00 08 */	li r7, 8
/* 80A98220  4B 8C 9B 40 */	b __construct_array
/* 80A98224  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A98228  3C 80 80 AA */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A9822C  38 84 84 10 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A98230  3C A0 80 AA */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A98234  38 A5 83 C8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A98238  38 C0 00 0C */	li r6, 0xc
/* 80A9823C  38 E0 00 08 */	li r7, 8
/* 80A98240  4B 8C 9B 20 */	b __construct_array
/* 80A98244  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80A98248  3C 80 80 AA */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A9824C  38 84 83 B0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A98250  3C A0 80 AA */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A98254  38 A5 83 74 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A98258  38 C0 00 08 */	li r6, 8
/* 80A9825C  38 E0 00 04 */	li r7, 4
/* 80A98260  4B 8C 9B 00 */	b __construct_array
/* 80A98264  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80A98268  3C 80 80 AA */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A9826C  38 84 83 5C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A98270  3C A0 80 AA */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A98274  38 A5 83 20 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A98278  38 C0 00 08 */	li r6, 8
/* 80A9827C  38 E0 00 04 */	li r7, 4
/* 80A98280  4B 8C 9A E0 */	b __construct_array
/* 80A98284  7F E3 FB 78 */	mr r3, r31
/* 80A98288  4B 89 40 98 */	b initialize__14J3DMaterialAnmFv
/* 80A9828C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80A98290  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80A98294  90 1D 00 00 */	stw r0, 0(r29)
/* 80A98298  7F A3 EB 78 */	mr r3, r29
/* 80A9829C  4B 6A D4 C8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A982A0:
/* 80A982A0  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80A982A4  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80A982A8  28 00 00 00 */	cmplwi r0, 0
/* 80A982AC  40 82 00 0C */	bne lbl_80A982B8
/* 80A982B0  38 60 00 00 */	li r3, 0
/* 80A982B4  48 00 00 54 */	b lbl_80A98308
lbl_80A982B8:
/* 80A982B8  7F C3 F3 78 */	mr r3, r30
/* 80A982BC  38 80 00 01 */	li r4, 1
/* 80A982C0  38 A0 00 00 */	li r5, 0
/* 80A982C4  4B 6B 20 C4 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A982C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A982CC  41 82 00 38 */	beq lbl_80A98304
/* 80A982D0  7F C3 F3 78 */	mr r3, r30
/* 80A982D4  38 80 00 00 */	li r4, 0
/* 80A982D8  3C A0 80 AA */	lis r5, lit_4346@ha
/* 80A982DC  C0 25 B9 30 */	lfs f1, lit_4346@l(r5)
/* 80A982E0  38 A0 00 00 */	li r5, 0
/* 80A982E4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A982E8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A982EC  7D 89 03 A6 */	mtctr r12
/* 80A982F0  4E 80 04 21 */	bctrl 
/* 80A982F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A982F8  41 82 00 0C */	beq lbl_80A98304
/* 80A982FC  38 60 00 01 */	li r3, 1
/* 80A98300  48 00 00 08 */	b lbl_80A98308
lbl_80A98304:
/* 80A98304  38 60 00 00 */	li r3, 0
lbl_80A98308:
/* 80A98308  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9830C  4B 8C 9F 1C */	b _restgpr_29
/* 80A98310  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A98314  7C 08 03 A6 */	mtlr r0
/* 80A98318  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9831C  4E 80 00 20 */	blr 
