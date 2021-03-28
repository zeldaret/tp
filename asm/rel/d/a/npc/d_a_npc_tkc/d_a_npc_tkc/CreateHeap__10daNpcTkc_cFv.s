lbl_80B0CD7C:
/* 80B0CD7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0CD80  7C 08 02 A6 */	mflr r0
/* 80B0CD84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0CD88  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0CD8C  4B 85 54 50 */	b _savegpr_29
/* 80B0CD90  7C 7F 1B 78 */	mr r31, r3
/* 80B0CD94  3C 60 80 B1 */	lis r3, l_arcName@ha
/* 80B0CD98  38 63 0A B8 */	addi r3, r3, l_arcName@l
/* 80B0CD9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B0CDA0  38 80 00 0A */	li r4, 0xa
/* 80B0CDA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B0CDA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B0CDAC  3C A5 00 02 */	addis r5, r5, 2
/* 80B0CDB0  38 C0 00 80 */	li r6, 0x80
/* 80B0CDB4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B0CDB8  4B 52 F5 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B0CDBC  7C 7E 1B 78 */	mr r30, r3
/* 80B0CDC0  38 60 00 58 */	li r3, 0x58
/* 80B0CDC4  4B 7C 1E 88 */	b __nw__FUl
/* 80B0CDC8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B0CDCC  41 82 00 4C */	beq lbl_80B0CE18
/* 80B0CDD0  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B0CDD4  90 01 00 08 */	stw r0, 8(r1)
/* 80B0CDD8  3C 00 00 08 */	lis r0, 8
/* 80B0CDDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0CDE0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B0CDE4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B0CDE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0CDEC  7F C4 F3 78 */	mr r4, r30
/* 80B0CDF0  38 A0 00 00 */	li r5, 0
/* 80B0CDF4  38 C0 00 00 */	li r6, 0
/* 80B0CDF8  38 E0 00 00 */	li r7, 0
/* 80B0CDFC  39 00 FF FF */	li r8, -1
/* 80B0CE00  3D 20 80 B1 */	lis r9, lit_4358@ha
/* 80B0CE04  C0 29 09 64 */	lfs f1, lit_4358@l(r9)
/* 80B0CE08  39 20 00 00 */	li r9, 0
/* 80B0CE0C  39 40 FF FF */	li r10, -1
/* 80B0CE10  4B 50 39 C0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B0CE14  7C 60 1B 78 */	mr r0, r3
lbl_80B0CE18:
/* 80B0CE18  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B0CE1C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B0CE20  28 03 00 00 */	cmplwi r3, 0
/* 80B0CE24  41 82 00 1C */	beq lbl_80B0CE40
/* 80B0CE28  80 03 00 04 */	lwz r0, 4(r3)
/* 80B0CE2C  28 00 00 00 */	cmplwi r0, 0
/* 80B0CE30  40 82 00 10 */	bne lbl_80B0CE40
/* 80B0CE34  4B 50 44 DC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B0CE38  38 00 00 00 */	li r0, 0
/* 80B0CE3C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B0CE40:
/* 80B0CE40  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B0CE44  28 03 00 00 */	cmplwi r3, 0
/* 80B0CE48  40 82 00 0C */	bne lbl_80B0CE54
/* 80B0CE4C  38 60 00 00 */	li r3, 0
/* 80B0CE50  48 00 01 5C */	b lbl_80B0CFAC
lbl_80B0CE54:
/* 80B0CE54  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B0CE58  38 C0 00 00 */	li r6, 0
/* 80B0CE5C  3C 60 80 B1 */	lis r3, ctrlJointCallBack__10daNpcTkc_cFP8J3DJointi@ha
/* 80B0CE60  38 83 D2 EC */	addi r4, r3, ctrlJointCallBack__10daNpcTkc_cFP8J3DJointi@l
/* 80B0CE64  48 00 00 18 */	b lbl_80B0CE7C
lbl_80B0CE68:
/* 80B0CE68  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B0CE6C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B0CE70  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B0CE74  90 83 00 04 */	stw r4, 4(r3)
/* 80B0CE78  38 C6 00 01 */	addi r6, r6, 1
lbl_80B0CE7C:
/* 80B0CE7C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B0CE80  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B0CE84  7C 03 00 40 */	cmplw r3, r0
/* 80B0CE88  41 80 FF E0 */	blt lbl_80B0CE68
/* 80B0CE8C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B0CE90  38 60 01 08 */	li r3, 0x108
/* 80B0CE94  4B 7C 1D B8 */	b __nw__FUl
/* 80B0CE98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B0CE9C  41 82 00 D0 */	beq lbl_80B0CF6C
/* 80B0CEA0  7F DD F3 78 */	mr r29, r30
/* 80B0CEA4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B0CEA8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B0CEAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80B0CEB0  38 7E 00 04 */	addi r3, r30, 4
/* 80B0CEB4  3C 80 80 B1 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B0CEB8  38 84 D1 68 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B0CEBC  3C A0 80 B1 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B0CEC0  38 A5 D1 2C */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B0CEC4  38 C0 00 08 */	li r6, 8
/* 80B0CEC8  38 E0 00 02 */	li r7, 2
/* 80B0CECC  4B 85 4E 94 */	b __construct_array
/* 80B0CED0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B0CED4  3C 80 80 B1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B0CED8  38 84 D1 14 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B0CEDC  3C A0 80 B1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B0CEE0  38 A5 D0 D8 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B0CEE4  38 C0 00 08 */	li r6, 8
/* 80B0CEE8  38 E0 00 08 */	li r7, 8
/* 80B0CEEC  4B 85 4E 74 */	b __construct_array
/* 80B0CEF0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B0CEF4  3C 80 80 B1 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B0CEF8  38 84 D0 B4 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B0CEFC  3C A0 80 B1 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B0CF00  38 A5 D0 6C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B0CF04  38 C0 00 0C */	li r6, 0xc
/* 80B0CF08  38 E0 00 08 */	li r7, 8
/* 80B0CF0C  4B 85 4E 54 */	b __construct_array
/* 80B0CF10  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B0CF14  3C 80 80 B1 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B0CF18  38 84 D0 54 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B0CF1C  3C A0 80 B1 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B0CF20  38 A5 D0 18 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B0CF24  38 C0 00 08 */	li r6, 8
/* 80B0CF28  38 E0 00 04 */	li r7, 4
/* 80B0CF2C  4B 85 4E 34 */	b __construct_array
/* 80B0CF30  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B0CF34  3C 80 80 B1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B0CF38  38 84 D0 00 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B0CF3C  3C A0 80 B1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B0CF40  38 A5 CF C4 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B0CF44  38 C0 00 08 */	li r6, 8
/* 80B0CF48  38 E0 00 04 */	li r7, 4
/* 80B0CF4C  4B 85 4E 14 */	b __construct_array
/* 80B0CF50  7F C3 F3 78 */	mr r3, r30
/* 80B0CF54  4B 81 F3 CC */	b initialize__14J3DMaterialAnmFv
/* 80B0CF58  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80B0CF5C  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80B0CF60  90 1D 00 00 */	stw r0, 0(r29)
/* 80B0CF64  7F A3 EB 78 */	mr r3, r29
/* 80B0CF68  4B 64 37 D0 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80B0CF6C:
/* 80B0CF6C  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80B0CF70  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80B0CF74  28 00 00 00 */	cmplwi r0, 0
/* 80B0CF78  40 82 00 0C */	bne lbl_80B0CF84
/* 80B0CF7C  38 60 00 00 */	li r3, 0
/* 80B0CF80  48 00 00 2C */	b lbl_80B0CFAC
lbl_80B0CF84:
/* 80B0CF84  7F E3 FB 78 */	mr r3, r31
/* 80B0CF88  38 80 00 01 */	li r4, 1
/* 80B0CF8C  38 A0 00 00 */	li r5, 0
/* 80B0CF90  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B0CF94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B0CF98  7D 89 03 A6 */	mtctr r12
/* 80B0CF9C  4E 80 04 21 */	bctrl 
/* 80B0CFA0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80B0CFA4  30 03 FF FF */	addic r0, r3, -1
/* 80B0CFA8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80B0CFAC:
/* 80B0CFAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0CFB0  4B 85 52 78 */	b _restgpr_29
/* 80B0CFB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0CFB8  7C 08 03 A6 */	mtlr r0
/* 80B0CFBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0CFC0  4E 80 00 20 */	blr 
