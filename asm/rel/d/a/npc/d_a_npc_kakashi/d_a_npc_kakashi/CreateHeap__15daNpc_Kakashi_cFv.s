lbl_8054B7D8:
/* 8054B7D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B7DC  7C 08 02 A6 */	mflr r0
/* 8054B7E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B7E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054B7E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8054B7EC  7C 7F 1B 78 */	mr r31, r3
/* 8054B7F0  3C 60 80 55 */	lis r3, l_bmdData@ha /* 0x8054EDBC@ha */
/* 8054B7F4  38 83 ED BC */	addi r4, r3, l_bmdData@l /* 0x8054EDBC@l */
/* 8054B7F8  80 04 00 04 */	lwz r0, 4(r4)
/* 8054B7FC  54 00 10 3A */	slwi r0, r0, 2
/* 8054B800  3C 60 80 55 */	lis r3, l_resNameList@ha /* 0x8054EE7C@ha */
/* 8054B804  38 63 EE 7C */	addi r3, r3, l_resNameList@l /* 0x8054EE7C@l */
/* 8054B808  7C 63 00 2E */	lwzx r3, r3, r0
/* 8054B80C  80 84 00 00 */	lwz r4, 0(r4)
/* 8054B810  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054B814  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054B818  3C A5 00 02 */	addis r5, r5, 2
/* 8054B81C  38 C0 00 80 */	li r6, 0x80
/* 8054B820  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8054B824  4B AF 0A C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8054B828  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054B82C  40 82 00 0C */	bne lbl_8054B838
/* 8054B830  38 60 00 00 */	li r3, 0
/* 8054B834  48 00 00 BC */	b lbl_8054B8F0
lbl_8054B838:
/* 8054B838  38 60 00 58 */	li r3, 0x58
/* 8054B83C  4B D8 34 11 */	bl __nw__FUl
/* 8054B840  7C 60 1B 79 */	or. r0, r3, r3
/* 8054B844  41 82 00 4C */	beq lbl_8054B890
/* 8054B848  38 00 00 00 */	li r0, 0
/* 8054B84C  90 01 00 08 */	stw r0, 8(r1)
/* 8054B850  3C 00 00 08 */	lis r0, 8
/* 8054B854  90 01 00 0C */	stw r0, 0xc(r1)
/* 8054B858  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8054B85C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8054B860  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054B864  7F C4 F3 78 */	mr r4, r30
/* 8054B868  38 A0 00 00 */	li r5, 0
/* 8054B86C  38 C0 00 00 */	li r6, 0
/* 8054B870  38 E0 00 00 */	li r7, 0
/* 8054B874  39 00 FF FF */	li r8, -1
/* 8054B878  3D 20 80 55 */	lis r9, lit_4400@ha /* 0x8054EB7C@ha */
/* 8054B87C  C0 29 EB 7C */	lfs f1, lit_4400@l(r9)  /* 0x8054EB7C@l */
/* 8054B880  39 20 00 00 */	li r9, 0
/* 8054B884  39 40 FF FF */	li r10, -1
/* 8054B888  4B AC 4F 49 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8054B88C  7C 60 1B 78 */	mr r0, r3
lbl_8054B890:
/* 8054B890  90 1F 05 78 */	stw r0, 0x578(r31)
/* 8054B894  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8054B898  28 03 00 00 */	cmplwi r3, 0
/* 8054B89C  41 82 00 10 */	beq lbl_8054B8AC
/* 8054B8A0  80 A3 00 04 */	lwz r5, 4(r3)
/* 8054B8A4  28 05 00 00 */	cmplwi r5, 0
/* 8054B8A8  40 82 00 0C */	bne lbl_8054B8B4
lbl_8054B8AC:
/* 8054B8AC  38 60 00 00 */	li r3, 0
/* 8054B8B0  48 00 00 40 */	b lbl_8054B8F0
lbl_8054B8B4:
/* 8054B8B4  38 C0 00 00 */	li r6, 0
/* 8054B8B8  3C 60 80 55 */	lis r3, ctrlJointCallBack__15daNpc_Kakashi_cFP8J3DJointi@ha /* 0x8054BB54@ha */
/* 8054B8BC  38 83 BB 54 */	addi r4, r3, ctrlJointCallBack__15daNpc_Kakashi_cFP8J3DJointi@l /* 0x8054BB54@l */
/* 8054B8C0  48 00 00 18 */	b lbl_8054B8D8
lbl_8054B8C4:
/* 8054B8C4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8054B8C8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8054B8CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8054B8D0  90 83 00 04 */	stw r4, 4(r3)
/* 8054B8D4  38 C6 00 01 */	addi r6, r6, 1
lbl_8054B8D8:
/* 8054B8D8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8054B8DC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8054B8E0  7C 03 00 40 */	cmplw r3, r0
/* 8054B8E4  41 80 FF E0 */	blt lbl_8054B8C4
/* 8054B8E8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8054B8EC  38 60 00 01 */	li r3, 1
lbl_8054B8F0:
/* 8054B8F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054B8F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8054B8F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B8FC  7C 08 03 A6 */	mtlr r0
/* 8054B900  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B904  4E 80 00 20 */	blr 
