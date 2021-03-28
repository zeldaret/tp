lbl_804FFB6C:
/* 804FFB6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FFB70  7C 08 02 A6 */	mflr r0
/* 804FFB74  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FFB78  39 61 00 30 */	addi r11, r1, 0x30
/* 804FFB7C  4B E6 26 58 */	b _savegpr_27
/* 804FFB80  7C 7F 1B 78 */	mr r31, r3
/* 804FFB84  38 60 00 58 */	li r3, 0x58
/* 804FFB88  4B DC F0 C4 */	b __nw__FUl
/* 804FFB8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804FFB90  41 82 00 94 */	beq lbl_804FFC24
/* 804FFB94  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FFB98  38 63 0C 34 */	addi r3, r3, stringBase0@l
/* 804FFB9C  38 80 00 12 */	li r4, 0x12
/* 804FFBA0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804FFBA4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804FFBA8  3F 85 00 02 */	addis r28, r5, 2
/* 804FFBAC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804FFBB0  7F 85 E3 78 */	mr r5, r28
/* 804FFBB4  38 C0 00 80 */	li r6, 0x80
/* 804FFBB8  4B B3 C7 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FFBBC  7C 7D 1B 78 */	mr r29, r3
/* 804FFBC0  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FFBC4  38 63 0C 34 */	addi r3, r3, stringBase0@l
/* 804FFBC8  38 80 00 17 */	li r4, 0x17
/* 804FFBCC  7F 85 E3 78 */	mr r5, r28
/* 804FFBD0  38 C0 00 80 */	li r6, 0x80
/* 804FFBD4  4B B3 C7 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FFBD8  7C 64 1B 78 */	mr r4, r3
/* 804FFBDC  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 804FFBE0  90 01 00 08 */	stw r0, 8(r1)
/* 804FFBE4  3C 00 00 08 */	lis r0, 8
/* 804FFBE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FFBEC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804FFBF0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 804FFBF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FFBF8  7F C3 F3 78 */	mr r3, r30
/* 804FFBFC  38 A0 00 00 */	li r5, 0
/* 804FFC00  38 C0 00 00 */	li r6, 0
/* 804FFC04  7F A7 EB 78 */	mr r7, r29
/* 804FFC08  39 00 00 02 */	li r8, 2
/* 804FFC0C  3D 20 80 50 */	lis r9, lit_3790@ha
/* 804FFC10  C0 29 0B 0C */	lfs f1, lit_3790@l(r9)
/* 804FFC14  39 20 00 00 */	li r9, 0
/* 804FFC18  39 40 FF FF */	li r10, -1
/* 804FFC1C  4B B1 0B B4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804FFC20  7C 7E 1B 78 */	mr r30, r3
lbl_804FFC24:
/* 804FFC24  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 804FFC28  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FFC2C  28 03 00 00 */	cmplwi r3, 0
/* 804FFC30  41 82 00 10 */	beq lbl_804FFC40
/* 804FFC34  80 03 00 04 */	lwz r0, 4(r3)
/* 804FFC38  28 00 00 00 */	cmplwi r0, 0
/* 804FFC3C  40 82 00 0C */	bne lbl_804FFC48
lbl_804FFC40:
/* 804FFC40  38 60 00 00 */	li r3, 0
/* 804FFC44  48 00 01 04 */	b lbl_804FFD48
lbl_804FFC48:
/* 804FFC48  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FFC4C  38 63 0C 34 */	addi r3, r3, stringBase0@l
/* 804FFC50  38 80 00 1D */	li r4, 0x1d
/* 804FFC54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804FFC58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804FFC5C  3F 85 00 02 */	addis r28, r5, 2
/* 804FFC60  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804FFC64  7F 85 E3 78 */	mr r5, r28
/* 804FFC68  38 C0 00 80 */	li r6, 0x80
/* 804FFC6C  4B B3 C6 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FFC70  7C 66 1B 78 */	mr r6, r3
/* 804FFC74  38 7F 08 08 */	addi r3, r31, 0x808
/* 804FFC78  38 80 00 01 */	li r4, 1
/* 804FFC7C  38 A0 00 0C */	li r5, 0xc
/* 804FFC80  38 E0 00 01 */	li r7, 1
/* 804FFC84  4B B1 36 DC */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 804FFC88  2C 03 00 00 */	cmpwi r3, 0
/* 804FFC8C  40 82 00 0C */	bne lbl_804FFC98
/* 804FFC90  38 60 00 00 */	li r3, 0
/* 804FFC94  48 00 00 B4 */	b lbl_804FFD48
lbl_804FFC98:
/* 804FFC98  80 7F 08 40 */	lwz r3, 0x840(r31)
/* 804FFC9C  80 83 00 04 */	lwz r4, 4(r3)
/* 804FFCA0  3C 60 80 50 */	lis r3, lit_4108@ha
/* 804FFCA4  C0 03 0B 6C */	lfs f0, lit_4108@l(r3)
/* 804FFCA8  38 00 00 0C */	li r0, 0xc
/* 804FFCAC  7C 09 03 A6 */	mtctr r0
lbl_804FFCB0:
/* 804FFCB0  D0 04 00 00 */	stfs f0, 0(r4)
/* 804FFCB4  38 84 00 04 */	addi r4, r4, 4
/* 804FFCB8  42 00 FF F8 */	bdnz lbl_804FFCB0
/* 804FFCBC  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FFCC0  38 63 0C 34 */	addi r3, r3, stringBase0@l
/* 804FFCC4  38 80 00 19 */	li r4, 0x19
/* 804FFCC8  7F 85 E3 78 */	mr r5, r28
/* 804FFCCC  38 C0 00 80 */	li r6, 0x80
/* 804FFCD0  4B B3 C6 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FFCD4  7C 7D 1B 78 */	mr r29, r3
/* 804FFCD8  3B 60 00 01 */	li r27, 1
/* 804FFCDC  3B C0 00 04 */	li r30, 4
lbl_804FFCE0:
/* 804FFCE0  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 804FFCE4  41 82 00 50 */	beq lbl_804FFD34
/* 804FFCE8  7F A3 EB 78 */	mr r3, r29
/* 804FFCEC  3C 80 00 08 */	lis r4, 8
/* 804FFCF0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804FFCF4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804FFCF8  4B B1 4F 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804FFCFC  7F 9F F2 14 */	add r28, r31, r30
/* 804FFD00  90 7C 07 78 */	stw r3, 0x778(r28)
/* 804FFD04  80 1C 07 78 */	lwz r0, 0x778(r28)
/* 804FFD08  28 00 00 00 */	cmplwi r0, 0
/* 804FFD0C  40 82 00 0C */	bne lbl_804FFD18
/* 804FFD10  38 60 00 00 */	li r3, 0
/* 804FFD14  48 00 00 34 */	b lbl_804FFD48
lbl_804FFD18:
/* 804FFD18  3C 60 80 50 */	lis r3, lit_3790@ha
/* 804FFD1C  C0 23 0B 0C */	lfs f1, lit_3790@l(r3)
/* 804FFD20  4B D6 7C 34 */	b cM_rndF__Ff
/* 804FFD24  3C 60 80 50 */	lis r3, lit_3790@ha
/* 804FFD28  C0 03 0B 0C */	lfs f0, lit_3790@l(r3)
/* 804FFD2C  EC 00 08 2A */	fadds f0, f0, f1
/* 804FFD30  D0 1C 07 D8 */	stfs f0, 0x7d8(r28)
lbl_804FFD34:
/* 804FFD34  3B 7B 00 01 */	addi r27, r27, 1
/* 804FFD38  2C 1B 00 0B */	cmpwi r27, 0xb
/* 804FFD3C  3B DE 00 04 */	addi r30, r30, 4
/* 804FFD40  41 80 FF A0 */	blt lbl_804FFCE0
/* 804FFD44  38 60 00 01 */	li r3, 1
lbl_804FFD48:
/* 804FFD48  39 61 00 30 */	addi r11, r1, 0x30
/* 804FFD4C  4B E6 24 D4 */	b _restgpr_27
/* 804FFD50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FFD54  7C 08 03 A6 */	mtlr r0
/* 804FFD58  38 21 00 30 */	addi r1, r1, 0x30
/* 804FFD5C  4E 80 00 20 */	blr 
