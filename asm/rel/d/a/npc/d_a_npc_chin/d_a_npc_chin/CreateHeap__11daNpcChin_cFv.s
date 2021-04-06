lbl_8098C858:
/* 8098C858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098C85C  7C 08 02 A6 */	mflr r0
/* 8098C860  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098C864  39 61 00 30 */	addi r11, r1, 0x30
/* 8098C868  4B 9D 59 75 */	bl _savegpr_29
/* 8098C86C  7C 7F 1B 78 */	mr r31, r3
/* 8098C870  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 8098C874  28 00 00 00 */	cmplwi r0, 0
/* 8098C878  41 82 00 34 */	beq lbl_8098C8AC
/* 8098C87C  3C 60 80 99 */	lis r3, l_arcNames@ha /* 0x809920A8@ha */
/* 8098C880  38 63 20 A8 */	addi r3, r3, l_arcNames@l /* 0x809920A8@l */
/* 8098C884  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8098C888  38 80 00 03 */	li r4, 3
/* 8098C88C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098C890  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098C894  3C A5 00 02 */	addis r5, r5, 2
/* 8098C898  38 C0 00 80 */	li r6, 0x80
/* 8098C89C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8098C8A0  4B 6A FA 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8098C8A4  7C 7E 1B 78 */	mr r30, r3
/* 8098C8A8  48 00 00 30 */	b lbl_8098C8D8
lbl_8098C8AC:
/* 8098C8AC  3C 60 80 99 */	lis r3, l_arcNames@ha /* 0x809920A8@ha */
/* 8098C8B0  38 63 20 A8 */	addi r3, r3, l_arcNames@l /* 0x809920A8@l */
/* 8098C8B4  80 63 00 08 */	lwz r3, 8(r3)
/* 8098C8B8  38 80 00 03 */	li r4, 3
/* 8098C8BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098C8C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098C8C4  3C A5 00 02 */	addis r5, r5, 2
/* 8098C8C8  38 C0 00 80 */	li r6, 0x80
/* 8098C8CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8098C8D0  4B 6A FA 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8098C8D4  7C 7E 1B 78 */	mr r30, r3
lbl_8098C8D8:
/* 8098C8D8  38 60 00 58 */	li r3, 0x58
/* 8098C8DC  4B 94 23 71 */	bl __nw__FUl
/* 8098C8E0  7C 60 1B 79 */	or. r0, r3, r3
/* 8098C8E4  41 82 00 4C */	beq lbl_8098C930
/* 8098C8E8  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 8098C8EC  90 01 00 08 */	stw r0, 8(r1)
/* 8098C8F0  3C 00 00 08 */	lis r0, 8
/* 8098C8F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098C8F8  3C 80 15 02 */	lis r4, 0x1502 /* 0x15020284@ha */
/* 8098C8FC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x15020284@l */
/* 8098C900  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098C904  7F C4 F3 78 */	mr r4, r30
/* 8098C908  38 A0 00 00 */	li r5, 0
/* 8098C90C  38 C0 00 00 */	li r6, 0
/* 8098C910  38 E0 00 00 */	li r7, 0
/* 8098C914  39 00 FF FF */	li r8, -1
/* 8098C918  3D 20 80 99 */	lis r9, lit_3884@ha /* 0x80991978@ha */
/* 8098C91C  C0 29 19 78 */	lfs f1, lit_3884@l(r9)  /* 0x80991978@l */
/* 8098C920  39 20 00 00 */	li r9, 0
/* 8098C924  39 40 FF FF */	li r10, -1
/* 8098C928  4B 68 3E A9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8098C92C  7C 60 1B 78 */	mr r0, r3
lbl_8098C930:
/* 8098C930  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8098C934  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8098C938  28 03 00 00 */	cmplwi r3, 0
/* 8098C93C  41 82 00 1C */	beq lbl_8098C958
/* 8098C940  80 03 00 04 */	lwz r0, 4(r3)
/* 8098C944  28 00 00 00 */	cmplwi r0, 0
/* 8098C948  40 82 00 10 */	bne lbl_8098C958
/* 8098C94C  4B 68 49 C5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 8098C950  38 00 00 00 */	li r0, 0
/* 8098C954  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_8098C958:
/* 8098C958  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8098C95C  28 03 00 00 */	cmplwi r3, 0
/* 8098C960  40 82 00 0C */	bne lbl_8098C96C
/* 8098C964  38 60 00 00 */	li r3, 0
/* 8098C968  48 00 01 A8 */	b lbl_8098CB10
lbl_8098C96C:
/* 8098C96C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8098C970  38 C0 00 00 */	li r6, 0
/* 8098C974  3C 60 80 99 */	lis r3, ctrlJointCallBack__11daNpcChin_cFP8J3DJointi@ha /* 0x8098CFD8@ha */
/* 8098C978  38 83 CF D8 */	addi r4, r3, ctrlJointCallBack__11daNpcChin_cFP8J3DJointi@l /* 0x8098CFD8@l */
/* 8098C97C  48 00 00 18 */	b lbl_8098C994
lbl_8098C980:
/* 8098C980  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8098C984  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8098C988  7C 63 00 2E */	lwzx r3, r3, r0
/* 8098C98C  90 83 00 04 */	stw r4, 4(r3)
/* 8098C990  38 C6 00 01 */	addi r6, r6, 1
lbl_8098C994:
/* 8098C994  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8098C998  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8098C99C  7C 03 00 40 */	cmplw r3, r0
/* 8098C9A0  41 80 FF E0 */	blt lbl_8098C980
/* 8098C9A4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8098C9A8  38 60 01 08 */	li r3, 0x108
/* 8098C9AC  4B 94 22 A1 */	bl __nw__FUl
/* 8098C9B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8098C9B4  41 82 00 D0 */	beq lbl_8098CA84
/* 8098C9B8  7F DD F3 78 */	mr r29, r30
/* 8098C9BC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 8098C9C0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8098C9C4  90 1E 00 00 */	stw r0, 0(r30)
/* 8098C9C8  38 7E 00 04 */	addi r3, r30, 4
/* 8098C9CC  3C 80 80 99 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8098CCCC@ha */
/* 8098C9D0  38 84 CC CC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8098CCCC@l */
/* 8098C9D4  3C A0 80 99 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8098CC90@ha */
/* 8098C9D8  38 A5 CC 90 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8098CC90@l */
/* 8098C9DC  38 C0 00 08 */	li r6, 8
/* 8098C9E0  38 E0 00 02 */	li r7, 2
/* 8098C9E4  4B 9D 53 7D */	bl __construct_array
/* 8098C9E8  38 7E 00 14 */	addi r3, r30, 0x14
/* 8098C9EC  3C 80 80 99 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8098CC78@ha */
/* 8098C9F0  38 84 CC 78 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8098CC78@l */
/* 8098C9F4  3C A0 80 99 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8098CC3C@ha */
/* 8098C9F8  38 A5 CC 3C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8098CC3C@l */
/* 8098C9FC  38 C0 00 08 */	li r6, 8
/* 8098CA00  38 E0 00 08 */	li r7, 8
/* 8098CA04  4B 9D 53 5D */	bl __construct_array
/* 8098CA08  38 7E 00 54 */	addi r3, r30, 0x54
/* 8098CA0C  3C 80 80 99 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8098CC18@ha */
/* 8098CA10  38 84 CC 18 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8098CC18@l */
/* 8098CA14  3C A0 80 99 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8098CBD0@ha */
/* 8098CA18  38 A5 CB D0 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8098CBD0@l */
/* 8098CA1C  38 C0 00 0C */	li r6, 0xc
/* 8098CA20  38 E0 00 08 */	li r7, 8
/* 8098CA24  4B 9D 53 3D */	bl __construct_array
/* 8098CA28  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8098CA2C  3C 80 80 99 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8098CBB8@ha */
/* 8098CA30  38 84 CB B8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8098CBB8@l */
/* 8098CA34  3C A0 80 99 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8098CB7C@ha */
/* 8098CA38  38 A5 CB 7C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8098CB7C@l */
/* 8098CA3C  38 C0 00 08 */	li r6, 8
/* 8098CA40  38 E0 00 04 */	li r7, 4
/* 8098CA44  4B 9D 53 1D */	bl __construct_array
/* 8098CA48  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8098CA4C  3C 80 80 99 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8098CB64@ha */
/* 8098CA50  38 84 CB 64 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8098CB64@l */
/* 8098CA54  3C A0 80 99 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8098CB28@ha */
/* 8098CA58  38 A5 CB 28 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8098CB28@l */
/* 8098CA5C  38 C0 00 08 */	li r6, 8
/* 8098CA60  38 E0 00 04 */	li r7, 4
/* 8098CA64  4B 9D 52 FD */	bl __construct_array
/* 8098CA68  7F C3 F3 78 */	mr r3, r30
/* 8098CA6C  4B 99 F8 B5 */	bl initialize__14J3DMaterialAnmFv
/* 8098CA70  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 8098CA74  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 8098CA78  90 1D 00 00 */	stw r0, 0(r29)
/* 8098CA7C  7F A3 EB 78 */	mr r3, r29
/* 8098CA80  4B 7C 3C B9 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_8098CA84:
/* 8098CA84  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 8098CA88  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 8098CA8C  28 00 00 00 */	cmplwi r0, 0
/* 8098CA90  40 82 00 0C */	bne lbl_8098CA9C
/* 8098CA94  38 60 00 00 */	li r3, 0
/* 8098CA98  48 00 00 78 */	b lbl_8098CB10
lbl_8098CA9C:
/* 8098CA9C  7F E3 FB 78 */	mr r3, r31
/* 8098CAA0  38 80 00 01 */	li r4, 1
/* 8098CAA4  38 A0 00 00 */	li r5, 0
/* 8098CAA8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098CAAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8098CAB0  7D 89 03 A6 */	mtctr r12
/* 8098CAB4  4E 80 04 21 */	bctrl 
/* 8098CAB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098CABC  40 82 00 0C */	bne lbl_8098CAC8
/* 8098CAC0  38 60 00 00 */	li r3, 0
/* 8098CAC4  48 00 00 4C */	b lbl_8098CB10
lbl_8098CAC8:
/* 8098CAC8  7F E3 FB 78 */	mr r3, r31
/* 8098CACC  38 80 00 0F */	li r4, 0xf
/* 8098CAD0  3C A0 80 99 */	lis r5, lit_3885@ha /* 0x8099197C@ha */
/* 8098CAD4  C0 25 19 7C */	lfs f1, lit_3885@l(r5)  /* 0x8099197C@l */
/* 8098CAD8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098CADC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8098CAE0  7D 89 03 A6 */	mtctr r12
/* 8098CAE4  4E 80 04 21 */	bctrl 
/* 8098CAE8  88 1F 0E 24 */	lbz r0, 0xe24(r31)
/* 8098CAEC  7C 00 07 75 */	extsb. r0, r0
/* 8098CAF0  41 82 00 1C */	beq lbl_8098CB0C
/* 8098CAF4  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 8098CAF8  4B FF F4 15 */	bl loadModel__Q211daNpcChin_c12_SpotLight_cFv
/* 8098CAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8098CB00  40 82 00 0C */	bne lbl_8098CB0C
/* 8098CB04  38 60 00 00 */	li r3, 0
/* 8098CB08  48 00 00 08 */	b lbl_8098CB10
lbl_8098CB0C:
/* 8098CB0C  38 60 00 01 */	li r3, 1
lbl_8098CB10:
/* 8098CB10  39 61 00 30 */	addi r11, r1, 0x30
/* 8098CB14  4B 9D 57 15 */	bl _restgpr_29
/* 8098CB18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098CB1C  7C 08 03 A6 */	mtlr r0
/* 8098CB20  38 21 00 30 */	addi r1, r1, 0x30
/* 8098CB24  4E 80 00 20 */	blr 
