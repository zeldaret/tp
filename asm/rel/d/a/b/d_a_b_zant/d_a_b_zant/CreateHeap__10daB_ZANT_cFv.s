lbl_8064DC04:
/* 8064DC04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064DC08  7C 08 02 A6 */	mflr r0
/* 8064DC0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064DC10  39 61 00 30 */	addi r11, r1, 0x30
/* 8064DC14  4B D1 45 C4 */	b _savegpr_28
/* 8064DC18  7C 7F 1B 78 */	mr r31, r3
/* 8064DC1C  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DC20  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DC24  38 80 00 48 */	li r4, 0x48
/* 8064DC28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8064DC2C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8064DC30  3F C5 00 02 */	addis r30, r5, 2
/* 8064DC34  3B DE C2 F8 */	addi r30, r30, -15624
/* 8064DC38  7F C5 F3 78 */	mr r5, r30
/* 8064DC3C  38 C0 00 80 */	li r6, 0x80
/* 8064DC40  4B 9E E6 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DC44  7C 7C 1B 78 */	mr r28, r3
/* 8064DC48  38 60 00 58 */	li r3, 0x58
/* 8064DC4C  4B C8 10 00 */	b __nw__FUl
/* 8064DC50  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064DC54  41 82 00 68 */	beq lbl_8064DCBC
/* 8064DC58  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DC5C  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DC60  38 80 00 12 */	li r4, 0x12
/* 8064DC64  7F C5 F3 78 */	mr r5, r30
/* 8064DC68  38 C0 00 80 */	li r6, 0x80
/* 8064DC6C  4B 9E E6 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DC70  7C 67 1B 78 */	mr r7, r3
/* 8064DC74  38 1F 05 F0 */	addi r0, r31, 0x5f0
/* 8064DC78  90 01 00 08 */	stw r0, 8(r1)
/* 8064DC7C  38 00 00 00 */	li r0, 0
/* 8064DC80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064DC84  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8064DC88  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8064DC8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8064DC90  7F A3 EB 78 */	mr r3, r29
/* 8064DC94  7F 84 E3 78 */	mr r4, r28
/* 8064DC98  38 A0 00 00 */	li r5, 0
/* 8064DC9C  38 C0 00 00 */	li r6, 0
/* 8064DCA0  39 00 00 02 */	li r8, 2
/* 8064DCA4  3D 20 80 65 */	lis r9, lit_4169@ha
/* 8064DCA8  C0 29 EB 28 */	lfs f1, lit_4169@l(r9)
/* 8064DCAC  39 20 00 00 */	li r9, 0
/* 8064DCB0  39 40 FF FF */	li r10, -1
/* 8064DCB4  4B 9C 2B 1C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8064DCB8  7C 7D 1B 78 */	mr r29, r3
lbl_8064DCBC:
/* 8064DCBC  93 BF 05 B4 */	stw r29, 0x5b4(r31)
/* 8064DCC0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064DCC4  28 03 00 00 */	cmplwi r3, 0
/* 8064DCC8  41 82 00 10 */	beq lbl_8064DCD8
/* 8064DCCC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8064DCD0  28 05 00 00 */	cmplwi r5, 0
/* 8064DCD4  40 82 00 0C */	bne lbl_8064DCE0
lbl_8064DCD8:
/* 8064DCD8  38 60 00 00 */	li r3, 0
/* 8064DCDC  48 00 04 34 */	b lbl_8064E110
lbl_8064DCE0:
/* 8064DCE0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8064DCE4  80 65 00 04 */	lwz r3, 4(r5)
/* 8064DCE8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8064DCEC  80 83 00 04 */	lwz r4, 4(r3)
/* 8064DCF0  3C 60 80 64 */	lis r3, JointCallBack__10daB_ZANT_cFP8J3DJointi@ha
/* 8064DCF4  38 03 E2 64 */	addi r0, r3, JointCallBack__10daB_ZANT_cFP8J3DJointi@l
/* 8064DCF8  90 04 00 04 */	stw r0, 4(r4)
/* 8064DCFC  80 65 00 04 */	lwz r3, 4(r5)
/* 8064DD00  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8064DD04  80 63 00 08 */	lwz r3, 8(r3)
/* 8064DD08  90 03 00 04 */	stw r0, 4(r3)
/* 8064DD0C  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DD10  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DD14  38 80 00 49 */	li r4, 0x49
/* 8064DD18  7F C5 F3 78 */	mr r5, r30
/* 8064DD1C  38 C0 00 80 */	li r6, 0x80
/* 8064DD20  4B 9E E5 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DD24  3C 80 00 08 */	lis r4, 8
/* 8064DD28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8064DD2C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8064DD30  4B 9C 6F 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8064DD34  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 8064DD38  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 8064DD3C  28 00 00 00 */	cmplwi r0, 0
/* 8064DD40  40 82 00 0C */	bne lbl_8064DD4C
/* 8064DD44  38 60 00 00 */	li r3, 0
/* 8064DD48  48 00 03 C8 */	b lbl_8064E110
lbl_8064DD4C:
/* 8064DD4C  38 60 00 18 */	li r3, 0x18
/* 8064DD50  4B C8 0E FC */	b __nw__FUl
/* 8064DD54  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064DD58  41 82 00 20 */	beq lbl_8064DD78
/* 8064DD5C  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8064DD60  38 04 F5 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8064DD64  90 1D 00 00 */	stw r0, 0(r29)
/* 8064DD68  38 80 00 00 */	li r4, 0
/* 8064DD6C  4B CD A6 90 */	b init__12J3DFrameCtrlFs
/* 8064DD70  38 00 00 00 */	li r0, 0
/* 8064DD74  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8064DD78:
/* 8064DD78  93 BF 05 C8 */	stw r29, 0x5c8(r31)
/* 8064DD7C  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8064DD80  28 00 00 00 */	cmplwi r0, 0
/* 8064DD84  40 82 00 0C */	bne lbl_8064DD90
/* 8064DD88  38 60 00 00 */	li r3, 0
/* 8064DD8C  48 00 03 84 */	b lbl_8064E110
lbl_8064DD90:
/* 8064DD90  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DD94  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DD98  38 80 00 4F */	li r4, 0x4f
/* 8064DD9C  7F C5 F3 78 */	mr r5, r30
/* 8064DDA0  38 C0 00 80 */	li r6, 0x80
/* 8064DDA4  4B 9E E5 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DDA8  7C 65 1B 78 */	mr r5, r3
/* 8064DDAC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8064DDB0  80 83 00 04 */	lwz r4, 4(r3)
/* 8064DDB4  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8064DDB8  38 84 00 58 */	addi r4, r4, 0x58
/* 8064DDBC  38 C0 00 01 */	li r6, 1
/* 8064DDC0  38 E0 00 00 */	li r7, 0
/* 8064DDC4  3D 00 80 65 */	lis r8, lit_4169@ha
/* 8064DDC8  C0 28 EB 28 */	lfs f1, lit_4169@l(r8)
/* 8064DDCC  39 00 00 00 */	li r8, 0
/* 8064DDD0  39 20 FF FF */	li r9, -1
/* 8064DDD4  4B 9B F9 38 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8064DDD8  2C 03 00 00 */	cmpwi r3, 0
/* 8064DDDC  40 82 00 0C */	bne lbl_8064DDE8
/* 8064DDE0  38 60 00 00 */	li r3, 0
/* 8064DDE4  48 00 03 2C */	b lbl_8064E110
lbl_8064DDE8:
/* 8064DDE8  38 60 00 18 */	li r3, 0x18
/* 8064DDEC  4B C8 0E 60 */	b __nw__FUl
/* 8064DDF0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064DDF4  41 82 00 20 */	beq lbl_8064DE14
/* 8064DDF8  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8064DDFC  38 04 F5 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8064DE00  90 1D 00 00 */	stw r0, 0(r29)
/* 8064DE04  38 80 00 00 */	li r4, 0
/* 8064DE08  4B CD A5 F4 */	b init__12J3DFrameCtrlFs
/* 8064DE0C  38 00 00 00 */	li r0, 0
/* 8064DE10  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8064DE14:
/* 8064DE14  93 BF 05 CC */	stw r29, 0x5cc(r31)
/* 8064DE18  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 8064DE1C  28 00 00 00 */	cmplwi r0, 0
/* 8064DE20  40 82 00 0C */	bne lbl_8064DE2C
/* 8064DE24  38 60 00 00 */	li r3, 0
/* 8064DE28  48 00 02 E8 */	b lbl_8064E110
lbl_8064DE2C:
/* 8064DE2C  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DE30  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DE34  38 80 00 53 */	li r4, 0x53
/* 8064DE38  7F C5 F3 78 */	mr r5, r30
/* 8064DE3C  38 C0 00 80 */	li r6, 0x80
/* 8064DE40  4B 9E E4 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DE44  7C 65 1B 78 */	mr r5, r3
/* 8064DE48  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8064DE4C  80 83 00 04 */	lwz r4, 4(r3)
/* 8064DE50  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8064DE54  38 84 00 58 */	addi r4, r4, 0x58
/* 8064DE58  38 C0 00 01 */	li r6, 1
/* 8064DE5C  38 E0 00 02 */	li r7, 2
/* 8064DE60  3D 00 80 65 */	lis r8, lit_4169@ha
/* 8064DE64  C0 28 EB 28 */	lfs f1, lit_4169@l(r8)
/* 8064DE68  39 00 00 00 */	li r8, 0
/* 8064DE6C  39 20 FF FF */	li r9, -1
/* 8064DE70  4B 9B F7 CC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8064DE74  2C 03 00 00 */	cmpwi r3, 0
/* 8064DE78  40 82 00 0C */	bne lbl_8064DE84
/* 8064DE7C  38 60 00 00 */	li r3, 0
/* 8064DE80  48 00 02 90 */	b lbl_8064E110
lbl_8064DE84:
/* 8064DE84  38 60 00 18 */	li r3, 0x18
/* 8064DE88  4B C8 0D C4 */	b __nw__FUl
/* 8064DE8C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064DE90  41 82 00 20 */	beq lbl_8064DEB0
/* 8064DE94  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8064DE98  38 04 F5 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8064DE9C  90 1D 00 00 */	stw r0, 0(r29)
/* 8064DEA0  38 80 00 00 */	li r4, 0
/* 8064DEA4  4B CD A5 58 */	b init__12J3DFrameCtrlFs
/* 8064DEA8  38 00 00 00 */	li r0, 0
/* 8064DEAC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8064DEB0:
/* 8064DEB0  93 BF 05 D0 */	stw r29, 0x5d0(r31)
/* 8064DEB4  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 8064DEB8  28 00 00 00 */	cmplwi r0, 0
/* 8064DEBC  40 82 00 0C */	bne lbl_8064DEC8
/* 8064DEC0  38 60 00 00 */	li r3, 0
/* 8064DEC4  48 00 02 4C */	b lbl_8064E110
lbl_8064DEC8:
/* 8064DEC8  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DECC  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DED0  38 80 00 54 */	li r4, 0x54
/* 8064DED4  7F C5 F3 78 */	mr r5, r30
/* 8064DED8  38 C0 00 80 */	li r6, 0x80
/* 8064DEDC  4B 9E E4 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DEE0  7C 65 1B 78 */	mr r5, r3
/* 8064DEE4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8064DEE8  80 83 00 04 */	lwz r4, 4(r3)
/* 8064DEEC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8064DEF0  38 84 00 58 */	addi r4, r4, 0x58
/* 8064DEF4  38 C0 00 01 */	li r6, 1
/* 8064DEF8  38 E0 00 00 */	li r7, 0
/* 8064DEFC  3D 00 80 65 */	lis r8, lit_4169@ha
/* 8064DF00  C0 28 EB 28 */	lfs f1, lit_4169@l(r8)
/* 8064DF04  39 00 00 00 */	li r8, 0
/* 8064DF08  39 20 FF FF */	li r9, -1
/* 8064DF0C  4B 9B F7 30 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8064DF10  2C 03 00 00 */	cmpwi r3, 0
/* 8064DF14  40 82 00 0C */	bne lbl_8064DF20
/* 8064DF18  38 60 00 00 */	li r3, 0
/* 8064DF1C  48 00 01 F4 */	b lbl_8064E110
lbl_8064DF20:
/* 8064DF20  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DF24  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DF28  38 80 00 49 */	li r4, 0x49
/* 8064DF2C  7F C5 F3 78 */	mr r5, r30
/* 8064DF30  38 C0 00 80 */	li r6, 0x80
/* 8064DF34  4B 9E E3 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DF38  3C 80 00 08 */	lis r4, 8
/* 8064DF3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8064DF40  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8064DF44  4B 9C 6D 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8064DF48  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 8064DF4C  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 8064DF50  28 00 00 00 */	cmplwi r0, 0
/* 8064DF54  40 82 00 0C */	bne lbl_8064DF60
/* 8064DF58  38 60 00 00 */	li r3, 0
/* 8064DF5C  48 00 01 B4 */	b lbl_8064E110
lbl_8064DF60:
/* 8064DF60  38 60 00 18 */	li r3, 0x18
/* 8064DF64  4B C8 0C E8 */	b __nw__FUl
/* 8064DF68  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064DF6C  41 82 00 20 */	beq lbl_8064DF8C
/* 8064DF70  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8064DF74  38 04 F5 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8064DF78  90 1D 00 00 */	stw r0, 0(r29)
/* 8064DF7C  38 80 00 00 */	li r4, 0
/* 8064DF80  4B CD A4 7C */	b init__12J3DFrameCtrlFs
/* 8064DF84  38 00 00 00 */	li r0, 0
/* 8064DF88  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8064DF8C:
/* 8064DF8C  93 BF 05 D4 */	stw r29, 0x5d4(r31)
/* 8064DF90  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 8064DF94  28 00 00 00 */	cmplwi r0, 0
/* 8064DF98  40 82 00 0C */	bne lbl_8064DFA4
/* 8064DF9C  38 60 00 00 */	li r3, 0
/* 8064DFA0  48 00 01 70 */	b lbl_8064E110
lbl_8064DFA4:
/* 8064DFA4  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064DFA8  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064DFAC  38 80 00 4F */	li r4, 0x4f
/* 8064DFB0  7F C5 F3 78 */	mr r5, r30
/* 8064DFB4  38 C0 00 80 */	li r6, 0x80
/* 8064DFB8  4B 9E E3 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064DFBC  7C 65 1B 78 */	mr r5, r3
/* 8064DFC0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8064DFC4  80 83 00 04 */	lwz r4, 4(r3)
/* 8064DFC8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8064DFCC  38 84 00 58 */	addi r4, r4, 0x58
/* 8064DFD0  38 C0 00 01 */	li r6, 1
/* 8064DFD4  38 E0 00 00 */	li r7, 0
/* 8064DFD8  3D 00 80 65 */	lis r8, lit_4176@ha
/* 8064DFDC  C0 28 EB 44 */	lfs f1, lit_4176@l(r8)
/* 8064DFE0  39 00 00 00 */	li r8, 0
/* 8064DFE4  39 20 FF FF */	li r9, -1
/* 8064DFE8  4B 9B F7 24 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8064DFEC  2C 03 00 00 */	cmpwi r3, 0
/* 8064DFF0  40 82 00 0C */	bne lbl_8064DFFC
/* 8064DFF4  38 60 00 00 */	li r3, 0
/* 8064DFF8  48 00 01 18 */	b lbl_8064E110
lbl_8064DFFC:
/* 8064DFFC  38 60 00 18 */	li r3, 0x18
/* 8064E000  4B C8 0C 4C */	b __nw__FUl
/* 8064E004  7C 7D 1B 79 */	or. r29, r3, r3
/* 8064E008  41 82 00 20 */	beq lbl_8064E028
/* 8064E00C  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8064E010  38 04 F5 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8064E014  90 1D 00 00 */	stw r0, 0(r29)
/* 8064E018  38 80 00 00 */	li r4, 0
/* 8064E01C  4B CD A3 E0 */	b init__12J3DFrameCtrlFs
/* 8064E020  38 00 00 00 */	li r0, 0
/* 8064E024  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8064E028:
/* 8064E028  93 BF 05 D8 */	stw r29, 0x5d8(r31)
/* 8064E02C  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8064E030  28 00 00 00 */	cmplwi r0, 0
/* 8064E034  40 82 00 0C */	bne lbl_8064E040
/* 8064E038  38 60 00 00 */	li r3, 0
/* 8064E03C  48 00 00 D4 */	b lbl_8064E110
lbl_8064E040:
/* 8064E040  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064E044  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064E048  38 80 00 54 */	li r4, 0x54
/* 8064E04C  7F C5 F3 78 */	mr r5, r30
/* 8064E050  38 C0 00 80 */	li r6, 0x80
/* 8064E054  4B 9E E2 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064E058  7C 65 1B 78 */	mr r5, r3
/* 8064E05C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8064E060  80 83 00 04 */	lwz r4, 4(r3)
/* 8064E064  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8064E068  38 84 00 58 */	addi r4, r4, 0x58
/* 8064E06C  38 C0 00 01 */	li r6, 1
/* 8064E070  38 E0 00 00 */	li r7, 0
/* 8064E074  3D 00 80 65 */	lis r8, lit_4169@ha
/* 8064E078  C0 28 EB 28 */	lfs f1, lit_4169@l(r8)
/* 8064E07C  39 00 00 00 */	li r8, 0
/* 8064E080  39 20 FF FF */	li r9, -1
/* 8064E084  4B 9B F5 B8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8064E088  2C 03 00 00 */	cmpwi r3, 0
/* 8064E08C  40 82 00 0C */	bne lbl_8064E098
/* 8064E090  38 60 00 00 */	li r3, 0
/* 8064E094  48 00 00 7C */	b lbl_8064E110
lbl_8064E098:
/* 8064E098  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064E09C  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064E0A0  38 80 00 4A */	li r4, 0x4a
/* 8064E0A4  7F C5 F3 78 */	mr r5, r30
/* 8064E0A8  38 C0 00 80 */	li r6, 0x80
/* 8064E0AC  4B 9E E2 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064E0B0  3C 80 00 08 */	lis r4, 8
/* 8064E0B4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8064E0B8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8064E0BC  4B 9C 6B 98 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8064E0C0  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8064E0C4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8064E0C8  28 00 00 00 */	cmplwi r0, 0
/* 8064E0CC  40 82 00 0C */	bne lbl_8064E0D8
/* 8064E0D0  38 60 00 00 */	li r3, 0
/* 8064E0D4  48 00 00 3C */	b lbl_8064E110
lbl_8064E0D8:
/* 8064E0D8  3C 60 80 65 */	lis r3, stringBase0@ha
/* 8064E0DC  38 63 EE 60 */	addi r3, r3, stringBase0@l
/* 8064E0E0  38 80 00 4B */	li r4, 0x4b
/* 8064E0E4  7F C5 F3 78 */	mr r5, r30
/* 8064E0E8  38 C0 00 80 */	li r6, 0x80
/* 8064E0EC  4B 9E E2 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064E0F0  3C 80 00 08 */	lis r4, 8
/* 8064E0F4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8064E0F8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8064E0FC  4B 9C 6B 58 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8064E100  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 8064E104  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8064E108  30 03 FF FF */	addic r0, r3, -1
/* 8064E10C  7C 60 19 10 */	subfe r3, r0, r3
lbl_8064E110:
/* 8064E110  39 61 00 30 */	addi r11, r1, 0x30
/* 8064E114  4B D1 41 10 */	b _restgpr_28
/* 8064E118  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064E11C  7C 08 03 A6 */	mtlr r0
/* 8064E120  38 21 00 30 */	addi r1, r1, 0x30
/* 8064E124  4E 80 00 20 */	blr 
