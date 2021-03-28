lbl_80CC4C9C:
/* 80CC4C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4CA0  7C 08 02 A6 */	mflr r0
/* 80CC4CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC4CB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC4CB4  7C 9F 23 78 */	mr r31, r4
/* 80CC4CB8  41 82 01 6C */	beq lbl_80CC4E24
/* 80CC4CBC  88 1E 07 4C */	lbz r0, 0x74c(r30)
/* 80CC4CC0  28 00 00 00 */	cmplwi r0, 0
/* 80CC4CC4  41 82 00 50 */	beq lbl_80CC4D14
/* 80CC4CC8  3C 60 80 CC */	lis r3, l_arcName@ha
/* 80CC4CCC  38 63 51 2C */	addi r3, r3, l_arcName@l
/* 80CC4CD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC4CD4  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CC4CD8  38 84 51 14 */	addi r4, r4, stringBase0@l
/* 80CC4CDC  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC4CE0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CC4CE4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CC4CE8  3C A5 00 02 */	addis r5, r5, 2
/* 80CC4CEC  38 C0 00 80 */	li r6, 0x80
/* 80CC4CF0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CC4CF4  4B 37 76 88 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC4CF8  7C 64 1B 78 */	mr r4, r3
/* 80CC4CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC4D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC4D04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC4D08  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC4D0C  7C 05 07 74 */	extsb r5, r0
/* 80CC4D10  4B 36 7E 20 */	b removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai
lbl_80CC4D14:
/* 80CC4D14  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CC4D18  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CC4D1C  38 84 51 2C */	addi r4, r4, l_arcName@l
/* 80CC4D20  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC4D24  4B 36 82 E4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC4D28  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80CC4D2C  41 82 00 84 */	beq lbl_80CC4DB0
/* 80CC4D30  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CC4D34  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CC4D38  90 7E 06 1C */	stw r3, 0x61c(r30)
/* 80CC4D3C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC4D40  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80CC4D44  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC4D48  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CC4D4C  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80CC4D50  41 82 00 54 */	beq lbl_80CC4DA4
/* 80CC4D54  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CC4D58  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CC4D5C  90 7E 07 00 */	stw r3, 0x700(r30)
/* 80CC4D60  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC4D64  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CC4D68  34 1E 07 04 */	addic. r0, r30, 0x704
/* 80CC4D6C  41 82 00 10 */	beq lbl_80CC4D7C
/* 80CC4D70  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CC4D74  38 03 51 A4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CC4D78  90 1E 07 18 */	stw r0, 0x718(r30)
lbl_80CC4D7C:
/* 80CC4D7C  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80CC4D80  41 82 00 24 */	beq lbl_80CC4DA4
/* 80CC4D84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CC4D88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CC4D8C  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80CC4D90  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 80CC4D94  41 82 00 10 */	beq lbl_80CC4DA4
/* 80CC4D98  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CC4D9C  38 03 51 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CC4DA0  90 1E 06 FC */	stw r0, 0x6fc(r30)
lbl_80CC4DA4:
/* 80CC4DA4  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80CC4DA8  38 80 00 00 */	li r4, 0
/* 80CC4DAC  4B 3B F3 38 */	b __dt__12dCcD_GObjInfFv
lbl_80CC4DB0:
/* 80CC4DB0  34 1E 05 A4 */	addic. r0, r30, 0x5a4
/* 80CC4DB4  41 82 00 54 */	beq lbl_80CC4E08
/* 80CC4DB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CC4DBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CC4DC0  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80CC4DC4  38 03 00 20 */	addi r0, r3, 0x20
/* 80CC4DC8  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80CC4DCC  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80CC4DD0  41 82 00 24 */	beq lbl_80CC4DF4
/* 80CC4DD4  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CC4DD8  38 03 51 8C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CC4DDC  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80CC4DE0  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 80CC4DE4  41 82 00 10 */	beq lbl_80CC4DF4
/* 80CC4DE8  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CC4DEC  38 03 51 80 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CC4DF0  90 1E 05 C0 */	stw r0, 0x5c0(r30)
lbl_80CC4DF4:
/* 80CC4DF4  34 1E 05 A4 */	addic. r0, r30, 0x5a4
/* 80CC4DF8  41 82 00 10 */	beq lbl_80CC4E08
/* 80CC4DFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CC4E00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CC4E04  90 1E 05 BC */	stw r0, 0x5bc(r30)
lbl_80CC4E08:
/* 80CC4E08  7F C3 F3 78 */	mr r3, r30
/* 80CC4E0C  38 80 00 00 */	li r4, 0
/* 80CC4E10  4B 35 3E 7C */	b __dt__10fopAc_ac_cFv
/* 80CC4E14  7F E0 07 35 */	extsh. r0, r31
/* 80CC4E18  40 81 00 0C */	ble lbl_80CC4E24
/* 80CC4E1C  7F C3 F3 78 */	mr r3, r30
/* 80CC4E20  4B 60 9F 1C */	b __dl__FPv
lbl_80CC4E24:
/* 80CC4E24  7F C3 F3 78 */	mr r3, r30
/* 80CC4E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC4E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC4E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4E34  7C 08 03 A6 */	mtlr r0
/* 80CC4E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4E3C  4E 80 00 20 */	blr 
