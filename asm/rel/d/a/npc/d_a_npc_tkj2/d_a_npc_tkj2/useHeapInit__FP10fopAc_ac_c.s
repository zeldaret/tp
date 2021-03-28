lbl_80B13BA8:
/* 80B13BA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B13BAC  7C 08 02 A6 */	mflr r0
/* 80B13BB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B13BB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B13BB8  4B 84 E6 20 */	b _savegpr_28
/* 80B13BBC  7C 7F 1B 78 */	mr r31, r3
/* 80B13BC0  38 60 00 58 */	li r3, 0x58
/* 80B13BC4  4B 7B B0 88 */	b __nw__FUl
/* 80B13BC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B13BCC  41 82 00 94 */	beq lbl_80B13C60
/* 80B13BD0  3C 60 80 B1 */	lis r3, stringBase0@ha
/* 80B13BD4  38 63 43 AC */	addi r3, r3, stringBase0@l
/* 80B13BD8  38 80 00 0A */	li r4, 0xa
/* 80B13BDC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B13BE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B13BE4  3F 85 00 02 */	addis r28, r5, 2
/* 80B13BE8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80B13BEC  7F 85 E3 78 */	mr r5, r28
/* 80B13BF0  38 C0 00 80 */	li r6, 0x80
/* 80B13BF4  4B 52 86 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B13BF8  7C 7D 1B 78 */	mr r29, r3
/* 80B13BFC  3C 60 80 B1 */	lis r3, stringBase0@ha
/* 80B13C00  38 63 43 AC */	addi r3, r3, stringBase0@l
/* 80B13C04  38 80 00 0E */	li r4, 0xe
/* 80B13C08  7F 85 E3 78 */	mr r5, r28
/* 80B13C0C  38 C0 00 80 */	li r6, 0x80
/* 80B13C10  4B 52 86 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B13C14  7C 64 1B 78 */	mr r4, r3
/* 80B13C18  38 1F 09 E8 */	addi r0, r31, 0x9e8
/* 80B13C1C  90 01 00 08 */	stw r0, 8(r1)
/* 80B13C20  3C 00 00 08 */	lis r0, 8
/* 80B13C24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B13C28  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 80B13C2C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 80B13C30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B13C34  7F C3 F3 78 */	mr r3, r30
/* 80B13C38  38 A0 00 00 */	li r5, 0
/* 80B13C3C  38 C0 00 00 */	li r6, 0
/* 80B13C40  7F A7 EB 78 */	mr r7, r29
/* 80B13C44  39 00 00 00 */	li r8, 0
/* 80B13C48  3D 20 80 B1 */	lis r9, lit_3648@ha
/* 80B13C4C  C0 29 42 DC */	lfs f1, lit_3648@l(r9)
/* 80B13C50  39 20 00 00 */	li r9, 0
/* 80B13C54  39 40 FF FF */	li r10, -1
/* 80B13C58  4B 4F CB 78 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B13C5C  7C 7E 1B 78 */	mr r30, r3
lbl_80B13C60:
/* 80B13C60  93 DF 05 D4 */	stw r30, 0x5d4(r31)
/* 80B13C64  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80B13C68  28 03 00 00 */	cmplwi r3, 0
/* 80B13C6C  41 82 00 10 */	beq lbl_80B13C7C
/* 80B13C70  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B13C74  28 05 00 00 */	cmplwi r5, 0
/* 80B13C78  40 82 00 0C */	bne lbl_80B13C84
lbl_80B13C7C:
/* 80B13C7C  38 60 00 00 */	li r3, 0
/* 80B13C80  48 00 01 88 */	b lbl_80B13E08
lbl_80B13C84:
/* 80B13C84  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B13C88  38 E0 00 00 */	li r7, 0
/* 80B13C8C  3C 60 80 B1 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80B13C90  38 83 0E CC */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80B13C94  48 00 00 18 */	b lbl_80B13CAC
lbl_80B13C98:
/* 80B13C98  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80B13C9C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80B13CA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B13CA4  90 83 00 04 */	stw r4, 4(r3)
/* 80B13CA8  38 E7 00 01 */	addi r7, r7, 1
lbl_80B13CAC:
/* 80B13CAC  80 C5 00 04 */	lwz r6, 4(r5)
/* 80B13CB0  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80B13CB4  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80B13CB8  7C 00 18 40 */	cmplw r0, r3
/* 80B13CBC  41 80 FF DC */	blt lbl_80B13C98
/* 80B13CC0  38 60 00 18 */	li r3, 0x18
/* 80B13CC4  4B 7B AF 88 */	b __nw__FUl
/* 80B13CC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B13CCC  41 82 00 20 */	beq lbl_80B13CEC
/* 80B13CD0  3C 80 80 B1 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80B13CD4  38 04 44 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80B13CD8  90 1E 00 00 */	stw r0, 0(r30)
/* 80B13CDC  38 80 00 00 */	li r4, 0
/* 80B13CE0  4B 81 47 1C */	b init__12J3DFrameCtrlFs
/* 80B13CE4  38 00 00 00 */	li r0, 0
/* 80B13CE8  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80B13CEC:
/* 80B13CEC  93 DF 05 D8 */	stw r30, 0x5d8(r31)
/* 80B13CF0  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 80B13CF4  28 00 00 00 */	cmplwi r0, 0
/* 80B13CF8  40 82 00 0C */	bne lbl_80B13D04
/* 80B13CFC  38 60 00 00 */	li r3, 0
/* 80B13D00  48 00 01 08 */	b lbl_80B13E08
lbl_80B13D04:
/* 80B13D04  3C 60 80 B1 */	lis r3, stringBase0@ha
/* 80B13D08  38 63 43 AC */	addi r3, r3, stringBase0@l
/* 80B13D0C  38 80 00 11 */	li r4, 0x11
/* 80B13D10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B13D14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B13D18  3F 85 00 02 */	addis r28, r5, 2
/* 80B13D1C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80B13D20  7F 85 E3 78 */	mr r5, r28
/* 80B13D24  38 C0 00 80 */	li r6, 0x80
/* 80B13D28  4B 52 85 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B13D2C  7C 65 1B 78 */	mr r5, r3
/* 80B13D30  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80B13D34  80 63 00 04 */	lwz r3, 4(r3)
/* 80B13D38  80 83 00 04 */	lwz r4, 4(r3)
/* 80B13D3C  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80B13D40  38 84 00 58 */	addi r4, r4, 0x58
/* 80B13D44  38 C0 00 01 */	li r6, 1
/* 80B13D48  38 E0 00 00 */	li r7, 0
/* 80B13D4C  3D 00 80 B1 */	lis r8, lit_3648@ha
/* 80B13D50  C0 28 42 DC */	lfs f1, lit_3648@l(r8)
/* 80B13D54  39 00 00 00 */	li r8, 0
/* 80B13D58  39 20 FF FF */	li r9, -1
/* 80B13D5C  4B 4F 98 E0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80B13D60  2C 03 00 00 */	cmpwi r3, 0
/* 80B13D64  40 82 00 0C */	bne lbl_80B13D70
/* 80B13D68  38 60 00 00 */	li r3, 0
/* 80B13D6C  48 00 00 9C */	b lbl_80B13E08
lbl_80B13D70:
/* 80B13D70  38 60 00 18 */	li r3, 0x18
/* 80B13D74  4B 7B AE D8 */	b __nw__FUl
/* 80B13D78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B13D7C  41 82 00 20 */	beq lbl_80B13D9C
/* 80B13D80  3C 80 80 B1 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80B13D84  38 04 44 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80B13D88  90 1E 00 00 */	stw r0, 0(r30)
/* 80B13D8C  38 80 00 00 */	li r4, 0
/* 80B13D90  4B 81 46 6C */	b init__12J3DFrameCtrlFs
/* 80B13D94  38 00 00 00 */	li r0, 0
/* 80B13D98  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80B13D9C:
/* 80B13D9C  93 DF 05 DC */	stw r30, 0x5dc(r31)
/* 80B13DA0  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80B13DA4  28 00 00 00 */	cmplwi r0, 0
/* 80B13DA8  40 82 00 0C */	bne lbl_80B13DB4
/* 80B13DAC  38 60 00 00 */	li r3, 0
/* 80B13DB0  48 00 00 58 */	b lbl_80B13E08
lbl_80B13DB4:
/* 80B13DB4  3C 60 80 B1 */	lis r3, stringBase0@ha
/* 80B13DB8  38 63 43 AC */	addi r3, r3, stringBase0@l
/* 80B13DBC  38 80 00 14 */	li r4, 0x14
/* 80B13DC0  7F 85 E3 78 */	mr r5, r28
/* 80B13DC4  38 C0 00 80 */	li r6, 0x80
/* 80B13DC8  4B 52 85 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B13DCC  7C 65 1B 78 */	mr r5, r3
/* 80B13DD0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80B13DD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B13DD8  80 83 00 04 */	lwz r4, 4(r3)
/* 80B13DDC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80B13DE0  38 84 00 58 */	addi r4, r4, 0x58
/* 80B13DE4  38 C0 00 01 */	li r6, 1
/* 80B13DE8  38 E0 00 00 */	li r7, 0
/* 80B13DEC  3D 00 80 B1 */	lis r8, lit_3648@ha
/* 80B13DF0  C0 28 42 DC */	lfs f1, lit_3648@l(r8)
/* 80B13DF4  39 00 00 00 */	li r8, 0
/* 80B13DF8  39 20 FF FF */	li r9, -1
/* 80B13DFC  4B 4F 97 50 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80B13E00  30 03 FF FF */	addic r0, r3, -1
/* 80B13E04  7C 60 19 10 */	subfe r3, r0, r3
lbl_80B13E08:
/* 80B13E08  39 61 00 30 */	addi r11, r1, 0x30
/* 80B13E0C  4B 84 E4 18 */	b _restgpr_28
/* 80B13E10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B13E14  7C 08 03 A6 */	mtlr r0
/* 80B13E18  38 21 00 30 */	addi r1, r1, 0x30
/* 80B13E1C  4E 80 00 20 */	blr 
