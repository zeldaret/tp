lbl_80B4D754:
/* 80B4D754  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4D758  7C 08 02 A6 */	mflr r0
/* 80B4D75C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4D760  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4D764  4B 81 4A 78 */	b _savegpr_29
/* 80B4D768  7C 7E 1B 78 */	mr r30, r3
/* 80B4D76C  38 60 00 01 */	li r3, 1
/* 80B4D770  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4D774  28 00 00 00 */	cmplwi r0, 0
/* 80B4D778  41 82 00 0C */	beq lbl_80B4D784
/* 80B4D77C  38 60 00 02 */	li r3, 2
/* 80B4D780  48 00 00 24 */	b lbl_80B4D7A4
lbl_80B4D784:
/* 80B4D784  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B4D788  28 00 00 00 */	cmplwi r0, 0
/* 80B4D78C  41 82 00 14 */	beq lbl_80B4D7A0
/* 80B4D790  28 00 00 02 */	cmplwi r0, 2
/* 80B4D794  41 82 00 0C */	beq lbl_80B4D7A0
/* 80B4D798  28 00 00 08 */	cmplwi r0, 8
/* 80B4D79C  40 82 00 08 */	bne lbl_80B4D7A4
lbl_80B4D7A0:
/* 80B4D7A0  38 60 00 00 */	li r3, 0
lbl_80B4D7A4:
/* 80B4D7A4  54 65 18 38 */	slwi r5, r3, 3
/* 80B4D7A8  3C 60 80 B5 */	lis r3, l_bmdData@ha
/* 80B4D7AC  38 83 24 FC */	addi r4, r3, l_bmdData@l
/* 80B4D7B0  7C 64 2A 14 */	add r3, r4, r5
/* 80B4D7B4  80 03 00 04 */	lwz r0, 4(r3)
/* 80B4D7B8  54 00 10 3A */	slwi r0, r0, 2
/* 80B4D7BC  3C 60 80 B5 */	lis r3, l_resNameList@ha
/* 80B4D7C0  38 63 25 44 */	addi r3, r3, l_resNameList@l
/* 80B4D7C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B4D7C8  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B4D7CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B4D7D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B4D7D4  3C A5 00 02 */	addis r5, r5, 2
/* 80B4D7D8  38 C0 00 80 */	li r6, 0x80
/* 80B4D7DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B4D7E0  4B 4E EB 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B4D7E4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B4D7E8  40 82 00 0C */	bne lbl_80B4D7F4
/* 80B4D7EC  38 60 00 00 */	li r3, 0
/* 80B4D7F0  48 00 02 5C */	b lbl_80B4DA4C
lbl_80B4D7F4:
/* 80B4D7F4  38 60 00 58 */	li r3, 0x58
/* 80B4D7F8  4B 78 14 54 */	b __nw__FUl
/* 80B4D7FC  7C 60 1B 79 */	or. r0, r3, r3
/* 80B4D800  41 82 00 4C */	beq lbl_80B4D84C
/* 80B4D804  38 1E 05 80 */	addi r0, r30, 0x580
/* 80B4D808  90 01 00 08 */	stw r0, 8(r1)
/* 80B4D80C  3C 00 00 08 */	lis r0, 8
/* 80B4D810  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4D814  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B4D818  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B4D81C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4D820  7F A4 EB 78 */	mr r4, r29
/* 80B4D824  38 A0 00 00 */	li r5, 0
/* 80B4D828  38 C0 00 00 */	li r6, 0
/* 80B4D82C  38 E0 00 00 */	li r7, 0
/* 80B4D830  39 00 FF FF */	li r8, -1
/* 80B4D834  3D 20 80 B5 */	lis r9, lit_4489@ha
/* 80B4D838  C0 29 23 88 */	lfs f1, lit_4489@l(r9)
/* 80B4D83C  39 20 00 00 */	li r9, 0
/* 80B4D840  39 40 FF FF */	li r10, -1
/* 80B4D844  4B 4C 2F 8C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B4D848  7C 60 1B 78 */	mr r0, r3
lbl_80B4D84C:
/* 80B4D84C  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80B4D850  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4D854  28 03 00 00 */	cmplwi r3, 0
/* 80B4D858  41 82 00 10 */	beq lbl_80B4D868
/* 80B4D85C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B4D860  28 05 00 00 */	cmplwi r5, 0
/* 80B4D864  40 82 00 0C */	bne lbl_80B4D870
lbl_80B4D868:
/* 80B4D868  38 60 00 00 */	li r3, 0
/* 80B4D86C  48 00 01 E0 */	b lbl_80B4DA4C
lbl_80B4D870:
/* 80B4D870  38 C0 00 00 */	li r6, 0
/* 80B4D874  3C 60 80 B5 */	lis r3, ctrlJointCallBack__13daNpc_Yelia_cFP8J3DJointi@ha
/* 80B4D878  38 83 DD 28 */	addi r4, r3, ctrlJointCallBack__13daNpc_Yelia_cFP8J3DJointi@l
/* 80B4D87C  48 00 00 18 */	b lbl_80B4D894
lbl_80B4D880:
/* 80B4D880  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B4D884  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B4D888  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B4D88C  90 83 00 04 */	stw r4, 4(r3)
/* 80B4D890  38 C6 00 01 */	addi r6, r6, 1
lbl_80B4D894:
/* 80B4D894  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B4D898  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80B4D89C  7C 03 00 40 */	cmplw r3, r0
/* 80B4D8A0  41 80 FF E0 */	blt lbl_80B4D880
/* 80B4D8A4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80B4D8A8  38 60 01 08 */	li r3, 0x108
/* 80B4D8AC  4B 78 13 A0 */	b __nw__FUl
/* 80B4D8B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4D8B4  41 82 00 D0 */	beq lbl_80B4D984
/* 80B4D8B8  7F FD FB 78 */	mr r29, r31
/* 80B4D8BC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B4D8C0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B4D8C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B4D8C8  38 7F 00 04 */	addi r3, r31, 4
/* 80B4D8CC  3C 80 80 B5 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B4D8D0  38 84 DC 08 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B4D8D4  3C A0 80 B5 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B4D8D8  38 A5 DB CC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B4D8DC  38 C0 00 08 */	li r6, 8
/* 80B4D8E0  38 E0 00 02 */	li r7, 2
/* 80B4D8E4  4B 81 44 7C */	b __construct_array
/* 80B4D8E8  38 7F 00 14 */	addi r3, r31, 0x14
/* 80B4D8EC  3C 80 80 B5 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B4D8F0  38 84 DB B4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B4D8F4  3C A0 80 B5 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B4D8F8  38 A5 DB 78 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B4D8FC  38 C0 00 08 */	li r6, 8
/* 80B4D900  38 E0 00 08 */	li r7, 8
/* 80B4D904  4B 81 44 5C */	b __construct_array
/* 80B4D908  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B4D90C  3C 80 80 B5 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B4D910  38 84 DB 54 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B4D914  3C A0 80 B5 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B4D918  38 A5 DB 0C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B4D91C  38 C0 00 0C */	li r6, 0xc
/* 80B4D920  38 E0 00 08 */	li r7, 8
/* 80B4D924  4B 81 44 3C */	b __construct_array
/* 80B4D928  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80B4D92C  3C 80 80 B5 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B4D930  38 84 DA F4 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B4D934  3C A0 80 B5 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B4D938  38 A5 DA B8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B4D93C  38 C0 00 08 */	li r6, 8
/* 80B4D940  38 E0 00 04 */	li r7, 4
/* 80B4D944  4B 81 44 1C */	b __construct_array
/* 80B4D948  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80B4D94C  3C 80 80 B5 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B4D950  38 84 DA A0 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B4D954  3C A0 80 B5 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B4D958  38 A5 DA 64 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B4D95C  38 C0 00 08 */	li r6, 8
/* 80B4D960  38 E0 00 04 */	li r7, 4
/* 80B4D964  4B 81 43 FC */	b __construct_array
/* 80B4D968  7F E3 FB 78 */	mr r3, r31
/* 80B4D96C  4B 7D E9 B4 */	b initialize__14J3DMaterialAnmFv
/* 80B4D970  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B4D974  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B4D978  90 1D 00 00 */	stw r0, 0(r29)
/* 80B4D97C  7F A3 EB 78 */	mr r3, r29
/* 80B4D980  4B 5F 7D E4 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B4D984:
/* 80B4D984  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80B4D988  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B4D98C  28 00 00 00 */	cmplwi r0, 0
/* 80B4D990  40 82 00 0C */	bne lbl_80B4D99C
/* 80B4D994  38 60 00 00 */	li r3, 0
/* 80B4D998  48 00 00 B4 */	b lbl_80B4DA4C
lbl_80B4D99C:
/* 80B4D99C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4D9A0  28 00 00 00 */	cmplwi r0, 0
/* 80B4D9A4  41 82 00 58 */	beq lbl_80B4D9FC
/* 80B4D9A8  7F C3 F3 78 */	mr r3, r30
/* 80B4D9AC  38 80 00 01 */	li r4, 1
/* 80B4D9B0  38 A0 00 00 */	li r5, 0
/* 80B4D9B4  4B 5F C9 D4 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B4D9B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4D9BC  41 82 00 38 */	beq lbl_80B4D9F4
/* 80B4D9C0  7F C3 F3 78 */	mr r3, r30
/* 80B4D9C4  38 80 00 00 */	li r4, 0
/* 80B4D9C8  3C A0 80 B5 */	lis r5, lit_4330@ha
/* 80B4D9CC  C0 25 23 7C */	lfs f1, lit_4330@l(r5)
/* 80B4D9D0  38 A0 00 00 */	li r5, 0
/* 80B4D9D4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4D9D8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B4D9DC  7D 89 03 A6 */	mtctr r12
/* 80B4D9E0  4E 80 04 21 */	bctrl 
/* 80B4D9E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4D9E8  41 82 00 0C */	beq lbl_80B4D9F4
/* 80B4D9EC  38 60 00 01 */	li r3, 1
/* 80B4D9F0  48 00 00 5C */	b lbl_80B4DA4C
lbl_80B4D9F4:
/* 80B4D9F4  38 60 00 00 */	li r3, 0
/* 80B4D9F8  48 00 00 54 */	b lbl_80B4DA4C
lbl_80B4D9FC:
/* 80B4D9FC  7F C3 F3 78 */	mr r3, r30
/* 80B4DA00  38 80 00 01 */	li r4, 1
/* 80B4DA04  38 A0 00 00 */	li r5, 0
/* 80B4DA08  4B 5F C9 80 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B4DA0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4DA10  41 82 00 38 */	beq lbl_80B4DA48
/* 80B4DA14  7F C3 F3 78 */	mr r3, r30
/* 80B4DA18  38 80 00 00 */	li r4, 0
/* 80B4DA1C  3C A0 80 B5 */	lis r5, lit_4330@ha
/* 80B4DA20  C0 25 23 7C */	lfs f1, lit_4330@l(r5)
/* 80B4DA24  38 A0 00 00 */	li r5, 0
/* 80B4DA28  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4DA2C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B4DA30  7D 89 03 A6 */	mtctr r12
/* 80B4DA34  4E 80 04 21 */	bctrl 
/* 80B4DA38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B4DA3C  41 82 00 0C */	beq lbl_80B4DA48
/* 80B4DA40  38 60 00 01 */	li r3, 1
/* 80B4DA44  48 00 00 08 */	b lbl_80B4DA4C
lbl_80B4DA48:
/* 80B4DA48  38 60 00 00 */	li r3, 0
lbl_80B4DA4C:
/* 80B4DA4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4DA50  4B 81 47 D8 */	b _restgpr_29
/* 80B4DA54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4DA58  7C 08 03 A6 */	mtlr r0
/* 80B4DA5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4DA60  4E 80 00 20 */	blr 
