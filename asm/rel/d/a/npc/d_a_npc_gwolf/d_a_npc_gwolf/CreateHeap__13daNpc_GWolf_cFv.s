lbl_809F37C0:
/* 809F37C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F37C4  7C 08 02 A6 */	mflr r0
/* 809F37C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F37CC  39 61 00 30 */	addi r11, r1, 0x30
/* 809F37D0  4B 96 EA 0C */	b _savegpr_29
/* 809F37D4  7C 7F 1B 78 */	mr r31, r3
/* 809F37D8  3B C0 00 00 */	li r30, 0
/* 809F37DC  3C 60 80 A0 */	lis r3, l_bmdGetParamList@ha
/* 809F37E0  84 83 88 14 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 809F37E4  2C 04 00 00 */	cmpwi r4, 0
/* 809F37E8  41 80 00 34 */	blt lbl_809F381C
/* 809F37EC  80 03 00 04 */	lwz r0, 4(r3)
/* 809F37F0  54 00 10 3A */	slwi r0, r0, 2
/* 809F37F4  3C 60 80 A0 */	lis r3, l_resNames@ha
/* 809F37F8  38 63 89 68 */	addi r3, r3, l_resNames@l
/* 809F37FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F3800  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809F3804  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809F3808  3C A5 00 02 */	addis r5, r5, 2
/* 809F380C  38 C0 00 80 */	li r6, 0x80
/* 809F3810  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809F3814  4B 64 8A D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809F3818  7C 7E 1B 78 */	mr r30, r3
lbl_809F381C:
/* 809F381C  38 60 00 58 */	li r3, 0x58
/* 809F3820  4B 8D B4 2C */	b __nw__FUl
/* 809F3824  7C 60 1B 79 */	or. r0, r3, r3
/* 809F3828  41 82 00 4C */	beq lbl_809F3874
/* 809F382C  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809F3830  90 01 00 08 */	stw r0, 8(r1)
/* 809F3834  3C 00 00 08 */	lis r0, 8
/* 809F3838  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F383C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809F3840  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809F3844  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F3848  7F C4 F3 78 */	mr r4, r30
/* 809F384C  38 A0 00 00 */	li r5, 0
/* 809F3850  38 C0 00 00 */	li r6, 0
/* 809F3854  38 E0 00 00 */	li r7, 0
/* 809F3858  39 00 FF FF */	li r8, -1
/* 809F385C  3D 20 80 A0 */	lis r9, lit_4456@ha
/* 809F3860  C0 29 85 90 */	lfs f1, lit_4456@l(r9)
/* 809F3864  39 20 00 00 */	li r9, 0
/* 809F3868  39 40 FF FF */	li r10, -1
/* 809F386C  4B 61 CF 64 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809F3870  7C 60 1B 78 */	mr r0, r3
lbl_809F3874:
/* 809F3874  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809F3878  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F387C  28 03 00 00 */	cmplwi r3, 0
/* 809F3880  41 82 00 1C */	beq lbl_809F389C
/* 809F3884  80 03 00 04 */	lwz r0, 4(r3)
/* 809F3888  28 00 00 00 */	cmplwi r0, 0
/* 809F388C  40 82 00 10 */	bne lbl_809F389C
/* 809F3890  4B 61 DA 80 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809F3894  38 00 00 00 */	li r0, 0
/* 809F3898  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809F389C:
/* 809F389C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809F38A0  28 03 00 00 */	cmplwi r3, 0
/* 809F38A4  40 82 00 0C */	bne lbl_809F38B0
/* 809F38A8  38 60 00 00 */	li r3, 0
/* 809F38AC  48 00 01 58 */	b lbl_809F3A04
lbl_809F38B0:
/* 809F38B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 809F38B4  38 C0 00 00 */	li r6, 0
/* 809F38B8  3C 60 80 9F */	lis r3, ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi@ha
/* 809F38BC  38 83 42 0C */	addi r4, r3, ctrlJointCallBack__13daNpc_GWolf_cFP8J3DJointi@l
/* 809F38C0  48 00 00 18 */	b lbl_809F38D8
lbl_809F38C4:
/* 809F38C4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809F38C8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809F38CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 809F38D0  90 83 00 04 */	stw r4, 4(r3)
/* 809F38D4  38 C6 00 01 */	addi r6, r6, 1
lbl_809F38D8:
/* 809F38D8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809F38DC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809F38E0  7C 03 00 40 */	cmplw r3, r0
/* 809F38E4  41 80 FF E0 */	blt lbl_809F38C4
/* 809F38E8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809F38EC  38 60 01 08 */	li r3, 0x108
/* 809F38F0  4B 8D B3 5C */	b __nw__FUl
/* 809F38F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F38F8  41 82 00 D0 */	beq lbl_809F39C8
/* 809F38FC  7F DD F3 78 */	mr r29, r30
/* 809F3900  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 809F3904  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 809F3908  90 1E 00 00 */	stw r0, 0(r30)
/* 809F390C  38 7E 00 04 */	addi r3, r30, 4
/* 809F3910  3C 80 80 9F */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 809F3914  38 84 3B C0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 809F3918  3C A0 80 9F */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 809F391C  38 A5 3B 84 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 809F3920  38 C0 00 08 */	li r6, 8
/* 809F3924  38 E0 00 02 */	li r7, 2
/* 809F3928  4B 96 E4 38 */	b __construct_array
/* 809F392C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809F3930  3C 80 80 9F */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 809F3934  38 84 3B 6C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 809F3938  3C A0 80 9F */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 809F393C  38 A5 3B 30 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 809F3940  38 C0 00 08 */	li r6, 8
/* 809F3944  38 E0 00 08 */	li r7, 8
/* 809F3948  4B 96 E4 18 */	b __construct_array
/* 809F394C  38 7E 00 54 */	addi r3, r30, 0x54
/* 809F3950  3C 80 80 9F */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 809F3954  38 84 3B 0C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 809F3958  3C A0 80 9F */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 809F395C  38 A5 3A C4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 809F3960  38 C0 00 0C */	li r6, 0xc
/* 809F3964  38 E0 00 08 */	li r7, 8
/* 809F3968  4B 96 E3 F8 */	b __construct_array
/* 809F396C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809F3970  3C 80 80 9F */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 809F3974  38 84 3A AC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 809F3978  3C A0 80 9F */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 809F397C  38 A5 3A 70 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 809F3980  38 C0 00 08 */	li r6, 8
/* 809F3984  38 E0 00 04 */	li r7, 4
/* 809F3988  4B 96 E3 D8 */	b __construct_array
/* 809F398C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809F3990  3C 80 80 9F */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 809F3994  38 84 3A 58 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 809F3998  3C A0 80 9F */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 809F399C  38 A5 3A 1C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 809F39A0  38 C0 00 08 */	li r6, 8
/* 809F39A4  38 E0 00 04 */	li r7, 4
/* 809F39A8  4B 96 E3 B8 */	b __construct_array
/* 809F39AC  7F C3 F3 78 */	mr r3, r30
/* 809F39B0  4B 93 89 70 */	b initialize__14J3DMaterialAnmFv
/* 809F39B4  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 809F39B8  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 809F39BC  90 1D 00 00 */	stw r0, 0(r29)
/* 809F39C0  7F A3 EB 78 */	mr r3, r29
/* 809F39C4  4B 75 CD 74 */	b initialize__15daNpcF_MatAnm_cFv
lbl_809F39C8:
/* 809F39C8  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 809F39CC  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809F39D0  28 00 00 00 */	cmplwi r0, 0
/* 809F39D4  40 82 00 0C */	bne lbl_809F39E0
/* 809F39D8  38 60 00 00 */	li r3, 0
/* 809F39DC  48 00 00 28 */	b lbl_809F3A04
lbl_809F39E0:
/* 809F39E0  7F E3 FB 78 */	mr r3, r31
/* 809F39E4  38 80 00 02 */	li r4, 2
/* 809F39E8  3C A0 80 A0 */	lis r5, lit_4457@ha
/* 809F39EC  C0 25 85 94 */	lfs f1, lit_4457@l(r5)
/* 809F39F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809F39F4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809F39F8  7D 89 03 A6 */	mtctr r12
/* 809F39FC  4E 80 04 21 */	bctrl 
/* 809F3A00  38 60 00 01 */	li r3, 1
lbl_809F3A04:
/* 809F3A04  39 61 00 30 */	addi r11, r1, 0x30
/* 809F3A08  4B 96 E8 20 */	b _restgpr_29
/* 809F3A0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F3A10  7C 08 03 A6 */	mtlr r0
/* 809F3A14  38 21 00 30 */	addi r1, r1, 0x30
/* 809F3A18  4E 80 00 20 */	blr 
