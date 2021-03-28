lbl_809B1CE4:
/* 809B1CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B1CE8  7C 08 02 A6 */	mflr r0
/* 809B1CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B1CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B1CF4  4B 9B 04 E4 */	b _savegpr_28
/* 809B1CF8  7C 7E 1B 78 */	mr r30, r3
/* 809B1CFC  7C 9F 23 78 */	mr r31, r4
/* 809B1D00  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha
/* 809B1D04  3B A3 92 E4 */	addi r29, r3, m__19daNpc_Fairy_Param_c@l
/* 809B1D08  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 809B1D0C  7C 1F 00 00 */	cmpw r31, r0
/* 809B1D10  40 82 00 0C */	bne lbl_809B1D1C
/* 809B1D14  38 60 00 01 */	li r3, 1
/* 809B1D18  48 00 00 BC */	b lbl_809B1DD4
lbl_809B1D1C:
/* 809B1D1C  1F 9F 00 0C */	mulli r28, r31, 0xc
/* 809B1D20  38 9D 00 98 */	addi r4, r29, 0x98
/* 809B1D24  7C 64 E2 14 */	add r3, r4, r28
/* 809B1D28  80 03 00 08 */	lwz r0, 8(r3)
/* 809B1D2C  54 00 10 3A */	slwi r0, r0, 2
/* 809B1D30  3C 60 80 9C */	lis r3, l_resNameList@ha
/* 809B1D34  38 63 95 F8 */	addi r3, r3, l_resNameList@l
/* 809B1D38  7C 63 00 2E */	lwzx r3, r3, r0
/* 809B1D3C  7C 84 E0 2E */	lwzx r4, r4, r28
/* 809B1D40  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809B1D44  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809B1D48  3C A5 00 02 */	addis r5, r5, 2
/* 809B1D4C  38 C0 00 80 */	li r6, 0x80
/* 809B1D50  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809B1D54  4B 68 A5 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809B1D58  7C 64 1B 79 */	or. r4, r3, r3
/* 809B1D5C  40 82 00 0C */	bne lbl_809B1D68
/* 809B1D60  38 60 00 00 */	li r3, 0
/* 809B1D64  48 00 00 70 */	b lbl_809B1DD4
lbl_809B1D68:
/* 809B1D68  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 809B1D6C  2C 1F 00 03 */	cmpwi r31, 3
/* 809B1D70  40 82 00 18 */	bne lbl_809B1D88
/* 809B1D74  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 809B1D78  2C 00 00 05 */	cmpwi r0, 5
/* 809B1D7C  40 82 00 24 */	bne lbl_809B1DA0
/* 809B1D80  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 809B1D84  48 00 00 1C */	b lbl_809B1DA0
lbl_809B1D88:
/* 809B1D88  2C 1F 00 05 */	cmpwi r31, 5
/* 809B1D8C  40 82 00 14 */	bne lbl_809B1DA0
/* 809B1D90  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 809B1D94  2C 00 00 03 */	cmpwi r0, 3
/* 809B1D98  40 82 00 08 */	bne lbl_809B1DA0
/* 809B1D9C  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
lbl_809B1DA0:
/* 809B1DA0  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B1DA4  38 1D 00 98 */	addi r0, r29, 0x98
/* 809B1DA8  7C A0 E2 14 */	add r5, r0, r28
/* 809B1DAC  80 A5 00 04 */	lwz r5, 4(r5)
/* 809B1DB0  C0 5D 00 94 */	lfs f2, 0x94(r29)
/* 809B1DB4  C0 7D 00 E0 */	lfs f3, 0xe0(r29)
/* 809B1DB8  C0 9D 00 E8 */	lfs f4, 0xe8(r29)
/* 809B1DBC  4B 65 F0 B4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 809B1DC0  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 809B1DC4  80 7E 00 00 */	lwz r3, 0(r30)
/* 809B1DC8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809B1DCC  93 FE 00 3C */	stw r31, 0x3c(r30)
/* 809B1DD0  38 60 00 01 */	li r3, 1
lbl_809B1DD4:
/* 809B1DD4  39 61 00 20 */	addi r11, r1, 0x20
/* 809B1DD8  4B 9B 04 4C */	b _restgpr_28
/* 809B1DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B1DE0  7C 08 03 A6 */	mtlr r0
/* 809B1DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 809B1DE8  4E 80 00 20 */	blr 
