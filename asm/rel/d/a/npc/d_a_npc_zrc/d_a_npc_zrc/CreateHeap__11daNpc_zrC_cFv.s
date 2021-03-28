lbl_80B8E338:
/* 80B8E338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8E33C  7C 08 02 A6 */	mflr r0
/* 80B8E340  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B8E344  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8E348  4B 7D 3E 94 */	b _savegpr_29
/* 80B8E34C  7C 7F 1B 78 */	mr r31, r3
/* 80B8E350  3B C0 00 00 */	li r30, 0
/* 80B8E354  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80B8E358  28 00 00 00 */	cmplwi r0, 0
/* 80B8E35C  41 82 00 50 */	beq lbl_80B8E3AC
/* 80B8E360  3C 60 80 B9 */	lis r3, l_bmdGetParamList@ha
/* 80B8E364  38 63 37 08 */	addi r3, r3, l_bmdGetParamList@l
/* 80B8E368  80 83 00 08 */	lwz r4, 8(r3)
/* 80B8E36C  2C 04 00 00 */	cmpwi r4, 0
/* 80B8E370  41 80 00 34 */	blt lbl_80B8E3A4
/* 80B8E374  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B8E378  54 00 10 3A */	slwi r0, r0, 2
/* 80B8E37C  3C 60 80 B9 */	lis r3, l_resNames@ha
/* 80B8E380  38 63 39 48 */	addi r3, r3, l_resNames@l
/* 80B8E384  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B8E388  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B8E38C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B8E390  3C A5 00 02 */	addis r5, r5, 2
/* 80B8E394  38 C0 00 80 */	li r6, 0x80
/* 80B8E398  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B8E39C  4B 4A DF 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B8E3A0  7C 7E 1B 78 */	mr r30, r3
lbl_80B8E3A4:
/* 80B8E3A4  3F A0 00 08 */	lis r29, 8
/* 80B8E3A8  48 00 00 48 */	b lbl_80B8E3F0
lbl_80B8E3AC:
/* 80B8E3AC  3C 60 80 B9 */	lis r3, l_bmdGetParamList@ha
/* 80B8E3B0  84 83 37 08 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 80B8E3B4  2C 04 00 00 */	cmpwi r4, 0
/* 80B8E3B8  41 80 00 34 */	blt lbl_80B8E3EC
/* 80B8E3BC  80 03 00 04 */	lwz r0, 4(r3)
/* 80B8E3C0  54 00 10 3A */	slwi r0, r0, 2
/* 80B8E3C4  3C 60 80 B9 */	lis r3, l_resNames@ha
/* 80B8E3C8  38 63 39 48 */	addi r3, r3, l_resNames@l
/* 80B8E3CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B8E3D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B8E3D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B8E3D8  3C A5 00 02 */	addis r5, r5, 2
/* 80B8E3DC  38 C0 00 80 */	li r6, 0x80
/* 80B8E3E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B8E3E4  4B 4A DF 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B8E3E8  7C 7E 1B 78 */	mr r30, r3
lbl_80B8E3EC:
/* 80B8E3EC  3B A0 00 00 */	li r29, 0
lbl_80B8E3F0:
/* 80B8E3F0  38 60 00 58 */	li r3, 0x58
/* 80B8E3F4  4B 74 08 58 */	b __nw__FUl
/* 80B8E3F8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B8E3FC  41 82 00 48 */	beq lbl_80B8E444
/* 80B8E400  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B8E404  90 01 00 08 */	stw r0, 8(r1)
/* 80B8E408  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80B8E40C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B8E410  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B8E414  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8E418  7F C4 F3 78 */	mr r4, r30
/* 80B8E41C  38 A0 00 00 */	li r5, 0
/* 80B8E420  38 C0 00 00 */	li r6, 0
/* 80B8E424  38 E0 00 00 */	li r7, 0
/* 80B8E428  39 00 FF FF */	li r8, -1
/* 80B8E42C  3D 20 80 B9 */	lis r9, lit_4483@ha
/* 80B8E430  C0 29 32 94 */	lfs f1, lit_4483@l(r9)
/* 80B8E434  39 20 00 00 */	li r9, 0
/* 80B8E438  39 40 FF FF */	li r10, -1
/* 80B8E43C  4B 48 23 94 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B8E440  7C 60 1B 78 */	mr r0, r3
lbl_80B8E444:
/* 80B8E444  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B8E448  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8E44C  28 03 00 00 */	cmplwi r3, 0
/* 80B8E450  41 82 00 1C */	beq lbl_80B8E46C
/* 80B8E454  80 03 00 04 */	lwz r0, 4(r3)
/* 80B8E458  28 00 00 00 */	cmplwi r0, 0
/* 80B8E45C  40 82 00 10 */	bne lbl_80B8E46C
/* 80B8E460  4B 48 2E B0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B8E464  38 00 00 00 */	li r0, 0
/* 80B8E468  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B8E46C:
/* 80B8E46C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8E470  28 03 00 00 */	cmplwi r3, 0
/* 80B8E474  40 82 00 0C */	bne lbl_80B8E480
/* 80B8E478  38 60 00 00 */	li r3, 0
/* 80B8E47C  48 00 01 E0 */	b lbl_80B8E65C
lbl_80B8E480:
/* 80B8E480  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B8E484  38 C0 00 00 */	li r6, 0
/* 80B8E488  3C 60 80 B9 */	lis r3, ctrlJointCallBack__11daNpc_zrC_cFP8J3DJointi@ha
/* 80B8E48C  38 83 EB 68 */	addi r4, r3, ctrlJointCallBack__11daNpc_zrC_cFP8J3DJointi@l
/* 80B8E490  48 00 00 18 */	b lbl_80B8E4A8
lbl_80B8E494:
/* 80B8E494  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B8E498  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B8E49C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B8E4A0  90 83 00 04 */	stw r4, 4(r3)
/* 80B8E4A4  38 C6 00 01 */	addi r6, r6, 1
lbl_80B8E4A8:
/* 80B8E4A8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B8E4AC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B8E4B0  7C 03 00 40 */	cmplw r3, r0
/* 80B8E4B4  41 80 FF E0 */	blt lbl_80B8E494
/* 80B8E4B8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B8E4BC  38 60 01 08 */	li r3, 0x108
/* 80B8E4C0  4B 74 07 8C */	b __nw__FUl
/* 80B8E4C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B8E4C8  41 82 00 D0 */	beq lbl_80B8E598
/* 80B8E4CC  7F DD F3 78 */	mr r29, r30
/* 80B8E4D0  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B8E4D4  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B8E4D8  90 1E 00 00 */	stw r0, 0(r30)
/* 80B8E4DC  38 7E 00 04 */	addi r3, r30, 4
/* 80B8E4E0  3C 80 80 B9 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B8E4E4  38 84 E8 18 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B8E4E8  3C A0 80 B9 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B8E4EC  38 A5 E7 DC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B8E4F0  38 C0 00 08 */	li r6, 8
/* 80B8E4F4  38 E0 00 02 */	li r7, 2
/* 80B8E4F8  4B 7D 38 68 */	b __construct_array
/* 80B8E4FC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B8E500  3C 80 80 B9 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B8E504  38 84 E7 C4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B8E508  3C A0 80 B9 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B8E50C  38 A5 E7 88 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B8E510  38 C0 00 08 */	li r6, 8
/* 80B8E514  38 E0 00 08 */	li r7, 8
/* 80B8E518  4B 7D 38 48 */	b __construct_array
/* 80B8E51C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B8E520  3C 80 80 B9 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B8E524  38 84 E7 64 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B8E528  3C A0 80 B9 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B8E52C  38 A5 E7 1C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B8E530  38 C0 00 0C */	li r6, 0xc
/* 80B8E534  38 E0 00 08 */	li r7, 8
/* 80B8E538  4B 7D 38 28 */	b __construct_array
/* 80B8E53C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B8E540  3C 80 80 B9 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B8E544  38 84 E7 04 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B8E548  3C A0 80 B9 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B8E54C  38 A5 E6 C8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B8E550  38 C0 00 08 */	li r6, 8
/* 80B8E554  38 E0 00 04 */	li r7, 4
/* 80B8E558  4B 7D 38 08 */	b __construct_array
/* 80B8E55C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B8E560  3C 80 80 B9 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B8E564  38 84 E6 B0 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B8E568  3C A0 80 B9 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B8E56C  38 A5 E6 74 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B8E570  38 C0 00 08 */	li r6, 8
/* 80B8E574  38 E0 00 04 */	li r7, 4
/* 80B8E578  4B 7D 37 E8 */	b __construct_array
/* 80B8E57C  7F C3 F3 78 */	mr r3, r30
/* 80B8E580  4B 79 DD A0 */	b initialize__14J3DMaterialAnmFv
/* 80B8E584  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80B8E588  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80B8E58C  90 1D 00 00 */	stw r0, 0(r29)
/* 80B8E590  7F A3 EB 78 */	mr r3, r29
/* 80B8E594  4B 5C 21 A4 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80B8E598:
/* 80B8E598  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80B8E59C  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80B8E5A0  28 00 00 00 */	cmplwi r0, 0
/* 80B8E5A4  40 82 00 0C */	bne lbl_80B8E5B0
/* 80B8E5A8  38 60 00 00 */	li r3, 0
/* 80B8E5AC  48 00 00 B0 */	b lbl_80B8E65C
lbl_80B8E5B0:
/* 80B8E5B0  88 1F 0E 28 */	lbz r0, 0xe28(r31)
/* 80B8E5B4  28 00 00 01 */	cmplwi r0, 1
/* 80B8E5B8  40 82 00 54 */	bne lbl_80B8E60C
/* 80B8E5BC  7F E3 FB 78 */	mr r3, r31
/* 80B8E5C0  38 80 00 11 */	li r4, 0x11
/* 80B8E5C4  38 A0 00 00 */	li r5, 0
/* 80B8E5C8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8E5CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B8E5D0  7D 89 03 A6 */	mtctr r12
/* 80B8E5D4  4E 80 04 21 */	bctrl 
/* 80B8E5D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B8E5DC  40 82 00 0C */	bne lbl_80B8E5E8
/* 80B8E5E0  38 60 00 00 */	li r3, 0
/* 80B8E5E4  48 00 00 78 */	b lbl_80B8E65C
lbl_80B8E5E8:
/* 80B8E5E8  7F E3 FB 78 */	mr r3, r31
/* 80B8E5EC  38 80 00 1F */	li r4, 0x1f
/* 80B8E5F0  3C A0 80 B9 */	lis r5, lit_4484@ha
/* 80B8E5F4  C0 25 32 98 */	lfs f1, lit_4484@l(r5)
/* 80B8E5F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8E5FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B8E600  7D 89 03 A6 */	mtctr r12
/* 80B8E604  4E 80 04 21 */	bctrl 
/* 80B8E608  48 00 00 50 */	b lbl_80B8E658
lbl_80B8E60C:
/* 80B8E60C  7F E3 FB 78 */	mr r3, r31
/* 80B8E610  38 80 00 02 */	li r4, 2
/* 80B8E614  38 A0 00 00 */	li r5, 0
/* 80B8E618  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8E61C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B8E620  7D 89 03 A6 */	mtctr r12
/* 80B8E624  4E 80 04 21 */	bctrl 
/* 80B8E628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B8E62C  40 82 00 0C */	bne lbl_80B8E638
/* 80B8E630  38 60 00 00 */	li r3, 0
/* 80B8E634  48 00 00 28 */	b lbl_80B8E65C
lbl_80B8E638:
/* 80B8E638  7F E3 FB 78 */	mr r3, r31
/* 80B8E63C  38 80 00 12 */	li r4, 0x12
/* 80B8E640  3C A0 80 B9 */	lis r5, lit_4484@ha
/* 80B8E644  C0 25 32 98 */	lfs f1, lit_4484@l(r5)
/* 80B8E648  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B8E64C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B8E650  7D 89 03 A6 */	mtctr r12
/* 80B8E654  4E 80 04 21 */	bctrl 
lbl_80B8E658:
/* 80B8E658  38 60 00 01 */	li r3, 1
lbl_80B8E65C:
/* 80B8E65C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8E660  4B 7D 3B C8 */	b _restgpr_29
/* 80B8E664  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B8E668  7C 08 03 A6 */	mtlr r0
/* 80B8E66C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B8E670  4E 80 00 20 */	blr 
