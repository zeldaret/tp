lbl_809BB9D4:
/* 809BB9D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BB9D8  7C 08 02 A6 */	mflr r0
/* 809BB9DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BB9E0  39 61 00 30 */	addi r11, r1, 0x30
/* 809BB9E4  4B 9A 67 F0 */	b _savegpr_27
/* 809BB9E8  7C 7F 1B 78 */	mr r31, r3
/* 809BB9EC  3C 60 80 9C */	lis r3, l_bmdData@ha
/* 809BB9F0  38 83 E5 BC */	addi r4, r3, l_bmdData@l
/* 809BB9F4  80 04 00 04 */	lwz r0, 4(r4)
/* 809BB9F8  54 00 10 3A */	slwi r0, r0, 2
/* 809BB9FC  3C 60 80 9C */	lis r3, l_resNameList@ha
/* 809BBA00  38 63 E5 D4 */	addi r3, r3, l_resNameList@l
/* 809BBA04  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BBA08  80 84 00 00 */	lwz r4, 0(r4)
/* 809BBA0C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809BBA10  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809BBA14  3C A5 00 02 */	addis r5, r5, 2
/* 809BBA18  38 C0 00 80 */	li r6, 0x80
/* 809BBA1C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809BBA20  4B 68 08 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809BBA24  7C 7E 1B 78 */	mr r30, r3
/* 809BBA28  38 60 00 58 */	li r3, 0x58
/* 809BBA2C  4B 91 32 20 */	b __nw__FUl
/* 809BBA30  7C 60 1B 79 */	or. r0, r3, r3
/* 809BBA34  41 82 00 4C */	beq lbl_809BBA80
/* 809BBA38  38 1F 05 80 */	addi r0, r31, 0x580
/* 809BBA3C  90 01 00 08 */	stw r0, 8(r1)
/* 809BBA40  3C 00 00 08 */	lis r0, 8
/* 809BBA44  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BBA48  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020285@ha */
/* 809BBA4C  38 04 02 85 */	addi r0, r4, 0x0285 /* 0x11020285@l */
/* 809BBA50  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BBA54  7F C4 F3 78 */	mr r4, r30
/* 809BBA58  38 A0 00 00 */	li r5, 0
/* 809BBA5C  38 C0 00 00 */	li r6, 0
/* 809BBA60  38 E0 00 00 */	li r7, 0
/* 809BBA64  39 00 FF FF */	li r8, -1
/* 809BBA68  3D 20 80 9C */	lis r9, lit_4331@ha
/* 809BBA6C  C0 29 E5 4C */	lfs f1, lit_4331@l(r9)
/* 809BBA70  39 20 00 00 */	li r9, 0
/* 809BBA74  39 40 FF FF */	li r10, -1
/* 809BBA78  4B 65 4D 58 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809BBA7C  7C 60 1B 78 */	mr r0, r3
lbl_809BBA80:
/* 809BBA80  90 1F 05 78 */	stw r0, 0x578(r31)
/* 809BBA84  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809BBA88  28 03 00 00 */	cmplwi r3, 0
/* 809BBA8C  41 82 00 1C */	beq lbl_809BBAA8
/* 809BBA90  80 03 00 04 */	lwz r0, 4(r3)
/* 809BBA94  28 00 00 00 */	cmplwi r0, 0
/* 809BBA98  40 82 00 10 */	bne lbl_809BBAA8
/* 809BBA9C  4B 65 58 74 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809BBAA0  38 00 00 00 */	li r0, 0
/* 809BBAA4  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_809BBAA8:
/* 809BBAA8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809BBAAC  28 03 00 00 */	cmplwi r3, 0
/* 809BBAB0  40 82 00 0C */	bne lbl_809BBABC
/* 809BBAB4  38 60 00 00 */	li r3, 0
/* 809BBAB8  48 00 01 A0 */	b lbl_809BBC58
lbl_809BBABC:
/* 809BBABC  80 A3 00 04 */	lwz r5, 4(r3)
/* 809BBAC0  38 C0 00 00 */	li r6, 0
/* 809BBAC4  3C 60 80 9C */	lis r3, ctrlJointCallBack__11daNpc_Gnd_cFP8J3DJointi@ha
/* 809BBAC8  38 83 BF 64 */	addi r4, r3, ctrlJointCallBack__11daNpc_Gnd_cFP8J3DJointi@l
/* 809BBACC  48 00 00 18 */	b lbl_809BBAE4
lbl_809BBAD0:
/* 809BBAD0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809BBAD4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809BBAD8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BBADC  90 83 00 04 */	stw r4, 4(r3)
/* 809BBAE0  38 C6 00 01 */	addi r6, r6, 1
lbl_809BBAE4:
/* 809BBAE4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809BBAE8  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809BBAEC  7C 03 00 40 */	cmplw r3, r0
/* 809BBAF0  41 80 FF E0 */	blt lbl_809BBAD0
/* 809BBAF4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809BBAF8  3B A0 00 00 */	li r29, 0
/* 809BBAFC  3B 60 00 00 */	li r27, 0
lbl_809BBB00:
/* 809BBB00  38 60 01 08 */	li r3, 0x108
/* 809BBB04  4B 91 31 48 */	b __nw__FUl
/* 809BBB08  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BBB0C  41 82 00 D0 */	beq lbl_809BBBDC
/* 809BBB10  7F DC F3 78 */	mr r28, r30
/* 809BBB14  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809BBB18  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809BBB1C  90 1E 00 00 */	stw r0, 0(r30)
/* 809BBB20  38 7E 00 04 */	addi r3, r30, 4
/* 809BBB24  3C 80 80 9C */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809BBB28  38 84 BE 14 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809BBB2C  3C A0 80 9C */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809BBB30  38 A5 BD D8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809BBB34  38 C0 00 08 */	li r6, 8
/* 809BBB38  38 E0 00 02 */	li r7, 2
/* 809BBB3C  4B 9A 62 24 */	b __construct_array
/* 809BBB40  38 7E 00 14 */	addi r3, r30, 0x14
/* 809BBB44  3C 80 80 9C */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809BBB48  38 84 BD C0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809BBB4C  3C A0 80 9C */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809BBB50  38 A5 BD 84 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809BBB54  38 C0 00 08 */	li r6, 8
/* 809BBB58  38 E0 00 08 */	li r7, 8
/* 809BBB5C  4B 9A 62 04 */	b __construct_array
/* 809BBB60  38 7E 00 54 */	addi r3, r30, 0x54
/* 809BBB64  3C 80 80 9C */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809BBB68  38 84 BD 60 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809BBB6C  3C A0 80 9C */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809BBB70  38 A5 BD 18 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809BBB74  38 C0 00 0C */	li r6, 0xc
/* 809BBB78  38 E0 00 08 */	li r7, 8
/* 809BBB7C  4B 9A 61 E4 */	b __construct_array
/* 809BBB80  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809BBB84  3C 80 80 9C */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809BBB88  38 84 BD 00 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809BBB8C  3C A0 80 9C */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809BBB90  38 A5 BC C4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809BBB94  38 C0 00 08 */	li r6, 8
/* 809BBB98  38 E0 00 04 */	li r7, 4
/* 809BBB9C  4B 9A 61 C4 */	b __construct_array
/* 809BBBA0  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809BBBA4  3C 80 80 9C */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809BBBA8  38 84 BC AC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809BBBAC  3C A0 80 9C */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809BBBB0  38 A5 BC 70 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809BBBB4  38 C0 00 08 */	li r6, 8
/* 809BBBB8  38 E0 00 04 */	li r7, 4
/* 809BBBBC  4B 9A 61 A4 */	b __construct_array
/* 809BBBC0  7F C3 F3 78 */	mr r3, r30
/* 809BBBC4  4B 97 07 5C */	b initialize__14J3DMaterialAnmFv
/* 809BBBC8  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 809BBBCC  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 809BBBD0  90 1C 00 00 */	stw r0, 0(r28)
/* 809BBBD4  7F 83 E3 78 */	mr r3, r28
/* 809BBBD8  4B 78 9B 8C */	b initialize__15daNpcT_MatAnm_cFv
lbl_809BBBDC:
/* 809BBBDC  38 1B 09 6C */	addi r0, r27, 0x96c
/* 809BBBE0  7F DF 01 2E */	stwx r30, r31, r0
/* 809BBBE4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 809BBBE8  28 00 00 00 */	cmplwi r0, 0
/* 809BBBEC  40 82 00 0C */	bne lbl_809BBBF8
/* 809BBBF0  38 60 00 00 */	li r3, 0
/* 809BBBF4  48 00 00 64 */	b lbl_809BBC58
lbl_809BBBF8:
/* 809BBBF8  3B BD 00 01 */	addi r29, r29, 1
/* 809BBBFC  2C 1D 00 02 */	cmpwi r29, 2
/* 809BBC00  3B 7B 00 04 */	addi r27, r27, 4
/* 809BBC04  41 80 FE FC */	blt lbl_809BBB00
/* 809BBC08  7F E3 FB 78 */	mr r3, r31
/* 809BBC0C  38 80 00 00 */	li r4, 0
/* 809BBC10  38 A0 00 00 */	li r5, 0
/* 809BBC14  4B 78 E7 74 */	b setFaceMotionAnm__8daNpcT_cFib
/* 809BBC18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BBC1C  41 82 00 38 */	beq lbl_809BBC54
/* 809BBC20  7F E3 FB 78 */	mr r3, r31
/* 809BBC24  38 80 00 00 */	li r4, 0
/* 809BBC28  3C A0 80 9C */	lis r5, lit_4178@ha
/* 809BBC2C  C0 25 E5 40 */	lfs f1, lit_4178@l(r5)
/* 809BBC30  38 A0 00 00 */	li r5, 0
/* 809BBC34  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 809BBC38  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809BBC3C  7D 89 03 A6 */	mtctr r12
/* 809BBC40  4E 80 04 21 */	bctrl 
/* 809BBC44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BBC48  41 82 00 0C */	beq lbl_809BBC54
/* 809BBC4C  38 60 00 01 */	li r3, 1
/* 809BBC50  48 00 00 08 */	b lbl_809BBC58
lbl_809BBC54:
/* 809BBC54  38 60 00 00 */	li r3, 0
lbl_809BBC58:
/* 809BBC58  39 61 00 30 */	addi r11, r1, 0x30
/* 809BBC5C  4B 9A 65 C4 */	b _restgpr_27
/* 809BBC60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BBC64  7C 08 03 A6 */	mtlr r0
/* 809BBC68  38 21 00 30 */	addi r1, r1, 0x30
/* 809BBC6C  4E 80 00 20 */	blr 
