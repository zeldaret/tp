lbl_8055B9A8:
/* 8055B9A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055B9AC  7C 08 02 A6 */	mflr r0
/* 8055B9B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055B9B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8055B9B8  4B E0 68 25 */	bl _savegpr_29
/* 8055B9BC  7C 7E 1B 78 */	mr r30, r3
/* 8055B9C0  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 8055B9C4  20 00 00 01 */	subfic r0, r0, 1
/* 8055B9C8  7C 00 00 34 */	cntlzw r0, r0
/* 8055B9CC  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 8055B9D0  3C 60 80 56 */	lis r3, l_bmdData@ha /* 0x80564FBC@ha */
/* 8055B9D4  38 83 4F BC */	addi r4, r3, l_bmdData@l /* 0x80564FBC@l */
/* 8055B9D8  7C 64 2A 14 */	add r3, r4, r5
/* 8055B9DC  80 03 00 04 */	lwz r0, 4(r3)
/* 8055B9E0  54 00 10 3A */	slwi r0, r0, 2
/* 8055B9E4  3C 60 80 56 */	lis r3, l_resNameList@ha /* 0x80565044@ha */
/* 8055B9E8  38 63 50 44 */	addi r3, r3, l_resNameList@l /* 0x80565044@l */
/* 8055B9EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8055B9F0  7C 84 28 2E */	lwzx r4, r4, r5
/* 8055B9F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055B9F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055B9FC  3C A5 00 02 */	addis r5, r5, 2
/* 8055BA00  38 C0 00 80 */	li r6, 0x80
/* 8055BA04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8055BA08  4B AE 08 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8055BA0C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8055BA10  40 82 00 0C */	bne lbl_8055BA1C
/* 8055BA14  38 60 00 00 */	li r3, 0
/* 8055BA18  48 00 01 FC */	b lbl_8055BC14
lbl_8055BA1C:
/* 8055BA1C  38 60 00 58 */	li r3, 0x58
/* 8055BA20  4B D7 32 2D */	bl __nw__FUl
/* 8055BA24  7C 60 1B 79 */	or. r0, r3, r3
/* 8055BA28  41 82 00 4C */	beq lbl_8055BA74
/* 8055BA2C  38 1E 05 80 */	addi r0, r30, 0x580
/* 8055BA30  90 01 00 08 */	stw r0, 8(r1)
/* 8055BA34  3C 00 00 08 */	lis r0, 8
/* 8055BA38  90 01 00 0C */	stw r0, 0xc(r1)
/* 8055BA3C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8055BA40  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8055BA44  90 01 00 10 */	stw r0, 0x10(r1)
/* 8055BA48  7F A4 EB 78 */	mr r4, r29
/* 8055BA4C  38 A0 00 00 */	li r5, 0
/* 8055BA50  38 C0 00 00 */	li r6, 0
/* 8055BA54  38 E0 00 00 */	li r7, 0
/* 8055BA58  39 00 FF FF */	li r8, -1
/* 8055BA5C  3D 20 80 56 */	lis r9, lit_4688@ha /* 0x80564CB4@ha */
/* 8055BA60  C0 29 4C B4 */	lfs f1, lit_4688@l(r9)  /* 0x80564CB4@l */
/* 8055BA64  39 20 00 00 */	li r9, 0
/* 8055BA68  39 40 FF FF */	li r10, -1
/* 8055BA6C  4B AB 4D 65 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8055BA70  7C 60 1B 78 */	mr r0, r3
lbl_8055BA74:
/* 8055BA74  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8055BA78  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8055BA7C  28 03 00 00 */	cmplwi r3, 0
/* 8055BA80  41 82 00 10 */	beq lbl_8055BA90
/* 8055BA84  80 A3 00 04 */	lwz r5, 4(r3)
/* 8055BA88  28 05 00 00 */	cmplwi r5, 0
/* 8055BA8C  40 82 00 0C */	bne lbl_8055BA98
lbl_8055BA90:
/* 8055BA90  38 60 00 00 */	li r3, 0
/* 8055BA94  48 00 01 80 */	b lbl_8055BC14
lbl_8055BA98:
/* 8055BA98  38 C0 00 00 */	li r6, 0
/* 8055BA9C  3C 60 80 56 */	lis r3, ctrlJointCallBack__12daNpc_Maro_cFP8J3DJointi@ha /* 0x8055BFC0@ha */
/* 8055BAA0  38 83 BF C0 */	addi r4, r3, ctrlJointCallBack__12daNpc_Maro_cFP8J3DJointi@l /* 0x8055BFC0@l */
/* 8055BAA4  48 00 00 18 */	b lbl_8055BABC
lbl_8055BAA8:
/* 8055BAA8  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8055BAAC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8055BAB0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8055BAB4  90 83 00 04 */	stw r4, 4(r3)
/* 8055BAB8  38 C6 00 01 */	addi r6, r6, 1
lbl_8055BABC:
/* 8055BABC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8055BAC0  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8055BAC4  7C 03 00 40 */	cmplw r3, r0
/* 8055BAC8  41 80 FF E0 */	blt lbl_8055BAA8
/* 8055BACC  93 C5 00 14 */	stw r30, 0x14(r5)
/* 8055BAD0  38 60 01 08 */	li r3, 0x108
/* 8055BAD4  4B D7 31 79 */	bl __nw__FUl
/* 8055BAD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8055BADC  41 82 00 D0 */	beq lbl_8055BBAC
/* 8055BAE0  7F FD FB 78 */	mr r29, r31
/* 8055BAE4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 8055BAE8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8055BAEC  90 1F 00 00 */	stw r0, 0(r31)
/* 8055BAF0  38 7F 00 04 */	addi r3, r31, 4
/* 8055BAF4  3C 80 80 56 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8055BDD0@ha */
/* 8055BAF8  38 84 BD D0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8055BDD0@l */
/* 8055BAFC  3C A0 80 56 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8055BD94@ha */
/* 8055BB00  38 A5 BD 94 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8055BD94@l */
/* 8055BB04  38 C0 00 08 */	li r6, 8
/* 8055BB08  38 E0 00 02 */	li r7, 2
/* 8055BB0C  4B E0 62 55 */	bl __construct_array
/* 8055BB10  38 7F 00 14 */	addi r3, r31, 0x14
/* 8055BB14  3C 80 80 56 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8055BD7C@ha */
/* 8055BB18  38 84 BD 7C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8055BD7C@l */
/* 8055BB1C  3C A0 80 56 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8055BD40@ha */
/* 8055BB20  38 A5 BD 40 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8055BD40@l */
/* 8055BB24  38 C0 00 08 */	li r6, 8
/* 8055BB28  38 E0 00 08 */	li r7, 8
/* 8055BB2C  4B E0 62 35 */	bl __construct_array
/* 8055BB30  38 7F 00 54 */	addi r3, r31, 0x54
/* 8055BB34  3C 80 80 56 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8055BD1C@ha */
/* 8055BB38  38 84 BD 1C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8055BD1C@l */
/* 8055BB3C  3C A0 80 56 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8055BCD4@ha */
/* 8055BB40  38 A5 BC D4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8055BCD4@l */
/* 8055BB44  38 C0 00 0C */	li r6, 0xc
/* 8055BB48  38 E0 00 08 */	li r7, 8
/* 8055BB4C  4B E0 62 15 */	bl __construct_array
/* 8055BB50  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8055BB54  3C 80 80 56 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8055BCBC@ha */
/* 8055BB58  38 84 BC BC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8055BCBC@l */
/* 8055BB5C  3C A0 80 56 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8055BC80@ha */
/* 8055BB60  38 A5 BC 80 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8055BC80@l */
/* 8055BB64  38 C0 00 08 */	li r6, 8
/* 8055BB68  38 E0 00 04 */	li r7, 4
/* 8055BB6C  4B E0 61 F5 */	bl __construct_array
/* 8055BB70  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8055BB74  3C 80 80 56 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8055BC68@ha */
/* 8055BB78  38 84 BC 68 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8055BC68@l */
/* 8055BB7C  3C A0 80 56 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8055BC2C@ha */
/* 8055BB80  38 A5 BC 2C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8055BC2C@l */
/* 8055BB84  38 C0 00 08 */	li r6, 8
/* 8055BB88  38 E0 00 04 */	li r7, 4
/* 8055BB8C  4B E0 61 D5 */	bl __construct_array
/* 8055BB90  7F E3 FB 78 */	mr r3, r31
/* 8055BB94  4B DD 07 8D */	bl initialize__14J3DMaterialAnmFv
/* 8055BB98  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 8055BB9C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 8055BBA0  90 1D 00 00 */	stw r0, 0(r29)
/* 8055BBA4  7F A3 EB 78 */	mr r3, r29
/* 8055BBA8  4B BE 9B BD */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8055BBAC:
/* 8055BBAC  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 8055BBB0  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 8055BBB4  28 00 00 00 */	cmplwi r0, 0
/* 8055BBB8  40 82 00 0C */	bne lbl_8055BBC4
/* 8055BBBC  38 60 00 00 */	li r3, 0
/* 8055BBC0  48 00 00 54 */	b lbl_8055BC14
lbl_8055BBC4:
/* 8055BBC4  7F C3 F3 78 */	mr r3, r30
/* 8055BBC8  38 80 00 01 */	li r4, 1
/* 8055BBCC  38 A0 00 00 */	li r5, 0
/* 8055BBD0  4B BE E7 B9 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 8055BBD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8055BBD8  41 82 00 38 */	beq lbl_8055BC10
/* 8055BBDC  7F C3 F3 78 */	mr r3, r30
/* 8055BBE0  38 80 00 00 */	li r4, 0
/* 8055BBE4  3C A0 80 56 */	lis r5, lit_4318@ha /* 0x80564CA0@ha */
/* 8055BBE8  C0 25 4C A0 */	lfs f1, lit_4318@l(r5)  /* 0x80564CA0@l */
/* 8055BBEC  38 A0 00 00 */	li r5, 0
/* 8055BBF0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055BBF4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8055BBF8  7D 89 03 A6 */	mtctr r12
/* 8055BBFC  4E 80 04 21 */	bctrl 
/* 8055BC00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8055BC04  41 82 00 0C */	beq lbl_8055BC10
/* 8055BC08  38 60 00 01 */	li r3, 1
/* 8055BC0C  48 00 00 08 */	b lbl_8055BC14
lbl_8055BC10:
/* 8055BC10  38 60 00 00 */	li r3, 0
lbl_8055BC14:
/* 8055BC14  39 61 00 30 */	addi r11, r1, 0x30
/* 8055BC18  4B E0 66 11 */	bl _restgpr_29
/* 8055BC1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055BC20  7C 08 03 A6 */	mtlr r0
/* 8055BC24  38 21 00 30 */	addi r1, r1, 0x30
/* 8055BC28  4E 80 00 20 */	blr 
