lbl_80C93204:
/* 80C93204  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C93208  7C 08 02 A6 */	mflr r0
/* 80C9320C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C93210  39 61 00 20 */	addi r11, r1, 0x20
/* 80C93214  4B 6C EF BD */	bl _savegpr_26
/* 80C93218  7C 7C 1B 78 */	mr r28, r3
/* 80C9321C  3C 60 80 C9 */	lis r3, l_bmd@ha /* 0x80C93D88@ha */
/* 80C93220  3B C3 3D 88 */	addi r30, r3, l_bmd@l /* 0x80C93D88@l */
/* 80C93224  88 1C 07 02 */	lbz r0, 0x702(r28)
/* 80C93228  54 00 10 3A */	slwi r0, r0, 2
/* 80C9322C  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C93E14@ha */
/* 80C93230  38 63 3E 14 */	addi r3, r3, l_arcName@l /* 0x80C93E14@l */
/* 80C93234  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C93238  38 9E 00 00 */	addi r4, r30, 0
/* 80C9323C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C93240  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C93244  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C93248  3F A5 00 02 */	addis r29, r5, 2
/* 80C9324C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C93250  7F A5 EB 78 */	mr r5, r29
/* 80C93254  38 C0 00 80 */	li r6, 0x80
/* 80C93258  4B 3A 90 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9325C  7C 7F 1B 78 */	mr r31, r3
/* 80C93260  38 80 00 00 */	li r4, 0
/* 80C93264  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80C93268  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80C9326C  4B 38 19 E9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C93270  90 7C 05 70 */	stw r3, 0x570(r28)
/* 80C93274  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80C93278  28 00 00 00 */	cmplwi r0, 0
/* 80C9327C  40 82 00 0C */	bne lbl_80C93288
/* 80C93280  38 60 00 00 */	li r3, 0
/* 80C93284  48 00 01 FC */	b lbl_80C93480
lbl_80C93288:
/* 80C93288  88 1C 07 02 */	lbz r0, 0x702(r28)
/* 80C9328C  54 00 10 3A */	slwi r0, r0, 2
/* 80C93290  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C93E14@ha */
/* 80C93294  38 63 3E 14 */	addi r3, r3, l_arcName@l /* 0x80C93E14@l */
/* 80C93298  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C9329C  38 9E 00 08 */	addi r4, r30, 8
/* 80C932A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C932A4  7F A5 EB 78 */	mr r5, r29
/* 80C932A8  38 C0 00 80 */	li r6, 0x80
/* 80C932AC  4B 3A 90 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C932B0  7C 7A 1B 78 */	mr r26, r3
/* 80C932B4  38 60 00 18 */	li r3, 0x18
/* 80C932B8  4B 63 B9 95 */	bl __nw__FUl
/* 80C932BC  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C932C0  41 82 00 20 */	beq lbl_80C932E0
/* 80C932C4  3C 80 80 C9 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C93EC4@ha */
/* 80C932C8  38 04 3E C4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C93EC4@l */
/* 80C932CC  90 1B 00 00 */	stw r0, 0(r27)
/* 80C932D0  38 80 00 00 */	li r4, 0
/* 80C932D4  4B 69 51 29 */	bl init__12J3DFrameCtrlFs
/* 80C932D8  38 00 00 00 */	li r0, 0
/* 80C932DC  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C932E0:
/* 80C932E0  93 7C 05 74 */	stw r27, 0x574(r28)
/* 80C932E4  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C932E8  28 03 00 00 */	cmplwi r3, 0
/* 80C932EC  41 82 00 2C */	beq lbl_80C93318
/* 80C932F0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C932F4  7F 45 D3 78 */	mr r5, r26
/* 80C932F8  38 C0 00 01 */	li r6, 1
/* 80C932FC  38 E0 00 02 */	li r7, 2
/* 80C93300  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C93304  39 00 00 00 */	li r8, 0
/* 80C93308  39 20 FF FF */	li r9, -1
/* 80C9330C  4B 37 A4 01 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C93310  2C 03 00 00 */	cmpwi r3, 0
/* 80C93314  40 82 00 0C */	bne lbl_80C93320
lbl_80C93318:
/* 80C93318  38 60 00 00 */	li r3, 0
/* 80C9331C  48 00 01 64 */	b lbl_80C93480
lbl_80C93320:
/* 80C93320  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C93324  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C93328  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C9332C  88 1C 07 02 */	lbz r0, 0x702(r28)
/* 80C93330  54 00 10 3A */	slwi r0, r0, 2
/* 80C93334  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C93E14@ha */
/* 80C93338  38 63 3E 14 */	addi r3, r3, l_arcName@l /* 0x80C93E14@l */
/* 80C9333C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C93340  38 9E 00 10 */	addi r4, r30, 0x10
/* 80C93344  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C93348  7F A5 EB 78 */	mr r5, r29
/* 80C9334C  38 C0 00 80 */	li r6, 0x80
/* 80C93350  4B 3A 8F 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C93354  7C 7A 1B 78 */	mr r26, r3
/* 80C93358  38 60 00 18 */	li r3, 0x18
/* 80C9335C  4B 63 B8 F1 */	bl __nw__FUl
/* 80C93360  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C93364  41 82 00 20 */	beq lbl_80C93384
/* 80C93368  3C 80 80 C9 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C93EC4@ha */
/* 80C9336C  38 04 3E C4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C93EC4@l */
/* 80C93370  90 1B 00 00 */	stw r0, 0(r27)
/* 80C93374  38 80 00 00 */	li r4, 0
/* 80C93378  4B 69 50 85 */	bl init__12J3DFrameCtrlFs
/* 80C9337C  38 00 00 00 */	li r0, 0
/* 80C93380  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C93384:
/* 80C93384  93 7C 05 78 */	stw r27, 0x578(r28)
/* 80C93388  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80C9338C  28 03 00 00 */	cmplwi r3, 0
/* 80C93390  41 82 00 2C */	beq lbl_80C933BC
/* 80C93394  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C93398  7F 45 D3 78 */	mr r5, r26
/* 80C9339C  38 C0 00 01 */	li r6, 1
/* 80C933A0  38 E0 00 02 */	li r7, 2
/* 80C933A4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C933A8  39 00 00 00 */	li r8, 0
/* 80C933AC  39 20 FF FF */	li r9, -1
/* 80C933B0  4B 37 A2 8D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C933B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C933B8  40 82 00 0C */	bne lbl_80C933C4
lbl_80C933BC:
/* 80C933BC  38 60 00 00 */	li r3, 0
/* 80C933C0  48 00 00 C0 */	b lbl_80C93480
lbl_80C933C4:
/* 80C933C4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C933C8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80C933CC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C933D0  88 1C 07 02 */	lbz r0, 0x702(r28)
/* 80C933D4  54 00 10 3A */	slwi r0, r0, 2
/* 80C933D8  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C93E14@ha */
/* 80C933DC  38 63 3E 14 */	addi r3, r3, l_arcName@l /* 0x80C93E14@l */
/* 80C933E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C933E4  38 9E 00 18 */	addi r4, r30, 0x18
/* 80C933E8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C933EC  7F A5 EB 78 */	mr r5, r29
/* 80C933F0  38 C0 00 80 */	li r6, 0x80
/* 80C933F4  4B 3A 8E F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C933F8  7C 7A 1B 78 */	mr r26, r3
/* 80C933FC  38 60 00 18 */	li r3, 0x18
/* 80C93400  4B 63 B8 4D */	bl __nw__FUl
/* 80C93404  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C93408  41 82 00 20 */	beq lbl_80C93428
/* 80C9340C  3C 80 80 C9 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C93EC4@ha */
/* 80C93410  38 04 3E C4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C93EC4@l */
/* 80C93414  90 1D 00 00 */	stw r0, 0(r29)
/* 80C93418  38 80 00 00 */	li r4, 0
/* 80C9341C  4B 69 4F E1 */	bl init__12J3DFrameCtrlFs
/* 80C93420  38 00 00 00 */	li r0, 0
/* 80C93424  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C93428:
/* 80C93428  93 BC 05 7C */	stw r29, 0x57c(r28)
/* 80C9342C  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C93430  28 03 00 00 */	cmplwi r3, 0
/* 80C93434  41 82 00 2C */	beq lbl_80C93460
/* 80C93438  38 9F 00 58 */	addi r4, r31, 0x58
/* 80C9343C  7F 45 D3 78 */	mr r5, r26
/* 80C93440  38 C0 00 01 */	li r6, 1
/* 80C93444  38 E0 00 00 */	li r7, 0
/* 80C93448  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C9344C  39 00 00 00 */	li r8, 0
/* 80C93450  39 20 FF FF */	li r9, -1
/* 80C93454  4B 37 A1 E9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C93458  2C 03 00 00 */	cmpwi r3, 0
/* 80C9345C  40 82 00 0C */	bne lbl_80C93468
lbl_80C93460:
/* 80C93460  38 60 00 00 */	li r3, 0
/* 80C93464  48 00 00 1C */	b lbl_80C93480
lbl_80C93468:
/* 80C93468  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80C9346C  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C93470  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C93474  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80C93478  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C9347C  38 60 00 01 */	li r3, 1
lbl_80C93480:
/* 80C93480  39 61 00 20 */	addi r11, r1, 0x20
/* 80C93484  4B 6C ED 99 */	bl _restgpr_26
/* 80C93488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9348C  7C 08 03 A6 */	mtlr r0
/* 80C93490  38 21 00 20 */	addi r1, r1, 0x20
/* 80C93494  4E 80 00 20 */	blr 
