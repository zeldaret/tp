lbl_80ACBBD4:
/* 80ACBBD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACBBD8  7C 08 02 A6 */	mflr r0
/* 80ACBBDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACBBE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACBBE4  4B 89 65 F5 */	bl _savegpr_28
/* 80ACBBE8  7C 7F 1B 78 */	mr r31, r3
/* 80ACBBEC  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80ACBBF0  28 00 00 01 */	cmplwi r0, 1
/* 80ACBBF4  38 00 00 00 */	li r0, 0
/* 80ACBBF8  3C 60 80 AD */	lis r3, l_bmdData@ha /* 0x80ACFFB0@ha */
/* 80ACBBFC  38 83 FF B0 */	addi r4, r3, l_bmdData@l /* 0x80ACFFB0@l */
/* 80ACBC00  54 00 18 38 */	slwi r0, r0, 3
/* 80ACBC04  7C 64 02 14 */	add r3, r4, r0
/* 80ACBC08  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACBC0C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACBC10  54 60 10 3A */	slwi r0, r3, 2
/* 80ACBC14  3C 60 80 AD */	lis r3, l_resNameList@ha /* 0x80ACFFE0@ha */
/* 80ACBC18  38 63 FF E0 */	addi r3, r3, l_resNameList@l /* 0x80ACFFE0@l */
/* 80ACBC1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80ACBC20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACBC24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACBC28  3F C5 00 02 */	addis r30, r5, 2
/* 80ACBC2C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80ACBC30  7F C5 F3 78 */	mr r5, r30
/* 80ACBC34  38 C0 00 80 */	li r6, 0x80
/* 80ACBC38  4B 57 06 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80ACBC3C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80ACBC40  40 82 00 0C */	bne lbl_80ACBC4C
/* 80ACBC44  38 60 00 01 */	li r3, 1
/* 80ACBC48  48 00 02 E0 */	b lbl_80ACBF28
lbl_80ACBC4C:
/* 80ACBC4C  38 60 00 58 */	li r3, 0x58
/* 80ACBC50  4B 80 2F FD */	bl __nw__FUl
/* 80ACBC54  7C 60 1B 79 */	or. r0, r3, r3
/* 80ACBC58  41 82 00 4C */	beq lbl_80ACBCA4
/* 80ACBC5C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80ACBC60  90 01 00 08 */	stw r0, 8(r1)
/* 80ACBC64  3C 00 00 08 */	lis r0, 8
/* 80ACBC68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACBC6C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80ACBC70  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80ACBC74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACBC78  7F 84 E3 78 */	mr r4, r28
/* 80ACBC7C  38 A0 00 00 */	li r5, 0
/* 80ACBC80  38 C0 00 00 */	li r6, 0
/* 80ACBC84  38 E0 00 00 */	li r7, 0
/* 80ACBC88  39 00 FF FF */	li r8, -1
/* 80ACBC8C  3D 20 80 AD */	lis r9, lit_4455@ha /* 0x80ACFEAC@ha */
/* 80ACBC90  C0 29 FE AC */	lfs f1, lit_4455@l(r9)  /* 0x80ACFEAC@l */
/* 80ACBC94  39 20 00 00 */	li r9, 0
/* 80ACBC98  39 40 FF FF */	li r10, -1
/* 80ACBC9C  4B 54 4B 35 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80ACBCA0  7C 60 1B 78 */	mr r0, r3
lbl_80ACBCA4:
/* 80ACBCA4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80ACBCA8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80ACBCAC  28 03 00 00 */	cmplwi r3, 0
/* 80ACBCB0  41 82 00 10 */	beq lbl_80ACBCC0
/* 80ACBCB4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80ACBCB8  28 05 00 00 */	cmplwi r5, 0
/* 80ACBCBC  40 82 00 0C */	bne lbl_80ACBCC8
lbl_80ACBCC0:
/* 80ACBCC0  38 60 00 00 */	li r3, 0
/* 80ACBCC4  48 00 02 64 */	b lbl_80ACBF28
lbl_80ACBCC8:
/* 80ACBCC8  38 C0 00 00 */	li r6, 0
/* 80ACBCCC  3C 60 80 AD */	lis r3, ctrlJointCallBack__13daNpc_Seira_cFP8J3DJointi@ha /* 0x80ACC2D0@ha */
/* 80ACBCD0  38 83 C2 D0 */	addi r4, r3, ctrlJointCallBack__13daNpc_Seira_cFP8J3DJointi@l /* 0x80ACC2D0@l */
/* 80ACBCD4  48 00 00 18 */	b lbl_80ACBCEC
lbl_80ACBCD8:
/* 80ACBCD8  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80ACBCDC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80ACBCE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80ACBCE4  90 83 00 04 */	stw r4, 4(r3)
/* 80ACBCE8  38 C6 00 01 */	addi r6, r6, 1
lbl_80ACBCEC:
/* 80ACBCEC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80ACBCF0  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80ACBCF4  7C 03 00 40 */	cmplw r3, r0
/* 80ACBCF8  41 80 FF E0 */	blt lbl_80ACBCD8
/* 80ACBCFC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80ACBD00  38 60 01 08 */	li r3, 0x108
/* 80ACBD04  4B 80 2F 49 */	bl __nw__FUl
/* 80ACBD08  7C 7D 1B 79 */	or. r29, r3, r3
/* 80ACBD0C  41 82 00 D0 */	beq lbl_80ACBDDC
/* 80ACBD10  7F BC EB 78 */	mr r28, r29
/* 80ACBD14  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80ACBD18  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80ACBD1C  90 1D 00 00 */	stw r0, 0(r29)
/* 80ACBD20  38 7D 00 04 */	addi r3, r29, 4
/* 80ACBD24  3C 80 80 AD */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80ACC0E4@ha */
/* 80ACBD28  38 84 C0 E4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80ACC0E4@l */
/* 80ACBD2C  3C A0 80 AD */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80ACC0A8@ha */
/* 80ACBD30  38 A5 C0 A8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80ACC0A8@l */
/* 80ACBD34  38 C0 00 08 */	li r6, 8
/* 80ACBD38  38 E0 00 02 */	li r7, 2
/* 80ACBD3C  4B 89 60 25 */	bl __construct_array
/* 80ACBD40  38 7D 00 14 */	addi r3, r29, 0x14
/* 80ACBD44  3C 80 80 AD */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80ACC090@ha */
/* 80ACBD48  38 84 C0 90 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80ACC090@l */
/* 80ACBD4C  3C A0 80 AD */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80ACC054@ha */
/* 80ACBD50  38 A5 C0 54 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80ACC054@l */
/* 80ACBD54  38 C0 00 08 */	li r6, 8
/* 80ACBD58  38 E0 00 08 */	li r7, 8
/* 80ACBD5C  4B 89 60 05 */	bl __construct_array
/* 80ACBD60  38 7D 00 54 */	addi r3, r29, 0x54
/* 80ACBD64  3C 80 80 AD */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80ACC030@ha */
/* 80ACBD68  38 84 C0 30 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80ACC030@l */
/* 80ACBD6C  3C A0 80 AD */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80ACBFE8@ha */
/* 80ACBD70  38 A5 BF E8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80ACBFE8@l */
/* 80ACBD74  38 C0 00 0C */	li r6, 0xc
/* 80ACBD78  38 E0 00 08 */	li r7, 8
/* 80ACBD7C  4B 89 5F E5 */	bl __construct_array
/* 80ACBD80  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80ACBD84  3C 80 80 AD */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80ACBFD0@ha */
/* 80ACBD88  38 84 BF D0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80ACBFD0@l */
/* 80ACBD8C  3C A0 80 AD */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80ACBF94@ha */
/* 80ACBD90  38 A5 BF 94 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80ACBF94@l */
/* 80ACBD94  38 C0 00 08 */	li r6, 8
/* 80ACBD98  38 E0 00 04 */	li r7, 4
/* 80ACBD9C  4B 89 5F C5 */	bl __construct_array
/* 80ACBDA0  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80ACBDA4  3C 80 80 AD */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80ACBF7C@ha */
/* 80ACBDA8  38 84 BF 7C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80ACBF7C@l */
/* 80ACBDAC  3C A0 80 AD */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80ACBF40@ha */
/* 80ACBDB0  38 A5 BF 40 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80ACBF40@l */
/* 80ACBDB4  38 C0 00 08 */	li r6, 8
/* 80ACBDB8  38 E0 00 04 */	li r7, 4
/* 80ACBDBC  4B 89 5F A5 */	bl __construct_array
/* 80ACBDC0  7F A3 EB 78 */	mr r3, r29
/* 80ACBDC4  4B 86 05 5D */	bl initialize__14J3DMaterialAnmFv
/* 80ACBDC8  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80ACBDCC  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80ACBDD0  90 1C 00 00 */	stw r0, 0(r28)
/* 80ACBDD4  7F 83 E3 78 */	mr r3, r28
/* 80ACBDD8  4B 67 99 8D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80ACBDDC:
/* 80ACBDDC  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80ACBDE0  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80ACBDE4  28 00 00 00 */	cmplwi r0, 0
/* 80ACBDE8  40 82 00 0C */	bne lbl_80ACBDF4
/* 80ACBDEC  38 60 00 00 */	li r3, 0
/* 80ACBDF0  48 00 01 38 */	b lbl_80ACBF28
lbl_80ACBDF4:
/* 80ACBDF4  88 1F 10 C1 */	lbz r0, 0x10c1(r31)
/* 80ACBDF8  28 00 00 05 */	cmplwi r0, 5
/* 80ACBDFC  41 82 00 B8 */	beq lbl_80ACBEB4
/* 80ACBE00  3C 60 80 AD */	lis r3, l_bmdData@ha /* 0x80ACFFB0@ha */
/* 80ACBE04  38 63 FF B0 */	addi r3, r3, l_bmdData@l /* 0x80ACFFB0@l */
/* 80ACBE08  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ACBE0C  80 83 00 08 */	lwz r4, 8(r3)
/* 80ACBE10  54 00 10 3A */	slwi r0, r0, 2
/* 80ACBE14  3C 60 80 AD */	lis r3, l_resNameList@ha /* 0x80ACFFE0@ha */
/* 80ACBE18  38 63 FF E0 */	addi r3, r3, l_resNameList@l /* 0x80ACFFE0@l */
/* 80ACBE1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80ACBE20  7F C5 F3 78 */	mr r5, r30
/* 80ACBE24  38 C0 00 80 */	li r6, 0x80
/* 80ACBE28  4B 57 04 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80ACBE2C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80ACBE30  40 82 00 0C */	bne lbl_80ACBE3C
/* 80ACBE34  38 60 00 00 */	li r3, 0
/* 80ACBE38  48 00 00 F0 */	b lbl_80ACBF28
lbl_80ACBE3C:
/* 80ACBE3C  38 60 00 58 */	li r3, 0x58
/* 80ACBE40  4B 80 2E 0D */	bl __nw__FUl
/* 80ACBE44  7C 60 1B 79 */	or. r0, r3, r3
/* 80ACBE48  41 82 00 48 */	beq lbl_80ACBE90
/* 80ACBE4C  38 00 00 00 */	li r0, 0
/* 80ACBE50  90 01 00 08 */	stw r0, 8(r1)
/* 80ACBE54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ACBE58  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80ACBE5C  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80ACBE60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ACBE64  7F 84 E3 78 */	mr r4, r28
/* 80ACBE68  38 A0 00 00 */	li r5, 0
/* 80ACBE6C  38 C0 00 00 */	li r6, 0
/* 80ACBE70  38 E0 00 00 */	li r7, 0
/* 80ACBE74  39 00 FF FF */	li r8, -1
/* 80ACBE78  3D 20 80 AD */	lis r9, lit_4455@ha /* 0x80ACFEAC@ha */
/* 80ACBE7C  C0 29 FE AC */	lfs f1, lit_4455@l(r9)  /* 0x80ACFEAC@l */
/* 80ACBE80  39 20 00 00 */	li r9, 0
/* 80ACBE84  39 40 FF FF */	li r10, -1
/* 80ACBE88  4B 54 49 49 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80ACBE8C  7C 60 1B 78 */	mr r0, r3
lbl_80ACBE90:
/* 80ACBE90  90 1F 0F 7C */	stw r0, 0xf7c(r31)
/* 80ACBE94  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACBE98  28 03 00 00 */	cmplwi r3, 0
/* 80ACBE9C  41 82 00 10 */	beq lbl_80ACBEAC
/* 80ACBEA0  80 03 00 04 */	lwz r0, 4(r3)
/* 80ACBEA4  28 00 00 00 */	cmplwi r0, 0
/* 80ACBEA8  40 82 00 0C */	bne lbl_80ACBEB4
lbl_80ACBEAC:
/* 80ACBEAC  38 60 00 00 */	li r3, 0
/* 80ACBEB0  48 00 00 78 */	b lbl_80ACBF28
lbl_80ACBEB4:
/* 80ACBEB4  7F E3 FB 78 */	mr r3, r31
/* 80ACBEB8  38 80 00 01 */	li r4, 1
/* 80ACBEBC  38 A0 00 00 */	li r5, 0
/* 80ACBEC0  4B 67 E4 C9 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80ACBEC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ACBEC8  41 82 00 5C */	beq lbl_80ACBF24
/* 80ACBECC  7F E3 FB 78 */	mr r3, r31
/* 80ACBED0  38 80 00 00 */	li r4, 0
/* 80ACBED4  3C A0 80 AD */	lis r5, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACBED8  C0 25 FE 98 */	lfs f1, lit_4063@l(r5)  /* 0x80ACFE98@l */
/* 80ACBEDC  38 A0 00 00 */	li r5, 0
/* 80ACBEE0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80ACBEE4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80ACBEE8  7D 89 03 A6 */	mtctr r12
/* 80ACBEEC  4E 80 04 21 */	bctrl 
/* 80ACBEF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ACBEF4  41 82 00 30 */	beq lbl_80ACBF24
/* 80ACBEF8  7F E3 FB 78 */	mr r3, r31
/* 80ACBEFC  38 80 00 1A */	li r4, 0x1a
/* 80ACBF00  38 A0 00 02 */	li r5, 2
/* 80ACBF04  3C C0 80 AD */	lis r6, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACBF08  C0 26 FE 98 */	lfs f1, lit_4063@l(r6)  /* 0x80ACFE98@l */
/* 80ACBF0C  38 C0 00 00 */	li r6, 0
/* 80ACBF10  48 00 15 49 */	bl setBottleAnm__13daNpc_Seira_cFiifb
/* 80ACBF14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ACBF18  41 82 00 0C */	beq lbl_80ACBF24
/* 80ACBF1C  38 60 00 01 */	li r3, 1
/* 80ACBF20  48 00 00 08 */	b lbl_80ACBF28
lbl_80ACBF24:
/* 80ACBF24  38 60 00 00 */	li r3, 0
lbl_80ACBF28:
/* 80ACBF28  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACBF2C  4B 89 62 F9 */	bl _restgpr_28
/* 80ACBF30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACBF34  7C 08 03 A6 */	mtlr r0
/* 80ACBF38  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACBF3C  4E 80 00 20 */	blr 
