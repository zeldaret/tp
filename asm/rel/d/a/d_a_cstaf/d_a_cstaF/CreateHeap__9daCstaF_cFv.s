lbl_804DD978:
/* 804DD978  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DD97C  7C 08 02 A6 */	mflr r0
/* 804DD980  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DD984  39 61 00 30 */	addi r11, r1, 0x30
/* 804DD988  4B E8 48 48 */	b _savegpr_26
/* 804DD98C  7C 7C 1B 78 */	mr r28, r3
/* 804DD990  3C 60 80 4E */	lis r3, lit_3765@ha
/* 804DD994  3B E3 F8 B8 */	addi r31, r3, lit_3765@l
/* 804DD998  88 1C 0B 09 */	lbz r0, 0xb09(r28)
/* 804DD99C  54 00 18 38 */	slwi r0, r0, 3
/* 804DD9A0  3B BF 00 34 */	addi r29, r31, 0x34
/* 804DD9A4  7F BD 02 14 */	add r29, r29, r0
/* 804DD9A8  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DD9AC  A0 9D 00 02 */	lhz r4, 2(r29)
/* 804DD9B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804DD9B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804DD9B8  3F C5 00 02 */	addis r30, r5, 2
/* 804DD9BC  3B DE C2 F8 */	addi r30, r30, -15624
/* 804DD9C0  7F C5 F3 78 */	mr r5, r30
/* 804DD9C4  38 C0 00 80 */	li r6, 0x80
/* 804DD9C8  4B B5 E9 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DD9CC  7C 7B 1B 78 */	mr r27, r3
/* 804DD9D0  38 60 00 58 */	li r3, 0x58
/* 804DD9D4  4B DF 12 78 */	b __nw__FUl
/* 804DD9D8  7C 7A 1B 79 */	or. r26, r3, r3
/* 804DD9DC  41 82 00 60 */	beq lbl_804DDA3C
/* 804DD9E0  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DD9E4  A0 9D 00 00 */	lhz r4, 0(r29)
/* 804DD9E8  7F C5 F3 78 */	mr r5, r30
/* 804DD9EC  38 C0 00 80 */	li r6, 0x80
/* 804DD9F0  4B B5 E8 FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DD9F4  7C 64 1B 78 */	mr r4, r3
/* 804DD9F8  38 1C 0A 40 */	addi r0, r28, 0xa40
/* 804DD9FC  90 01 00 08 */	stw r0, 8(r1)
/* 804DDA00  3C 00 00 08 */	lis r0, 8
/* 804DDA04  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DDA08  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 804DDA0C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 804DDA10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DDA14  7F 43 D3 78 */	mr r3, r26
/* 804DDA18  38 A0 00 00 */	li r5, 0
/* 804DDA1C  38 C0 00 00 */	li r6, 0
/* 804DDA20  7F 67 DB 78 */	mr r7, r27
/* 804DDA24  39 00 00 00 */	li r8, 0
/* 804DDA28  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804DDA2C  39 20 00 00 */	li r9, 0
/* 804DDA30  39 40 FF FF */	li r10, -1
/* 804DDA34  4B B3 2D 9C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804DDA38  7C 7A 1B 78 */	mr r26, r3
lbl_804DDA3C:
/* 804DDA3C  93 5C 05 B0 */	stw r26, 0x5b0(r28)
/* 804DDA40  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 804DDA44  28 03 00 00 */	cmplwi r3, 0
/* 804DDA48  41 82 00 10 */	beq lbl_804DDA58
/* 804DDA4C  80 03 00 04 */	lwz r0, 4(r3)
/* 804DDA50  28 00 00 00 */	cmplwi r0, 0
/* 804DDA54  40 82 00 0C */	bne lbl_804DDA60
lbl_804DDA58:
/* 804DDA58  38 60 00 00 */	li r3, 0
/* 804DDA5C  48 00 00 D4 */	b lbl_804DDB30
lbl_804DDA60:
/* 804DDA60  90 1C 05 AC */	stw r0, 0x5ac(r28)
/* 804DDA64  7F 83 E3 78 */	mr r3, r28
/* 804DDA68  A0 9D 00 04 */	lhz r4, 4(r29)
/* 804DDA6C  48 00 16 6D */	bl initBrk__9daCstaF_cFUs
/* 804DDA70  2C 03 00 00 */	cmpwi r3, 0
/* 804DDA74  40 82 00 0C */	bne lbl_804DDA80
/* 804DDA78  38 60 00 00 */	li r3, 0
/* 804DDA7C  48 00 00 B4 */	b lbl_804DDB30
lbl_804DDA80:
/* 804DDA80  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DDA84  A0 9D 00 06 */	lhz r4, 6(r29)
/* 804DDA88  7F C5 F3 78 */	mr r5, r30
/* 804DDA8C  38 C0 00 80 */	li r6, 0x80
/* 804DDA90  4B B5 E8 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DDA94  7C 65 1B 78 */	mr r5, r3
/* 804DDA98  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 804DDA9C  80 83 00 04 */	lwz r4, 4(r3)
/* 804DDAA0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 804DDAA4  38 84 00 58 */	addi r4, r4, 0x58
/* 804DDAA8  38 C0 00 01 */	li r6, 1
/* 804DDAAC  38 E0 00 00 */	li r7, 0
/* 804DDAB0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DDAB4  39 00 00 00 */	li r8, 0
/* 804DDAB8  39 20 FF FF */	li r9, -1
/* 804DDABC  4B B2 FB 80 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804DDAC0  2C 03 00 00 */	cmpwi r3, 0
/* 804DDAC4  40 82 00 0C */	bne lbl_804DDAD0
/* 804DDAC8  38 60 00 00 */	li r3, 0
/* 804DDACC  48 00 00 64 */	b lbl_804DDB30
lbl_804DDAD0:
/* 804DDAD0  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DDAD4  38 1F 00 14 */	addi r0, r31, 0x14
/* 804DDAD8  7C 03 00 40 */	cmplw r3, r0
/* 804DDADC  40 82 00 50 */	bne lbl_804DDB2C
/* 804DDAE0  7F 83 E3 78 */	mr r3, r28
/* 804DDAE4  48 00 00 65 */	bl checkCoverModel__9daCstaF_cFv
/* 804DDAE8  2C 03 00 00 */	cmpwi r3, 0
/* 804DDAEC  41 82 00 40 */	beq lbl_804DDB2C
/* 804DDAF0  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DDAF4  38 80 00 0D */	li r4, 0xd
/* 804DDAF8  7F C5 F3 78 */	mr r5, r30
/* 804DDAFC  38 C0 00 80 */	li r6, 0x80
/* 804DDB00  4B B5 E7 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DDB04  3C 80 00 08 */	lis r4, 8
/* 804DDB08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 804DDB0C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 804DDB10  4B B3 71 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804DDB14  90 7C 05 B4 */	stw r3, 0x5b4(r28)
/* 804DDB18  80 1C 05 B4 */	lwz r0, 0x5b4(r28)
/* 804DDB1C  28 00 00 00 */	cmplwi r0, 0
/* 804DDB20  40 82 00 0C */	bne lbl_804DDB2C
/* 804DDB24  38 60 00 00 */	li r3, 0
/* 804DDB28  48 00 00 08 */	b lbl_804DDB30
lbl_804DDB2C:
/* 804DDB2C  38 60 00 01 */	li r3, 1
lbl_804DDB30:
/* 804DDB30  39 61 00 30 */	addi r11, r1, 0x30
/* 804DDB34  4B E8 46 E8 */	b _restgpr_26
/* 804DDB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DDB3C  7C 08 03 A6 */	mtlr r0
/* 804DDB40  38 21 00 30 */	addi r1, r1, 0x30
/* 804DDB44  4E 80 00 20 */	blr 
