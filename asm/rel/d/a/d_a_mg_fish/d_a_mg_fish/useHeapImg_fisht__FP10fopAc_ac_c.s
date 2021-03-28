lbl_80534ED8:
/* 80534ED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80534EDC  7C 08 02 A6 */	mflr r0
/* 80534EE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80534EE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80534EE8  4B E2 D2 F4 */	b _savegpr_29
/* 80534EEC  7C 7E 1B 78 */	mr r30, r3
/* 80534EF0  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80534EF4  28 00 00 00 */	cmplwi r0, 0
/* 80534EF8  40 82 00 2C */	bne lbl_80534F24
/* 80534EFC  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80534F00  38 80 00 04 */	li r4, 4
/* 80534F04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80534F08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80534F0C  3C A5 00 02 */	addis r5, r5, 2
/* 80534F10  38 C0 00 80 */	li r6, 0x80
/* 80534F14  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534F18  4B B0 73 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534F1C  90 7E 06 04 */	stw r3, 0x604(r30)
/* 80534F20  48 00 00 0C */	b lbl_80534F2C
lbl_80534F24:
/* 80534F24  38 00 00 00 */	li r0, 0
/* 80534F28  90 1E 06 04 */	stw r0, 0x604(r30)
lbl_80534F2C:
/* 80534F2C  38 60 00 54 */	li r3, 0x54
/* 80534F30  4B D9 9D 1C */	b __nw__FUl
/* 80534F34  7C 7D 1B 79 */	or. r29, r3, r3
/* 80534F38  41 82 00 88 */	beq lbl_80534FC0
/* 80534F3C  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 80534F40  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80534F44  54 00 10 3A */	slwi r0, r0, 2
/* 80534F48  3C 80 80 53 */	lis r4, fish_bmd@ha
/* 80534F4C  38 84 69 A4 */	addi r4, r4, fish_bmd@l
/* 80534F50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80534F54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80534F58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80534F5C  3C A5 00 02 */	addis r5, r5, 2
/* 80534F60  38 C0 00 80 */	li r6, 0x80
/* 80534F64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80534F68  4B B0 73 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80534F6C  7C 64 1B 78 */	mr r4, r3
/* 80534F70  38 00 00 01 */	li r0, 1
/* 80534F74  90 01 00 08 */	stw r0, 8(r1)
/* 80534F78  38 00 00 00 */	li r0, 0
/* 80534F7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80534F80  3C 00 00 08 */	lis r0, 8
/* 80534F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80534F88  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80534F8C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80534F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534F94  7F A3 EB 78 */	mr r3, r29
/* 80534F98  38 A0 00 00 */	li r5, 0
/* 80534F9C  38 C0 00 00 */	li r6, 0
/* 80534FA0  80 FE 06 04 */	lwz r7, 0x604(r30)
/* 80534FA4  39 00 00 00 */	li r8, 0
/* 80534FA8  3D 20 80 53 */	lis r9, lit_3679@ha
/* 80534FAC  C0 29 61 68 */	lfs f1, lit_3679@l(r9)
/* 80534FB0  39 20 00 00 */	li r9, 0
/* 80534FB4  39 40 FF FF */	li r10, -1
/* 80534FB8  4B AD AC 94 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80534FBC  7C 7D 1B 78 */	mr r29, r3
lbl_80534FC0:
/* 80534FC0  93 BE 06 00 */	stw r29, 0x600(r30)
/* 80534FC4  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80534FC8  28 03 00 00 */	cmplwi r3, 0
/* 80534FCC  41 82 00 10 */	beq lbl_80534FDC
/* 80534FD0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80534FD4  28 1F 00 00 */	cmplwi r31, 0
/* 80534FD8  40 82 00 0C */	bne lbl_80534FE4
lbl_80534FDC:
/* 80534FDC  38 60 00 00 */	li r3, 0
/* 80534FE0  48 00 01 40 */	b lbl_80535120
lbl_80534FE4:
/* 80534FE4  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80534FE8  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80534FEC  54 00 10 3A */	slwi r0, r0, 2
/* 80534FF0  3C 60 80 53 */	lis r3, fish_joint@ha
/* 80534FF4  38 63 69 D0 */	addi r3, r3, fish_joint@l
/* 80534FF8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80534FFC  90 1E 07 2C */	stw r0, 0x72c(r30)
/* 80535000  38 C0 00 01 */	li r6, 1
/* 80535004  3C 60 80 53 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80535008  38 83 A9 F0 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8053500C  48 00 00 18 */	b lbl_80535024
lbl_80535010:
/* 80535010  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80535014  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80535018  7C 63 00 2E */	lwzx r3, r3, r0
/* 8053501C  90 83 00 04 */	stw r4, 4(r3)
/* 80535020  38 C6 00 01 */	addi r6, r6, 1
lbl_80535024:
/* 80535024  80 BF 00 04 */	lwz r5, 4(r31)
/* 80535028  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 8053502C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80535030  7C 00 18 40 */	cmplw r0, r3
/* 80535034  41 80 FF DC */	blt lbl_80535010
/* 80535038  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 8053503C  28 00 00 03 */	cmplwi r0, 3
/* 80535040  40 82 00 28 */	bne lbl_80535068
/* 80535044  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80535048  38 80 00 02 */	li r4, 2
/* 8053504C  38 A0 00 05 */	li r5, 5
/* 80535050  38 C0 00 01 */	li r6, 1
/* 80535054  4B AD D5 8C */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 80535058  2C 03 00 00 */	cmpwi r3, 0
/* 8053505C  40 82 00 0C */	bne lbl_80535068
/* 80535060  38 60 00 00 */	li r3, 0
/* 80535064  48 00 00 BC */	b lbl_80535120
lbl_80535068:
/* 80535068  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 8053506C  28 00 00 04 */	cmplwi r0, 4
/* 80535070  40 82 00 AC */	bne lbl_8053511C
/* 80535074  38 60 00 18 */	li r3, 0x18
/* 80535078  4B D9 9B D4 */	b __nw__FUl
/* 8053507C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80535080  41 82 00 20 */	beq lbl_805350A0
/* 80535084  3C 80 80 53 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80535088  38 04 6B 30 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8053508C  90 1D 00 00 */	stw r0, 0(r29)
/* 80535090  38 80 00 00 */	li r4, 0
/* 80535094  4B DF 33 68 */	b init__12J3DFrameCtrlFs
/* 80535098  38 00 00 00 */	li r0, 0
/* 8053509C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_805350A0:
/* 805350A0  93 BE 06 10 */	stw r29, 0x610(r30)
/* 805350A4  80 1E 06 10 */	lwz r0, 0x610(r30)
/* 805350A8  28 00 00 00 */	cmplwi r0, 0
/* 805350AC  40 82 00 0C */	bne lbl_805350B8
/* 805350B0  38 60 00 00 */	li r3, 0
/* 805350B4  48 00 00 6C */	b lbl_80535120
lbl_805350B8:
/* 805350B8  80 7E 05 FC */	lwz r3, 0x5fc(r30)
/* 805350BC  38 80 00 07 */	li r4, 7
/* 805350C0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805350C4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805350C8  3C A5 00 02 */	addis r5, r5, 2
/* 805350CC  38 C0 00 80 */	li r6, 0x80
/* 805350D0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805350D4  4B B0 72 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805350D8  7C 65 1B 78 */	mr r5, r3
/* 805350DC  80 9F 00 04 */	lwz r4, 4(r31)
/* 805350E0  80 7E 06 10 */	lwz r3, 0x610(r30)
/* 805350E4  38 84 00 58 */	addi r4, r4, 0x58
/* 805350E8  38 C0 00 01 */	li r6, 1
/* 805350EC  38 E0 00 02 */	li r7, 2
/* 805350F0  3D 00 80 53 */	lis r8, lit_3679@ha
/* 805350F4  C0 28 61 68 */	lfs f1, lit_3679@l(r8)
/* 805350F8  39 00 00 00 */	li r8, 0
/* 805350FC  39 20 FF FF */	li r9, -1
/* 80535100  4B AD 86 0C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80535104  2C 03 00 00 */	cmpwi r3, 0
/* 80535108  40 82 00 0C */	bne lbl_80535114
/* 8053510C  38 60 00 00 */	li r3, 0
/* 80535110  48 00 00 10 */	b lbl_80535120
lbl_80535114:
/* 80535114  38 00 13 88 */	li r0, 0x1388
/* 80535118  B0 1E 06 44 */	sth r0, 0x644(r30)
lbl_8053511C:
/* 8053511C  38 60 00 01 */	li r3, 1
lbl_80535120:
/* 80535120  39 61 00 30 */	addi r11, r1, 0x30
/* 80535124  4B E2 D1 04 */	b _restgpr_29
/* 80535128  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053512C  7C 08 03 A6 */	mtlr r0
/* 80535130  38 21 00 30 */	addi r1, r1, 0x30
/* 80535134  4E 80 00 20 */	blr 
