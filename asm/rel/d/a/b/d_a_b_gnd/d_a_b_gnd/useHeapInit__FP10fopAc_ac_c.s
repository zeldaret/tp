lbl_80600B14:
/* 80600B14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80600B18  7C 08 02 A6 */	mflr r0
/* 80600B1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80600B20  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80600B24  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80600B28  39 61 00 40 */	addi r11, r1, 0x40
/* 80600B2C  4B D6 16 94 */	b _savegpr_22
/* 80600B30  7C 7F 1B 78 */	mr r31, r3
/* 80600B34  3C 60 80 60 */	lis r3, lit_3815@ha
/* 80600B38  3B A3 26 64 */	addi r29, r3, lit_3815@l
/* 80600B3C  38 60 00 58 */	li r3, 0x58
/* 80600B40  4B CC E1 0C */	b __nw__FUl
/* 80600B44  7C 78 1B 79 */	or. r24, r3, r3
/* 80600B48  41 82 00 90 */	beq lbl_80600BD8
/* 80600B4C  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600B50  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600B54  38 80 00 4B */	li r4, 0x4b
/* 80600B58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80600B5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80600B60  3F 45 00 02 */	addis r26, r5, 2
/* 80600B64  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80600B68  7F 45 D3 78 */	mr r5, r26
/* 80600B6C  38 C0 00 80 */	li r6, 0x80
/* 80600B70  4B A3 B7 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600B74  7C 79 1B 78 */	mr r25, r3
/* 80600B78  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600B7C  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600B80  38 80 00 69 */	li r4, 0x69
/* 80600B84  7F 45 D3 78 */	mr r5, r26
/* 80600B88  38 C0 00 80 */	li r6, 0x80
/* 80600B8C  4B A3 B7 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600B90  7C 64 1B 78 */	mr r4, r3
/* 80600B94  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 80600B98  90 01 00 08 */	stw r0, 8(r1)
/* 80600B9C  38 00 00 00 */	li r0, 0
/* 80600BA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80600BA4  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 80600BA8  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 80600BAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80600BB0  7F 03 C3 78 */	mr r3, r24
/* 80600BB4  38 A0 00 00 */	li r5, 0
/* 80600BB8  38 C0 00 00 */	li r6, 0
/* 80600BBC  7F 27 CB 78 */	mr r7, r25
/* 80600BC0  39 00 00 02 */	li r8, 2
/* 80600BC4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80600BC8  39 20 00 00 */	li r9, 0
/* 80600BCC  39 40 FF FF */	li r10, -1
/* 80600BD0  4B A0 FC 00 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80600BD4  7C 78 1B 78 */	mr r24, r3
lbl_80600BD8:
/* 80600BD8  93 1F 05 D0 */	stw r24, 0x5d0(r31)
/* 80600BDC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80600BE0  28 03 00 00 */	cmplwi r3, 0
/* 80600BE4  41 82 00 10 */	beq lbl_80600BF4
/* 80600BE8  83 03 00 04 */	lwz r24, 4(r3)
/* 80600BEC  28 18 00 00 */	cmplwi r24, 0
/* 80600BF0  40 82 00 0C */	bne lbl_80600BFC
lbl_80600BF4:
/* 80600BF4  38 60 00 00 */	li r3, 0
/* 80600BF8  48 00 08 50 */	b lbl_80601448
lbl_80600BFC:
/* 80600BFC  93 F8 00 14 */	stw r31, 0x14(r24)
/* 80600C00  38 C0 00 00 */	li r6, 0
/* 80600C04  3C 60 80 5F */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80600C08  38 83 4C 00 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80600C0C  48 00 00 18 */	b lbl_80600C24
lbl_80600C10:
/* 80600C10  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80600C14  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80600C18  7C 63 00 2E */	lwzx r3, r3, r0
/* 80600C1C  90 83 00 04 */	stw r4, 4(r3)
/* 80600C20  38 C6 00 01 */	addi r6, r6, 1
lbl_80600C24:
/* 80600C24  80 B8 00 04 */	lwz r5, 4(r24)
/* 80600C28  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80600C2C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80600C30  7C 00 18 40 */	cmplw r0, r3
/* 80600C34  41 80 FF DC */	blt lbl_80600C10
/* 80600C38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600C3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600C40  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80600C44  FC 40 08 90 */	fmr f2, f1
/* 80600C48  FC 60 08 90 */	fmr f3, f1
/* 80600C4C  4B D4 5D 1C */	b PSMTXScale
/* 80600C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600C58  38 98 00 24 */	addi r4, r24, 0x24
/* 80600C5C  4B D4 58 54 */	b PSMTXCopy
/* 80600C60  38 60 00 18 */	li r3, 0x18
/* 80600C64  4B CC DF E8 */	b __nw__FUl
/* 80600C68  7C 78 1B 79 */	or. r24, r3, r3
/* 80600C6C  41 82 00 20 */	beq lbl_80600C8C
/* 80600C70  3C 80 80 60 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80600C74  38 04 2F 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80600C78  90 18 00 00 */	stw r0, 0(r24)
/* 80600C7C  38 80 00 00 */	li r4, 0
/* 80600C80  4B D2 77 7C */	b init__12J3DFrameCtrlFs
/* 80600C84  38 00 00 00 */	li r0, 0
/* 80600C88  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80600C8C:
/* 80600C8C  93 1F 07 24 */	stw r24, 0x724(r31)
/* 80600C90  80 1F 07 24 */	lwz r0, 0x724(r31)
/* 80600C94  28 00 00 00 */	cmplwi r0, 0
/* 80600C98  40 82 00 0C */	bne lbl_80600CA4
/* 80600C9C  38 60 00 00 */	li r3, 0
/* 80600CA0  48 00 07 A8 */	b lbl_80601448
lbl_80600CA4:
/* 80600CA4  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600CA8  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600CAC  38 80 00 6D */	li r4, 0x6d
/* 80600CB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80600CB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80600CB8  3F C5 00 02 */	addis r30, r5, 2
/* 80600CBC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80600CC0  7F C5 F3 78 */	mr r5, r30
/* 80600CC4  38 C0 00 80 */	li r6, 0x80
/* 80600CC8  4B A3 B6 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600CCC  7C 65 1B 78 */	mr r5, r3
/* 80600CD0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80600CD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80600CD8  80 83 00 04 */	lwz r4, 4(r3)
/* 80600CDC  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80600CE0  38 84 00 58 */	addi r4, r4, 0x58
/* 80600CE4  38 C0 00 01 */	li r6, 1
/* 80600CE8  38 E0 00 02 */	li r7, 2
/* 80600CEC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80600CF0  39 00 00 00 */	li r8, 0
/* 80600CF4  39 20 FF FF */	li r9, -1
/* 80600CF8  4B A0 CA 14 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80600CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80600D00  40 82 00 0C */	bne lbl_80600D0C
/* 80600D04  38 60 00 00 */	li r3, 0
/* 80600D08  48 00 07 40 */	b lbl_80601448
lbl_80600D0C:
/* 80600D0C  3B 80 00 00 */	li r28, 0
/* 80600D10  3B 60 00 00 */	li r27, 0
/* 80600D14  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600D18  3B 23 29 AC */	addi r25, r3, stringBase0@l
/* 80600D1C  3C 60 80 60 */	lis r3, btk_d@ha
/* 80600D20  3B 03 2D 10 */	addi r24, r3, btk_d@l
lbl_80600D24:
/* 80600D24  38 60 00 18 */	li r3, 0x18
/* 80600D28  4B CC DF 24 */	b __nw__FUl
/* 80600D2C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80600D30  41 82 00 20 */	beq lbl_80600D50
/* 80600D34  3C 80 80 60 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80600D38  38 04 2F 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80600D3C  90 1A 00 00 */	stw r0, 0(r26)
/* 80600D40  38 80 00 00 */	li r4, 0
/* 80600D44  4B D2 76 B8 */	b init__12J3DFrameCtrlFs
/* 80600D48  38 00 00 00 */	li r0, 0
/* 80600D4C  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_80600D50:
/* 80600D50  3A FB 07 28 */	addi r23, r27, 0x728
/* 80600D54  7F 5F B9 2E */	stwx r26, r31, r23
/* 80600D58  7C 1F B8 2E */	lwzx r0, r31, r23
/* 80600D5C  28 00 00 00 */	cmplwi r0, 0
/* 80600D60  40 82 00 0C */	bne lbl_80600D6C
/* 80600D64  38 60 00 00 */	li r3, 0
/* 80600D68  48 00 06 E0 */	b lbl_80601448
lbl_80600D6C:
/* 80600D6C  7F 23 CB 78 */	mr r3, r25
/* 80600D70  7C 98 D8 2E */	lwzx r4, r24, r27
/* 80600D74  7F C5 F3 78 */	mr r5, r30
/* 80600D78  38 C0 00 80 */	li r6, 0x80
/* 80600D7C  4B A3 B5 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600D80  7C 65 1B 78 */	mr r5, r3
/* 80600D84  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80600D88  80 63 00 04 */	lwz r3, 4(r3)
/* 80600D8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80600D90  7C 7F B8 2E */	lwzx r3, r31, r23
/* 80600D94  38 84 00 58 */	addi r4, r4, 0x58
/* 80600D98  38 C0 00 01 */	li r6, 1
/* 80600D9C  38 E0 00 00 */	li r7, 0
/* 80600DA0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80600DA4  39 00 00 00 */	li r8, 0
/* 80600DA8  39 20 FF FF */	li r9, -1
/* 80600DAC  4B A0 C8 90 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80600DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80600DB4  40 82 00 0C */	bne lbl_80600DC0
/* 80600DB8  38 60 00 00 */	li r3, 0
/* 80600DBC  48 00 06 8C */	b lbl_80601448
lbl_80600DC0:
/* 80600DC0  3B 9C 00 01 */	addi r28, r28, 1
/* 80600DC4  2C 1C 00 06 */	cmpwi r28, 6
/* 80600DC8  3B 7B 00 04 */	addi r27, r27, 4
/* 80600DCC  41 80 FF 58 */	blt lbl_80600D24
/* 80600DD0  38 60 00 18 */	li r3, 0x18
/* 80600DD4  4B CC DE 78 */	b __nw__FUl
/* 80600DD8  7C 78 1B 79 */	or. r24, r3, r3
/* 80600DDC  41 82 00 20 */	beq lbl_80600DFC
/* 80600DE0  3C 80 80 60 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80600DE4  38 04 2F 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80600DE8  90 18 00 00 */	stw r0, 0(r24)
/* 80600DEC  38 80 00 00 */	li r4, 0
/* 80600DF0  4B D2 76 0C */	b init__12J3DFrameCtrlFs
/* 80600DF4  38 00 00 00 */	li r0, 0
/* 80600DF8  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80600DFC:
/* 80600DFC  93 1F 07 44 */	stw r24, 0x744(r31)
/* 80600E00  80 1F 07 44 */	lwz r0, 0x744(r31)
/* 80600E04  28 00 00 00 */	cmplwi r0, 0
/* 80600E08  40 82 00 0C */	bne lbl_80600E14
/* 80600E0C  38 60 00 00 */	li r3, 0
/* 80600E10  48 00 06 38 */	b lbl_80601448
lbl_80600E14:
/* 80600E14  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600E18  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600E1C  38 80 00 7B */	li r4, 0x7b
/* 80600E20  7F C5 F3 78 */	mr r5, r30
/* 80600E24  38 C0 00 80 */	li r6, 0x80
/* 80600E28  4B A3 B4 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600E2C  7C 65 1B 78 */	mr r5, r3
/* 80600E30  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80600E34  80 63 00 04 */	lwz r3, 4(r3)
/* 80600E38  80 83 00 04 */	lwz r4, 4(r3)
/* 80600E3C  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 80600E40  38 84 00 58 */	addi r4, r4, 0x58
/* 80600E44  38 C0 00 01 */	li r6, 1
/* 80600E48  38 E0 00 02 */	li r7, 2
/* 80600E4C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80600E50  39 00 00 00 */	li r8, 0
/* 80600E54  39 20 FF FF */	li r9, -1
/* 80600E58  4B A0 C6 F4 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80600E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80600E60  40 82 00 0C */	bne lbl_80600E6C
/* 80600E64  38 60 00 00 */	li r3, 0
/* 80600E68  48 00 05 E0 */	b lbl_80601448
lbl_80600E6C:
/* 80600E6C  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600E70  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600E74  38 80 00 62 */	li r4, 0x62
/* 80600E78  7F C5 F3 78 */	mr r5, r30
/* 80600E7C  38 C0 00 80 */	li r6, 0x80
/* 80600E80  4B A3 B4 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600E84  3C 80 00 08 */	lis r4, 8
/* 80600E88  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80600E8C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80600E90  4B A1 3D C4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80600E94  90 7F 07 68 */	stw r3, 0x768(r31)
/* 80600E98  80 1F 07 68 */	lwz r0, 0x768(r31)
/* 80600E9C  28 00 00 00 */	cmplwi r0, 0
/* 80600EA0  40 82 00 0C */	bne lbl_80600EAC
/* 80600EA4  38 60 00 00 */	li r3, 0
/* 80600EA8  48 00 05 A0 */	b lbl_80601448
lbl_80600EAC:
/* 80600EAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600EB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600EB4  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80600EB8  FC 40 08 90 */	fmr f2, f1
/* 80600EBC  FC 60 08 90 */	fmr f3, f1
/* 80600EC0  4B D4 5A A8 */	b PSMTXScale
/* 80600EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600ECC  80 9F 07 68 */	lwz r4, 0x768(r31)
/* 80600ED0  38 84 00 24 */	addi r4, r4, 0x24
/* 80600ED4  4B D4 55 DC */	b PSMTXCopy
/* 80600ED8  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600EDC  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600EE0  38 80 00 61 */	li r4, 0x61
/* 80600EE4  7F C5 F3 78 */	mr r5, r30
/* 80600EE8  38 C0 00 80 */	li r6, 0x80
/* 80600EEC  4B A3 B4 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600EF0  3C 80 00 08 */	lis r4, 8
/* 80600EF4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80600EF8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80600EFC  4B A1 3D 58 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80600F00  90 7F 07 6C */	stw r3, 0x76c(r31)
/* 80600F04  80 1F 07 6C */	lwz r0, 0x76c(r31)
/* 80600F08  28 00 00 00 */	cmplwi r0, 0
/* 80600F0C  40 82 00 0C */	bne lbl_80600F18
/* 80600F10  38 60 00 00 */	li r3, 0
/* 80600F14  48 00 05 34 */	b lbl_80601448
lbl_80600F18:
/* 80600F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600F1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600F20  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80600F24  FC 40 08 90 */	fmr f2, f1
/* 80600F28  FC 60 08 90 */	fmr f3, f1
/* 80600F2C  4B D4 5A 3C */	b PSMTXScale
/* 80600F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80600F38  80 9F 07 6C */	lwz r4, 0x76c(r31)
/* 80600F3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80600F40  4B D4 55 70 */	b PSMTXCopy
/* 80600F44  3A C0 00 00 */	li r22, 0
/* 80600F48  3B 80 00 00 */	li r28, 0
/* 80600F4C  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600F50  3B 03 29 AC */	addi r24, r3, stringBase0@l
/* 80600F54  3B 3D 03 40 */	addi r25, r29, 0x340
/* 80600F58  3F 60 11 00 */	lis r27, 0x1100
/* 80600F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80600F60  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80600F64:
/* 80600F64  7F 03 C3 78 */	mr r3, r24
/* 80600F68  7C 99 E0 2E */	lwzx r4, r25, r28
/* 80600F6C  7F C5 F3 78 */	mr r5, r30
/* 80600F70  38 C0 00 80 */	li r6, 0x80
/* 80600F74  4B A3 B3 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600F78  3C 80 00 08 */	lis r4, 8
/* 80600F7C  38 BB 00 84 */	addi r5, r27, 0x84
/* 80600F80  4B A1 3C D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80600F84  3A FC 0C 2C */	addi r23, r28, 0xc2c
/* 80600F88  7C 7F B9 2E */	stwx r3, r31, r23
/* 80600F8C  7C 1F B8 2E */	lwzx r0, r31, r23
/* 80600F90  28 00 00 00 */	cmplwi r0, 0
/* 80600F94  40 82 00 0C */	bne lbl_80600FA0
/* 80600F98  38 60 00 00 */	li r3, 0
/* 80600F9C  48 00 04 AC */	b lbl_80601448
lbl_80600FA0:
/* 80600FA0  7F 43 D3 78 */	mr r3, r26
/* 80600FA4  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80600FA8  FC 40 08 90 */	fmr f2, f1
/* 80600FAC  FC 60 08 90 */	fmr f3, f1
/* 80600FB0  4B D4 59 B8 */	b PSMTXScale
/* 80600FB4  7F 43 D3 78 */	mr r3, r26
/* 80600FB8  7C 9F B8 2E */	lwzx r4, r31, r23
/* 80600FBC  38 84 00 24 */	addi r4, r4, 0x24
/* 80600FC0  4B D4 54 F0 */	b PSMTXCopy
/* 80600FC4  3A D6 00 01 */	addi r22, r22, 1
/* 80600FC8  2C 16 00 02 */	cmpwi r22, 2
/* 80600FCC  3B 9C 00 04 */	addi r28, r28, 4
/* 80600FD0  41 80 FF 94 */	blt lbl_80600F64
/* 80600FD4  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80600FD8  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80600FDC  38 80 00 63 */	li r4, 0x63
/* 80600FE0  7F C5 F3 78 */	mr r5, r30
/* 80600FE4  38 C0 00 80 */	li r6, 0x80
/* 80600FE8  4B A3 B3 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80600FEC  7C 78 1B 78 */	mr r24, r3
/* 80600FF0  3A C0 00 00 */	li r22, 0
/* 80600FF4  3B 80 00 00 */	li r28, 0
/* 80600FF8  3F 40 11 00 */	lis r26, 0x1100 /* 0x11000084@ha */
/* 80600FFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80601000  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
lbl_80601004:
/* 80601004  7F 03 C3 78 */	mr r3, r24
/* 80601008  3C 80 00 08 */	lis r4, 8
/* 8060100C  38 BA 00 84 */	addi r5, r26, 0x0084 /* 0x11000084@l */
/* 80601010  4B A1 3C 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80601014  3A FC 0B 94 */	addi r23, r28, 0xb94
/* 80601018  7C 7F B9 2E */	stwx r3, r31, r23
/* 8060101C  7C 1F B8 2E */	lwzx r0, r31, r23
/* 80601020  28 00 00 00 */	cmplwi r0, 0
/* 80601024  40 82 00 0C */	bne lbl_80601030
/* 80601028  38 60 00 00 */	li r3, 0
/* 8060102C  48 00 04 1C */	b lbl_80601448
lbl_80601030:
/* 80601030  7F 63 DB 78 */	mr r3, r27
/* 80601034  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80601038  FC 40 08 90 */	fmr f2, f1
/* 8060103C  FC 60 08 90 */	fmr f3, f1
/* 80601040  4B D4 59 28 */	b PSMTXScale
/* 80601044  7F 63 DB 78 */	mr r3, r27
/* 80601048  7C 9F B8 2E */	lwzx r4, r31, r23
/* 8060104C  38 84 00 24 */	addi r4, r4, 0x24
/* 80601050  4B D4 54 60 */	b PSMTXCopy
/* 80601054  3A D6 00 01 */	addi r22, r22, 1
/* 80601058  2C 16 00 24 */	cmpwi r22, 0x24
/* 8060105C  3B 9C 00 04 */	addi r28, r28, 4
/* 80601060  41 80 FF A4 */	blt lbl_80601004
/* 80601064  38 60 00 58 */	li r3, 0x58
/* 80601068  4B CC DB E4 */	b __nw__FUl
/* 8060106C  7C 78 1B 79 */	or. r24, r3, r3
/* 80601070  41 82 00 88 */	beq lbl_806010F8
/* 80601074  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601078  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 8060107C  38 63 00 06 */	addi r3, r3, 6
/* 80601080  38 80 00 0F */	li r4, 0xf
/* 80601084  7F C5 F3 78 */	mr r5, r30
/* 80601088  38 C0 00 80 */	li r6, 0x80
/* 8060108C  4B A3 B2 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80601090  7C 79 1B 78 */	mr r25, r3
/* 80601094  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601098  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 8060109C  38 63 00 06 */	addi r3, r3, 6
/* 806010A0  38 80 00 13 */	li r4, 0x13
/* 806010A4  7F C5 F3 78 */	mr r5, r30
/* 806010A8  38 C0 00 80 */	li r6, 0x80
/* 806010AC  4B A3 B2 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806010B0  7C 64 1B 78 */	mr r4, r3
/* 806010B4  38 1F 06 80 */	addi r0, r31, 0x680
/* 806010B8  90 01 00 08 */	stw r0, 8(r1)
/* 806010BC  3C 00 00 08 */	lis r0, 8
/* 806010C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806010C4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806010C8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806010CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806010D0  7F 03 C3 78 */	mr r3, r24
/* 806010D4  38 A0 00 00 */	li r5, 0
/* 806010D8  38 C0 00 00 */	li r6, 0
/* 806010DC  7F 27 CB 78 */	mr r7, r25
/* 806010E0  39 00 00 02 */	li r8, 2
/* 806010E4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 806010E8  39 20 00 00 */	li r9, 0
/* 806010EC  39 40 FF FF */	li r10, -1
/* 806010F0  4B A0 F6 E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806010F4  7C 78 1B 78 */	mr r24, r3
lbl_806010F8:
/* 806010F8  93 1F 05 D4 */	stw r24, 0x5d4(r31)
/* 806010FC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80601100  28 03 00 00 */	cmplwi r3, 0
/* 80601104  41 82 00 10 */	beq lbl_80601114
/* 80601108  82 E3 00 04 */	lwz r23, 4(r3)
/* 8060110C  28 17 00 00 */	cmplwi r23, 0
/* 80601110  40 82 00 0C */	bne lbl_8060111C
lbl_80601114:
/* 80601114  38 60 00 00 */	li r3, 0
/* 80601118  48 00 03 30 */	b lbl_80601448
lbl_8060111C:
/* 8060111C  93 F7 00 14 */	stw r31, 0x14(r23)
/* 80601120  38 C0 00 00 */	li r6, 0
/* 80601124  3C 60 80 5F */	lis r3, h_nodeCallBack__FP8J3DJointi@ha
/* 80601128  38 83 4D CC */	addi r4, r3, h_nodeCallBack__FP8J3DJointi@l
/* 8060112C  48 00 00 18 */	b lbl_80601144
lbl_80601130:
/* 80601130  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80601134  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80601138  7C 63 00 2E */	lwzx r3, r3, r0
/* 8060113C  90 83 00 04 */	stw r4, 4(r3)
/* 80601140  38 C6 00 01 */	addi r6, r6, 1
lbl_80601144:
/* 80601144  80 B7 00 04 */	lwz r5, 4(r23)
/* 80601148  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 8060114C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80601150  7C 00 18 40 */	cmplw r0, r3
/* 80601154  41 80 FF DC */	blt lbl_80601130
/* 80601158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060115C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80601160  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80601164  FC 40 08 90 */	fmr f2, f1
/* 80601168  FC 60 08 90 */	fmr f3, f1
/* 8060116C  4B D4 57 FC */	b PSMTXScale
/* 80601170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80601174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80601178  38 97 00 24 */	addi r4, r23, 0x24
/* 8060117C  4B D4 53 34 */	b PSMTXCopy
/* 80601180  3A C0 00 00 */	li r22, 0
/* 80601184  3B 80 00 00 */	li r28, 0
/* 80601188  C3 FD 01 00 */	lfs f31, 0x100(r29)
/* 8060118C  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601190  3B 63 29 AC */	addi r27, r3, stringBase0@l
lbl_80601194:
/* 80601194  38 7B 00 06 */	addi r3, r27, 6
/* 80601198  38 80 00 16 */	li r4, 0x16
/* 8060119C  7F C5 F3 78 */	mr r5, r30
/* 806011A0  38 C0 00 80 */	li r6, 0x80
/* 806011A4  4B A3 B1 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806011A8  7C 66 1B 78 */	mr r6, r3
/* 806011AC  7E FF E2 14 */	add r23, r31, r28
/* 806011B0  38 77 21 70 */	addi r3, r23, 0x2170
/* 806011B4  38 80 00 01 */	li r4, 1
/* 806011B8  38 A0 00 10 */	li r5, 0x10
/* 806011BC  38 E0 00 01 */	li r7, 1
/* 806011C0  4B A1 21 A0 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 806011C4  2C 03 00 00 */	cmpwi r3, 0
/* 806011C8  40 82 00 0C */	bne lbl_806011D4
/* 806011CC  38 60 00 00 */	li r3, 0
/* 806011D0  48 00 02 78 */	b lbl_80601448
lbl_806011D4:
/* 806011D4  80 77 21 A8 */	lwz r3, 0x21a8(r23)
/* 806011D8  80 63 00 04 */	lwz r3, 4(r3)
/* 806011DC  38 00 00 10 */	li r0, 0x10
/* 806011E0  7C 09 03 A6 */	mtctr r0
lbl_806011E4:
/* 806011E4  D3 E3 00 00 */	stfs f31, 0(r3)
/* 806011E8  38 63 00 04 */	addi r3, r3, 4
/* 806011EC  42 00 FF F8 */	bdnz lbl_806011E4
/* 806011F0  3A D6 00 01 */	addi r22, r22, 1
/* 806011F4  2C 16 00 02 */	cmpwi r22, 2
/* 806011F8  3B 9C 00 3C */	addi r28, r28, 0x3c
/* 806011FC  41 80 FF 98 */	blt lbl_80601194
/* 80601200  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601204  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80601208  38 63 00 06 */	addi r3, r3, 6
/* 8060120C  38 80 00 16 */	li r4, 0x16
/* 80601210  7F C5 F3 78 */	mr r5, r30
/* 80601214  38 C0 00 80 */	li r6, 0x80
/* 80601218  4B A3 B0 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060121C  7C 66 1B 78 */	mr r6, r3
/* 80601220  38 7F 21 E8 */	addi r3, r31, 0x21e8
/* 80601224  38 80 00 01 */	li r4, 1
/* 80601228  38 A0 00 02 */	li r5, 2
/* 8060122C  38 E0 00 01 */	li r7, 1
/* 80601230  4B A1 21 30 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80601234  2C 03 00 00 */	cmpwi r3, 0
/* 80601238  40 82 00 0C */	bne lbl_80601244
/* 8060123C  38 60 00 00 */	li r3, 0
/* 80601240  48 00 02 08 */	b lbl_80601448
lbl_80601244:
/* 80601244  80 7F 22 20 */	lwz r3, 0x2220(r31)
/* 80601248  80 63 00 04 */	lwz r3, 4(r3)
/* 8060124C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80601250  38 00 00 02 */	li r0, 2
/* 80601254  7C 09 03 A6 */	mtctr r0
lbl_80601258:
/* 80601258  D0 03 00 00 */	stfs f0, 0(r3)
/* 8060125C  38 63 00 04 */	addi r3, r3, 4
/* 80601260  42 00 FF F8 */	bdnz lbl_80601258
/* 80601264  38 60 00 54 */	li r3, 0x54
/* 80601268  4B CC D9 E4 */	b __nw__FUl
/* 8060126C  7C 78 1B 79 */	or. r24, r3, r3
/* 80601270  41 82 00 84 */	beq lbl_806012F4
/* 80601274  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601278  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 8060127C  38 80 00 5E */	li r4, 0x5e
/* 80601280  7F C5 F3 78 */	mr r5, r30
/* 80601284  38 C0 00 80 */	li r6, 0x80
/* 80601288  4B A3 B0 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060128C  7C 79 1B 78 */	mr r25, r3
/* 80601290  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601294  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80601298  38 80 00 6A */	li r4, 0x6a
/* 8060129C  7F C5 F3 78 */	mr r5, r30
/* 806012A0  38 C0 00 80 */	li r6, 0x80
/* 806012A4  4B A3 B0 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806012A8  7C 64 1B 78 */	mr r4, r3
/* 806012AC  38 00 00 01 */	li r0, 1
/* 806012B0  90 01 00 08 */	stw r0, 8(r1)
/* 806012B4  38 00 00 00 */	li r0, 0
/* 806012B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806012BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806012C0  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 806012C4  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 806012C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806012CC  7F 03 C3 78 */	mr r3, r24
/* 806012D0  38 A0 00 00 */	li r5, 0
/* 806012D4  38 C0 00 00 */	li r6, 0
/* 806012D8  7F 27 CB 78 */	mr r7, r25
/* 806012DC  39 00 00 00 */	li r8, 0
/* 806012E0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 806012E4  39 20 00 00 */	li r9, 0
/* 806012E8  39 40 FF FF */	li r10, -1
/* 806012EC  4B A0 E9 60 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806012F0  7C 78 1B 78 */	mr r24, r3
lbl_806012F4:
/* 806012F4  93 1F 05 D8 */	stw r24, 0x5d8(r31)
/* 806012F8  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 806012FC  28 03 00 00 */	cmplwi r3, 0
/* 80601300  41 82 00 10 */	beq lbl_80601310
/* 80601304  80 03 00 04 */	lwz r0, 4(r3)
/* 80601308  28 00 00 00 */	cmplwi r0, 0
/* 8060130C  40 82 00 0C */	bne lbl_80601318
lbl_80601310:
/* 80601310  38 60 00 00 */	li r3, 0
/* 80601314  48 00 01 34 */	b lbl_80601448
lbl_80601318:
/* 80601318  38 60 00 18 */	li r3, 0x18
/* 8060131C  4B CC D9 30 */	b __nw__FUl
/* 80601320  7C 7B 1B 79 */	or. r27, r3, r3
/* 80601324  41 82 00 20 */	beq lbl_80601344
/* 80601328  3C 80 80 60 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8060132C  38 04 2F 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80601330  90 1B 00 00 */	stw r0, 0(r27)
/* 80601334  38 80 00 00 */	li r4, 0
/* 80601338  4B D2 70 C4 */	b init__12J3DFrameCtrlFs
/* 8060133C  38 00 00 00 */	li r0, 0
/* 80601340  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80601344:
/* 80601344  93 7F 07 50 */	stw r27, 0x750(r31)
/* 80601348  80 1F 07 50 */	lwz r0, 0x750(r31)
/* 8060134C  28 00 00 00 */	cmplwi r0, 0
/* 80601350  40 82 00 0C */	bne lbl_8060135C
/* 80601354  38 60 00 00 */	li r3, 0
/* 80601358  48 00 00 F0 */	b lbl_80601448
lbl_8060135C:
/* 8060135C  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80601360  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80601364  38 80 00 78 */	li r4, 0x78
/* 80601368  7F C5 F3 78 */	mr r5, r30
/* 8060136C  38 C0 00 80 */	li r6, 0x80
/* 80601370  4B A3 AF 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80601374  7C 65 1B 78 */	mr r5, r3
/* 80601378  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8060137C  80 63 00 04 */	lwz r3, 4(r3)
/* 80601380  80 83 00 04 */	lwz r4, 4(r3)
/* 80601384  80 7F 07 50 */	lwz r3, 0x750(r31)
/* 80601388  38 84 00 58 */	addi r4, r4, 0x58
/* 8060138C  38 C0 00 01 */	li r6, 1
/* 80601390  38 E0 00 00 */	li r7, 0
/* 80601394  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80601398  39 00 00 00 */	li r8, 0
/* 8060139C  39 20 FF FF */	li r9, -1
/* 806013A0  4B A0 C2 9C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806013A4  2C 03 00 00 */	cmpwi r3, 0
/* 806013A8  40 82 00 0C */	bne lbl_806013B4
/* 806013AC  38 60 00 00 */	li r3, 0
/* 806013B0  48 00 00 98 */	b lbl_80601448
lbl_806013B4:
/* 806013B4  38 60 00 18 */	li r3, 0x18
/* 806013B8  4B CC D8 94 */	b __nw__FUl
/* 806013BC  7C 7B 1B 79 */	or. r27, r3, r3
/* 806013C0  41 82 00 20 */	beq lbl_806013E0
/* 806013C4  3C 80 80 60 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806013C8  38 04 2F 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806013CC  90 1B 00 00 */	stw r0, 0(r27)
/* 806013D0  38 80 00 00 */	li r4, 0
/* 806013D4  4B D2 70 28 */	b init__12J3DFrameCtrlFs
/* 806013D8  38 00 00 00 */	li r0, 0
/* 806013DC  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_806013E0:
/* 806013E0  93 7F 07 4C */	stw r27, 0x74c(r31)
/* 806013E4  80 1F 07 4C */	lwz r0, 0x74c(r31)
/* 806013E8  28 00 00 00 */	cmplwi r0, 0
/* 806013EC  40 82 00 0C */	bne lbl_806013F8
/* 806013F0  38 60 00 00 */	li r3, 0
/* 806013F4  48 00 00 54 */	b lbl_80601448
lbl_806013F8:
/* 806013F8  3C 60 80 60 */	lis r3, stringBase0@ha
/* 806013FC  38 63 29 AC */	addi r3, r3, stringBase0@l
/* 80601400  38 80 00 7C */	li r4, 0x7c
/* 80601404  7F C5 F3 78 */	mr r5, r30
/* 80601408  38 C0 00 80 */	li r6, 0x80
/* 8060140C  4B A3 AE E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80601410  7C 65 1B 78 */	mr r5, r3
/* 80601414  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80601418  80 63 00 04 */	lwz r3, 4(r3)
/* 8060141C  80 83 00 04 */	lwz r4, 4(r3)
/* 80601420  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 80601424  38 84 00 58 */	addi r4, r4, 0x58
/* 80601428  38 C0 00 01 */	li r6, 1
/* 8060142C  38 E0 00 00 */	li r7, 0
/* 80601430  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80601434  39 00 00 00 */	li r8, 0
/* 80601438  39 20 FF FF */	li r9, -1
/* 8060143C  4B A0 C1 10 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80601440  30 03 FF FF */	addic r0, r3, -1
/* 80601444  7C 60 19 10 */	subfe r3, r0, r3
lbl_80601448:
/* 80601448  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8060144C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80601450  39 61 00 40 */	addi r11, r1, 0x40
/* 80601454  4B D6 0D B8 */	b _restgpr_22
/* 80601458  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8060145C  7C 08 03 A6 */	mtlr r0
/* 80601460  38 21 00 50 */	addi r1, r1, 0x50
/* 80601464  4E 80 00 20 */	blr 
