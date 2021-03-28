lbl_80D4720C:
/* 80D4720C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D47210  7C 08 02 A6 */	mflr r0
/* 80D47214  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D47218  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4721C  4B 61 AF C0 */	b _savegpr_29
/* 80D47220  7C 7F 1B 78 */	mr r31, r3
/* 80D47224  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80D47228  28 00 00 01 */	cmplwi r0, 1
/* 80D4722C  38 00 00 00 */	li r0, 0
/* 80D47230  54 05 18 38 */	slwi r5, r0, 3
/* 80D47234  3C 60 80 D5 */	lis r3, l_bmdData@ha
/* 80D47238  38 83 C1 FC */	addi r4, r3, l_bmdData@l
/* 80D4723C  7C 64 2A 14 */	add r3, r4, r5
/* 80D47240  80 03 00 04 */	lwz r0, 4(r3)
/* 80D47244  54 00 10 3A */	slwi r0, r0, 2
/* 80D47248  3C 60 80 D5 */	lis r3, l_resNameList@ha
/* 80D4724C  38 63 C2 1C */	addi r3, r3, l_resNameList@l
/* 80D47250  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D47254  7C 84 28 2E */	lwzx r4, r4, r5
/* 80D47258  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D4725C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D47260  3C A5 00 02 */	addis r5, r5, 2
/* 80D47264  38 C0 00 80 */	li r6, 0x80
/* 80D47268  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D4726C  4B 2F 50 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D47270  7C 7E 1B 78 */	mr r30, r3
/* 80D47274  38 60 00 58 */	li r3, 0x58
/* 80D47278  4B 58 79 D4 */	b __nw__FUl
/* 80D4727C  7C 60 1B 79 */	or. r0, r3, r3
/* 80D47280  41 82 00 4C */	beq lbl_80D472CC
/* 80D47284  38 1F 05 80 */	addi r0, r31, 0x580
/* 80D47288  90 01 00 08 */	stw r0, 8(r1)
/* 80D4728C  3C 00 00 08 */	lis r0, 8
/* 80D47290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D47294  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80D47298  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80D4729C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D472A0  7F C4 F3 78 */	mr r4, r30
/* 80D472A4  38 A0 00 00 */	li r5, 0
/* 80D472A8  38 C0 00 00 */	li r6, 0
/* 80D472AC  38 E0 00 00 */	li r7, 0
/* 80D472B0  39 00 FF FF */	li r8, -1
/* 80D472B4  3D 20 80 D5 */	lis r9, lit_4348@ha
/* 80D472B8  C0 29 C1 14 */	lfs f1, lit_4348@l(r9)
/* 80D472BC  39 20 00 00 */	li r9, 0
/* 80D472C0  39 40 FF FF */	li r10, -1
/* 80D472C4  4B 2C 95 0C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D472C8  7C 60 1B 78 */	mr r0, r3
lbl_80D472CC:
/* 80D472CC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80D472D0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D472D4  28 03 00 00 */	cmplwi r3, 0
/* 80D472D8  41 82 00 1C */	beq lbl_80D472F4
/* 80D472DC  80 03 00 04 */	lwz r0, 4(r3)
/* 80D472E0  28 00 00 00 */	cmplwi r0, 0
/* 80D472E4  40 82 00 10 */	bne lbl_80D472F4
/* 80D472E8  4B 2C A0 28 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80D472EC  38 00 00 00 */	li r0, 0
/* 80D472F0  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80D472F4:
/* 80D472F4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D472F8  28 03 00 00 */	cmplwi r3, 0
/* 80D472FC  40 82 00 0C */	bne lbl_80D47308
/* 80D47300  38 60 00 00 */	li r3, 0
/* 80D47304  48 00 01 84 */	b lbl_80D47488
lbl_80D47308:
/* 80D47308  80 A3 00 04 */	lwz r5, 4(r3)
/* 80D4730C  38 C0 00 00 */	li r6, 0
/* 80D47310  3C 60 80 D4 */	lis r3, ctrlJointCallBack__8daPeru_cFP8J3DJointi@ha
/* 80D47314  38 83 78 60 */	addi r4, r3, ctrlJointCallBack__8daPeru_cFP8J3DJointi@l
/* 80D47318  48 00 00 18 */	b lbl_80D47330
lbl_80D4731C:
/* 80D4731C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80D47320  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80D47324  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D47328  90 83 00 04 */	stw r4, 4(r3)
/* 80D4732C  38 C6 00 01 */	addi r6, r6, 1
lbl_80D47330:
/* 80D47330  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80D47334  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80D47338  7C 03 00 40 */	cmplw r3, r0
/* 80D4733C  41 80 FF E0 */	blt lbl_80D4731C
/* 80D47340  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80D47344  38 60 01 08 */	li r3, 0x108
/* 80D47348  4B 58 79 04 */	b __nw__FUl
/* 80D4734C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D47350  41 82 00 D0 */	beq lbl_80D47420
/* 80D47354  7F DD F3 78 */	mr r29, r30
/* 80D47358  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80D4735C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80D47360  90 1E 00 00 */	stw r0, 0(r30)
/* 80D47364  38 7E 00 04 */	addi r3, r30, 4
/* 80D47368  3C 80 80 D4 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80D4736C  38 84 76 44 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80D47370  3C A0 80 D4 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80D47374  38 A5 76 08 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80D47378  38 C0 00 08 */	li r6, 8
/* 80D4737C  38 E0 00 02 */	li r7, 2
/* 80D47380  4B 61 A9 E0 */	b __construct_array
/* 80D47384  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D47388  3C 80 80 D4 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80D4738C  38 84 75 F0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80D47390  3C A0 80 D4 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80D47394  38 A5 75 B4 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80D47398  38 C0 00 08 */	li r6, 8
/* 80D4739C  38 E0 00 08 */	li r7, 8
/* 80D473A0  4B 61 A9 C0 */	b __construct_array
/* 80D473A4  38 7E 00 54 */	addi r3, r30, 0x54
/* 80D473A8  3C 80 80 D4 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80D473AC  38 84 75 90 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80D473B0  3C A0 80 D4 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80D473B4  38 A5 75 48 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80D473B8  38 C0 00 0C */	li r6, 0xc
/* 80D473BC  38 E0 00 08 */	li r7, 8
/* 80D473C0  4B 61 A9 A0 */	b __construct_array
/* 80D473C4  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80D473C8  3C 80 80 D4 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80D473CC  38 84 75 30 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80D473D0  3C A0 80 D4 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80D473D4  38 A5 74 F4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80D473D8  38 C0 00 08 */	li r6, 8
/* 80D473DC  38 E0 00 04 */	li r7, 4
/* 80D473E0  4B 61 A9 80 */	b __construct_array
/* 80D473E4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80D473E8  3C 80 80 D4 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80D473EC  38 84 74 DC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80D473F0  3C A0 80 D4 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80D473F4  38 A5 74 A0 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80D473F8  38 C0 00 08 */	li r6, 8
/* 80D473FC  38 E0 00 04 */	li r7, 4
/* 80D47400  4B 61 A9 60 */	b __construct_array
/* 80D47404  7F C3 F3 78 */	mr r3, r30
/* 80D47408  4B 5E 4F 18 */	b initialize__14J3DMaterialAnmFv
/* 80D4740C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80D47410  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80D47414  90 1D 00 00 */	stw r0, 0(r29)
/* 80D47418  7F A3 EB 78 */	mr r3, r29
/* 80D4741C  4B 3F E3 48 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80D47420:
/* 80D47420  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80D47424  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80D47428  28 00 00 00 */	cmplwi r0, 0
/* 80D4742C  40 82 00 0C */	bne lbl_80D47438
/* 80D47430  38 60 00 00 */	li r3, 0
/* 80D47434  48 00 00 54 */	b lbl_80D47488
lbl_80D47438:
/* 80D47438  7F E3 FB 78 */	mr r3, r31
/* 80D4743C  38 80 00 01 */	li r4, 1
/* 80D47440  38 A0 00 00 */	li r5, 0
/* 80D47444  4B 40 2F 44 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80D47448  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4744C  41 82 00 38 */	beq lbl_80D47484
/* 80D47450  7F E3 FB 78 */	mr r3, r31
/* 80D47454  38 80 00 00 */	li r4, 0
/* 80D47458  3C A0 80 D5 */	lis r5, lit_4199@ha
/* 80D4745C  C0 25 C1 08 */	lfs f1, lit_4199@l(r5)
/* 80D47460  38 A0 00 00 */	li r5, 0
/* 80D47464  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80D47468  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80D4746C  7D 89 03 A6 */	mtctr r12
/* 80D47470  4E 80 04 21 */	bctrl 
/* 80D47474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D47478  41 82 00 0C */	beq lbl_80D47484
/* 80D4747C  38 60 00 01 */	li r3, 1
/* 80D47480  48 00 00 08 */	b lbl_80D47488
lbl_80D47484:
/* 80D47484  38 60 00 00 */	li r3, 0
lbl_80D47488:
/* 80D47488  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4748C  4B 61 AD 9C */	b _restgpr_29
/* 80D47490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D47494  7C 08 03 A6 */	mtlr r0
/* 80D47498  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4749C  4E 80 00 20 */	blr 
