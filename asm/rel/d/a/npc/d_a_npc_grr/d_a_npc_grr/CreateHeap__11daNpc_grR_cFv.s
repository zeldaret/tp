lbl_809DFFB8:
/* 809DFFB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DFFBC  7C 08 02 A6 */	mflr r0
/* 809DFFC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DFFC4  39 61 00 30 */	addi r11, r1, 0x30
/* 809DFFC8  4B 98 22 14 */	b _savegpr_29
/* 809DFFCC  7C 7F 1B 78 */	mr r31, r3
/* 809DFFD0  3B C0 00 00 */	li r30, 0
/* 809DFFD4  3C 60 80 9E */	lis r3, l_bmdGetParamList@ha
/* 809DFFD8  84 83 3C 10 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 809DFFDC  2C 04 00 00 */	cmpwi r4, 0
/* 809DFFE0  41 80 00 34 */	blt lbl_809E0014
/* 809DFFE4  80 03 00 04 */	lwz r0, 4(r3)
/* 809DFFE8  54 00 10 3A */	slwi r0, r0, 2
/* 809DFFEC  3C 60 80 9E */	lis r3, l_resNames@ha
/* 809DFFF0  38 63 3D 30 */	addi r3, r3, l_resNames@l
/* 809DFFF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809DFFF8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809DFFFC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809E0000  3C A5 00 02 */	addis r5, r5, 2
/* 809E0004  38 C0 00 80 */	li r6, 0x80
/* 809E0008  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809E000C  4B 65 C2 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809E0010  7C 7E 1B 78 */	mr r30, r3
lbl_809E0014:
/* 809E0014  38 60 00 58 */	li r3, 0x58
/* 809E0018  4B 8E EC 34 */	b __nw__FUl
/* 809E001C  7C 60 1B 79 */	or. r0, r3, r3
/* 809E0020  41 82 00 4C */	beq lbl_809E006C
/* 809E0024  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809E0028  90 01 00 08 */	stw r0, 8(r1)
/* 809E002C  3C 00 00 08 */	lis r0, 8
/* 809E0030  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E0034  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809E0038  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809E003C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E0040  7F C4 F3 78 */	mr r4, r30
/* 809E0044  38 A0 00 00 */	li r5, 0
/* 809E0048  38 C0 00 00 */	li r6, 0
/* 809E004C  38 E0 00 00 */	li r7, 0
/* 809E0050  39 00 FF FF */	li r8, -1
/* 809E0054  3D 20 80 9E */	lis r9, lit_4452@ha
/* 809E0058  C0 29 39 64 */	lfs f1, lit_4452@l(r9)
/* 809E005C  39 20 00 00 */	li r9, 0
/* 809E0060  39 40 FF FF */	li r10, -1
/* 809E0064  4B 63 07 6C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809E0068  7C 60 1B 78 */	mr r0, r3
lbl_809E006C:
/* 809E006C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809E0070  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E0074  28 03 00 00 */	cmplwi r3, 0
/* 809E0078  41 82 00 1C */	beq lbl_809E0094
/* 809E007C  80 03 00 04 */	lwz r0, 4(r3)
/* 809E0080  28 00 00 00 */	cmplwi r0, 0
/* 809E0084  40 82 00 10 */	bne lbl_809E0094
/* 809E0088  4B 63 12 88 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809E008C  38 00 00 00 */	li r0, 0
/* 809E0090  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809E0094:
/* 809E0094  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E0098  28 03 00 00 */	cmplwi r3, 0
/* 809E009C  40 82 00 0C */	bne lbl_809E00A8
/* 809E00A0  38 60 00 00 */	li r3, 0
/* 809E00A4  48 00 01 84 */	b lbl_809E0228
lbl_809E00A8:
/* 809E00A8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E00AC  38 C0 00 00 */	li r6, 0
/* 809E00B0  3C 60 80 9E */	lis r3, ctrlJointCallBack__11daNpc_grR_cFP8J3DJointi@ha
/* 809E00B4  38 83 07 34 */	addi r4, r3, ctrlJointCallBack__11daNpc_grR_cFP8J3DJointi@l
/* 809E00B8  48 00 00 18 */	b lbl_809E00D0
lbl_809E00BC:
/* 809E00BC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809E00C0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809E00C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E00C8  90 83 00 04 */	stw r4, 4(r3)
/* 809E00CC  38 C6 00 01 */	addi r6, r6, 1
lbl_809E00D0:
/* 809E00D0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809E00D4  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809E00D8  7C 03 00 40 */	cmplw r3, r0
/* 809E00DC  41 80 FF E0 */	blt lbl_809E00BC
/* 809E00E0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809E00E4  38 60 01 08 */	li r3, 0x108
/* 809E00E8  4B 8E EB 64 */	b __nw__FUl
/* 809E00EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E00F0  41 82 00 D0 */	beq lbl_809E01C0
/* 809E00F4  7F DD F3 78 */	mr r29, r30
/* 809E00F8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809E00FC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809E0100  90 1E 00 00 */	stw r0, 0(r30)
/* 809E0104  38 7E 00 04 */	addi r3, r30, 4
/* 809E0108  3C 80 80 9E */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809E010C  38 84 03 E4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809E0110  3C A0 80 9E */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809E0114  38 A5 03 A8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809E0118  38 C0 00 08 */	li r6, 8
/* 809E011C  38 E0 00 02 */	li r7, 2
/* 809E0120  4B 98 1C 40 */	b __construct_array
/* 809E0124  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E0128  3C 80 80 9E */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809E012C  38 84 03 90 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809E0130  3C A0 80 9E */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809E0134  38 A5 03 54 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809E0138  38 C0 00 08 */	li r6, 8
/* 809E013C  38 E0 00 08 */	li r7, 8
/* 809E0140  4B 98 1C 20 */	b __construct_array
/* 809E0144  38 7E 00 54 */	addi r3, r30, 0x54
/* 809E0148  3C 80 80 9E */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809E014C  38 84 03 30 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809E0150  3C A0 80 9E */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809E0154  38 A5 02 E8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809E0158  38 C0 00 0C */	li r6, 0xc
/* 809E015C  38 E0 00 08 */	li r7, 8
/* 809E0160  4B 98 1C 00 */	b __construct_array
/* 809E0164  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809E0168  3C 80 80 9E */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809E016C  38 84 02 D0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809E0170  3C A0 80 9E */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809E0174  38 A5 02 94 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809E0178  38 C0 00 08 */	li r6, 8
/* 809E017C  38 E0 00 04 */	li r7, 4
/* 809E0180  4B 98 1B E0 */	b __construct_array
/* 809E0184  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809E0188  3C 80 80 9E */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809E018C  38 84 02 7C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809E0190  3C A0 80 9E */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809E0194  38 A5 02 40 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809E0198  38 C0 00 08 */	li r6, 8
/* 809E019C  38 E0 00 04 */	li r7, 4
/* 809E01A0  4B 98 1B C0 */	b __construct_array
/* 809E01A4  7F C3 F3 78 */	mr r3, r30
/* 809E01A8  4B 94 C1 78 */	b initialize__14J3DMaterialAnmFv
/* 809E01AC  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 809E01B0  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 809E01B4  90 1D 00 00 */	stw r0, 0(r29)
/* 809E01B8  7F A3 EB 78 */	mr r3, r29
/* 809E01BC  4B 77 05 7C */	b initialize__15daNpcF_MatAnm_cFv
lbl_809E01C0:
/* 809E01C0  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 809E01C4  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809E01C8  28 00 00 00 */	cmplwi r0, 0
/* 809E01CC  40 82 00 0C */	bne lbl_809E01D8
/* 809E01D0  38 60 00 00 */	li r3, 0
/* 809E01D4  48 00 00 54 */	b lbl_809E0228
lbl_809E01D8:
/* 809E01D8  7F E3 FB 78 */	mr r3, r31
/* 809E01DC  38 80 00 05 */	li r4, 5
/* 809E01E0  38 A0 00 00 */	li r5, 0
/* 809E01E4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E01E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809E01EC  7D 89 03 A6 */	mtctr r12
/* 809E01F0  4E 80 04 21 */	bctrl 
/* 809E01F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E01F8  40 82 00 0C */	bne lbl_809E0204
/* 809E01FC  38 60 00 00 */	li r3, 0
/* 809E0200  48 00 00 28 */	b lbl_809E0228
lbl_809E0204:
/* 809E0204  7F E3 FB 78 */	mr r3, r31
/* 809E0208  38 80 00 0B */	li r4, 0xb
/* 809E020C  3C A0 80 9E */	lis r5, lit_4453@ha
/* 809E0210  C0 25 39 68 */	lfs f1, lit_4453@l(r5)
/* 809E0214  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E0218  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809E021C  7D 89 03 A6 */	mtctr r12
/* 809E0220  4E 80 04 21 */	bctrl 
/* 809E0224  38 60 00 01 */	li r3, 1
lbl_809E0228:
/* 809E0228  39 61 00 30 */	addi r11, r1, 0x30
/* 809E022C  4B 98 1F FC */	b _restgpr_29
/* 809E0230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E0234  7C 08 03 A6 */	mtlr r0
/* 809E0238  38 21 00 30 */	addi r1, r1, 0x30
/* 809E023C  4E 80 00 20 */	blr 
