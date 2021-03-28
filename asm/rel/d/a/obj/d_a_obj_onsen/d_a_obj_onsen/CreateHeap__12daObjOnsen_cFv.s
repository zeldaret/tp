lbl_80CA7C74:
/* 80CA7C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA7C78  7C 08 02 A6 */	mflr r0
/* 80CA7C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA7C80  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA7C84  4B 6B A5 50 */	b _savegpr_27
/* 80CA7C88  7C 7E 1B 78 */	mr r30, r3
/* 80CA7C8C  3C 60 80 CB */	lis r3, l_bmd@ha
/* 80CA7C90  3B E3 81 1C */	addi r31, r3, l_bmd@l
/* 80CA7C94  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80CA7C98  54 00 10 3A */	slwi r0, r0, 2
/* 80CA7C9C  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CA7CA0  38 63 81 5C */	addi r3, r3, l_arcName@l
/* 80CA7CA4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CA7CA8  38 9F 00 00 */	addi r4, r31, 0
/* 80CA7CAC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA7CB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CA7CB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CA7CB8  3F A5 00 02 */	addis r29, r5, 2
/* 80CA7CBC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CA7CC0  7F A5 EB 78 */	mr r5, r29
/* 80CA7CC4  38 C0 00 80 */	li r6, 0x80
/* 80CA7CC8  4B 39 46 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA7CCC  3C 80 00 08 */	lis r4, 8
/* 80CA7CD0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CA7CD4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CA7CD8  4B 36 CF 7C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA7CDC  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80CA7CE0  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80CA7CE4  28 00 00 00 */	cmplwi r0, 0
/* 80CA7CE8  40 82 00 0C */	bne lbl_80CA7CF4
/* 80CA7CEC  38 60 00 00 */	li r3, 0
/* 80CA7CF0  48 00 00 F4 */	b lbl_80CA7DE4
lbl_80CA7CF4:
/* 80CA7CF4  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80CA7CF8  54 00 10 3A */	slwi r0, r0, 2
/* 80CA7CFC  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CA7D00  38 63 81 5C */	addi r3, r3, l_arcName@l
/* 80CA7D04  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CA7D08  38 9F 00 10 */	addi r4, r31, 0x10
/* 80CA7D0C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA7D10  7F A5 EB 78 */	mr r5, r29
/* 80CA7D14  38 C0 00 80 */	li r6, 0x80
/* 80CA7D18  4B 39 45 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA7D1C  7C 7C 1B 78 */	mr r28, r3
/* 80CA7D20  3C 80 00 08 */	lis r4, 8
/* 80CA7D24  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80CA7D28  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80CA7D2C  4B 36 CF 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CA7D30  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80CA7D34  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80CA7D38  28 00 00 00 */	cmplwi r0, 0
/* 80CA7D3C  40 82 00 0C */	bne lbl_80CA7D48
/* 80CA7D40  38 60 00 00 */	li r3, 0
/* 80CA7D44  48 00 00 A0 */	b lbl_80CA7DE4
lbl_80CA7D48:
/* 80CA7D48  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80CA7D4C  54 00 10 3A */	slwi r0, r0, 2
/* 80CA7D50  3C 60 80 CB */	lis r3, l_arcName@ha
/* 80CA7D54  38 63 81 5C */	addi r3, r3, l_arcName@l
/* 80CA7D58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CA7D5C  38 9F 00 08 */	addi r4, r31, 8
/* 80CA7D60  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA7D64  7F A5 EB 78 */	mr r5, r29
/* 80CA7D68  38 C0 00 80 */	li r6, 0x80
/* 80CA7D6C  4B 39 45 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CA7D70  7C 7B 1B 78 */	mr r27, r3
/* 80CA7D74  38 60 00 18 */	li r3, 0x18
/* 80CA7D78  4B 62 6E D4 */	b __nw__FUl
/* 80CA7D7C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CA7D80  41 82 00 20 */	beq lbl_80CA7DA0
/* 80CA7D84  3C 80 80 CB */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CA7D88  38 04 81 B4 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CA7D8C  90 1D 00 00 */	stw r0, 0(r29)
/* 80CA7D90  38 80 00 00 */	li r4, 0
/* 80CA7D94  4B 68 06 68 */	b init__12J3DFrameCtrlFs
/* 80CA7D98  38 00 00 00 */	li r0, 0
/* 80CA7D9C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80CA7DA0:
/* 80CA7DA0  93 BE 05 B0 */	stw r29, 0x5b0(r30)
/* 80CA7DA4  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80CA7DA8  28 03 00 00 */	cmplwi r3, 0
/* 80CA7DAC  41 82 00 2C */	beq lbl_80CA7DD8
/* 80CA7DB0  38 9C 00 58 */	addi r4, r28, 0x58
/* 80CA7DB4  7F 65 DB 78 */	mr r5, r27
/* 80CA7DB8  38 C0 00 01 */	li r6, 1
/* 80CA7DBC  38 E0 00 02 */	li r7, 2
/* 80CA7DC0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CA7DC4  39 00 00 00 */	li r8, 0
/* 80CA7DC8  39 20 FF FF */	li r9, -1
/* 80CA7DCC  4B 36 58 70 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CA7DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80CA7DD4  40 82 00 0C */	bne lbl_80CA7DE0
lbl_80CA7DD8:
/* 80CA7DD8  38 60 00 00 */	li r3, 0
/* 80CA7DDC  48 00 00 08 */	b lbl_80CA7DE4
lbl_80CA7DE0:
/* 80CA7DE0  38 60 00 01 */	li r3, 1
lbl_80CA7DE4:
/* 80CA7DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA7DE8  4B 6B A4 38 */	b _restgpr_27
/* 80CA7DEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA7DF0  7C 08 03 A6 */	mtlr r0
/* 80CA7DF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA7DF8  4E 80 00 20 */	blr 
