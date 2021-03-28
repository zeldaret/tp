lbl_8051B3B0:
/* 8051B3B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051B3B4  7C 08 02 A6 */	mflr r0
/* 8051B3B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051B3BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B3C0  4B E4 6E 18 */	b _savegpr_28
/* 8051B3C4  7C 7F 1B 78 */	mr r31, r3
/* 8051B3C8  38 60 00 54 */	li r3, 0x54
/* 8051B3CC  4B DB 38 80 */	b __nw__FUl
/* 8051B3D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051B3D4  41 82 00 9C */	beq lbl_8051B470
/* 8051B3D8  3C 60 80 52 */	lis r3, stringBase0@ha
/* 8051B3DC  38 63 BA 88 */	addi r3, r3, stringBase0@l
/* 8051B3E0  38 80 00 0B */	li r4, 0xb
/* 8051B3E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8051B3E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8051B3EC  3F 85 00 02 */	addis r28, r5, 2
/* 8051B3F0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8051B3F4  7F 85 E3 78 */	mr r5, r28
/* 8051B3F8  38 C0 00 80 */	li r6, 0x80
/* 8051B3FC  4B B2 0E F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8051B400  7C 7D 1B 78 */	mr r29, r3
/* 8051B404  3C 60 80 52 */	lis r3, stringBase0@ha
/* 8051B408  38 63 BA 88 */	addi r3, r3, stringBase0@l
/* 8051B40C  38 80 00 0E */	li r4, 0xe
/* 8051B410  7F 85 E3 78 */	mr r5, r28
/* 8051B414  38 C0 00 80 */	li r6, 0x80
/* 8051B418  4B B2 0E D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8051B41C  7C 64 1B 78 */	mr r4, r3
/* 8051B420  38 00 00 01 */	li r0, 1
/* 8051B424  90 01 00 08 */	stw r0, 8(r1)
/* 8051B428  38 00 00 00 */	li r0, 0
/* 8051B42C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051B430  3C 00 00 08 */	lis r0, 8
/* 8051B434  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051B438  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8051B43C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8051B440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B444  7F C3 F3 78 */	mr r3, r30
/* 8051B448  38 A0 00 00 */	li r5, 0
/* 8051B44C  38 C0 00 00 */	li r6, 0
/* 8051B450  7F A7 EB 78 */	mr r7, r29
/* 8051B454  39 00 00 02 */	li r8, 2
/* 8051B458  3D 20 80 52 */	lis r9, lit_3691@ha
/* 8051B45C  C0 29 B9 EC */	lfs f1, lit_3691@l(r9)
/* 8051B460  39 20 00 00 */	li r9, 0
/* 8051B464  39 40 FF FF */	li r10, -1
/* 8051B468  4B AF 47 E4 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8051B46C  7C 7E 1B 78 */	mr r30, r3
lbl_8051B470:
/* 8051B470  93 DF 05 C4 */	stw r30, 0x5c4(r31)
/* 8051B474  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8051B478  28 03 00 00 */	cmplwi r3, 0
/* 8051B47C  41 82 00 10 */	beq lbl_8051B48C
/* 8051B480  80 03 00 04 */	lwz r0, 4(r3)
/* 8051B484  28 00 00 00 */	cmplwi r0, 0
/* 8051B488  40 82 00 0C */	bne lbl_8051B494
lbl_8051B48C:
/* 8051B48C  38 60 00 00 */	li r3, 0
/* 8051B490  48 00 00 A8 */	b lbl_8051B538
lbl_8051B494:
/* 8051B494  38 60 00 18 */	li r3, 0x18
/* 8051B498  4B DB 37 B4 */	b __nw__FUl
/* 8051B49C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051B4A0  41 82 00 20 */	beq lbl_8051B4C0
/* 8051B4A4  3C 80 80 52 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8051B4A8  38 04 BB EC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8051B4AC  90 1E 00 00 */	stw r0, 0(r30)
/* 8051B4B0  38 80 00 00 */	li r4, 0
/* 8051B4B4  4B E0 CF 48 */	b init__12J3DFrameCtrlFs
/* 8051B4B8  38 00 00 00 */	li r0, 0
/* 8051B4BC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8051B4C0:
/* 8051B4C0  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 8051B4C4  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8051B4C8  28 00 00 00 */	cmplwi r0, 0
/* 8051B4CC  40 82 00 0C */	bne lbl_8051B4D8
/* 8051B4D0  38 60 00 00 */	li r3, 0
/* 8051B4D4  48 00 00 64 */	b lbl_8051B538
lbl_8051B4D8:
/* 8051B4D8  3C 60 80 52 */	lis r3, stringBase0@ha
/* 8051B4DC  38 63 BA 88 */	addi r3, r3, stringBase0@l
/* 8051B4E0  38 80 00 11 */	li r4, 0x11
/* 8051B4E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8051B4E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8051B4EC  3C A5 00 02 */	addis r5, r5, 2
/* 8051B4F0  38 C0 00 80 */	li r6, 0x80
/* 8051B4F4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8051B4F8  4B B2 0D F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8051B4FC  7C 65 1B 78 */	mr r5, r3
/* 8051B500  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8051B504  80 63 00 04 */	lwz r3, 4(r3)
/* 8051B508  80 83 00 04 */	lwz r4, 4(r3)
/* 8051B50C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8051B510  38 84 00 58 */	addi r4, r4, 0x58
/* 8051B514  38 C0 00 01 */	li r6, 1
/* 8051B518  38 E0 00 00 */	li r7, 0
/* 8051B51C  3D 00 80 52 */	lis r8, lit_3691@ha
/* 8051B520  C0 28 B9 EC */	lfs f1, lit_3691@l(r8)
/* 8051B524  39 00 00 00 */	li r8, 0
/* 8051B528  39 20 FF FF */	li r9, -1
/* 8051B52C  4B AF 21 10 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8051B530  30 03 FF FF */	addic r0, r3, -1
/* 8051B534  7C 60 19 10 */	subfe r3, r0, r3
lbl_8051B538:
/* 8051B538  39 61 00 30 */	addi r11, r1, 0x30
/* 8051B53C  4B E4 6C E8 */	b _restgpr_28
/* 8051B540  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051B544  7C 08 03 A6 */	mtlr r0
/* 8051B548  38 21 00 30 */	addi r1, r1, 0x30
/* 8051B54C  4E 80 00 20 */	blr 
