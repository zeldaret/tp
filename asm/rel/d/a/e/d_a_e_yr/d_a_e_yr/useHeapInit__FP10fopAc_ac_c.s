lbl_808278F4:
/* 808278F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808278F8  7C 08 02 A6 */	mflr r0
/* 808278FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80827900  39 61 00 30 */	addi r11, r1, 0x30
/* 80827904  4B B3 A8 D5 */	bl _savegpr_28
/* 80827908  7C 7F 1B 78 */	mr r31, r3
/* 8082790C  38 60 00 58 */	li r3, 0x58
/* 80827910  4B AA 73 3D */	bl __nw__FUl
/* 80827914  7C 7E 1B 79 */	or. r30, r3, r3
/* 80827918  41 82 00 94 */	beq lbl_808279AC
/* 8082791C  3C 60 80 83 */	lis r3, d_a_e_yr__stringBase0@ha /* 0x808289A8@ha */
/* 80827920  38 63 89 A8 */	addi r3, r3, d_a_e_yr__stringBase0@l /* 0x808289A8@l */
/* 80827924  38 80 00 0C */	li r4, 0xc
/* 80827928  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082792C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80827930  3F 85 00 02 */	addis r28, r5, 2
/* 80827934  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80827938  7F 85 E3 78 */	mr r5, r28
/* 8082793C  38 C0 00 80 */	li r6, 0x80
/* 80827940  4B 81 49 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80827944  7C 7D 1B 78 */	mr r29, r3
/* 80827948  3C 60 80 83 */	lis r3, d_a_e_yr__stringBase0@ha /* 0x808289A8@ha */
/* 8082794C  38 63 89 A8 */	addi r3, r3, d_a_e_yr__stringBase0@l /* 0x808289A8@l */
/* 80827950  38 80 00 15 */	li r4, 0x15
/* 80827954  7F 85 E3 78 */	mr r5, r28
/* 80827958  38 C0 00 80 */	li r6, 0x80
/* 8082795C  4B 81 49 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80827960  7C 64 1B 78 */	mr r4, r3
/* 80827964  38 1F 05 C0 */	addi r0, r31, 0x5c0
/* 80827968  90 01 00 08 */	stw r0, 8(r1)
/* 8082796C  3C 00 00 08 */	lis r0, 8
/* 80827970  90 01 00 0C */	stw r0, 0xc(r1)
/* 80827974  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80827978  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8082797C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80827980  7F C3 F3 78 */	mr r3, r30
/* 80827984  38 A0 00 00 */	li r5, 0
/* 80827988  38 C0 00 00 */	li r6, 0
/* 8082798C  7F A7 EB 78 */	mr r7, r29
/* 80827990  39 00 00 02 */	li r8, 2
/* 80827994  3D 20 80 83 */	lis r9, lit_3904@ha /* 0x80828858@ha */
/* 80827998  C0 29 88 58 */	lfs f1, lit_3904@l(r9)  /* 0x80828858@l */
/* 8082799C  39 20 00 00 */	li r9, 0
/* 808279A0  39 40 FF FF */	li r10, -1
/* 808279A4  4B 7E 8E 2D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 808279A8  7C 7E 1B 78 */	mr r30, r3
lbl_808279AC:
/* 808279AC  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 808279B0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 808279B4  28 03 00 00 */	cmplwi r3, 0
/* 808279B8  41 82 00 10 */	beq lbl_808279C8
/* 808279BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 808279C0  28 05 00 00 */	cmplwi r5, 0
/* 808279C4  40 82 00 0C */	bne lbl_808279D0
lbl_808279C8:
/* 808279C8  38 60 00 00 */	li r3, 0
/* 808279CC  48 00 00 4C */	b lbl_80827A18
lbl_808279D0:
/* 808279D0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 808279D4  38 E0 00 00 */	li r7, 0
/* 808279D8  3C 60 80 82 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x8082220C@ha */
/* 808279DC  38 83 22 0C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x8082220C@l */
/* 808279E0  48 00 00 20 */	b lbl_80827A00
lbl_808279E4:
/* 808279E4  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 808279E8  41 82 00 14 */	beq lbl_808279FC
/* 808279EC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 808279F0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 808279F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 808279F8  90 83 00 04 */	stw r4, 4(r3)
lbl_808279FC:
/* 808279FC  38 E7 00 01 */	addi r7, r7, 1
lbl_80827A00:
/* 80827A00  80 C5 00 04 */	lwz r6, 4(r5)
/* 80827A04  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80827A08  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80827A0C  7C 00 18 40 */	cmplw r0, r3
/* 80827A10  41 80 FF D4 */	blt lbl_808279E4
/* 80827A14  38 60 00 01 */	li r3, 1
lbl_80827A18:
/* 80827A18  39 61 00 30 */	addi r11, r1, 0x30
/* 80827A1C  4B B3 A8 09 */	bl _restgpr_28
/* 80827A20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80827A24  7C 08 03 A6 */	mtlr r0
/* 80827A28  38 21 00 30 */	addi r1, r1, 0x30
/* 80827A2C  4E 80 00 20 */	blr 
