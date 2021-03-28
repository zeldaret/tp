lbl_80C90C70:
/* 80C90C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C90C74  7C 08 02 A6 */	mflr r0
/* 80C90C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C90C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90C80  4B 6D 15 5C */	b _savegpr_29
/* 80C90C84  7C 7F 1B 78 */	mr r31, r3
/* 80C90C88  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C90C8C  38 63 19 9C */	addi r3, r3, l_arcName@l
/* 80C90C90  80 63 00 00 */	lwz r3, 0(r3)
/* 80C90C94  38 80 00 05 */	li r4, 5
/* 80C90C98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C90C9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C90CA0  3F A5 00 02 */	addis r29, r5, 2
/* 80C90CA4  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C90CA8  7F A5 EB 78 */	mr r5, r29
/* 80C90CAC  38 C0 00 80 */	li r6, 0x80
/* 80C90CB0  4B 3A B6 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C90CB4  7C 7E 1B 78 */	mr r30, r3
/* 80C90CB8  3C 80 00 08 */	lis r4, 8
/* 80C90CBC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C90CC0  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C90CC4  4B 38 3F 90 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C90CC8  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C90CCC  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C90CD0  28 00 00 00 */	cmplwi r0, 0
/* 80C90CD4  40 82 00 0C */	bne lbl_80C90CE0
/* 80C90CD8  38 60 00 00 */	li r3, 0
/* 80C90CDC  48 00 00 A4 */	b lbl_80C90D80
lbl_80C90CE0:
/* 80C90CE0  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C90CE4  38 63 19 9C */	addi r3, r3, l_arcName@l
/* 80C90CE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C90CEC  38 80 00 0B */	li r4, 0xb
/* 80C90CF0  7F A5 EB 78 */	mr r5, r29
/* 80C90CF4  38 C0 00 80 */	li r6, 0x80
/* 80C90CF8  4B 3A B5 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C90CFC  7C 65 1B 78 */	mr r5, r3
/* 80C90D00  38 7F 05 74 */	addi r3, r31, 0x574
/* 80C90D04  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C90D08  38 C0 00 01 */	li r6, 1
/* 80C90D0C  38 E0 00 02 */	li r7, 2
/* 80C90D10  3D 00 80 C9 */	lis r8, lit_3759@ha
/* 80C90D14  C0 28 19 50 */	lfs f1, lit_3759@l(r8)
/* 80C90D18  39 00 00 00 */	li r8, 0
/* 80C90D1C  39 20 FF FF */	li r9, -1
/* 80C90D20  4B 37 C9 1C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C90D24  2C 03 00 00 */	cmpwi r3, 0
/* 80C90D28  40 82 00 0C */	bne lbl_80C90D34
/* 80C90D2C  38 60 00 00 */	li r3, 0
/* 80C90D30  48 00 00 50 */	b lbl_80C90D80
lbl_80C90D34:
/* 80C90D34  3C 60 80 C9 */	lis r3, l_arcName@ha
/* 80C90D38  38 63 19 9C */	addi r3, r3, l_arcName@l
/* 80C90D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C90D40  38 80 00 08 */	li r4, 8
/* 80C90D44  7F A5 EB 78 */	mr r5, r29
/* 80C90D48  38 C0 00 80 */	li r6, 0x80
/* 80C90D4C  4B 3A B5 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C90D50  7C 65 1B 78 */	mr r5, r3
/* 80C90D54  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80C90D58  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C90D5C  38 C0 00 01 */	li r6, 1
/* 80C90D60  38 E0 00 02 */	li r7, 2
/* 80C90D64  3D 00 80 C9 */	lis r8, lit_3759@ha
/* 80C90D68  C0 28 19 50 */	lfs f1, lit_3759@l(r8)
/* 80C90D6C  39 00 00 00 */	li r8, 0
/* 80C90D70  39 20 FF FF */	li r9, -1
/* 80C90D74  4B 37 C9 98 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C90D78  30 03 FF FF */	addic r0, r3, -1
/* 80C90D7C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C90D80:
/* 80C90D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C90D84  4B 6D 14 A4 */	b _restgpr_29
/* 80C90D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C90D8C  7C 08 03 A6 */	mtlr r0
/* 80C90D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80C90D94  4E 80 00 20 */	blr 
