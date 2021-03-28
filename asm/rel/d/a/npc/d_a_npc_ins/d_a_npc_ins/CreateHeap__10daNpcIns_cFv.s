lbl_80A0EA30:
/* 80A0EA30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0EA34  7C 08 02 A6 */	mflr r0
/* 80A0EA38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0EA3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0EA40  4B 95 37 9C */	b _savegpr_29
/* 80A0EA44  7C 7F 1B 78 */	mr r31, r3
/* 80A0EA48  3C 60 80 A1 */	lis r3, l_arcNames@ha
/* 80A0EA4C  38 63 43 84 */	addi r3, r3, l_arcNames@l
/* 80A0EA50  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0EA54  38 80 00 11 */	li r4, 0x11
/* 80A0EA58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A0EA5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A0EA60  3F A5 00 02 */	addis r29, r5, 2
/* 80A0EA64  3B BD C2 F8 */	addi r29, r29, -15624
/* 80A0EA68  7F A5 EB 78 */	mr r5, r29
/* 80A0EA6C  38 C0 00 80 */	li r6, 0x80
/* 80A0EA70  4B 62 D8 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A0EA74  7C 7E 1B 78 */	mr r30, r3
/* 80A0EA78  38 60 00 58 */	li r3, 0x58
/* 80A0EA7C  4B 8C 01 D0 */	b __nw__FUl
/* 80A0EA80  7C 60 1B 79 */	or. r0, r3, r3
/* 80A0EA84  41 82 00 4C */	beq lbl_80A0EAD0
/* 80A0EA88  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80A0EA8C  90 01 00 08 */	stw r0, 8(r1)
/* 80A0EA90  3C 00 00 08 */	lis r0, 8
/* 80A0EA94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0EA98  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A0EA9C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A0EAA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0EAA4  7F C4 F3 78 */	mr r4, r30
/* 80A0EAA8  38 A0 00 00 */	li r5, 0
/* 80A0EAAC  38 C0 00 00 */	li r6, 0
/* 80A0EAB0  38 E0 00 00 */	li r7, 0
/* 80A0EAB4  39 00 FF FF */	li r8, -1
/* 80A0EAB8  3D 20 80 A1 */	lis r9, lit_4414@ha
/* 80A0EABC  C0 29 3E EC */	lfs f1, lit_4414@l(r9)
/* 80A0EAC0  39 20 00 00 */	li r9, 0
/* 80A0EAC4  39 40 FF FF */	li r10, -1
/* 80A0EAC8  4B 60 1D 08 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A0EACC  7C 60 1B 78 */	mr r0, r3
lbl_80A0EAD0:
/* 80A0EAD0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80A0EAD4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A0EAD8  28 03 00 00 */	cmplwi r3, 0
/* 80A0EADC  41 82 00 1C */	beq lbl_80A0EAF8
/* 80A0EAE0  80 03 00 04 */	lwz r0, 4(r3)
/* 80A0EAE4  28 00 00 00 */	cmplwi r0, 0
/* 80A0EAE8  40 82 00 10 */	bne lbl_80A0EAF8
/* 80A0EAEC  4B 60 28 24 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A0EAF0  38 00 00 00 */	li r0, 0
/* 80A0EAF4  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80A0EAF8:
/* 80A0EAF8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A0EAFC  28 03 00 00 */	cmplwi r3, 0
/* 80A0EB00  40 82 00 0C */	bne lbl_80A0EB0C
/* 80A0EB04  38 60 00 00 */	li r3, 0
/* 80A0EB08  48 00 02 60 */	b lbl_80A0ED68
lbl_80A0EB0C:
/* 80A0EB0C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A0EB10  38 C0 00 00 */	li r6, 0
/* 80A0EB14  3C 60 80 A1 */	lis r3, ctrlJointCallBack__10daNpcIns_cFP8J3DJointi@ha
/* 80A0EB18  38 83 F2 AC */	addi r4, r3, ctrlJointCallBack__10daNpcIns_cFP8J3DJointi@l
/* 80A0EB1C  48 00 00 18 */	b lbl_80A0EB34
lbl_80A0EB20:
/* 80A0EB20  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A0EB24  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A0EB28  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A0EB2C  90 83 00 04 */	stw r4, 4(r3)
/* 80A0EB30  38 C6 00 01 */	addi r6, r6, 1
lbl_80A0EB34:
/* 80A0EB34  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A0EB38  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A0EB3C  7C 03 00 40 */	cmplw r3, r0
/* 80A0EB40  41 80 FF E0 */	blt lbl_80A0EB20
/* 80A0EB44  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A0EB48  38 00 00 00 */	li r0, 0
/* 80A0EB4C  90 1F 0B D8 */	stw r0, 0xbd8(r31)
/* 80A0EB50  90 1F 0B DC */	stw r0, 0xbdc(r31)
/* 80A0EB54  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80A0EB58  28 00 00 01 */	cmplwi r0, 1
/* 80A0EB5C  41 82 00 0C */	beq lbl_80A0EB68
/* 80A0EB60  28 00 00 02 */	cmplwi r0, 2
/* 80A0EB64  40 82 00 84 */	bne lbl_80A0EBE8
lbl_80A0EB68:
/* 80A0EB68  3C 60 80 A1 */	lis r3, l_arcNames@ha
/* 80A0EB6C  3B C3 43 84 */	addi r30, r3, l_arcNames@l
/* 80A0EB70  80 7E 00 08 */	lwz r3, 8(r30)
/* 80A0EB74  38 80 00 10 */	li r4, 0x10
/* 80A0EB78  7F A5 EB 78 */	mr r5, r29
/* 80A0EB7C  38 C0 00 80 */	li r6, 0x80
/* 80A0EB80  4B 62 D7 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A0EB84  3C 80 00 08 */	lis r4, 8
/* 80A0EB88  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A0EB8C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A0EB90  4B 60 60 C4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A0EB94  90 7F 0B D8 */	stw r3, 0xbd8(r31)
/* 80A0EB98  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80A0EB9C  28 00 00 00 */	cmplwi r0, 0
/* 80A0EBA0  40 82 00 0C */	bne lbl_80A0EBAC
/* 80A0EBA4  38 60 00 00 */	li r3, 0
/* 80A0EBA8  48 00 01 C0 */	b lbl_80A0ED68
lbl_80A0EBAC:
/* 80A0EBAC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80A0EBB0  38 80 00 0D */	li r4, 0xd
/* 80A0EBB4  7F A5 EB 78 */	mr r5, r29
/* 80A0EBB8  38 C0 00 80 */	li r6, 0x80
/* 80A0EBBC  4B 62 D7 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A0EBC0  38 80 00 00 */	li r4, 0
/* 80A0EBC4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A0EBC8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A0EBCC  4B 60 60 88 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A0EBD0  90 7F 0B DC */	stw r3, 0xbdc(r31)
/* 80A0EBD4  80 1F 0B DC */	lwz r0, 0xbdc(r31)
/* 80A0EBD8  28 00 00 00 */	cmplwi r0, 0
/* 80A0EBDC  40 82 00 0C */	bne lbl_80A0EBE8
/* 80A0EBE0  38 60 00 00 */	li r3, 0
/* 80A0EBE4  48 00 01 84 */	b lbl_80A0ED68
lbl_80A0EBE8:
/* 80A0EBE8  38 60 01 08 */	li r3, 0x108
/* 80A0EBEC  4B 8C 00 60 */	b __nw__FUl
/* 80A0EBF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0EBF4  41 82 00 D0 */	beq lbl_80A0ECC4
/* 80A0EBF8  7F DD F3 78 */	mr r29, r30
/* 80A0EBFC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A0EC00  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A0EC04  90 1E 00 00 */	stw r0, 0(r30)
/* 80A0EC08  38 7D 00 04 */	addi r3, r29, 4
/* 80A0EC0C  3C 80 80 A1 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A0EC10  38 84 EF 24 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A0EC14  3C A0 80 A1 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A0EC18  38 A5 EE E8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A0EC1C  38 C0 00 08 */	li r6, 8
/* 80A0EC20  38 E0 00 02 */	li r7, 2
/* 80A0EC24  4B 95 31 3C */	b __construct_array
/* 80A0EC28  38 7D 00 14 */	addi r3, r29, 0x14
/* 80A0EC2C  3C 80 80 A1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A0EC30  38 84 EE D0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A0EC34  3C A0 80 A1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A0EC38  38 A5 EE 94 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A0EC3C  38 C0 00 08 */	li r6, 8
/* 80A0EC40  38 E0 00 08 */	li r7, 8
/* 80A0EC44  4B 95 31 1C */	b __construct_array
/* 80A0EC48  38 7D 00 54 */	addi r3, r29, 0x54
/* 80A0EC4C  3C 80 80 A1 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A0EC50  38 84 EE 70 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A0EC54  3C A0 80 A1 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A0EC58  38 A5 EE 28 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A0EC5C  38 C0 00 0C */	li r6, 0xc
/* 80A0EC60  38 E0 00 08 */	li r7, 8
/* 80A0EC64  4B 95 30 FC */	b __construct_array
/* 80A0EC68  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80A0EC6C  3C 80 80 A1 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A0EC70  38 84 EE 10 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A0EC74  3C A0 80 A1 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A0EC78  38 A5 ED D4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A0EC7C  38 C0 00 08 */	li r6, 8
/* 80A0EC80  38 E0 00 04 */	li r7, 4
/* 80A0EC84  4B 95 30 DC */	b __construct_array
/* 80A0EC88  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80A0EC8C  3C 80 80 A1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A0EC90  38 84 ED BC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A0EC94  3C A0 80 A1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A0EC98  38 A5 ED 80 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A0EC9C  38 C0 00 08 */	li r6, 8
/* 80A0ECA0  38 E0 00 04 */	li r7, 4
/* 80A0ECA4  4B 95 30 BC */	b __construct_array
/* 80A0ECA8  7F A3 EB 78 */	mr r3, r29
/* 80A0ECAC  4B 91 D6 74 */	b initialize__14J3DMaterialAnmFv
/* 80A0ECB0  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80A0ECB4  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80A0ECB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80A0ECBC  7F C3 F3 78 */	mr r3, r30
/* 80A0ECC0  4B 74 1A 78 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80A0ECC4:
/* 80A0ECC4  93 DF 0B E0 */	stw r30, 0xbe0(r31)
/* 80A0ECC8  80 1F 0B E0 */	lwz r0, 0xbe0(r31)
/* 80A0ECCC  28 00 00 00 */	cmplwi r0, 0
/* 80A0ECD0  40 82 00 0C */	bne lbl_80A0ECDC
/* 80A0ECD4  38 60 00 00 */	li r3, 0
/* 80A0ECD8  48 00 00 90 */	b lbl_80A0ED68
lbl_80A0ECDC:
/* 80A0ECDC  7F E3 FB 78 */	mr r3, r31
/* 80A0ECE0  38 80 00 01 */	li r4, 1
/* 80A0ECE4  38 A0 00 00 */	li r5, 0
/* 80A0ECE8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0ECEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A0ECF0  7D 89 03 A6 */	mtctr r12
/* 80A0ECF4  4E 80 04 21 */	bctrl 
/* 80A0ECF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0ECFC  40 82 00 0C */	bne lbl_80A0ED08
/* 80A0ED00  38 60 00 00 */	li r3, 0
/* 80A0ED04  48 00 00 64 */	b lbl_80A0ED68
lbl_80A0ED08:
/* 80A0ED08  38 80 00 0A */	li r4, 0xa
/* 80A0ED0C  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80A0ED10  2C 00 00 01 */	cmpwi r0, 1
/* 80A0ED14  41 82 00 28 */	beq lbl_80A0ED3C
/* 80A0ED18  40 80 00 10 */	bge lbl_80A0ED28
/* 80A0ED1C  2C 00 00 00 */	cmpwi r0, 0
/* 80A0ED20  40 80 00 14 */	bge lbl_80A0ED34
/* 80A0ED24  48 00 00 24 */	b lbl_80A0ED48
lbl_80A0ED28:
/* 80A0ED28  2C 00 00 03 */	cmpwi r0, 3
/* 80A0ED2C  40 80 00 1C */	bge lbl_80A0ED48
/* 80A0ED30  48 00 00 14 */	b lbl_80A0ED44
lbl_80A0ED34:
/* 80A0ED34  38 80 00 0A */	li r4, 0xa
/* 80A0ED38  48 00 00 10 */	b lbl_80A0ED48
lbl_80A0ED3C:
/* 80A0ED3C  38 80 00 14 */	li r4, 0x14
/* 80A0ED40  48 00 00 08 */	b lbl_80A0ED48
lbl_80A0ED44:
/* 80A0ED44  38 80 00 16 */	li r4, 0x16
lbl_80A0ED48:
/* 80A0ED48  7F E3 FB 78 */	mr r3, r31
/* 80A0ED4C  3C A0 80 A1 */	lis r5, lit_4415@ha
/* 80A0ED50  C0 25 3E F0 */	lfs f1, lit_4415@l(r5)
/* 80A0ED54  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A0ED58  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A0ED5C  7D 89 03 A6 */	mtctr r12
/* 80A0ED60  4E 80 04 21 */	bctrl 
/* 80A0ED64  38 60 00 01 */	li r3, 1
lbl_80A0ED68:
/* 80A0ED68  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0ED6C  4B 95 34 BC */	b _restgpr_29
/* 80A0ED70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A0ED74  7C 08 03 A6 */	mtlr r0
/* 80A0ED78  38 21 00 30 */	addi r1, r1, 0x30
/* 80A0ED7C  4E 80 00 20 */	blr 
