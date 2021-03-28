lbl_809A7088:
/* 809A7088  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A708C  7C 08 02 A6 */	mflr r0
/* 809A7090  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A7094  39 61 00 30 */	addi r11, r1, 0x30
/* 809A7098  4B 9B B1 44 */	b _savegpr_29
/* 809A709C  7C 7E 1B 78 */	mr r30, r3
/* 809A70A0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 809A70A4  28 00 00 01 */	cmplwi r0, 1
/* 809A70A8  38 00 00 00 */	li r0, 0
/* 809A70AC  54 05 18 38 */	slwi r5, r0, 3
/* 809A70B0  3C 60 80 9B */	lis r3, l_bmdData@ha
/* 809A70B4  38 83 A4 60 */	addi r4, r3, l_bmdData@l
/* 809A70B8  7C 64 2A 14 */	add r3, r4, r5
/* 809A70BC  80 03 00 04 */	lwz r0, 4(r3)
/* 809A70C0  54 00 10 3A */	slwi r0, r0, 2
/* 809A70C4  3C 60 80 9B */	lis r3, l_resNameList@ha
/* 809A70C8  38 63 A4 78 */	addi r3, r3, l_resNameList@l
/* 809A70CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809A70D0  7C 84 28 2E */	lwzx r4, r4, r5
/* 809A70D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809A70D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809A70DC  3C A5 00 02 */	addis r5, r5, 2
/* 809A70E0  38 C0 00 80 */	li r6, 0x80
/* 809A70E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809A70E8  4B 69 52 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809A70EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 809A70F0  40 82 00 0C */	bne lbl_809A70FC
/* 809A70F4  38 60 00 00 */	li r3, 0
/* 809A70F8  48 00 01 FC */	b lbl_809A72F4
lbl_809A70FC:
/* 809A70FC  38 60 00 58 */	li r3, 0x58
/* 809A7100  4B 92 7B 4C */	b __nw__FUl
/* 809A7104  7C 60 1B 79 */	or. r0, r3, r3
/* 809A7108  41 82 00 4C */	beq lbl_809A7154
/* 809A710C  38 1E 05 80 */	addi r0, r30, 0x580
/* 809A7110  90 01 00 08 */	stw r0, 8(r1)
/* 809A7114  3C 00 00 08 */	lis r0, 8
/* 809A7118  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A711C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809A7120  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809A7124  90 01 00 10 */	stw r0, 0x10(r1)
/* 809A7128  7F A4 EB 78 */	mr r4, r29
/* 809A712C  38 A0 00 00 */	li r5, 0
/* 809A7130  38 C0 00 00 */	li r6, 0
/* 809A7134  38 E0 00 00 */	li r7, 0
/* 809A7138  39 00 FF FF */	li r8, -1
/* 809A713C  3D 20 80 9B */	lis r9, lit_4348@ha
/* 809A7140  C0 29 A3 D4 */	lfs f1, lit_4348@l(r9)
/* 809A7144  39 20 00 00 */	li r9, 0
/* 809A7148  39 40 FF FF */	li r10, -1
/* 809A714C  4B 66 96 84 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809A7150  7C 60 1B 78 */	mr r0, r3
lbl_809A7154:
/* 809A7154  90 1E 05 78 */	stw r0, 0x578(r30)
/* 809A7158  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809A715C  28 03 00 00 */	cmplwi r3, 0
/* 809A7160  41 82 00 10 */	beq lbl_809A7170
/* 809A7164  80 A3 00 04 */	lwz r5, 4(r3)
/* 809A7168  28 05 00 00 */	cmplwi r5, 0
/* 809A716C  40 82 00 0C */	bne lbl_809A7178
lbl_809A7170:
/* 809A7170  38 60 00 00 */	li r3, 0
/* 809A7174  48 00 01 80 */	b lbl_809A72F4
lbl_809A7178:
/* 809A7178  38 C0 00 00 */	li r6, 0
/* 809A717C  3C 60 80 9A */	lis r3, ctrlJointCallBack__11daNpc_Doc_cFP8J3DJointi@ha
/* 809A7180  38 83 75 D0 */	addi r4, r3, ctrlJointCallBack__11daNpc_Doc_cFP8J3DJointi@l
/* 809A7184  48 00 00 18 */	b lbl_809A719C
lbl_809A7188:
/* 809A7188  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 809A718C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809A7190  7C 63 00 2E */	lwzx r3, r3, r0
/* 809A7194  90 83 00 04 */	stw r4, 4(r3)
/* 809A7198  38 C6 00 01 */	addi r6, r6, 1
lbl_809A719C:
/* 809A719C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809A71A0  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 809A71A4  7C 03 00 40 */	cmplw r3, r0
/* 809A71A8  41 80 FF E0 */	blt lbl_809A7188
/* 809A71AC  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809A71B0  38 60 01 08 */	li r3, 0x108
/* 809A71B4  4B 92 7A 98 */	b __nw__FUl
/* 809A71B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A71BC  41 82 00 D0 */	beq lbl_809A728C
/* 809A71C0  7F FD FB 78 */	mr r29, r31
/* 809A71C4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809A71C8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809A71CC  90 1F 00 00 */	stw r0, 0(r31)
/* 809A71D0  38 7F 00 04 */	addi r3, r31, 4
/* 809A71D4  3C 80 80 9A */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809A71D8  38 84 74 B0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809A71DC  3C A0 80 9A */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809A71E0  38 A5 74 74 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809A71E4  38 C0 00 08 */	li r6, 8
/* 809A71E8  38 E0 00 02 */	li r7, 2
/* 809A71EC  4B 9B AB 74 */	b __construct_array
/* 809A71F0  38 7F 00 14 */	addi r3, r31, 0x14
/* 809A71F4  3C 80 80 9A */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809A71F8  38 84 74 5C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809A71FC  3C A0 80 9A */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809A7200  38 A5 74 20 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809A7204  38 C0 00 08 */	li r6, 8
/* 809A7208  38 E0 00 08 */	li r7, 8
/* 809A720C  4B 9B AB 54 */	b __construct_array
/* 809A7210  38 7F 00 54 */	addi r3, r31, 0x54
/* 809A7214  3C 80 80 9A */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809A7218  38 84 73 FC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809A721C  3C A0 80 9A */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809A7220  38 A5 73 B4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809A7224  38 C0 00 0C */	li r6, 0xc
/* 809A7228  38 E0 00 08 */	li r7, 8
/* 809A722C  4B 9B AB 34 */	b __construct_array
/* 809A7230  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 809A7234  3C 80 80 9A */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809A7238  38 84 73 9C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809A723C  3C A0 80 9A */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809A7240  38 A5 73 60 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809A7244  38 C0 00 08 */	li r6, 8
/* 809A7248  38 E0 00 04 */	li r7, 4
/* 809A724C  4B 9B AB 14 */	b __construct_array
/* 809A7250  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 809A7254  3C 80 80 9A */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809A7258  38 84 73 48 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809A725C  3C A0 80 9A */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809A7260  38 A5 73 0C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809A7264  38 C0 00 08 */	li r6, 8
/* 809A7268  38 E0 00 04 */	li r7, 4
/* 809A726C  4B 9B AA F4 */	b __construct_array
/* 809A7270  7F E3 FB 78 */	mr r3, r31
/* 809A7274  4B 98 50 AC */	b initialize__14J3DMaterialAnmFv
/* 809A7278  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 809A727C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 809A7280  90 1D 00 00 */	stw r0, 0(r29)
/* 809A7284  7F A3 EB 78 */	mr r3, r29
/* 809A7288  4B 79 E4 DC */	b initialize__15daNpcT_MatAnm_cFv
lbl_809A728C:
/* 809A728C  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 809A7290  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 809A7294  28 00 00 00 */	cmplwi r0, 0
/* 809A7298  40 82 00 0C */	bne lbl_809A72A4
/* 809A729C  38 60 00 00 */	li r3, 0
/* 809A72A0  48 00 00 54 */	b lbl_809A72F4
lbl_809A72A4:
/* 809A72A4  7F C3 F3 78 */	mr r3, r30
/* 809A72A8  38 80 00 01 */	li r4, 1
/* 809A72AC  38 A0 00 00 */	li r5, 0
/* 809A72B0  4B 7A 30 D8 */	b setFaceMotionAnm__8daNpcT_cFib
/* 809A72B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A72B8  41 82 00 38 */	beq lbl_809A72F0
/* 809A72BC  7F C3 F3 78 */	mr r3, r30
/* 809A72C0  38 80 00 00 */	li r4, 0
/* 809A72C4  3C A0 80 9B */	lis r5, lit_4037@ha
/* 809A72C8  C0 25 A3 C4 */	lfs f1, lit_4037@l(r5)
/* 809A72CC  38 A0 00 00 */	li r5, 0
/* 809A72D0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809A72D4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809A72D8  7D 89 03 A6 */	mtctr r12
/* 809A72DC  4E 80 04 21 */	bctrl 
/* 809A72E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A72E4  41 82 00 0C */	beq lbl_809A72F0
/* 809A72E8  38 60 00 01 */	li r3, 1
/* 809A72EC  48 00 00 08 */	b lbl_809A72F4
lbl_809A72F0:
/* 809A72F0  38 60 00 00 */	li r3, 0
lbl_809A72F4:
/* 809A72F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809A72F8  4B 9B AF 30 */	b _restgpr_29
/* 809A72FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A7300  7C 08 03 A6 */	mtlr r0
/* 809A7304  38 21 00 30 */	addi r1, r1, 0x30
/* 809A7308  4E 80 00 20 */	blr 
