lbl_80C24C9C:
/* 80C24C9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C24CA0  7C 08 02 A6 */	mflr r0
/* 80C24CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C24CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C24CAC  4B 73 D5 30 */	b _savegpr_29
/* 80C24CB0  7C 7F 1B 78 */	mr r31, r3
/* 80C24CB4  3C 60 80 C2 */	lis r3, l_arcName@ha
/* 80C24CB8  38 63 5D D0 */	addi r3, r3, l_arcName@l
/* 80C24CBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C24CC0  38 80 00 07 */	li r4, 7
/* 80C24CC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C24CC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C24CCC  3F C5 00 02 */	addis r30, r5, 2
/* 80C24CD0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C24CD4  7F C5 F3 78 */	mr r5, r30
/* 80C24CD8  38 C0 00 80 */	li r6, 0x80
/* 80C24CDC  4B 41 76 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C24CE0  38 80 00 00 */	li r4, 0
/* 80C24CE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C24CE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C24CEC  4B 3E FF 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C24CF0  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80C24CF4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80C24CF8  28 00 00 00 */	cmplwi r0, 0
/* 80C24CFC  40 82 00 0C */	bne lbl_80C24D08
/* 80C24D00  38 60 00 00 */	li r3, 0
/* 80C24D04  48 00 00 B0 */	b lbl_80C24DB4
lbl_80C24D08:
/* 80C24D08  3C 60 80 C2 */	lis r3, l_arcName@ha
/* 80C24D0C  38 63 5D D0 */	addi r3, r3, l_arcName@l
/* 80C24D10  80 63 00 00 */	lwz r3, 0(r3)
/* 80C24D14  38 80 00 04 */	li r4, 4
/* 80C24D18  7F C5 F3 78 */	mr r5, r30
/* 80C24D1C  38 C0 00 80 */	li r6, 0x80
/* 80C24D20  4B 41 75 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C24D24  7C 7D 1B 78 */	mr r29, r3
/* 80C24D28  38 60 00 1C */	li r3, 0x1c
/* 80C24D2C  4B 6A 9F 20 */	b __nw__FUl
/* 80C24D30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C24D34  41 82 00 20 */	beq lbl_80C24D54
/* 80C24D38  3C 80 80 C2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C24D3C  38 04 5F 88 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C24D40  90 1E 00 00 */	stw r0, 0(r30)
/* 80C24D44  38 80 00 00 */	li r4, 0
/* 80C24D48  4B 70 36 B4 */	b init__12J3DFrameCtrlFs
/* 80C24D4C  38 00 00 00 */	li r0, 0
/* 80C24D50  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80C24D54:
/* 80C24D54  93 DF 09 04 */	stw r30, 0x904(r31)
/* 80C24D58  80 7F 09 04 */	lwz r3, 0x904(r31)
/* 80C24D5C  28 03 00 00 */	cmplwi r3, 0
/* 80C24D60  41 82 00 30 */	beq lbl_80C24D90
/* 80C24D64  7F A4 EB 78 */	mr r4, r29
/* 80C24D68  38 A0 00 01 */	li r5, 1
/* 80C24D6C  38 C0 00 00 */	li r6, 0
/* 80C24D70  3C E0 80 C2 */	lis r7, lit_3806@ha
/* 80C24D74  C0 27 5D 78 */	lfs f1, lit_3806@l(r7)
/* 80C24D78  38 E0 00 00 */	li r7, 0
/* 80C24D7C  39 00 FF FF */	li r8, -1
/* 80C24D80  39 20 00 00 */	li r9, 0
/* 80C24D84  4B 3E 8A 58 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C24D88  2C 03 00 00 */	cmpwi r3, 0
/* 80C24D8C  40 82 00 0C */	bne lbl_80C24D98
lbl_80C24D90:
/* 80C24D90  38 60 00 00 */	li r3, 0
/* 80C24D94  48 00 00 20 */	b lbl_80C24DB4
lbl_80C24D98:
/* 80C24D98  3C 60 80 C2 */	lis r3, lit_3703@ha
/* 80C24D9C  C0 03 5D 64 */	lfs f0, lit_3703@l(r3)
/* 80C24DA0  80 7F 09 04 */	lwz r3, 0x904(r31)
/* 80C24DA4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C24DA8  80 7F 09 04 */	lwz r3, 0x904(r31)
/* 80C24DAC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C24DB0  38 60 00 01 */	li r3, 1
lbl_80C24DB4:
/* 80C24DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C24DB8  4B 73 D4 70 */	b _restgpr_29
/* 80C24DBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C24DC0  7C 08 03 A6 */	mtlr r0
/* 80C24DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C24DC8  4E 80 00 20 */	blr 
