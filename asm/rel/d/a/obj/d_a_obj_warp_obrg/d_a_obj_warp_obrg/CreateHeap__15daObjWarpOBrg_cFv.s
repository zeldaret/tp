lbl_80D29BB4:
/* 80D29BB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D29BB8  7C 08 02 A6 */	mflr r0
/* 80D29BBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D29BC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D29BC4  4B 63 86 0D */	bl _savegpr_26
/* 80D29BC8  7C 7C 1B 78 */	mr r28, r3
/* 80D29BCC  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D29BD0  3B C3 B7 F8 */	addi r30, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D29BD4  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29BD8  38 63 B9 34 */	addi r3, r3, l_arcName@l /* 0x80D2B934@l */
/* 80D29BDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D29BE0  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80D29BE4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29BE8  38 9E 00 00 */	addi r4, r30, 0
/* 80D29BEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D29BF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29BF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29BF8  3F A5 00 02 */	addis r29, r5, 2
/* 80D29BFC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D29C00  7F A5 EB 78 */	mr r5, r29
/* 80D29C04  38 C0 00 80 */	li r6, 0x80
/* 80D29C08  4B 31 26 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D29C0C  7C 7F 1B 78 */	mr r31, r3
/* 80D29C10  3C 80 00 08 */	lis r4, 8
/* 80D29C14  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D29C18  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D29C1C  4B 2E B0 39 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D29C20  90 7C 05 A8 */	stw r3, 0x5a8(r28)
/* 80D29C24  80 1C 05 A8 */	lwz r0, 0x5a8(r28)
/* 80D29C28  28 00 00 00 */	cmplwi r0, 0
/* 80D29C2C  40 82 00 0C */	bne lbl_80D29C38
/* 80D29C30  38 60 00 00 */	li r3, 0
/* 80D29C34  48 00 01 E8 */	b lbl_80D29E1C
lbl_80D29C38:
/* 80D29C38  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29C3C  38 63 B9 34 */	addi r3, r3, l_arcName@l /* 0x80D2B934@l */
/* 80D29C40  80 63 00 00 */	lwz r3, 0(r3)
/* 80D29C44  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80D29C48  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29C4C  38 9E 00 10 */	addi r4, r30, 0x10
/* 80D29C50  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D29C54  7F A5 EB 78 */	mr r5, r29
/* 80D29C58  38 C0 00 80 */	li r6, 0x80
/* 80D29C5C  4B 31 26 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D29C60  7C 7A 1B 78 */	mr r26, r3
/* 80D29C64  38 60 00 1C */	li r3, 0x1c
/* 80D29C68  4B 5A 4F E5 */	bl __nw__FUl
/* 80D29C6C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D29C70  41 82 00 20 */	beq lbl_80D29C90
/* 80D29C74  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D2BA50@ha */
/* 80D29C78  38 04 BA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D2BA50@l */
/* 80D29C7C  90 1B 00 00 */	stw r0, 0(r27)
/* 80D29C80  38 80 00 00 */	li r4, 0
/* 80D29C84  4B 5F E7 79 */	bl init__12J3DFrameCtrlFs
/* 80D29C88  38 00 00 00 */	li r0, 0
/* 80D29C8C  90 1B 00 18 */	stw r0, 0x18(r27)
lbl_80D29C90:
/* 80D29C90  93 7C 05 AC */	stw r27, 0x5ac(r28)
/* 80D29C94  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80D29C98  28 03 00 00 */	cmplwi r3, 0
/* 80D29C9C  41 82 00 2C */	beq lbl_80D29CC8
/* 80D29CA0  7F 44 D3 78 */	mr r4, r26
/* 80D29CA4  38 A0 00 01 */	li r5, 1
/* 80D29CA8  38 C0 00 00 */	li r6, 0
/* 80D29CAC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D29CB0  38 E0 00 00 */	li r7, 0
/* 80D29CB4  39 00 FF FF */	li r8, -1
/* 80D29CB8  39 20 00 00 */	li r9, 0
/* 80D29CBC  4B 2E 3B 21 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D29CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80D29CC4  40 82 00 0C */	bne lbl_80D29CD0
lbl_80D29CC8:
/* 80D29CC8  38 60 00 00 */	li r3, 0
/* 80D29CCC  48 00 01 50 */	b lbl_80D29E1C
lbl_80D29CD0:
/* 80D29CD0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D29CD4  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80D29CD8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D29CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29CE4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D29CE8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D29CEC  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D29CF0  7C 05 07 74 */	extsb r5, r0
/* 80D29CF4  4B 30 B6 6D */	bl isSwitch__10dSv_info_cCFii
/* 80D29CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80D29CFC  41 82 00 2C */	beq lbl_80D29D28
/* 80D29D00  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80D29D04  A8 03 00 08 */	lha r0, 8(r3)
/* 80D29D08  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80D29D0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D29D10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D29D14  3C 00 43 30 */	lis r0, 0x4330
/* 80D29D18  90 01 00 08 */	stw r0, 8(r1)
/* 80D29D1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D29D20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D29D24  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80D29D28:
/* 80D29D28  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D2B934@ha */
/* 80D29D2C  38 63 B9 34 */	addi r3, r3, l_arcName@l /* 0x80D2B934@l */
/* 80D29D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80D29D34  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80D29D38  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D29D3C  38 9E 00 18 */	addi r4, r30, 0x18
/* 80D29D40  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D29D44  7F A5 EB 78 */	mr r5, r29
/* 80D29D48  38 C0 00 80 */	li r6, 0x80
/* 80D29D4C  4B 31 25 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D29D50  7C 7A 1B 78 */	mr r26, r3
/* 80D29D54  38 60 00 18 */	li r3, 0x18
/* 80D29D58  4B 5A 4E F5 */	bl __nw__FUl
/* 80D29D5C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D29D60  41 82 00 20 */	beq lbl_80D29D80
/* 80D29D64  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D2BA50@ha */
/* 80D29D68  38 04 BA 50 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D2BA50@l */
/* 80D29D6C  90 1D 00 00 */	stw r0, 0(r29)
/* 80D29D70  38 80 00 00 */	li r4, 0
/* 80D29D74  4B 5F E6 89 */	bl init__12J3DFrameCtrlFs
/* 80D29D78  38 00 00 00 */	li r0, 0
/* 80D29D7C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D29D80:
/* 80D29D80  93 BC 05 B0 */	stw r29, 0x5b0(r28)
/* 80D29D84  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 80D29D88  28 03 00 00 */	cmplwi r3, 0
/* 80D29D8C  41 82 00 2C */	beq lbl_80D29DB8
/* 80D29D90  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D29D94  7F 45 D3 78 */	mr r5, r26
/* 80D29D98  38 C0 00 01 */	li r6, 1
/* 80D29D9C  38 E0 00 00 */	li r7, 0
/* 80D29DA0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D29DA4  39 00 00 00 */	li r8, 0
/* 80D29DA8  39 20 FF FF */	li r9, -1
/* 80D29DAC  4B 2E 38 91 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D29DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80D29DB4  40 82 00 0C */	bne lbl_80D29DC0
lbl_80D29DB8:
/* 80D29DB8  38 60 00 00 */	li r3, 0
/* 80D29DBC  48 00 00 60 */	b lbl_80D29E1C
lbl_80D29DC0:
/* 80D29DC0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D29DC4  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 80D29DC8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D29DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D29DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D29DD4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D29DD8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D29DDC  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D29DE0  7C 05 07 74 */	extsb r5, r0
/* 80D29DE4  4B 30 B5 7D */	bl isSwitch__10dSv_info_cCFii
/* 80D29DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80D29DEC  41 82 00 2C */	beq lbl_80D29E18
/* 80D29DF0  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 80D29DF4  A8 03 00 08 */	lha r0, 8(r3)
/* 80D29DF8  C8 3E 00 50 */	lfd f1, 0x50(r30)
/* 80D29DFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D29E00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D29E04  3C 00 43 30 */	lis r0, 0x4330
/* 80D29E08  90 01 00 08 */	stw r0, 8(r1)
/* 80D29E0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D29E10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D29E14  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80D29E18:
/* 80D29E18  38 60 00 01 */	li r3, 1
lbl_80D29E1C:
/* 80D29E1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D29E20  4B 63 83 FD */	bl _restgpr_26
/* 80D29E24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D29E28  7C 08 03 A6 */	mtlr r0
/* 80D29E2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D29E30  4E 80 00 20 */	blr 
