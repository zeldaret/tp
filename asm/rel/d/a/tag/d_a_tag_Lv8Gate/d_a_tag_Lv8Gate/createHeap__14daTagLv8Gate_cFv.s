lbl_80D51C58:
/* 80D51C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D51C5C  7C 08 02 A6 */	mflr r0
/* 80D51C60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D51C64  39 61 00 20 */	addi r11, r1, 0x20
/* 80D51C68  4B 61 05 74 */	b _savegpr_29
/* 80D51C6C  7C 7F 1B 78 */	mr r31, r3
/* 80D51C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D51C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D51C78  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80D51C7C  3C 80 80 D5 */	lis r4, stringBase0@ha
/* 80D51C80  38 84 24 F0 */	addi r4, r4, stringBase0@l
/* 80D51C84  38 84 00 08 */	addi r4, r4, 8
/* 80D51C88  4B 61 6D 0C */	b strcmp
/* 80D51C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D51C90  40 82 00 D4 */	bne lbl_80D51D64
/* 80D51C94  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D51C98  38 63 25 10 */	addi r3, r3, l_arcName@l
/* 80D51C9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51CA0  38 80 00 08 */	li r4, 8
/* 80D51CA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D51CA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D51CAC  3F C5 00 02 */	addis r30, r5, 2
/* 80D51CB0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D51CB4  7F C5 F3 78 */	mr r5, r30
/* 80D51CB8  38 C0 00 80 */	li r6, 0x80
/* 80D51CBC  4B 2E A6 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D51CC0  3C 80 00 08 */	lis r4, 8
/* 80D51CC4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D51CC8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D51CCC  4B 2C 2F 88 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D51CD0  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80D51CD4  3C 60 80 D5 */	lis r3, l_arcName@ha
/* 80D51CD8  38 63 25 10 */	addi r3, r3, l_arcName@l
/* 80D51CDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D51CE0  38 80 00 05 */	li r4, 5
/* 80D51CE4  7F C5 F3 78 */	mr r5, r30
/* 80D51CE8  38 C0 00 80 */	li r6, 0x80
/* 80D51CEC  4B 2E A6 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D51CF0  7C 7D 1B 78 */	mr r29, r3
/* 80D51CF4  38 60 00 1C */	li r3, 0x1c
/* 80D51CF8  4B 57 CF 54 */	b __nw__FUl
/* 80D51CFC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D51D00  41 82 00 20 */	beq lbl_80D51D20
/* 80D51D04  3C 80 80 D5 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D51D08  38 04 25 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D51D0C  90 1E 00 00 */	stw r0, 0(r30)
/* 80D51D10  38 80 00 00 */	li r4, 0
/* 80D51D14  4B 5D 66 E8 */	b init__12J3DFrameCtrlFs
/* 80D51D18  38 00 00 00 */	li r0, 0
/* 80D51D1C  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80D51D20:
/* 80D51D20  93 DF 05 6C */	stw r30, 0x56c(r31)
/* 80D51D24  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D51D28  28 03 00 00 */	cmplwi r3, 0
/* 80D51D2C  41 82 00 30 */	beq lbl_80D51D5C
/* 80D51D30  7F A4 EB 78 */	mr r4, r29
/* 80D51D34  38 A0 00 01 */	li r5, 1
/* 80D51D38  38 C0 00 02 */	li r6, 2
/* 80D51D3C  3C E0 80 D5 */	lis r7, lit_3749@ha
/* 80D51D40  C0 27 24 CC */	lfs f1, lit_3749@l(r7)
/* 80D51D44  38 E0 00 00 */	li r7, 0
/* 80D51D48  39 00 FF FF */	li r8, -1
/* 80D51D4C  39 20 00 00 */	li r9, 0
/* 80D51D50  4B 2B BA 8C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D51D54  2C 03 00 00 */	cmpwi r3, 0
/* 80D51D58  40 82 00 0C */	bne lbl_80D51D64
lbl_80D51D5C:
/* 80D51D5C  38 60 00 00 */	li r3, 0
/* 80D51D60  48 00 00 08 */	b lbl_80D51D68
lbl_80D51D64:
/* 80D51D64  38 60 00 01 */	li r3, 1
lbl_80D51D68:
/* 80D51D68  39 61 00 20 */	addi r11, r1, 0x20
/* 80D51D6C  4B 61 04 BC */	b _restgpr_29
/* 80D51D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D51D74  7C 08 03 A6 */	mtlr r0
/* 80D51D78  38 21 00 20 */	addi r1, r1, 0x20
/* 80D51D7C  4E 80 00 20 */	blr 
