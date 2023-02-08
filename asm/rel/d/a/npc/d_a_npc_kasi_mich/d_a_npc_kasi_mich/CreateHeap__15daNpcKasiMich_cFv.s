lbl_80A268A0:
/* 80A268A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A268A4  7C 08 02 A6 */	mflr r0
/* 80A268A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A268AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A268B0  4B 93 B9 2D */	bl _savegpr_29
/* 80A268B4  7C 7D 1B 78 */	mr r29, r3
/* 80A268B8  3C 60 80 A3 */	lis r3, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A268BC  3B E3 A0 4C */	addi r31, r3, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A268C0  3C 60 80 A3 */	lis r3, l_arcNames@ha /* 0x80A2A3A0@ha */
/* 80A268C4  38 63 A3 A0 */	addi r3, r3, l_arcNames@l /* 0x80A2A3A0@l */
/* 80A268C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A268CC  38 80 00 04 */	li r4, 4
/* 80A268D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A268D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A268D8  3C A5 00 02 */	addis r5, r5, 2
/* 80A268DC  38 C0 00 80 */	li r6, 0x80
/* 80A268E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A268E4  4B 61 5A 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A268E8  7C 7E 1B 78 */	mr r30, r3
/* 80A268EC  38 60 00 58 */	li r3, 0x58
/* 80A268F0  4B 8A 83 5D */	bl __nw__FUl
/* 80A268F4  7C 60 1B 79 */	or. r0, r3, r3
/* 80A268F8  41 82 00 48 */	beq lbl_80A26940
/* 80A268FC  38 1D 0B 48 */	addi r0, r29, 0xb48
/* 80A26900  90 01 00 08 */	stw r0, 8(r1)
/* 80A26904  3C 00 00 08 */	lis r0, 8
/* 80A26908  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2690C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80A26910  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80A26914  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A26918  7F C4 F3 78 */	mr r4, r30
/* 80A2691C  38 A0 00 00 */	li r5, 0
/* 80A26920  38 C0 00 00 */	li r6, 0
/* 80A26924  38 E0 00 00 */	li r7, 0
/* 80A26928  39 00 FF FF */	li r8, -1
/* 80A2692C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A26930  39 20 00 00 */	li r9, 0
/* 80A26934  39 40 FF FF */	li r10, -1
/* 80A26938  4B 5E 9E 99 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A2693C  7C 60 1B 78 */	mr r0, r3
lbl_80A26940:
/* 80A26940  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80A26944  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A26948  28 03 00 00 */	cmplwi r3, 0
/* 80A2694C  41 82 00 1C */	beq lbl_80A26968
/* 80A26950  80 03 00 04 */	lwz r0, 4(r3)
/* 80A26954  28 00 00 00 */	cmplwi r0, 0
/* 80A26958  40 82 00 10 */	bne lbl_80A26968
/* 80A2695C  4B 5E A9 B5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A26960  38 00 00 00 */	li r0, 0
/* 80A26964  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_80A26968:
/* 80A26968  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A2696C  28 03 00 00 */	cmplwi r3, 0
/* 80A26970  40 82 00 0C */	bne lbl_80A2697C
/* 80A26974  38 60 00 00 */	li r3, 0
/* 80A26978  48 00 00 94 */	b lbl_80A26A0C
lbl_80A2697C:
/* 80A2697C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A26980  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A26984  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A26988  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A2698C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A26990  38 00 00 01 */	li r0, 1
/* 80A26994  98 03 00 54 */	stb r0, 0x54(r3)
/* 80A26998  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A2699C  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80A269A0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80A269A4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80A269A8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A269AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A269B0  38 C0 00 00 */	li r6, 0
/* 80A269B4  3C 60 80 A2 */	lis r3, ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi@ha /* 0x80A26C7C@ha */
/* 80A269B8  38 83 6C 7C */	addi r4, r3, ctrlJointCallBack__15daNpcKasiMich_cFP8J3DJointi@l /* 0x80A26C7C@l */
/* 80A269BC  48 00 00 18 */	b lbl_80A269D4
lbl_80A269C0:
/* 80A269C0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A269C4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A269C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A269CC  90 83 00 04 */	stw r4, 4(r3)
/* 80A269D0  38 C6 00 01 */	addi r6, r6, 1
lbl_80A269D4:
/* 80A269D4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A269D8  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A269DC  7C 03 00 40 */	cmplw r3, r0
/* 80A269E0  41 80 FF E0 */	blt lbl_80A269C0
/* 80A269E4  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80A269E8  7F A3 EB 78 */	mr r3, r29
/* 80A269EC  38 80 00 04 */	li r4, 4
/* 80A269F0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A269F4  38 A0 00 00 */	li r5, 0
/* 80A269F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A269FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A26A00  7D 89 03 A6 */	mtctr r12
/* 80A26A04  4E 80 04 21 */	bctrl 
/* 80A26A08  38 60 00 01 */	li r3, 1
lbl_80A26A0C:
/* 80A26A0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A26A10  4B 93 B8 19 */	bl _restgpr_29
/* 80A26A14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A26A18  7C 08 03 A6 */	mtlr r0
/* 80A26A1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A26A20  4E 80 00 20 */	blr 
