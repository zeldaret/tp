lbl_80693AA0:
/* 80693AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80693AA4  7C 08 02 A6 */	mflr r0
/* 80693AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80693AAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80693AB0  4B CC E7 28 */	b _savegpr_28
/* 80693AB4  7C 7F 1B 78 */	mr r31, r3
/* 80693AB8  38 60 00 58 */	li r3, 0x58
/* 80693ABC  4B C3 B1 90 */	b __nw__FUl
/* 80693AC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80693AC4  41 82 00 94 */	beq lbl_80693B58
/* 80693AC8  3C 60 80 69 */	lis r3, stringBase0@ha
/* 80693ACC  38 63 47 70 */	addi r3, r3, stringBase0@l
/* 80693AD0  38 80 00 07 */	li r4, 7
/* 80693AD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80693AD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80693ADC  3F 85 00 02 */	addis r28, r5, 2
/* 80693AE0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80693AE4  7F 85 E3 78 */	mr r5, r28
/* 80693AE8  38 C0 00 80 */	li r6, 0x80
/* 80693AEC  4B 9A 88 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80693AF0  7C 7D 1B 78 */	mr r29, r3
/* 80693AF4  3C 60 80 69 */	lis r3, stringBase0@ha
/* 80693AF8  38 63 47 70 */	addi r3, r3, stringBase0@l
/* 80693AFC  38 80 00 0B */	li r4, 0xb
/* 80693B00  7F 85 E3 78 */	mr r5, r28
/* 80693B04  38 C0 00 80 */	li r6, 0x80
/* 80693B08  4B 9A 87 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80693B0C  7C 64 1B 78 */	mr r4, r3
/* 80693B10  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80693B14  90 01 00 08 */	stw r0, 8(r1)
/* 80693B18  3C 00 00 08 */	lis r0, 8
/* 80693B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80693B20  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80693B24  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80693B28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80693B2C  7F C3 F3 78 */	mr r3, r30
/* 80693B30  38 A0 00 00 */	li r5, 0
/* 80693B34  38 C0 00 00 */	li r6, 0
/* 80693B38  7F A7 EB 78 */	mr r7, r29
/* 80693B3C  39 00 00 02 */	li r8, 2
/* 80693B40  3D 20 80 69 */	lis r9, lit_3790@ha
/* 80693B44  C0 29 46 98 */	lfs f1, lit_3790@l(r9)
/* 80693B48  39 20 00 00 */	li r9, 0
/* 80693B4C  39 40 FF FF */	li r10, -1
/* 80693B50  4B 97 CC 80 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80693B54  7C 7E 1B 78 */	mr r30, r3
lbl_80693B58:
/* 80693B58  93 DF 05 C0 */	stw r30, 0x5c0(r31)
/* 80693B5C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80693B60  28 03 00 00 */	cmplwi r3, 0
/* 80693B64  41 82 00 10 */	beq lbl_80693B74
/* 80693B68  80 A3 00 04 */	lwz r5, 4(r3)
/* 80693B6C  28 05 00 00 */	cmplwi r5, 0
/* 80693B70  40 82 00 0C */	bne lbl_80693B7C
lbl_80693B74:
/* 80693B74  38 60 00 00 */	li r3, 0
/* 80693B78  48 00 00 44 */	b lbl_80693BBC
lbl_80693B7C:
/* 80693B7C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80693B80  38 E0 00 00 */	li r7, 0
/* 80693B84  3C 60 80 69 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80693B88  38 83 12 FC */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80693B8C  48 00 00 18 */	b lbl_80693BA4
lbl_80693B90:
/* 80693B90  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80693B94  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80693B98  7C 63 00 2E */	lwzx r3, r3, r0
/* 80693B9C  90 83 00 04 */	stw r4, 4(r3)
/* 80693BA0  38 E7 00 01 */	addi r7, r7, 1
lbl_80693BA4:
/* 80693BA4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80693BA8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80693BAC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80693BB0  7C 00 18 40 */	cmplw r0, r3
/* 80693BB4  41 80 FF DC */	blt lbl_80693B90
/* 80693BB8  38 60 00 01 */	li r3, 1
lbl_80693BBC:
/* 80693BBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80693BC0  4B CC E6 64 */	b _restgpr_28
/* 80693BC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80693BC8  7C 08 03 A6 */	mtlr r0
/* 80693BCC  38 21 00 30 */	addi r1, r1, 0x30
/* 80693BD0  4E 80 00 20 */	blr 
