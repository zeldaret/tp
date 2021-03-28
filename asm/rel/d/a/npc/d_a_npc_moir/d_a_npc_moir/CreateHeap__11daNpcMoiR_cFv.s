lbl_80A7C978:
/* 80A7C978  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A7C97C  7C 08 02 A6 */	mflr r0
/* 80A7C980  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7C984  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7C988  4B 8E 58 50 */	b _savegpr_28
/* 80A7C98C  7C 7E 1B 78 */	mr r30, r3
/* 80A7C990  3C 60 80 A8 */	lis r3, l_arcNames@ha
/* 80A7C994  38 63 3A F8 */	addi r3, r3, l_arcNames@l
/* 80A7C998  80 63 00 00 */	lwz r3, 0(r3)
/* 80A7C99C  38 80 00 0F */	li r4, 0xf
/* 80A7C9A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A7C9A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A7C9A8  3F E5 00 02 */	addis r31, r5, 2
/* 80A7C9AC  3B FF C2 F8 */	addi r31, r31, -15624
/* 80A7C9B0  7F E5 FB 78 */	mr r5, r31
/* 80A7C9B4  38 C0 00 80 */	li r6, 0x80
/* 80A7C9B8  4B 5B F9 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A7C9BC  7C 7D 1B 78 */	mr r29, r3
/* 80A7C9C0  38 60 00 58 */	li r3, 0x58
/* 80A7C9C4  4B 85 22 88 */	b __nw__FUl
/* 80A7C9C8  7C 60 1B 79 */	or. r0, r3, r3
/* 80A7C9CC  41 82 00 4C */	beq lbl_80A7CA18
/* 80A7C9D0  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 80A7C9D4  90 01 00 08 */	stw r0, 8(r1)
/* 80A7C9D8  3C 00 00 08 */	lis r0, 8
/* 80A7C9DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7C9E0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A7C9E4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A7C9E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7C9EC  7F A4 EB 78 */	mr r4, r29
/* 80A7C9F0  38 A0 00 00 */	li r5, 0
/* 80A7C9F4  38 C0 00 00 */	li r6, 0
/* 80A7C9F8  38 E0 00 00 */	li r7, 0
/* 80A7C9FC  39 00 FF FF */	li r8, -1
/* 80A7CA00  3D 20 80 A8 */	lis r9, lit_4337@ha
/* 80A7CA04  C0 29 33 30 */	lfs f1, lit_4337@l(r9)
/* 80A7CA08  39 20 00 00 */	li r9, 0
/* 80A7CA0C  39 40 FF FF */	li r10, -1
/* 80A7CA10  4B 59 3D C0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A7CA14  7C 60 1B 78 */	mr r0, r3
lbl_80A7CA18:
/* 80A7CA18  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80A7CA1C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A7CA20  28 03 00 00 */	cmplwi r3, 0
/* 80A7CA24  41 82 00 1C */	beq lbl_80A7CA40
/* 80A7CA28  80 03 00 04 */	lwz r0, 4(r3)
/* 80A7CA2C  28 00 00 00 */	cmplwi r0, 0
/* 80A7CA30  40 82 00 10 */	bne lbl_80A7CA40
/* 80A7CA34  4B 59 48 DC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A7CA38  38 00 00 00 */	li r0, 0
/* 80A7CA3C  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80A7CA40:
/* 80A7CA40  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A7CA44  28 03 00 00 */	cmplwi r3, 0
/* 80A7CA48  40 82 00 0C */	bne lbl_80A7CA54
/* 80A7CA4C  38 60 00 00 */	li r3, 0
/* 80A7CA50  48 00 02 24 */	b lbl_80A7CC74
lbl_80A7CA54:
/* 80A7CA54  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A7CA58  38 C0 00 00 */	li r6, 0
/* 80A7CA5C  3C 60 80 A8 */	lis r3, ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi@ha
/* 80A7CA60  38 83 D0 EC */	addi r4, r3, ctrlJointCallBack__11daNpcMoiR_cFP8J3DJointi@l
/* 80A7CA64  48 00 00 18 */	b lbl_80A7CA7C
lbl_80A7CA68:
/* 80A7CA68  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A7CA6C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A7CA70  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A7CA74  90 83 00 04 */	stw r4, 4(r3)
/* 80A7CA78  38 C6 00 01 */	addi r6, r6, 1
lbl_80A7CA7C:
/* 80A7CA7C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A7CA80  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A7CA84  7C 03 00 40 */	cmplw r3, r0
/* 80A7CA88  41 80 FF E0 */	blt lbl_80A7CA68
/* 80A7CA8C  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A7CA90  38 60 01 08 */	li r3, 0x108
/* 80A7CA94  4B 85 21 B8 */	b __nw__FUl
/* 80A7CA98  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A7CA9C  41 82 00 D0 */	beq lbl_80A7CB6C
/* 80A7CAA0  7F BC EB 78 */	mr r28, r29
/* 80A7CAA4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A7CAA8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A7CAAC  90 1D 00 00 */	stw r0, 0(r29)
/* 80A7CAB0  38 7D 00 04 */	addi r3, r29, 4
/* 80A7CAB4  3C 80 80 A8 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A7CAB8  38 84 CE 30 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A7CABC  3C A0 80 A8 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A7CAC0  38 A5 CD F4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A7CAC4  38 C0 00 08 */	li r6, 8
/* 80A7CAC8  38 E0 00 02 */	li r7, 2
/* 80A7CACC  4B 8E 52 94 */	b __construct_array
/* 80A7CAD0  38 7D 00 14 */	addi r3, r29, 0x14
/* 80A7CAD4  3C 80 80 A8 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A7CAD8  38 84 CD DC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A7CADC  3C A0 80 A8 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A7CAE0  38 A5 CD A0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A7CAE4  38 C0 00 08 */	li r6, 8
/* 80A7CAE8  38 E0 00 08 */	li r7, 8
/* 80A7CAEC  4B 8E 52 74 */	b __construct_array
/* 80A7CAF0  38 7D 00 54 */	addi r3, r29, 0x54
/* 80A7CAF4  3C 80 80 A8 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A7CAF8  38 84 CD 7C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A7CAFC  3C A0 80 A8 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A7CB00  38 A5 CD 34 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A7CB04  38 C0 00 0C */	li r6, 0xc
/* 80A7CB08  38 E0 00 08 */	li r7, 8
/* 80A7CB0C  4B 8E 52 54 */	b __construct_array
/* 80A7CB10  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80A7CB14  3C 80 80 A8 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A7CB18  38 84 CD 1C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A7CB1C  3C A0 80 A8 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A7CB20  38 A5 CC E0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A7CB24  38 C0 00 08 */	li r6, 8
/* 80A7CB28  38 E0 00 04 */	li r7, 4
/* 80A7CB2C  4B 8E 52 34 */	b __construct_array
/* 80A7CB30  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80A7CB34  3C 80 80 A8 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A7CB38  38 84 CC C8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A7CB3C  3C A0 80 A8 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A7CB40  38 A5 CC 8C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A7CB44  38 C0 00 08 */	li r6, 8
/* 80A7CB48  38 E0 00 04 */	li r7, 4
/* 80A7CB4C  4B 8E 52 14 */	b __construct_array
/* 80A7CB50  7F A3 EB 78 */	mr r3, r29
/* 80A7CB54  4B 8A F7 CC */	b initialize__14J3DMaterialAnmFv
/* 80A7CB58  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80A7CB5C  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80A7CB60  90 1C 00 00 */	stw r0, 0(r28)
/* 80A7CB64  7F 83 E3 78 */	mr r3, r28
/* 80A7CB68  4B 6D 3B D0 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80A7CB6C:
/* 80A7CB6C  93 BE 0B DC */	stw r29, 0xbdc(r30)
/* 80A7CB70  80 1E 0B DC */	lwz r0, 0xbdc(r30)
/* 80A7CB74  28 00 00 00 */	cmplwi r0, 0
/* 80A7CB78  40 82 00 0C */	bne lbl_80A7CB84
/* 80A7CB7C  38 60 00 00 */	li r3, 0
/* 80A7CB80  48 00 00 F4 */	b lbl_80A7CC74
lbl_80A7CB84:
/* 80A7CB84  3C 60 80 A8 */	lis r3, l_arcNames@ha
/* 80A7CB88  38 63 3A F8 */	addi r3, r3, l_arcNames@l
/* 80A7CB8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A7CB90  38 80 00 10 */	li r4, 0x10
/* 80A7CB94  7F E5 FB 78 */	mr r5, r31
/* 80A7CB98  38 C0 00 80 */	li r6, 0x80
/* 80A7CB9C  4B 5B F7 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A7CBA0  3C 80 00 08 */	lis r4, 8
/* 80A7CBA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A7CBA8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A7CBAC  4B 59 80 A8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A7CBB0  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80A7CBB4  7F C3 F3 78 */	mr r3, r30
/* 80A7CBB8  38 80 00 01 */	li r4, 1
/* 80A7CBBC  38 A0 00 00 */	li r5, 0
/* 80A7CBC0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7CBC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A7CBC8  7D 89 03 A6 */	mtctr r12
/* 80A7CBCC  4E 80 04 21 */	bctrl 
/* 80A7CBD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A7CBD4  40 82 00 0C */	bne lbl_80A7CBE0
/* 80A7CBD8  38 60 00 00 */	li r3, 0
/* 80A7CBDC  48 00 00 98 */	b lbl_80A7CC74
lbl_80A7CBE0:
/* 80A7CBE0  88 1E 0E 0B */	lbz r0, 0xe0b(r30)
/* 80A7CBE4  2C 00 00 01 */	cmpwi r0, 1
/* 80A7CBE8  41 82 00 44 */	beq lbl_80A7CC2C
/* 80A7CBEC  40 80 00 10 */	bge lbl_80A7CBFC
/* 80A7CBF0  2C 00 00 00 */	cmpwi r0, 0
/* 80A7CBF4  40 80 00 14 */	bge lbl_80A7CC08
/* 80A7CBF8  48 00 00 78 */	b lbl_80A7CC70
lbl_80A7CBFC:
/* 80A7CBFC  2C 00 00 03 */	cmpwi r0, 3
/* 80A7CC00  40 80 00 70 */	bge lbl_80A7CC70
/* 80A7CC04  48 00 00 4C */	b lbl_80A7CC50
lbl_80A7CC08:
/* 80A7CC08  7F C3 F3 78 */	mr r3, r30
/* 80A7CC0C  38 80 00 1C */	li r4, 0x1c
/* 80A7CC10  3C A0 80 A8 */	lis r5, lit_4338@ha
/* 80A7CC14  C0 25 33 34 */	lfs f1, lit_4338@l(r5)
/* 80A7CC18  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7CC1C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A7CC20  7D 89 03 A6 */	mtctr r12
/* 80A7CC24  4E 80 04 21 */	bctrl 
/* 80A7CC28  48 00 00 48 */	b lbl_80A7CC70
lbl_80A7CC2C:
/* 80A7CC2C  7F C3 F3 78 */	mr r3, r30
/* 80A7CC30  38 80 00 0D */	li r4, 0xd
/* 80A7CC34  3C A0 80 A8 */	lis r5, lit_4338@ha
/* 80A7CC38  C0 25 33 34 */	lfs f1, lit_4338@l(r5)
/* 80A7CC3C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7CC40  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A7CC44  7D 89 03 A6 */	mtctr r12
/* 80A7CC48  4E 80 04 21 */	bctrl 
/* 80A7CC4C  48 00 00 24 */	b lbl_80A7CC70
lbl_80A7CC50:
/* 80A7CC50  7F C3 F3 78 */	mr r3, r30
/* 80A7CC54  38 80 00 25 */	li r4, 0x25
/* 80A7CC58  3C A0 80 A8 */	lis r5, lit_4338@ha
/* 80A7CC5C  C0 25 33 34 */	lfs f1, lit_4338@l(r5)
/* 80A7CC60  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7CC64  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A7CC68  7D 89 03 A6 */	mtctr r12
/* 80A7CC6C  4E 80 04 21 */	bctrl 
lbl_80A7CC70:
/* 80A7CC70  38 60 00 01 */	li r3, 1
lbl_80A7CC74:
/* 80A7CC74  39 61 00 30 */	addi r11, r1, 0x30
/* 80A7CC78  4B 8E 55 AC */	b _restgpr_28
/* 80A7CC7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7CC80  7C 08 03 A6 */	mtlr r0
/* 80A7CC84  38 21 00 30 */	addi r1, r1, 0x30
/* 80A7CC88  4E 80 00 20 */	blr 
