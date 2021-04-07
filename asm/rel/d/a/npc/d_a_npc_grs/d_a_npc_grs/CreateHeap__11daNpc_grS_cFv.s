lbl_809E47B4:
/* 809E47B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E47B8  7C 08 02 A6 */	mflr r0
/* 809E47BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E47C0  39 61 00 30 */	addi r11, r1, 0x30
/* 809E47C4  4B 97 DA 19 */	bl _savegpr_29
/* 809E47C8  7C 7F 1B 78 */	mr r31, r3
/* 809E47CC  3B C0 00 00 */	li r30, 0
/* 809E47D0  3C 60 80 9E */	lis r3, l_bmdGetParamList@ha /* 0x809E7FE4@ha */
/* 809E47D4  84 83 7F E4 */	lwzu r4, l_bmdGetParamList@l(r3)  /* 0x809E7FE4@l */
/* 809E47D8  2C 04 00 00 */	cmpwi r4, 0
/* 809E47DC  41 80 00 34 */	blt lbl_809E4810
/* 809E47E0  80 03 00 04 */	lwz r0, 4(r3)
/* 809E47E4  54 00 10 3A */	slwi r0, r0, 2
/* 809E47E8  3C 60 80 9F */	lis r3, l_resNames@ha /* 0x809E8084@ha */
/* 809E47EC  38 63 80 84 */	addi r3, r3, l_resNames@l /* 0x809E8084@l */
/* 809E47F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E47F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E47F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E47FC  3C A5 00 02 */	addis r5, r5, 2
/* 809E4800  38 C0 00 80 */	li r6, 0x80
/* 809E4804  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809E4808  4B 65 7A E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809E480C  7C 7E 1B 78 */	mr r30, r3
lbl_809E4810:
/* 809E4810  38 60 00 58 */	li r3, 0x58
/* 809E4814  4B 8E A4 39 */	bl __nw__FUl
/* 809E4818  7C 60 1B 79 */	or. r0, r3, r3
/* 809E481C  41 82 00 4C */	beq lbl_809E4868
/* 809E4820  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809E4824  90 01 00 08 */	stw r0, 8(r1)
/* 809E4828  3C 00 00 08 */	lis r0, 8
/* 809E482C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E4830  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809E4834  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809E4838  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E483C  7F C4 F3 78 */	mr r4, r30
/* 809E4840  38 A0 00 00 */	li r5, 0
/* 809E4844  38 C0 00 00 */	li r6, 0
/* 809E4848  38 E0 00 00 */	li r7, 0
/* 809E484C  39 00 FF FF */	li r8, -1
/* 809E4850  3D 20 80 9E */	lis r9, lit_4490@ha /* 0x809E7E48@ha */
/* 809E4854  C0 29 7E 48 */	lfs f1, lit_4490@l(r9)  /* 0x809E7E48@l */
/* 809E4858  39 20 00 00 */	li r9, 0
/* 809E485C  39 40 FF FF */	li r10, -1
/* 809E4860  4B 62 BF 71 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809E4864  7C 60 1B 78 */	mr r0, r3
lbl_809E4868:
/* 809E4868  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809E486C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4870  28 03 00 00 */	cmplwi r3, 0
/* 809E4874  41 82 00 1C */	beq lbl_809E4890
/* 809E4878  80 03 00 04 */	lwz r0, 4(r3)
/* 809E487C  28 00 00 00 */	cmplwi r0, 0
/* 809E4880  40 82 00 10 */	bne lbl_809E4890
/* 809E4884  4B 62 CA 8D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809E4888  38 00 00 00 */	li r0, 0
/* 809E488C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809E4890:
/* 809E4890  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809E4894  28 03 00 00 */	cmplwi r3, 0
/* 809E4898  40 82 00 0C */	bne lbl_809E48A4
/* 809E489C  38 60 00 00 */	li r3, 0
/* 809E48A0  48 00 01 E4 */	b lbl_809E4A84
lbl_809E48A4:
/* 809E48A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E48A8  38 C0 00 00 */	li r6, 0
/* 809E48AC  3C 60 80 9E */	lis r3, ctrlJointCallBack__11daNpc_grS_cFP8J3DJointi@ha /* 0x809E4F90@ha */
/* 809E48B0  38 83 4F 90 */	addi r4, r3, ctrlJointCallBack__11daNpc_grS_cFP8J3DJointi@l /* 0x809E4F90@l */
/* 809E48B4  48 00 00 18 */	b lbl_809E48CC
lbl_809E48B8:
/* 809E48B8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809E48BC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809E48C0  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E48C4  90 83 00 04 */	stw r4, 4(r3)
/* 809E48C8  38 C6 00 01 */	addi r6, r6, 1
lbl_809E48CC:
/* 809E48CC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809E48D0  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809E48D4  7C 03 00 40 */	cmplw r3, r0
/* 809E48D8  41 80 FF E0 */	blt lbl_809E48B8
/* 809E48DC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809E48E0  38 60 01 08 */	li r3, 0x108
/* 809E48E4  4B 8E A3 69 */	bl __nw__FUl
/* 809E48E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E48EC  41 82 00 D0 */	beq lbl_809E49BC
/* 809E48F0  7F DD F3 78 */	mr r29, r30
/* 809E48F4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 809E48F8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 809E48FC  90 1E 00 00 */	stw r0, 0(r30)
/* 809E4900  38 7E 00 04 */	addi r3, r30, 4
/* 809E4904  3C 80 80 9E */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809E4C40@ha */
/* 809E4908  38 84 4C 40 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809E4C40@l */
/* 809E490C  3C A0 80 9E */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x809E4C04@ha */
/* 809E4910  38 A5 4C 04 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x809E4C04@l */
/* 809E4914  38 C0 00 08 */	li r6, 8
/* 809E4918  38 E0 00 02 */	li r7, 2
/* 809E491C  4B 97 D4 45 */	bl __construct_array
/* 809E4920  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E4924  3C 80 80 9E */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x809E4BEC@ha */
/* 809E4928  38 84 4B EC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x809E4BEC@l */
/* 809E492C  3C A0 80 9E */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x809E4BB0@ha */
/* 809E4930  38 A5 4B B0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x809E4BB0@l */
/* 809E4934  38 C0 00 08 */	li r6, 8
/* 809E4938  38 E0 00 08 */	li r7, 8
/* 809E493C  4B 97 D4 25 */	bl __construct_array
/* 809E4940  38 7E 00 54 */	addi r3, r30, 0x54
/* 809E4944  3C 80 80 9E */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x809E4B8C@ha */
/* 809E4948  38 84 4B 8C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x809E4B8C@l */
/* 809E494C  3C A0 80 9E */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x809E4B44@ha */
/* 809E4950  38 A5 4B 44 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x809E4B44@l */
/* 809E4954  38 C0 00 0C */	li r6, 0xc
/* 809E4958  38 E0 00 08 */	li r7, 8
/* 809E495C  4B 97 D4 05 */	bl __construct_array
/* 809E4960  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809E4964  3C 80 80 9E */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x809E4B2C@ha */
/* 809E4968  38 84 4B 2C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x809E4B2C@l */
/* 809E496C  3C A0 80 9E */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x809E4AF0@ha */
/* 809E4970  38 A5 4A F0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x809E4AF0@l */
/* 809E4974  38 C0 00 08 */	li r6, 8
/* 809E4978  38 E0 00 04 */	li r7, 4
/* 809E497C  4B 97 D3 E5 */	bl __construct_array
/* 809E4980  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809E4984  3C 80 80 9E */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x809E4AD8@ha */
/* 809E4988  38 84 4A D8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x809E4AD8@l */
/* 809E498C  3C A0 80 9E */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x809E4A9C@ha */
/* 809E4990  38 A5 4A 9C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x809E4A9C@l */
/* 809E4994  38 C0 00 08 */	li r6, 8
/* 809E4998  38 E0 00 04 */	li r7, 4
/* 809E499C  4B 97 D3 C5 */	bl __construct_array
/* 809E49A0  7F C3 F3 78 */	mr r3, r30
/* 809E49A4  4B 94 79 7D */	bl initialize__14J3DMaterialAnmFv
/* 809E49A8  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 809E49AC  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 809E49B0  90 1D 00 00 */	stw r0, 0(r29)
/* 809E49B4  7F A3 EB 78 */	mr r3, r29
/* 809E49B8  4B 76 BD 81 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_809E49BC:
/* 809E49BC  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 809E49C0  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809E49C4  28 00 00 00 */	cmplwi r0, 0
/* 809E49C8  40 82 00 0C */	bne lbl_809E49D4
/* 809E49CC  38 60 00 00 */	li r3, 0
/* 809E49D0  48 00 00 B4 */	b lbl_809E4A84
lbl_809E49D4:
/* 809E49D4  3C 60 80 9E */	lis r3, l_bmdGetParamList@ha /* 0x809E7FE4@ha */
/* 809E49D8  38 83 7F E4 */	addi r4, r3, l_bmdGetParamList@l /* 0x809E7FE4@l */
/* 809E49DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809E49E0  54 00 10 3A */	slwi r0, r0, 2
/* 809E49E4  3C 60 80 9F */	lis r3, l_resNames@ha /* 0x809E8084@ha */
/* 809E49E8  38 63 80 84 */	addi r3, r3, l_resNames@l /* 0x809E8084@l */
/* 809E49EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809E49F0  80 84 00 08 */	lwz r4, 8(r4)
/* 809E49F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E49F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E49FC  3C A5 00 02 */	addis r5, r5, 2
/* 809E4A00  38 C0 00 80 */	li r6, 0x80
/* 809E4A04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809E4A08  4B 65 78 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809E4A0C  28 03 00 00 */	cmplwi r3, 0
/* 809E4A10  41 82 00 1C */	beq lbl_809E4A2C
/* 809E4A14  3C 80 00 08 */	lis r4, 8
/* 809E4A18  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809E4A1C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809E4A20  4B 63 02 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809E4A24  90 7F 0B DC */	stw r3, 0xbdc(r31)
/* 809E4A28  48 00 00 0C */	b lbl_809E4A34
lbl_809E4A2C:
/* 809E4A2C  38 00 00 00 */	li r0, 0
/* 809E4A30  90 1F 0B DC */	stw r0, 0xbdc(r31)
lbl_809E4A34:
/* 809E4A34  7F E3 FB 78 */	mr r3, r31
/* 809E4A38  38 80 00 01 */	li r4, 1
/* 809E4A3C  38 A0 00 00 */	li r5, 0
/* 809E4A40  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E4A44  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809E4A48  7D 89 03 A6 */	mtctr r12
/* 809E4A4C  4E 80 04 21 */	bctrl 
/* 809E4A50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809E4A54  40 82 00 0C */	bne lbl_809E4A60
/* 809E4A58  38 60 00 00 */	li r3, 0
/* 809E4A5C  48 00 00 28 */	b lbl_809E4A84
lbl_809E4A60:
/* 809E4A60  7F E3 FB 78 */	mr r3, r31
/* 809E4A64  38 80 00 04 */	li r4, 4
/* 809E4A68  3C A0 80 9E */	lis r5, lit_4491@ha /* 0x809E7E4C@ha */
/* 809E4A6C  C0 25 7E 4C */	lfs f1, lit_4491@l(r5)  /* 0x809E7E4C@l */
/* 809E4A70  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E4A74  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809E4A78  7D 89 03 A6 */	mtctr r12
/* 809E4A7C  4E 80 04 21 */	bctrl 
/* 809E4A80  38 60 00 01 */	li r3, 1
lbl_809E4A84:
/* 809E4A84  39 61 00 30 */	addi r11, r1, 0x30
/* 809E4A88  4B 97 D7 A1 */	bl _restgpr_29
/* 809E4A8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E4A90  7C 08 03 A6 */	mtlr r0
/* 809E4A94  38 21 00 30 */	addi r1, r1, 0x30
/* 809E4A98  4E 80 00 20 */	blr 
