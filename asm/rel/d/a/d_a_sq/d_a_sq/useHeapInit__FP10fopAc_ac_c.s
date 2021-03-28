lbl_805A0A48:
/* 805A0A48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0A4C  7C 08 02 A6 */	mflr r0
/* 805A0A50  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A0A54  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0A58  4B DC 17 80 */	b _savegpr_28
/* 805A0A5C  7C 7F 1B 78 */	mr r31, r3
/* 805A0A60  38 60 00 54 */	li r3, 0x54
/* 805A0A64  4B D2 E1 E8 */	b __nw__FUl
/* 805A0A68  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A0A6C  41 82 00 9C */	beq lbl_805A0B08
/* 805A0A70  3C 60 80 5A */	lis r3, stringBase0@ha
/* 805A0A74  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 805A0A78  38 80 00 09 */	li r4, 9
/* 805A0A7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805A0A80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805A0A84  3F 85 00 02 */	addis r28, r5, 2
/* 805A0A88  3B 9C C2 F8 */	addi r28, r28, -15624
/* 805A0A8C  7F 85 E3 78 */	mr r5, r28
/* 805A0A90  38 C0 00 80 */	li r6, 0x80
/* 805A0A94  4B A9 B8 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A0A98  7C 7D 1B 78 */	mr r29, r3
/* 805A0A9C  3C 60 80 5A */	lis r3, stringBase0@ha
/* 805A0AA0  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 805A0AA4  38 80 00 11 */	li r4, 0x11
/* 805A0AA8  7F 85 E3 78 */	mr r5, r28
/* 805A0AAC  38 C0 00 80 */	li r6, 0x80
/* 805A0AB0  4B A9 B8 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A0AB4  7C 64 1B 78 */	mr r4, r3
/* 805A0AB8  38 00 00 01 */	li r0, 1
/* 805A0ABC  90 01 00 08 */	stw r0, 8(r1)
/* 805A0AC0  38 00 00 00 */	li r0, 0
/* 805A0AC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A0AC8  3C 00 00 08 */	lis r0, 8
/* 805A0ACC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A0AD0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 805A0AD4  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 805A0AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0ADC  7F C3 F3 78 */	mr r3, r30
/* 805A0AE0  38 A0 00 00 */	li r5, 0
/* 805A0AE4  38 C0 00 00 */	li r6, 0
/* 805A0AE8  7F A7 EB 78 */	mr r7, r29
/* 805A0AEC  39 00 00 00 */	li r8, 0
/* 805A0AF0  3D 20 80 5A */	lis r9, lit_3771@ha
/* 805A0AF4  C0 29 11 60 */	lfs f1, lit_3771@l(r9)
/* 805A0AF8  39 20 00 00 */	li r9, 0
/* 805A0AFC  39 40 FF FF */	li r10, -1
/* 805A0B00  4B A6 F1 4C */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 805A0B04  7C 7E 1B 78 */	mr r30, r3
lbl_805A0B08:
/* 805A0B08  93 DF 05 EC */	stw r30, 0x5ec(r31)
/* 805A0B0C  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 805A0B10  28 03 00 00 */	cmplwi r3, 0
/* 805A0B14  41 82 00 10 */	beq lbl_805A0B24
/* 805A0B18  80 03 00 04 */	lwz r0, 4(r3)
/* 805A0B1C  28 00 00 00 */	cmplwi r0, 0
/* 805A0B20  40 82 00 0C */	bne lbl_805A0B2C
lbl_805A0B24:
/* 805A0B24  38 60 00 00 */	li r3, 0
/* 805A0B28  48 00 00 A8 */	b lbl_805A0BD0
lbl_805A0B2C:
/* 805A0B2C  38 60 00 18 */	li r3, 0x18
/* 805A0B30  4B D2 E1 1C */	b __nw__FUl
/* 805A0B34  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A0B38  41 82 00 20 */	beq lbl_805A0B58
/* 805A0B3C  3C 80 80 5A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805A0B40  38 04 13 10 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805A0B44  90 1E 00 00 */	stw r0, 0(r30)
/* 805A0B48  38 80 00 00 */	li r4, 0
/* 805A0B4C  4B D8 78 B0 */	b init__12J3DFrameCtrlFs
/* 805A0B50  38 00 00 00 */	li r0, 0
/* 805A0B54  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_805A0B58:
/* 805A0B58  93 DF 05 F0 */	stw r30, 0x5f0(r31)
/* 805A0B5C  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 805A0B60  28 00 00 00 */	cmplwi r0, 0
/* 805A0B64  40 82 00 0C */	bne lbl_805A0B70
/* 805A0B68  38 60 00 00 */	li r3, 0
/* 805A0B6C  48 00 00 64 */	b lbl_805A0BD0
lbl_805A0B70:
/* 805A0B70  3C 60 80 5A */	lis r3, stringBase0@ha
/* 805A0B74  38 63 11 E4 */	addi r3, r3, stringBase0@l
/* 805A0B78  38 80 00 14 */	li r4, 0x14
/* 805A0B7C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805A0B80  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805A0B84  3C A5 00 02 */	addis r5, r5, 2
/* 805A0B88  38 C0 00 80 */	li r6, 0x80
/* 805A0B8C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805A0B90  4B A9 B7 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A0B94  7C 65 1B 78 */	mr r5, r3
/* 805A0B98  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 805A0B9C  80 63 00 04 */	lwz r3, 4(r3)
/* 805A0BA0  80 83 00 04 */	lwz r4, 4(r3)
/* 805A0BA4  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 805A0BA8  38 84 00 58 */	addi r4, r4, 0x58
/* 805A0BAC  38 C0 00 01 */	li r6, 1
/* 805A0BB0  38 E0 00 00 */	li r7, 0
/* 805A0BB4  3D 00 80 5A */	lis r8, lit_3771@ha
/* 805A0BB8  C0 28 11 60 */	lfs f1, lit_3771@l(r8)
/* 805A0BBC  39 00 00 00 */	li r8, 0
/* 805A0BC0  39 20 FF FF */	li r9, -1
/* 805A0BC4  4B A6 CA 78 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805A0BC8  30 03 FF FF */	addic r0, r3, -1
/* 805A0BCC  7C 60 19 10 */	subfe r3, r0, r3
lbl_805A0BD0:
/* 805A0BD0  39 61 00 30 */	addi r11, r1, 0x30
/* 805A0BD4  4B DC 16 50 */	b _restgpr_28
/* 805A0BD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0BDC  7C 08 03 A6 */	mtlr r0
/* 805A0BE0  38 21 00 30 */	addi r1, r1, 0x30
/* 805A0BE4  4E 80 00 20 */	blr 
