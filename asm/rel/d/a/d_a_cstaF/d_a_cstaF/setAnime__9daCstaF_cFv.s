lbl_804DEC14:
/* 804DEC14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DEC18  7C 08 02 A6 */	mflr r0
/* 804DEC1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DEC20  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804DEC24  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804DEC28  39 61 00 30 */	addi r11, r1, 0x30
/* 804DEC2C  4B E8 35 AD */	bl _savegpr_28
/* 804DEC30  7C 7D 1B 78 */	mr r29, r3
/* 804DEC34  3C 60 80 4E */	lis r3, lit_3765@ha /* 0x804DF8B8@ha */
/* 804DEC38  3B E3 F8 B8 */	addi r31, r3, lit_3765@l /* 0x804DF8B8@l */
/* 804DEC3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEC40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEC44  83 83 5D B4 */	lwz r28, 0x5db4(r3)
/* 804DEC48  7F 83 E3 78 */	mr r3, r28
/* 804DEC4C  4B C0 27 29 */	bl getCopyRodControllActor__9daAlink_cFv
/* 804DEC50  7C 7E 1B 78 */	mr r30, r3
/* 804DEC54  7C 1E E8 40 */	cmplw r30, r29
/* 804DEC58  40 82 00 44 */	bne lbl_804DEC9C
/* 804DEC5C  7F 83 E3 78 */	mr r3, r28
/* 804DEC60  4B C0 26 D1 */	bl getCopyRodBallDisMax__9daAlink_cCFv
/* 804DEC64  3C 60 80 4E */	lis r3, l_cancelOffset@ha /* 0x804DFAD8@ha */
/* 804DEC68  C0 03 FA D8 */	lfs f0, l_cancelOffset@l(r3)  /* 0x804DFAD8@l */
/* 804DEC6C  EF E0 08 2A */	fadds f31, f0, f1
/* 804DEC70  80 7C 28 40 */	lwz r3, 0x2840(r28)
/* 804DEC74  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 804DEC78  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804DEC7C  4B E6 87 21 */	bl PSVECSquareDistance
/* 804DEC80  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804DEC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEC88  40 81 00 14 */	ble lbl_804DEC9C
/* 804DEC8C  80 7C 28 40 */	lwz r3, 0x2840(r28)
/* 804DEC90  38 63 07 40 */	addi r3, r3, 0x740
/* 804DEC94  4B C8 00 69 */	bl clearData__16daPy_actorKeep_cFv
/* 804DEC98  3B C0 00 00 */	li r30, 0
lbl_804DEC9C:
/* 804DEC9C  7C 1E E8 40 */	cmplw r30, r29
/* 804DECA0  40 82 00 FC */	bne lbl_804DED9C
/* 804DECA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DECA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DECAC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804DECB0  28 00 00 00 */	cmplwi r0, 0
/* 804DECB4  41 82 00 14 */	beq lbl_804DECC8
/* 804DECB8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804DECBC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 804DECC0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 804DECC4  48 00 00 24 */	b lbl_804DECE8
lbl_804DECC8:
/* 804DECC8  C0 3C 04 F8 */	lfs f1, 0x4f8(r28)
/* 804DECCC  C0 1C 34 64 */	lfs f0, 0x3464(r28)
/* 804DECD0  EC 01 00 2A */	fadds f0, f1, f0
/* 804DECD4  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 804DECD8  C0 3C 05 00 */	lfs f1, 0x500(r28)
/* 804DECDC  C0 1C 34 68 */	lfs f0, 0x3468(r28)
/* 804DECE0  EC 01 00 2A */	fadds f0, f1, f0
/* 804DECE4  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_804DECE8:
/* 804DECE8  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 804DECEC  28 00 00 65 */	cmplwi r0, 0x65
/* 804DECF0  40 82 00 14 */	bne lbl_804DED04
/* 804DECF4  3B 80 00 02 */	li r28, 2
/* 804DECF8  38 00 00 00 */	li r0, 0
/* 804DECFC  98 1D 0B 0F */	stb r0, 0xb0f(r29)
/* 804DED00  48 00 00 E4 */	b lbl_804DEDE4
lbl_804DED04:
/* 804DED04  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DED08  28 00 00 03 */	cmplwi r0, 3
/* 804DED0C  40 82 00 44 */	bne lbl_804DED50
/* 804DED10  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DED14  38 80 00 01 */	li r4, 1
/* 804DED18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804DED1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804DED20  40 82 00 18 */	bne lbl_804DED38
/* 804DED24  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804DED28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804DED2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DED30  41 82 00 08 */	beq lbl_804DED38
/* 804DED34  38 80 00 00 */	li r4, 0
lbl_804DED38:
/* 804DED38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804DED3C  40 82 00 14 */	bne lbl_804DED50
/* 804DED40  3B 80 00 03 */	li r28, 3
/* 804DED44  38 00 00 00 */	li r0, 0
/* 804DED48  98 1D 0B 0F */	stb r0, 0xb0f(r29)
/* 804DED4C  48 00 00 98 */	b lbl_804DEDE4
lbl_804DED50:
/* 804DED50  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 804DED54  FC 00 02 10 */	fabs f0, f0
/* 804DED58  FC 20 00 18 */	frsp f1, f0
/* 804DED5C  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 804DED60  FC 00 02 10 */	fabs f0, f0
/* 804DED64  FC 00 00 18 */	frsp f0, f0
/* 804DED68  EC 20 08 2A */	fadds f1, f0, f1
/* 804DED6C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804DED70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DED74  40 81 00 20 */	ble lbl_804DED94
/* 804DED78  80 1D 07 1C */	lwz r0, 0x71c(r29)
/* 804DED7C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804DED80  41 82 00 14 */	beq lbl_804DED94
/* 804DED84  3B 80 00 01 */	li r28, 1
/* 804DED88  38 00 00 00 */	li r0, 0
/* 804DED8C  98 1D 0B 0F */	stb r0, 0xb0f(r29)
/* 804DED90  48 00 00 54 */	b lbl_804DEDE4
lbl_804DED94:
/* 804DED94  3B 80 00 00 */	li r28, 0
/* 804DED98  48 00 00 4C */	b lbl_804DEDE4
lbl_804DED9C:
/* 804DED9C  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DEDA0  28 00 00 03 */	cmplwi r0, 3
/* 804DEDA4  40 82 00 3C */	bne lbl_804DEDE0
/* 804DEDA8  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DEDAC  38 80 00 01 */	li r4, 1
/* 804DEDB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804DEDB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804DEDB8  40 82 00 18 */	bne lbl_804DEDD0
/* 804DEDBC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804DEDC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804DEDC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DEDC8  41 82 00 08 */	beq lbl_804DEDD0
/* 804DEDCC  38 80 00 00 */	li r4, 0
lbl_804DEDD0:
/* 804DEDD0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804DEDD4  40 82 00 0C */	bne lbl_804DEDE0
/* 804DEDD8  3B 80 00 03 */	li r28, 3
/* 804DEDDC  48 00 00 08 */	b lbl_804DEDE4
lbl_804DEDE0:
/* 804DEDE0  3B 80 00 00 */	li r28, 0
lbl_804DEDE4:
/* 804DEDE4  88 1D 0B 0A */	lbz r0, 0xb0a(r29)
/* 804DEDE8  7C 1C 00 00 */	cmpw r28, r0
/* 804DEDEC  41 82 00 6C */	beq lbl_804DEE58
/* 804DEDF0  80 7D 05 A0 */	lwz r3, 0x5a0(r29)
/* 804DEDF4  88 1D 0B 09 */	lbz r0, 0xb09(r29)
/* 804DEDF8  54 05 18 38 */	slwi r5, r0, 3
/* 804DEDFC  38 9F 00 24 */	addi r4, r31, 0x24
/* 804DEE00  57 80 08 3C */	slwi r0, r28, 1
/* 804DEE04  7C 05 02 14 */	add r0, r5, r0
/* 804DEE08  7C 84 02 2E */	lhzx r4, r4, r0
/* 804DEE0C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEE10  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEE14  3C A5 00 02 */	addis r5, r5, 2
/* 804DEE18  38 C0 00 80 */	li r6, 0x80
/* 804DEE1C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804DEE20  4B B5 D4 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DEE24  7C 64 1B 78 */	mr r4, r3
/* 804DEE28  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 804DEE2C  38 A0 FF FF */	li r5, -1
/* 804DEE30  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 804DEE34  2C 1C 00 00 */	cmpwi r28, 0
/* 804DEE38  40 82 00 0C */	bne lbl_804DEE44
/* 804DEE3C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804DEE40  48 00 00 08 */	b lbl_804DEE48
lbl_804DEE44:
/* 804DEE44  C0 5F 00 48 */	lfs f2, 0x48(r31)
lbl_804DEE48:
/* 804DEE48  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 804DEE4C  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 804DEE50  4B B3 20 21 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804DEE54  9B 9D 0B 0A */	stb r28, 0xb0a(r29)
lbl_804DEE58:
/* 804DEE58  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 804DEE5C  28 00 00 02 */	cmplwi r0, 2
/* 804DEE60  40 82 00 DC */	bne lbl_804DEF3C
/* 804DEE64  88 1D 0B 0C */	lbz r0, 0xb0c(r29)
/* 804DEE68  28 00 00 00 */	cmplwi r0, 0
/* 804DEE6C  40 82 00 10 */	bne lbl_804DEE7C
/* 804DEE70  7F A3 EB 78 */	mr r3, r29
/* 804DEE74  48 00 03 31 */	bl initStartBrkBtk__9daCstaF_cFv
/* 804DEE78  48 00 00 84 */	b lbl_804DEEFC
lbl_804DEE7C:
/* 804DEE7C  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 804DEE80  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 804DEE84  4B E4 95 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 804DEE88  2C 03 00 00 */	cmpwi r3, 0
/* 804DEE8C  41 82 00 34 */	beq lbl_804DEEC0
/* 804DEE90  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060066@ha */
/* 804DEE94  38 03 00 66 */	addi r0, r3, 0x0066 /* 0x00060066@l */
/* 804DEE98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DEE9C  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DEEA0  38 81 00 1C */	addi r4, r1, 0x1c
/* 804DEEA4  38 A0 00 00 */	li r5, 0
/* 804DEEA8  88 DD 0B 08 */	lbz r6, 0xb08(r29)
/* 804DEEAC  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DEEB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DEEB4  7D 89 03 A6 */	mtctr r12
/* 804DEEB8  4E 80 04 21 */	bctrl 
/* 804DEEBC  48 00 00 40 */	b lbl_804DEEFC
lbl_804DEEC0:
/* 804DEEC0  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 804DEEC4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804DEEC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEECC  4C 41 13 82 */	cror 2, 1, 2
/* 804DEED0  40 82 00 2C */	bne lbl_804DEEFC
/* 804DEED4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060061@ha */
/* 804DEED8  38 03 00 61 */	addi r0, r3, 0x0061 /* 0x00060061@l */
/* 804DEEDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DEEE0  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DEEE4  38 81 00 18 */	addi r4, r1, 0x18
/* 804DEEE8  88 BD 0B 08 */	lbz r5, 0xb08(r29)
/* 804DEEEC  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DEEF0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804DEEF4  7D 89 03 A6 */	mtctr r12
/* 804DEEF8  4E 80 04 21 */	bctrl 
lbl_804DEEFC:
/* 804DEEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEF00  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEF04  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 804DEF08  A8 9D 0B 12 */	lha r4, 0xb12(r29)
/* 804DEF0C  4B B6 8B 6D */	bl endCheck__16dEvent_manager_cFs
/* 804DEF10  2C 03 00 00 */	cmpwi r3, 0
/* 804DEF14  41 82 01 9C */	beq lbl_804DF0B0
/* 804DEF18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DEF1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DEF20  88 9D 0B 0B */	lbz r4, 0xb0b(r29)
/* 804DEF24  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 804DEF28  7C 05 07 74 */	extsb r5, r0
/* 804DEF2C  4B B5 62 D5 */	bl onSwitch__10dSv_info_cFii
/* 804DEF30  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 804DEF34  4B B6 35 35 */	bl reset__14dEvt_control_cFv
/* 804DEF38  48 00 01 78 */	b lbl_804DF0B0
lbl_804DEF3C:
/* 804DEF3C  7C 1E E8 40 */	cmplw r30, r29
/* 804DEF40  40 82 01 28 */	bne lbl_804DF068
/* 804DEF44  88 1D 0B 0C */	lbz r0, 0xb0c(r29)
/* 804DEF48  28 00 00 00 */	cmplwi r0, 0
/* 804DEF4C  41 82 00 90 */	beq lbl_804DEFDC
/* 804DEF50  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 804DEF54  4B B2 E4 D5 */	bl play__14mDoExt_baseAnmFv
/* 804DEF58  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 804DEF5C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 804DEF60  4B E4 94 CD */	bl checkPass__12J3DFrameCtrlFf
/* 804DEF64  2C 03 00 00 */	cmpwi r3, 0
/* 804DEF68  41 82 00 34 */	beq lbl_804DEF9C
/* 804DEF6C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060066@ha */
/* 804DEF70  38 03 00 66 */	addi r0, r3, 0x0066 /* 0x00060066@l */
/* 804DEF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DEF78  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DEF7C  38 81 00 14 */	addi r4, r1, 0x14
/* 804DEF80  38 A0 00 00 */	li r5, 0
/* 804DEF84  88 DD 0B 08 */	lbz r6, 0xb08(r29)
/* 804DEF88  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DEF8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DEF90  7D 89 03 A6 */	mtctr r12
/* 804DEF94  4E 80 04 21 */	bctrl 
/* 804DEF98  48 00 01 18 */	b lbl_804DF0B0
lbl_804DEF9C:
/* 804DEF9C  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 804DEFA0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804DEFA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DEFA8  4C 41 13 82 */	cror 2, 1, 2
/* 804DEFAC  40 82 01 04 */	bne lbl_804DF0B0
/* 804DEFB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060061@ha */
/* 804DEFB4  38 03 00 61 */	addi r0, r3, 0x0061 /* 0x00060061@l */
/* 804DEFB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DEFBC  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DEFC0  38 81 00 10 */	addi r4, r1, 0x10
/* 804DEFC4  88 BD 0B 08 */	lbz r5, 0xb08(r29)
/* 804DEFC8  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DEFCC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804DEFD0  7D 89 03 A6 */	mtctr r12
/* 804DEFD4  4E 80 04 21 */	bctrl 
/* 804DEFD8  48 00 00 D8 */	b lbl_804DF0B0
lbl_804DEFDC:
/* 804DEFDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060060@ha */
/* 804DEFE0  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x00060060@l */
/* 804DEFE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DEFE8  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DEFEC  38 81 00 0C */	addi r4, r1, 0xc
/* 804DEFF0  38 A0 00 00 */	li r5, 0
/* 804DEFF4  88 DD 0B 08 */	lbz r6, 0xb08(r29)
/* 804DEFF8  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DEFFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DF000  7D 89 03 A6 */	mtctr r12
/* 804DF004  4E 80 04 21 */	bctrl 
/* 804DF008  88 9D 0B 0B */	lbz r4, 0xb0b(r29)
/* 804DF00C  28 04 00 FF */	cmplwi r4, 0xff
/* 804DF010  41 82 00 4C */	beq lbl_804DF05C
/* 804DF014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DF018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DF01C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 804DF020  7C 05 07 74 */	extsb r5, r0
/* 804DF024  4B B5 63 3D */	bl isSwitch__10dSv_info_cCFii
/* 804DF028  2C 03 00 00 */	cmpwi r3, 0
/* 804DF02C  40 82 00 30 */	bne lbl_804DF05C
/* 804DF030  88 BD 0B 0E */	lbz r5, 0xb0e(r29)
/* 804DF034  28 05 00 FF */	cmplwi r5, 0xff
/* 804DF038  41 82 00 24 */	beq lbl_804DF05C
/* 804DF03C  7F A3 EB 78 */	mr r3, r29
/* 804DF040  A8 9D 0B 12 */	lha r4, 0xb12(r29)
/* 804DF044  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804DF048  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804DF04C  38 E0 00 00 */	li r7, 0
/* 804DF050  39 00 00 01 */	li r8, 1
/* 804DF054  4B B3 C6 29 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 804DF058  48 00 00 58 */	b lbl_804DF0B0
lbl_804DF05C:
/* 804DF05C  7F A3 EB 78 */	mr r3, r29
/* 804DF060  48 00 01 45 */	bl initStartBrkBtk__9daCstaF_cFv
/* 804DF064  48 00 00 4C */	b lbl_804DF0B0
lbl_804DF068:
/* 804DF068  88 1D 0B 0C */	lbz r0, 0xb0c(r29)
/* 804DF06C  28 00 00 00 */	cmplwi r0, 0
/* 804DF070  41 82 00 40 */	beq lbl_804DF0B0
/* 804DF074  38 00 00 00 */	li r0, 0
/* 804DF078  98 1D 0B 0C */	stb r0, 0xb0c(r29)
/* 804DF07C  7F A3 EB 78 */	mr r3, r29
/* 804DF080  48 00 00 D1 */	bl initStopBrkBtk__9daCstaF_cFv
/* 804DF084  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060067@ha */
/* 804DF088  38 03 00 67 */	addi r0, r3, 0x0067 /* 0x00060067@l */
/* 804DF08C  90 01 00 08 */	stw r0, 8(r1)
/* 804DF090  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DF094  38 81 00 08 */	addi r4, r1, 8
/* 804DF098  38 A0 00 00 */	li r5, 0
/* 804DF09C  88 DD 0B 08 */	lbz r6, 0xb08(r29)
/* 804DF0A0  81 9D 0A 40 */	lwz r12, 0xa40(r29)
/* 804DF0A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804DF0A8  7D 89 03 A6 */	mtctr r12
/* 804DF0AC  4E 80 04 21 */	bctrl 
lbl_804DF0B0:
/* 804DF0B0  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 804DF0B4  4B B2 E3 75 */	bl play__14mDoExt_baseAnmFv
/* 804DF0B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804DF0BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804DF0C0  39 61 00 30 */	addi r11, r1, 0x30
/* 804DF0C4  4B E8 31 61 */	bl _restgpr_28
/* 804DF0C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DF0CC  7C 08 03 A6 */	mtlr r0
/* 804DF0D0  38 21 00 40 */	addi r1, r1, 0x40
/* 804DF0D4  4E 80 00 20 */	blr 
