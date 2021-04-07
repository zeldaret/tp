lbl_80AFCD98:
/* 80AFCD98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AFCD9C  7C 08 02 A6 */	mflr r0
/* 80AFCDA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AFCDA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFCDA8  4B 86 54 31 */	bl _savegpr_28
/* 80AFCDAC  7C 7F 1B 78 */	mr r31, r3
/* 80AFCDB0  3C 60 80 B0 */	lis r3, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFCDB4  38 63 10 E4 */	addi r3, r3, l_arcName@l /* 0x80B010E4@l */
/* 80AFCDB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80AFCDBC  38 80 00 26 */	li r4, 0x26
/* 80AFCDC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFCDC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFCDC8  3F 85 00 02 */	addis r28, r5, 2
/* 80AFCDCC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80AFCDD0  7F 85 E3 78 */	mr r5, r28
/* 80AFCDD4  38 C0 00 80 */	li r6, 0x80
/* 80AFCDD8  4B 53 F5 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AFCDDC  7C 7E 1B 78 */	mr r30, r3
/* 80AFCDE0  38 60 00 58 */	li r3, 0x58
/* 80AFCDE4  4B 7D 1E 69 */	bl __nw__FUl
/* 80AFCDE8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AFCDEC  41 82 00 6C */	beq lbl_80AFCE58
/* 80AFCDF0  3C 60 80 B0 */	lis r3, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFCDF4  38 63 10 E4 */	addi r3, r3, l_arcName@l /* 0x80B010E4@l */
/* 80AFCDF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80AFCDFC  38 80 00 1B */	li r4, 0x1b
/* 80AFCE00  7F 85 E3 78 */	mr r5, r28
/* 80AFCE04  38 C0 00 80 */	li r6, 0x80
/* 80AFCE08  4B 53 F4 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AFCE0C  7C 67 1B 78 */	mr r7, r3
/* 80AFCE10  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80AFCE14  90 01 00 08 */	stw r0, 8(r1)
/* 80AFCE18  3C 00 00 08 */	lis r0, 8
/* 80AFCE1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFCE20  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 80AFCE24  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 80AFCE28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFCE2C  7F A3 EB 78 */	mr r3, r29
/* 80AFCE30  7F C4 F3 78 */	mr r4, r30
/* 80AFCE34  38 A0 00 00 */	li r5, 0
/* 80AFCE38  38 C0 00 00 */	li r6, 0
/* 80AFCE3C  39 00 00 02 */	li r8, 2
/* 80AFCE40  3D 20 80 B0 */	lis r9, lit_4247@ha /* 0x80B00DEC@ha */
/* 80AFCE44  C0 29 0D EC */	lfs f1, lit_4247@l(r9)  /* 0x80B00DEC@l */
/* 80AFCE48  39 20 00 00 */	li r9, 0
/* 80AFCE4C  39 40 FF FF */	li r10, -1
/* 80AFCE50  4B 51 39 81 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AFCE54  7C 7D 1B 78 */	mr r29, r3
lbl_80AFCE58:
/* 80AFCE58  93 BF 05 68 */	stw r29, 0x568(r31)
/* 80AFCE5C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AFCE60  28 03 00 00 */	cmplwi r3, 0
/* 80AFCE64  41 82 00 1C */	beq lbl_80AFCE80
/* 80AFCE68  80 03 00 04 */	lwz r0, 4(r3)
/* 80AFCE6C  28 00 00 00 */	cmplwi r0, 0
/* 80AFCE70  40 82 00 10 */	bne lbl_80AFCE80
/* 80AFCE74  4B 51 44 9D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AFCE78  38 00 00 00 */	li r0, 0
/* 80AFCE7C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80AFCE80:
/* 80AFCE80  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80AFCE84  28 00 00 00 */	cmplwi r0, 0
/* 80AFCE88  40 82 00 0C */	bne lbl_80AFCE94
/* 80AFCE8C  38 60 00 00 */	li r3, 0
/* 80AFCE90  48 00 01 98 */	b lbl_80AFD028
lbl_80AFCE94:
/* 80AFCE94  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AFCE98  80 83 00 00 */	lwz r4, 0(r3)
/* 80AFCE9C  3C 60 80 B0 */	lis r3, ctrlJointCallBack__11daNpcTheB_cFP8J3DJointi@ha /* 0x80AFD4BC@ha */
/* 80AFCEA0  38 03 D4 BC */	addi r0, r3, ctrlJointCallBack__11daNpcTheB_cFP8J3DJointi@l /* 0x80AFD4BC@l */
/* 80AFCEA4  90 04 00 04 */	stw r0, 4(r4)
/* 80AFCEA8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AFCEAC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFCEB0  90 03 00 04 */	stw r0, 4(r3)
/* 80AFCEB4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AFCEB8  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80AFCEBC  90 03 00 04 */	stw r0, 4(r3)
/* 80AFCEC0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AFCEC4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80AFCEC8  90 03 00 04 */	stw r0, 4(r3)
/* 80AFCECC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AFCED0  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80AFCED4  90 03 00 04 */	stw r0, 4(r3)
/* 80AFCED8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AFCEDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFCEE0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80AFCEE4  38 60 01 08 */	li r3, 0x108
/* 80AFCEE8  4B 7D 1D 65 */	bl __nw__FUl
/* 80AFCEEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AFCEF0  41 82 00 D0 */	beq lbl_80AFCFC0
/* 80AFCEF4  7F DD F3 78 */	mr r29, r30
/* 80AFCEF8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80AFCEFC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80AFCF00  90 1E 00 00 */	stw r0, 0(r30)
/* 80AFCF04  38 7E 00 04 */	addi r3, r30, 4
/* 80AFCF08  3C 80 80 B0 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80AFD1E4@ha */
/* 80AFCF0C  38 84 D1 E4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80AFD1E4@l */
/* 80AFCF10  3C A0 80 B0 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80AFD1A8@ha */
/* 80AFCF14  38 A5 D1 A8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80AFD1A8@l */
/* 80AFCF18  38 C0 00 08 */	li r6, 8
/* 80AFCF1C  38 E0 00 02 */	li r7, 2
/* 80AFCF20  4B 86 4E 41 */	bl __construct_array
/* 80AFCF24  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AFCF28  3C 80 80 B0 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80AFD190@ha */
/* 80AFCF2C  38 84 D1 90 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80AFD190@l */
/* 80AFCF30  3C A0 80 B0 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80AFD154@ha */
/* 80AFCF34  38 A5 D1 54 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80AFD154@l */
/* 80AFCF38  38 C0 00 08 */	li r6, 8
/* 80AFCF3C  38 E0 00 08 */	li r7, 8
/* 80AFCF40  4B 86 4E 21 */	bl __construct_array
/* 80AFCF44  38 7E 00 54 */	addi r3, r30, 0x54
/* 80AFCF48  3C 80 80 B0 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80AFD130@ha */
/* 80AFCF4C  38 84 D1 30 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80AFD130@l */
/* 80AFCF50  3C A0 80 B0 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80AFD0E8@ha */
/* 80AFCF54  38 A5 D0 E8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80AFD0E8@l */
/* 80AFCF58  38 C0 00 0C */	li r6, 0xc
/* 80AFCF5C  38 E0 00 08 */	li r7, 8
/* 80AFCF60  4B 86 4E 01 */	bl __construct_array
/* 80AFCF64  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80AFCF68  3C 80 80 B0 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80AFD0D0@ha */
/* 80AFCF6C  38 84 D0 D0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80AFD0D0@l */
/* 80AFCF70  3C A0 80 B0 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80AFD094@ha */
/* 80AFCF74  38 A5 D0 94 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80AFD094@l */
/* 80AFCF78  38 C0 00 08 */	li r6, 8
/* 80AFCF7C  38 E0 00 04 */	li r7, 4
/* 80AFCF80  4B 86 4D E1 */	bl __construct_array
/* 80AFCF84  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80AFCF88  3C 80 80 B0 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80AFD07C@ha */
/* 80AFCF8C  38 84 D0 7C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80AFD07C@l */
/* 80AFCF90  3C A0 80 B0 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80AFD040@ha */
/* 80AFCF94  38 A5 D0 40 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80AFD040@l */
/* 80AFCF98  38 C0 00 08 */	li r6, 8
/* 80AFCF9C  38 E0 00 04 */	li r7, 4
/* 80AFCFA0  4B 86 4D C1 */	bl __construct_array
/* 80AFCFA4  7F C3 F3 78 */	mr r3, r30
/* 80AFCFA8  4B 82 F3 79 */	bl initialize__14J3DMaterialAnmFv
/* 80AFCFAC  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 80AFCFB0  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 80AFCFB4  90 1D 00 00 */	stw r0, 0(r29)
/* 80AFCFB8  7F A3 EB 78 */	mr r3, r29
/* 80AFCFBC  4B 65 37 7D */	bl initialize__15daNpcF_MatAnm_cFv
lbl_80AFCFC0:
/* 80AFCFC0  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80AFCFC4  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80AFCFC8  28 00 00 00 */	cmplwi r0, 0
/* 80AFCFCC  40 82 00 0C */	bne lbl_80AFCFD8
/* 80AFCFD0  38 60 00 00 */	li r3, 0
/* 80AFCFD4  48 00 00 54 */	b lbl_80AFD028
lbl_80AFCFD8:
/* 80AFCFD8  7F E3 FB 78 */	mr r3, r31
/* 80AFCFDC  38 80 00 05 */	li r4, 5
/* 80AFCFE0  38 A0 00 00 */	li r5, 0
/* 80AFCFE4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AFCFE8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AFCFEC  7D 89 03 A6 */	mtctr r12
/* 80AFCFF0  4E 80 04 21 */	bctrl 
/* 80AFCFF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AFCFF8  40 82 00 0C */	bne lbl_80AFD004
/* 80AFCFFC  38 60 00 00 */	li r3, 0
/* 80AFD000  48 00 00 28 */	b lbl_80AFD028
lbl_80AFD004:
/* 80AFD004  7F E3 FB 78 */	mr r3, r31
/* 80AFD008  38 80 00 08 */	li r4, 8
/* 80AFD00C  3C A0 80 B0 */	lis r5, lit_4248@ha /* 0x80B00DF0@ha */
/* 80AFD010  C0 25 0D F0 */	lfs f1, lit_4248@l(r5)  /* 0x80B00DF0@l */
/* 80AFD014  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AFD018  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AFD01C  7D 89 03 A6 */	mtctr r12
/* 80AFD020  4E 80 04 21 */	bctrl 
/* 80AFD024  38 60 00 01 */	li r3, 1
lbl_80AFD028:
/* 80AFD028  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFD02C  4B 86 51 F9 */	bl _restgpr_28
/* 80AFD030  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AFD034  7C 08 03 A6 */	mtlr r0
/* 80AFD038  38 21 00 30 */	addi r1, r1, 0x30
/* 80AFD03C  4E 80 00 20 */	blr 
