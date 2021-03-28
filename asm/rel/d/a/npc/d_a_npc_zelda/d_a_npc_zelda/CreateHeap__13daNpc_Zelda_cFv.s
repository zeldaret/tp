lbl_80B75530:
/* 80B75530  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B75534  7C 08 02 A6 */	mflr r0
/* 80B75538  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7553C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B75540  4B 7E CC 94 */	b _savegpr_27
/* 80B75544  7C 7D 1B 78 */	mr r29, r3
/* 80B75548  3C 60 80 B8 */	lis r3, l_bmdData@ha
/* 80B7554C  38 83 80 F8 */	addi r4, r3, l_bmdData@l
/* 80B75550  80 04 00 04 */	lwz r0, 4(r4)
/* 80B75554  54 00 10 3A */	slwi r0, r0, 2
/* 80B75558  3C 60 80 B8 */	lis r3, l_resNameList@ha
/* 80B7555C  38 63 81 10 */	addi r3, r3, l_resNameList@l
/* 80B75560  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B75564  80 84 00 00 */	lwz r4, 0(r4)
/* 80B75568  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B7556C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B75570  3C A5 00 02 */	addis r5, r5, 2
/* 80B75574  38 C0 00 80 */	li r6, 0x80
/* 80B75578  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B7557C  4B 4C 6D 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B75580  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B75584  40 82 00 0C */	bne lbl_80B75590
/* 80B75588  38 60 00 00 */	li r3, 0
/* 80B7558C  48 00 02 18 */	b lbl_80B757A4
lbl_80B75590:
/* 80B75590  38 60 00 58 */	li r3, 0x58
/* 80B75594  4B 75 96 B8 */	b __nw__FUl
/* 80B75598  7C 60 1B 79 */	or. r0, r3, r3
/* 80B7559C  41 82 00 4C */	beq lbl_80B755E8
/* 80B755A0  38 1D 05 80 */	addi r0, r29, 0x580
/* 80B755A4  90 01 00 08 */	stw r0, 8(r1)
/* 80B755A8  38 00 00 00 */	li r0, 0
/* 80B755AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B755B0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B755B4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B755B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B755BC  7F 64 DB 78 */	mr r4, r27
/* 80B755C0  38 A0 00 00 */	li r5, 0
/* 80B755C4  38 C0 00 00 */	li r6, 0
/* 80B755C8  38 E0 00 00 */	li r7, 0
/* 80B755CC  39 00 FF FF */	li r8, -1
/* 80B755D0  3D 20 80 B8 */	lis r9, lit_4342@ha
/* 80B755D4  C0 29 80 7C */	lfs f1, lit_4342@l(r9)
/* 80B755D8  39 20 00 00 */	li r9, 0
/* 80B755DC  39 40 FF FF */	li r10, -1
/* 80B755E0  4B 49 B1 F0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B755E4  7C 60 1B 78 */	mr r0, r3
lbl_80B755E8:
/* 80B755E8  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80B755EC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B755F0  28 03 00 00 */	cmplwi r3, 0
/* 80B755F4  41 82 00 10 */	beq lbl_80B75604
/* 80B755F8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B755FC  28 05 00 00 */	cmplwi r5, 0
/* 80B75600  40 82 00 0C */	bne lbl_80B7560C
lbl_80B75604:
/* 80B75604  38 60 00 00 */	li r3, 0
/* 80B75608  48 00 01 9C */	b lbl_80B757A4
lbl_80B7560C:
/* 80B7560C  38 C0 00 00 */	li r6, 0
/* 80B75610  3C 60 80 B7 */	lis r3, ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi@ha
/* 80B75614  38 83 5A B0 */	addi r4, r3, ctrlJointCallBack__13daNpc_Zelda_cFP8J3DJointi@l
/* 80B75618  48 00 00 18 */	b lbl_80B75630
lbl_80B7561C:
/* 80B7561C  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80B75620  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B75624  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B75628  90 83 00 04 */	stw r4, 4(r3)
/* 80B7562C  38 C6 00 01 */	addi r6, r6, 1
lbl_80B75630:
/* 80B75630  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B75634  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 80B75638  7C 03 00 40 */	cmplw r3, r0
/* 80B7563C  41 80 FF E0 */	blt lbl_80B7561C
/* 80B75640  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80B75644  3B C0 00 00 */	li r30, 0
/* 80B75648  3B 60 00 00 */	li r27, 0
lbl_80B7564C:
/* 80B7564C  38 60 01 08 */	li r3, 0x108
/* 80B75650  4B 75 95 FC */	b __nw__FUl
/* 80B75654  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B75658  41 82 00 D0 */	beq lbl_80B75728
/* 80B7565C  7F FC FB 78 */	mr r28, r31
/* 80B75660  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B75664  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B75668  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7566C  38 7F 00 04 */	addi r3, r31, 4
/* 80B75670  3C 80 80 B7 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B75674  38 84 59 60 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B75678  3C A0 80 B7 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B7567C  38 A5 59 24 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B75680  38 C0 00 08 */	li r6, 8
/* 80B75684  38 E0 00 02 */	li r7, 2
/* 80B75688  4B 7E C6 D8 */	b __construct_array
/* 80B7568C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80B75690  3C 80 80 B7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B75694  38 84 59 0C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B75698  3C A0 80 B7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B7569C  38 A5 58 D0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B756A0  38 C0 00 08 */	li r6, 8
/* 80B756A4  38 E0 00 08 */	li r7, 8
/* 80B756A8  4B 7E C6 B8 */	b __construct_array
/* 80B756AC  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B756B0  3C 80 80 B7 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B756B4  38 84 58 AC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B756B8  3C A0 80 B7 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B756BC  38 A5 58 64 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B756C0  38 C0 00 0C */	li r6, 0xc
/* 80B756C4  38 E0 00 08 */	li r7, 8
/* 80B756C8  4B 7E C6 98 */	b __construct_array
/* 80B756CC  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80B756D0  3C 80 80 B7 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B756D4  38 84 58 4C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B756D8  3C A0 80 B7 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B756DC  38 A5 58 10 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B756E0  38 C0 00 08 */	li r6, 8
/* 80B756E4  38 E0 00 04 */	li r7, 4
/* 80B756E8  4B 7E C6 78 */	b __construct_array
/* 80B756EC  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80B756F0  3C 80 80 B7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B756F4  38 84 57 F8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B756F8  3C A0 80 B7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B756FC  38 A5 57 BC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B75700  38 C0 00 08 */	li r6, 8
/* 80B75704  38 E0 00 04 */	li r7, 4
/* 80B75708  4B 7E C6 58 */	b __construct_array
/* 80B7570C  7F E3 FB 78 */	mr r3, r31
/* 80B75710  4B 7B 6C 10 */	b initialize__14J3DMaterialAnmFv
/* 80B75714  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B75718  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B7571C  90 1C 00 00 */	stw r0, 0(r28)
/* 80B75720  7F 83 E3 78 */	mr r3, r28
/* 80B75724  4B 5D 00 40 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B75728:
/* 80B75728  38 1B 09 6C */	addi r0, r27, 0x96c
/* 80B7572C  7F FD 01 2E */	stwx r31, r29, r0
/* 80B75730  7C 1D 00 2E */	lwzx r0, r29, r0
/* 80B75734  28 00 00 00 */	cmplwi r0, 0
/* 80B75738  40 82 00 0C */	bne lbl_80B75744
/* 80B7573C  38 60 00 00 */	li r3, 0
/* 80B75740  48 00 00 64 */	b lbl_80B757A4
lbl_80B75744:
/* 80B75744  3B DE 00 01 */	addi r30, r30, 1
/* 80B75748  2C 1E 00 02 */	cmpwi r30, 2
/* 80B7574C  3B 7B 00 04 */	addi r27, r27, 4
/* 80B75750  41 80 FE FC */	blt lbl_80B7564C
/* 80B75754  7F A3 EB 78 */	mr r3, r29
/* 80B75758  38 80 00 02 */	li r4, 2
/* 80B7575C  38 A0 00 00 */	li r5, 0
/* 80B75760  4B 5D 4C 28 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B75764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B75768  41 82 00 38 */	beq lbl_80B757A0
/* 80B7576C  7F A3 EB 78 */	mr r3, r29
/* 80B75770  38 80 00 00 */	li r4, 0
/* 80B75774  3C A0 80 B8 */	lis r5, lit_4190@ha
/* 80B75778  C0 25 80 70 */	lfs f1, lit_4190@l(r5)
/* 80B7577C  38 A0 00 00 */	li r5, 0
/* 80B75780  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B75784  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B75788  7D 89 03 A6 */	mtctr r12
/* 80B7578C  4E 80 04 21 */	bctrl 
/* 80B75790  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B75794  41 82 00 0C */	beq lbl_80B757A0
/* 80B75798  38 60 00 01 */	li r3, 1
/* 80B7579C  48 00 00 08 */	b lbl_80B757A4
lbl_80B757A0:
/* 80B757A0  38 60 00 00 */	li r3, 0
lbl_80B757A4:
/* 80B757A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B757A8  4B 7E CA 78 */	b _restgpr_27
/* 80B757AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B757B0  7C 08 03 A6 */	mtlr r0
/* 80B757B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B757B8  4E 80 00 20 */	blr 
