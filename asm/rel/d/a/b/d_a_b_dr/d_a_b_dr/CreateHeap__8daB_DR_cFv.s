lbl_805C56A4:
/* 805C56A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C56A8  7C 08 02 A6 */	mflr r0
/* 805C56AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C56B0  39 61 00 30 */	addi r11, r1, 0x30
/* 805C56B4  4B D9 CB 24 */	b _savegpr_28
/* 805C56B8  7C 7E 1B 78 */	mr r30, r3
/* 805C56BC  88 03 07 EA */	lbz r0, 0x7ea(r3)
/* 805C56C0  28 00 00 14 */	cmplwi r0, 0x14
/* 805C56C4  41 82 00 0C */	beq lbl_805C56D0
/* 805C56C8  28 00 00 15 */	cmplwi r0, 0x15
/* 805C56CC  40 82 00 68 */	bne lbl_805C5734
lbl_805C56D0:
/* 805C56D0  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805C56D4  38 63 72 40 */	addi r3, r3, stringBase0@l
/* 805C56D8  88 1E 07 EB */	lbz r0, 0x7eb(r30)
/* 805C56DC  54 00 10 3A */	slwi r0, r0, 2
/* 805C56E0  3C 80 80 5C */	lis r4, mPartDt@ha
/* 805C56E4  38 84 77 B4 */	addi r4, r4, mPartDt@l
/* 805C56E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 805C56EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805C56F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805C56F4  3C A5 00 02 */	addis r5, r5, 2
/* 805C56F8  38 C0 00 80 */	li r6, 0x80
/* 805C56FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805C5700  4B A7 6B EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C5704  38 80 00 00 */	li r4, 0
/* 805C5708  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 805C570C  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 805C5710  4B A4 F5 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805C5714  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 805C5718  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 805C571C  28 00 00 00 */	cmplwi r0, 0
/* 805C5720  40 82 00 0C */	bne lbl_805C572C
/* 805C5724  38 60 00 00 */	li r3, 0
/* 805C5728  48 00 01 CC */	b lbl_805C58F4
lbl_805C572C:
/* 805C572C  38 60 00 01 */	li r3, 1
/* 805C5730  48 00 01 C4 */	b lbl_805C58F4
lbl_805C5734:
/* 805C5734  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805C5738  38 63 72 40 */	addi r3, r3, stringBase0@l
/* 805C573C  38 80 00 49 */	li r4, 0x49
/* 805C5740  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805C5744  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805C5748  3F E5 00 02 */	addis r31, r5, 2
/* 805C574C  3B FF C2 F8 */	addi r31, r31, -15624
/* 805C5750  7F E5 FB 78 */	mr r5, r31
/* 805C5754  38 C0 00 80 */	li r6, 0x80
/* 805C5758  4B A7 6B 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C575C  7C 7C 1B 78 */	mr r28, r3
/* 805C5760  38 60 00 58 */	li r3, 0x58
/* 805C5764  4B D0 94 E8 */	b __nw__FUl
/* 805C5768  7C 7D 1B 79 */	or. r29, r3, r3
/* 805C576C  41 82 00 68 */	beq lbl_805C57D4
/* 805C5770  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805C5774  38 63 72 40 */	addi r3, r3, stringBase0@l
/* 805C5778  38 80 00 2F */	li r4, 0x2f
/* 805C577C  7F E5 FB 78 */	mr r5, r31
/* 805C5780  38 C0 00 80 */	li r6, 0x80
/* 805C5784  4B A7 6B 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C5788  7C 67 1B 78 */	mr r7, r3
/* 805C578C  38 1E 05 C0 */	addi r0, r30, 0x5c0
/* 805C5790  90 01 00 08 */	stw r0, 8(r1)
/* 805C5794  38 00 00 00 */	li r0, 0
/* 805C5798  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C579C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805C57A0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805C57A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C57A8  7F A3 EB 78 */	mr r3, r29
/* 805C57AC  7F 84 E3 78 */	mr r4, r28
/* 805C57B0  38 A0 00 00 */	li r5, 0
/* 805C57B4  38 C0 00 00 */	li r6, 0
/* 805C57B8  39 00 00 02 */	li r8, 2
/* 805C57BC  3D 20 80 5C */	lis r9, lit_4012@ha
/* 805C57C0  C0 29 6C A8 */	lfs f1, lit_4012@l(r9)
/* 805C57C4  39 20 00 00 */	li r9, 0
/* 805C57C8  39 40 FF FF */	li r10, -1
/* 805C57CC  4B A4 B0 04 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805C57D0  7C 7D 1B 78 */	mr r29, r3
lbl_805C57D4:
/* 805C57D4  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 805C57D8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C57DC  28 03 00 00 */	cmplwi r3, 0
/* 805C57E0  41 82 00 10 */	beq lbl_805C57F0
/* 805C57E4  80 03 00 04 */	lwz r0, 4(r3)
/* 805C57E8  28 00 00 00 */	cmplwi r0, 0
/* 805C57EC  40 82 00 0C */	bne lbl_805C57F8
lbl_805C57F0:
/* 805C57F0  38 60 00 00 */	li r3, 0
/* 805C57F4  48 00 01 00 */	b lbl_805C58F4
lbl_805C57F8:
/* 805C57F8  38 60 00 18 */	li r3, 0x18
/* 805C57FC  4B D0 94 50 */	b __nw__FUl
/* 805C5800  7C 7D 1B 79 */	or. r29, r3, r3
/* 805C5804  41 82 00 20 */	beq lbl_805C5824
/* 805C5808  3C 80 80 5C */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805C580C  38 04 78 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805C5810  90 1D 00 00 */	stw r0, 0(r29)
/* 805C5814  38 80 00 00 */	li r4, 0
/* 805C5818  4B D6 2B E4 */	b init__12J3DFrameCtrlFs
/* 805C581C  38 00 00 00 */	li r0, 0
/* 805C5820  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_805C5824:
/* 805C5824  93 BE 05 BC */	stw r29, 0x5bc(r30)
/* 805C5828  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 805C582C  28 00 00 00 */	cmplwi r0, 0
/* 805C5830  40 82 00 0C */	bne lbl_805C583C
/* 805C5834  38 60 00 00 */	li r3, 0
/* 805C5838  48 00 00 BC */	b lbl_805C58F4
lbl_805C583C:
/* 805C583C  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805C5840  38 63 72 40 */	addi r3, r3, stringBase0@l
/* 805C5844  38 80 00 51 */	li r4, 0x51
/* 805C5848  7F E5 FB 78 */	mr r5, r31
/* 805C584C  38 C0 00 80 */	li r6, 0x80
/* 805C5850  4B A7 6A 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C5854  7C 65 1B 78 */	mr r5, r3
/* 805C5858  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C585C  80 63 00 04 */	lwz r3, 4(r3)
/* 805C5860  80 83 00 04 */	lwz r4, 4(r3)
/* 805C5864  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 805C5868  38 84 00 58 */	addi r4, r4, 0x58
/* 805C586C  38 C0 00 01 */	li r6, 1
/* 805C5870  38 E0 00 02 */	li r7, 2
/* 805C5874  3D 00 80 5C */	lis r8, lit_4012@ha
/* 805C5878  C0 28 6C A8 */	lfs f1, lit_4012@l(r8)
/* 805C587C  39 00 00 00 */	li r8, 0
/* 805C5880  39 20 FF FF */	li r9, -1
/* 805C5884  4B A4 7E 88 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805C5888  2C 03 00 00 */	cmpwi r3, 0
/* 805C588C  40 82 00 0C */	bne lbl_805C5898
/* 805C5890  38 60 00 00 */	li r3, 0
/* 805C5894  48 00 00 60 */	b lbl_805C58F4
lbl_805C5898:
/* 805C5898  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805C589C  80 03 00 04 */	lwz r0, 4(r3)
/* 805C58A0  90 1E 05 24 */	stw r0, 0x524(r30)
/* 805C58A4  80 7E 05 24 */	lwz r3, 0x524(r30)
/* 805C58A8  93 C3 00 14 */	stw r30, 0x14(r3)
/* 805C58AC  38 C0 00 00 */	li r6, 0
/* 805C58B0  3C 60 80 5C */	lis r3, JointCallBack__8daB_DR_cFP8J3DJointi@ha
/* 805C58B4  38 83 B1 20 */	addi r4, r3, JointCallBack__8daB_DR_cFP8J3DJointi@l
/* 805C58B8  48 00 00 20 */	b lbl_805C58D8
lbl_805C58BC:
/* 805C58BC  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 805C58C0  41 82 00 14 */	beq lbl_805C58D4
/* 805C58C4  80 65 00 28 */	lwz r3, 0x28(r5)
/* 805C58C8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 805C58CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 805C58D0  90 83 00 04 */	stw r4, 4(r3)
lbl_805C58D4:
/* 805C58D4  38 C6 00 01 */	addi r6, r6, 1
lbl_805C58D8:
/* 805C58D8  80 7E 05 24 */	lwz r3, 0x524(r30)
/* 805C58DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 805C58E0  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 805C58E4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 805C58E8  7C 00 18 40 */	cmplw r0, r3
/* 805C58EC  41 80 FF D0 */	blt lbl_805C58BC
/* 805C58F0  38 60 00 01 */	li r3, 1
lbl_805C58F4:
/* 805C58F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805C58F8  4B D9 C9 2C */	b _restgpr_28
/* 805C58FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C5900  7C 08 03 A6 */	mtlr r0
/* 805C5904  38 21 00 30 */	addi r1, r1, 0x30
/* 805C5908  4E 80 00 20 */	blr 
