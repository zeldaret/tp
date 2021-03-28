lbl_807B3584:
/* 807B3584  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807B3588  7C 08 02 A6 */	mflr r0
/* 807B358C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B3590  39 61 00 30 */	addi r11, r1, 0x30
/* 807B3594  4B BA EC 44 */	b _savegpr_28
/* 807B3598  7C 7F 1B 78 */	mr r31, r3
/* 807B359C  38 60 00 58 */	li r3, 0x58
/* 807B35A0  4B B1 B6 AC */	b __nw__FUl
/* 807B35A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B35A8  41 82 00 94 */	beq lbl_807B363C
/* 807B35AC  3C 60 80 7B */	lis r3, stringBase0@ha
/* 807B35B0  38 63 46 44 */	addi r3, r3, stringBase0@l
/* 807B35B4  38 80 00 1B */	li r4, 0x1b
/* 807B35B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B35BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B35C0  3F 85 00 02 */	addis r28, r5, 2
/* 807B35C4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807B35C8  7F 85 E3 78 */	mr r5, r28
/* 807B35CC  38 C0 00 80 */	li r6, 0x80
/* 807B35D0  4B 88 8D 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B35D4  7C 7D 1B 78 */	mr r29, r3
/* 807B35D8  3C 60 80 7B */	lis r3, stringBase0@ha
/* 807B35DC  38 63 46 44 */	addi r3, r3, stringBase0@l
/* 807B35E0  38 80 00 1F */	li r4, 0x1f
/* 807B35E4  7F 85 E3 78 */	mr r5, r28
/* 807B35E8  38 C0 00 80 */	li r6, 0x80
/* 807B35EC  4B 88 8D 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B35F0  7C 64 1B 78 */	mr r4, r3
/* 807B35F4  38 1F 05 E0 */	addi r0, r31, 0x5e0
/* 807B35F8  90 01 00 08 */	stw r0, 8(r1)
/* 807B35FC  38 00 00 00 */	li r0, 0
/* 807B3600  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B3604  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807B3608  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807B360C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807B3610  7F C3 F3 78 */	mr r3, r30
/* 807B3614  38 A0 00 00 */	li r5, 0
/* 807B3618  38 C0 00 00 */	li r6, 0
/* 807B361C  7F A7 EB 78 */	mr r7, r29
/* 807B3620  39 00 00 00 */	li r8, 0
/* 807B3624  3D 20 80 7B */	lis r9, lit_3908@ha
/* 807B3628  C0 29 44 A4 */	lfs f1, lit_3908@l(r9)
/* 807B362C  39 20 00 00 */	li r9, 0
/* 807B3630  39 40 FF FF */	li r10, -1
/* 807B3634  4B 85 D1 9C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807B3638  7C 7E 1B 78 */	mr r30, r3
lbl_807B363C:
/* 807B363C  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 807B3640  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B3644  28 03 00 00 */	cmplwi r3, 0
/* 807B3648  41 82 00 10 */	beq lbl_807B3658
/* 807B364C  80 A3 00 04 */	lwz r5, 4(r3)
/* 807B3650  28 05 00 00 */	cmplwi r5, 0
/* 807B3654  40 82 00 0C */	bne lbl_807B3660
lbl_807B3658:
/* 807B3658  38 60 00 00 */	li r3, 0
/* 807B365C  48 00 00 5C */	b lbl_807B36B8
lbl_807B3660:
/* 807B3660  93 E5 00 14 */	stw r31, 0x14(r5)
/* 807B3664  38 E0 00 00 */	li r7, 0
/* 807B3668  3C 60 80 7B */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 807B366C  38 83 05 50 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 807B3670  48 00 00 18 */	b lbl_807B3688
lbl_807B3674:
/* 807B3674  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807B3678  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807B367C  7C 63 00 2E */	lwzx r3, r3, r0
/* 807B3680  90 83 00 04 */	stw r4, 4(r3)
/* 807B3684  38 E7 00 01 */	addi r7, r7, 1
lbl_807B3688:
/* 807B3688  80 C5 00 04 */	lwz r6, 4(r5)
/* 807B368C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807B3690  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807B3694  7C 00 18 40 */	cmplw r0, r3
/* 807B3698  41 80 FF DC */	blt lbl_807B3674
/* 807B369C  38 7F 12 10 */	addi r3, r31, 0x1210
/* 807B36A0  38 80 00 03 */	li r4, 3
/* 807B36A4  38 A0 00 0F */	li r5, 0xf
/* 807B36A8  38 C0 00 00 */	li r6, 0
/* 807B36AC  4B 85 EF 34 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 807B36B0  30 03 FF FF */	addic r0, r3, -1
/* 807B36B4  7C 60 19 10 */	subfe r3, r0, r3
lbl_807B36B8:
/* 807B36B8  39 61 00 30 */	addi r11, r1, 0x30
/* 807B36BC  4B BA EB 68 */	b _restgpr_28
/* 807B36C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B36C4  7C 08 03 A6 */	mtlr r0
/* 807B36C8  38 21 00 30 */	addi r1, r1, 0x30
/* 807B36CC  4E 80 00 20 */	blr 
