lbl_8095E4A0:
/* 8095E4A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095E4A4  7C 08 02 A6 */	mflr r0
/* 8095E4A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095E4AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8095E4B0  4B A0 3D 28 */	b _savegpr_28
/* 8095E4B4  7C 7E 1B 78 */	mr r30, r3
/* 8095E4B8  3C 60 80 96 */	lis r3, l_arcNames@ha
/* 8095E4BC  38 63 25 94 */	addi r3, r3, l_arcNames@l
/* 8095E4C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8095E4C4  38 80 00 1C */	li r4, 0x1c
/* 8095E4C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8095E4CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8095E4D0  3F E5 00 02 */	addis r31, r5, 2
/* 8095E4D4  3B FF C2 F8 */	addi r31, r31, -15624
/* 8095E4D8  7F E5 FB 78 */	mr r5, r31
/* 8095E4DC  38 C0 00 80 */	li r6, 0x80
/* 8095E4E0  4B 6D DE 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8095E4E4  7C 7D 1B 78 */	mr r29, r3
/* 8095E4E8  38 60 00 58 */	li r3, 0x58
/* 8095E4EC  4B 97 07 60 */	b __nw__FUl
/* 8095E4F0  7C 60 1B 79 */	or. r0, r3, r3
/* 8095E4F4  41 82 00 4C */	beq lbl_8095E540
/* 8095E4F8  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 8095E4FC  90 01 00 08 */	stw r0, 8(r1)
/* 8095E500  3C 00 00 08 */	lis r0, 8
/* 8095E504  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095E508  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8095E50C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8095E510  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095E514  7F A4 EB 78 */	mr r4, r29
/* 8095E518  38 A0 00 00 */	li r5, 0
/* 8095E51C  38 C0 00 00 */	li r6, 0
/* 8095E520  38 E0 00 00 */	li r7, 0
/* 8095E524  39 00 FF FF */	li r8, -1
/* 8095E528  3D 20 80 96 */	lis r9, lit_4237@ha
/* 8095E52C  C0 29 21 64 */	lfs f1, lit_4237@l(r9)
/* 8095E530  39 20 00 00 */	li r9, 0
/* 8095E534  39 40 FF FF */	li r10, -1
/* 8095E538  4B 6B 22 98 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8095E53C  7C 60 1B 78 */	mr r0, r3
lbl_8095E540:
/* 8095E540  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8095E544  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095E548  28 03 00 00 */	cmplwi r3, 0
/* 8095E54C  41 82 00 1C */	beq lbl_8095E568
/* 8095E550  80 03 00 04 */	lwz r0, 4(r3)
/* 8095E554  28 00 00 00 */	cmplwi r0, 0
/* 8095E558  40 82 00 10 */	bne lbl_8095E568
/* 8095E55C  4B 6B 2D B4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 8095E560  38 00 00 00 */	li r0, 0
/* 8095E564  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_8095E568:
/* 8095E568  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095E56C  28 03 00 00 */	cmplwi r3, 0
/* 8095E570  40 82 00 0C */	bne lbl_8095E57C
/* 8095E574  38 60 00 00 */	li r3, 0
/* 8095E578  48 00 01 C8 */	b lbl_8095E740
lbl_8095E57C:
/* 8095E57C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8095E580  38 C0 00 00 */	li r6, 0
/* 8095E584  3C 60 80 96 */	lis r3, ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi@ha
/* 8095E588  38 83 EB B4 */	addi r4, r3, ctrlJointCallBack__11daNpcAshB_cFP8J3DJointi@l
/* 8095E58C  48 00 00 18 */	b lbl_8095E5A4
lbl_8095E590:
/* 8095E590  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8095E594  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8095E598  7C 63 00 2E */	lwzx r3, r3, r0
/* 8095E59C  90 83 00 04 */	stw r4, 4(r3)
/* 8095E5A0  38 C6 00 01 */	addi r6, r6, 1
lbl_8095E5A4:
/* 8095E5A4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8095E5A8  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8095E5AC  7C 03 00 40 */	cmplw r3, r0
/* 8095E5B0  41 80 FF E0 */	blt lbl_8095E590
/* 8095E5B4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 8095E5B8  38 60 01 08 */	li r3, 0x108
/* 8095E5BC  4B 97 06 90 */	b __nw__FUl
/* 8095E5C0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8095E5C4  41 82 00 D0 */	beq lbl_8095E694
/* 8095E5C8  7F BC EB 78 */	mr r28, r29
/* 8095E5CC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 8095E5D0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8095E5D4  90 1D 00 00 */	stw r0, 0(r29)
/* 8095E5D8  38 7D 00 04 */	addi r3, r29, 4
/* 8095E5DC  3C 80 80 96 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 8095E5E0  38 84 E8 FC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 8095E5E4  3C A0 80 96 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 8095E5E8  38 A5 E8 C0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 8095E5EC  38 C0 00 08 */	li r6, 8
/* 8095E5F0  38 E0 00 02 */	li r7, 2
/* 8095E5F4  4B A0 37 6C */	b __construct_array
/* 8095E5F8  38 7D 00 14 */	addi r3, r29, 0x14
/* 8095E5FC  3C 80 80 96 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 8095E600  38 84 E8 A8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 8095E604  3C A0 80 96 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 8095E608  38 A5 E8 6C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 8095E60C  38 C0 00 08 */	li r6, 8
/* 8095E610  38 E0 00 08 */	li r7, 8
/* 8095E614  4B A0 37 4C */	b __construct_array
/* 8095E618  38 7D 00 54 */	addi r3, r29, 0x54
/* 8095E61C  3C 80 80 96 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 8095E620  38 84 E8 48 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 8095E624  3C A0 80 96 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 8095E628  38 A5 E8 00 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 8095E62C  38 C0 00 0C */	li r6, 0xc
/* 8095E630  38 E0 00 08 */	li r7, 8
/* 8095E634  4B A0 37 2C */	b __construct_array
/* 8095E638  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 8095E63C  3C 80 80 96 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 8095E640  38 84 E7 E8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 8095E644  3C A0 80 96 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 8095E648  38 A5 E7 AC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 8095E64C  38 C0 00 08 */	li r6, 8
/* 8095E650  38 E0 00 04 */	li r7, 4
/* 8095E654  4B A0 37 0C */	b __construct_array
/* 8095E658  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 8095E65C  3C 80 80 96 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 8095E660  38 84 E7 94 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 8095E664  3C A0 80 96 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 8095E668  38 A5 E7 58 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 8095E66C  38 C0 00 08 */	li r6, 8
/* 8095E670  38 E0 00 04 */	li r7, 4
/* 8095E674  4B A0 36 EC */	b __construct_array
/* 8095E678  7F A3 EB 78 */	mr r3, r29
/* 8095E67C  4B 9C DC A4 */	b initialize__14J3DMaterialAnmFv
/* 8095E680  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 8095E684  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 8095E688  90 1C 00 00 */	stw r0, 0(r28)
/* 8095E68C  7F 83 E3 78 */	mr r3, r28
/* 8095E690  4B 7F 20 A8 */	b initialize__15daNpcF_MatAnm_cFv
lbl_8095E694:
/* 8095E694  93 BE 0B D8 */	stw r29, 0xbd8(r30)
/* 8095E698  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 8095E69C  28 00 00 00 */	cmplwi r0, 0
/* 8095E6A0  40 82 00 0C */	bne lbl_8095E6AC
/* 8095E6A4  38 60 00 00 */	li r3, 0
/* 8095E6A8  48 00 00 98 */	b lbl_8095E740
lbl_8095E6AC:
/* 8095E6AC  3C 60 80 96 */	lis r3, l_arcNames@ha
/* 8095E6B0  38 63 25 94 */	addi r3, r3, l_arcNames@l
/* 8095E6B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8095E6B8  38 80 00 1D */	li r4, 0x1d
/* 8095E6BC  7F E5 FB 78 */	mr r5, r31
/* 8095E6C0  38 C0 00 80 */	li r6, 0x80
/* 8095E6C4  4B 6D DC 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8095E6C8  3C 80 00 08 */	lis r4, 8
/* 8095E6CC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8095E6D0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8095E6D4  4B 6B 65 80 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8095E6D8  90 7E 0B DC */	stw r3, 0xbdc(r30)
/* 8095E6DC  80 1E 0B DC */	lwz r0, 0xbdc(r30)
/* 8095E6E0  28 00 00 00 */	cmplwi r0, 0
/* 8095E6E4  40 82 00 0C */	bne lbl_8095E6F0
/* 8095E6E8  38 60 00 00 */	li r3, 0
/* 8095E6EC  48 00 00 54 */	b lbl_8095E740
lbl_8095E6F0:
/* 8095E6F0  7F C3 F3 78 */	mr r3, r30
/* 8095E6F4  38 80 00 01 */	li r4, 1
/* 8095E6F8  38 A0 00 00 */	li r5, 0
/* 8095E6FC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095E700  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8095E704  7D 89 03 A6 */	mtctr r12
/* 8095E708  4E 80 04 21 */	bctrl 
/* 8095E70C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8095E710  40 82 00 0C */	bne lbl_8095E71C
/* 8095E714  38 60 00 00 */	li r3, 0
/* 8095E718  48 00 00 28 */	b lbl_8095E740
lbl_8095E71C:
/* 8095E71C  7F C3 F3 78 */	mr r3, r30
/* 8095E720  38 80 00 07 */	li r4, 7
/* 8095E724  3C A0 80 96 */	lis r5, lit_4238@ha
/* 8095E728  C0 25 21 68 */	lfs f1, lit_4238@l(r5)
/* 8095E72C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095E730  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8095E734  7D 89 03 A6 */	mtctr r12
/* 8095E738  4E 80 04 21 */	bctrl 
/* 8095E73C  38 60 00 01 */	li r3, 1
lbl_8095E740:
/* 8095E740  39 61 00 30 */	addi r11, r1, 0x30
/* 8095E744  4B A0 3A E0 */	b _restgpr_28
/* 8095E748  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095E74C  7C 08 03 A6 */	mtlr r0
/* 8095E750  38 21 00 30 */	addi r1, r1, 0x30
/* 8095E754  4E 80 00 20 */	blr 
