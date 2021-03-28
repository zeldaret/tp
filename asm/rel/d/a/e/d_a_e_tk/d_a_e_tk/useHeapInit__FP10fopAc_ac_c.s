lbl_807B9CC0:
/* 807B9CC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807B9CC4  7C 08 02 A6 */	mflr r0
/* 807B9CC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B9CCC  39 61 00 30 */	addi r11, r1, 0x30
/* 807B9CD0  4B BA 85 08 */	b _savegpr_28
/* 807B9CD4  7C 7F 1B 78 */	mr r31, r3
/* 807B9CD8  38 60 00 58 */	li r3, 0x58
/* 807B9CDC  4B B1 4F 70 */	b __nw__FUl
/* 807B9CE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B9CE4  41 82 00 94 */	beq lbl_807B9D78
/* 807B9CE8  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807B9CEC  38 63 A2 F0 */	addi r3, r3, stringBase0@l
/* 807B9CF0  38 80 00 09 */	li r4, 9
/* 807B9CF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B9CF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B9CFC  3F 85 00 02 */	addis r28, r5, 2
/* 807B9D00  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807B9D04  7F 85 E3 78 */	mr r5, r28
/* 807B9D08  38 C0 00 80 */	li r6, 0x80
/* 807B9D0C  4B 88 25 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B9D10  7C 7D 1B 78 */	mr r29, r3
/* 807B9D14  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807B9D18  38 63 A2 F0 */	addi r3, r3, stringBase0@l
/* 807B9D1C  38 80 00 0E */	li r4, 0xe
/* 807B9D20  7F 85 E3 78 */	mr r5, r28
/* 807B9D24  38 C0 00 80 */	li r6, 0x80
/* 807B9D28  4B 88 25 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B9D2C  7C 64 1B 78 */	mr r4, r3
/* 807B9D30  38 1F 05 CC */	addi r0, r31, 0x5cc
/* 807B9D34  90 01 00 08 */	stw r0, 8(r1)
/* 807B9D38  3C 00 00 08 */	lis r0, 8
/* 807B9D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B9D40  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807B9D44  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807B9D48  90 01 00 10 */	stw r0, 0x10(r1)
/* 807B9D4C  7F C3 F3 78 */	mr r3, r30
/* 807B9D50  38 A0 00 00 */	li r5, 0
/* 807B9D54  38 C0 00 00 */	li r6, 0
/* 807B9D58  7F A7 EB 78 */	mr r7, r29
/* 807B9D5C  39 00 00 02 */	li r8, 2
/* 807B9D60  3D 20 80 7C */	lis r9, lit_3938@ha
/* 807B9D64  C0 29 A2 9C */	lfs f1, lit_3938@l(r9)
/* 807B9D68  39 20 00 00 */	li r9, 0
/* 807B9D6C  39 40 FF FF */	li r10, -1
/* 807B9D70  4B 85 6A 60 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807B9D74  7C 7E 1B 78 */	mr r30, r3
lbl_807B9D78:
/* 807B9D78  93 DF 05 C4 */	stw r30, 0x5c4(r31)
/* 807B9D7C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B9D80  28 03 00 00 */	cmplwi r3, 0
/* 807B9D84  41 82 00 10 */	beq lbl_807B9D94
/* 807B9D88  80 03 00 04 */	lwz r0, 4(r3)
/* 807B9D8C  28 00 00 00 */	cmplwi r0, 0
/* 807B9D90  40 82 00 0C */	bne lbl_807B9D9C
lbl_807B9D94:
/* 807B9D94  38 60 00 00 */	li r3, 0
/* 807B9D98  48 00 00 08 */	b lbl_807B9DA0
lbl_807B9D9C:
/* 807B9D9C  38 60 00 01 */	li r3, 1
lbl_807B9DA0:
/* 807B9DA0  39 61 00 30 */	addi r11, r1, 0x30
/* 807B9DA4  4B BA 84 80 */	b _restgpr_28
/* 807B9DA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807B9DAC  7C 08 03 A6 */	mtlr r0
/* 807B9DB0  38 21 00 30 */	addi r1, r1, 0x30
/* 807B9DB4  4E 80 00 20 */	blr 
