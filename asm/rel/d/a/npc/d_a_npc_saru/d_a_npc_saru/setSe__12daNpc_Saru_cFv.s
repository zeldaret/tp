lbl_80AC1C4C:
/* 80AC1C4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AC1C50  7C 08 02 A6 */	mflr r0
/* 80AC1C54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AC1C58  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC1C5C  4B 8A 05 80 */	b _savegpr_29
/* 80AC1C60  7C 7D 1B 78 */	mr r29, r3
/* 80AC1C64  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC1C68  3B E3 44 F8 */	addi r31, r3, m__18daNpc_Saru_Param_c@l
/* 80AC1C6C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1C70  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AC1C74  FC 00 02 10 */	fabs f0, f0
/* 80AC1C78  FC 20 00 18 */	frsp f1, f0
/* 80AC1C7C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80AC1C80  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80AC1C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AC1C88  7C 00 00 26 */	mfcr r0
/* 80AC1C8C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80AC1C90  40 82 04 C4 */	bne lbl_80AC2154
/* 80AC1C94  3C 60 80 AC */	lis r3, l_motionAnmData@ha
/* 80AC1C98  38 83 47 3C */	addi r4, r3, l_motionAnmData@l
/* 80AC1C9C  80 04 02 C4 */	lwz r0, 0x2c4(r4)
/* 80AC1CA0  54 00 10 3A */	slwi r0, r0, 2
/* 80AC1CA4  3C 60 80 AC */	lis r3, l_resNameList@ha
/* 80AC1CA8  38 63 46 FC */	addi r3, r3, l_resNameList@l
/* 80AC1CAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC1CB0  80 84 02 BC */	lwz r4, 0x2bc(r4)
/* 80AC1CB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AC1CB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AC1CBC  3F C5 00 02 */	addis r30, r5, 2
/* 80AC1CC0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80AC1CC4  7F C5 F3 78 */	mr r5, r30
/* 80AC1CC8  38 C0 00 80 */	li r6, 0x80
/* 80AC1CCC  4B 57 A6 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC1CD0  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC1CD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC1CD8  7C 03 00 40 */	cmplw r3, r0
/* 80AC1CDC  40 82 00 84 */	bne lbl_80AC1D60
/* 80AC1CE0  38 64 00 0C */	addi r3, r4, 0xc
/* 80AC1CE4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AC1CE8  4B 86 67 44 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1CF0  41 82 00 2C */	beq lbl_80AC1D1C
/* 80AC1CF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050015@ha */
/* 80AC1CF8  38 03 00 15 */	addi r0, r3, 0x0015 /* 0x00050015@l */
/* 80AC1CFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AC1D00  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1D04  38 81 00 30 */	addi r4, r1, 0x30
/* 80AC1D08  38 A0 FF FF */	li r5, -1
/* 80AC1D0C  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1D10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC1D14  7D 89 03 A6 */	mtctr r12
/* 80AC1D18  4E 80 04 21 */	bctrl 
lbl_80AC1D1C:
/* 80AC1D1C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1D20  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1D24  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80AC1D28  4B 86 67 04 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1D30  41 82 00 30 */	beq lbl_80AC1D60
/* 80AC1D34  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001F@ha */
/* 80AC1D38  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0006001F@l */
/* 80AC1D3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AC1D40  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1D44  38 81 00 2C */	addi r4, r1, 0x2c
/* 80AC1D48  38 A0 00 00 */	li r5, 0
/* 80AC1D4C  38 C0 FF FF */	li r6, -1
/* 80AC1D50  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1D54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC1D58  7D 89 03 A6 */	mtctr r12
/* 80AC1D5C  4E 80 04 21 */	bctrl 
lbl_80AC1D60:
/* 80AC1D60  3C 60 80 AC */	lis r3, l_motionAnmData@ha
/* 80AC1D64  38 83 47 3C */	addi r4, r3, l_motionAnmData@l
/* 80AC1D68  80 04 03 F8 */	lwz r0, 0x3f8(r4)
/* 80AC1D6C  54 00 10 3A */	slwi r0, r0, 2
/* 80AC1D70  3C 60 80 AC */	lis r3, l_resNameList@ha
/* 80AC1D74  38 63 46 FC */	addi r3, r3, l_resNameList@l
/* 80AC1D78  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC1D7C  80 84 03 F0 */	lwz r4, 0x3f0(r4)
/* 80AC1D80  7F C5 F3 78 */	mr r5, r30
/* 80AC1D84  38 C0 00 80 */	li r6, 0x80
/* 80AC1D88  4B 57 A5 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC1D8C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC1D90  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC1D94  7C 03 00 40 */	cmplw r3, r0
/* 80AC1D98  40 82 01 40 */	bne lbl_80AC1ED8
/* 80AC1D9C  38 64 00 0C */	addi r3, r4, 0xc
/* 80AC1DA0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AC1DA4  4B 86 66 88 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1DAC  40 82 00 4C */	bne lbl_80AC1DF8
/* 80AC1DB0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1DB4  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1DB8  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80AC1DBC  4B 86 66 70 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1DC4  40 82 00 34 */	bne lbl_80AC1DF8
/* 80AC1DC8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1DCC  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1DD0  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80AC1DD4  4B 86 66 58 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1DDC  40 82 00 1C */	bne lbl_80AC1DF8
/* 80AC1DE0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1DE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1DE8  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80AC1DEC  4B 86 66 40 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1DF4  41 82 00 2C */	beq lbl_80AC1E20
lbl_80AC1DF8:
/* 80AC1DF8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80AC1DFC  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80AC1E00  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AC1E04  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1E08  38 81 00 28 */	addi r4, r1, 0x28
/* 80AC1E0C  38 A0 FF FF */	li r5, -1
/* 80AC1E10  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1E14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC1E18  7D 89 03 A6 */	mtctr r12
/* 80AC1E1C  4E 80 04 21 */	bctrl 
lbl_80AC1E20:
/* 80AC1E20  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1E24  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1E28  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 80AC1E2C  4B 86 66 00 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1E30  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1E34  40 82 00 1C */	bne lbl_80AC1E50
/* 80AC1E38  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1E3C  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1E40  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80AC1E44  4B 86 65 E8 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1E48  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1E4C  41 82 00 30 */	beq lbl_80AC1E7C
lbl_80AC1E50:
/* 80AC1E50  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B0@ha */
/* 80AC1E54  38 03 00 B0 */	addi r0, r3, 0x00B0 /* 0x000800B0@l */
/* 80AC1E58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC1E5C  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1E60  38 81 00 24 */	addi r4, r1, 0x24
/* 80AC1E64  38 A0 00 00 */	li r5, 0
/* 80AC1E68  38 C0 FF FF */	li r6, -1
/* 80AC1E6C  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1E70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC1E74  7D 89 03 A6 */	mtctr r12
/* 80AC1E78  4E 80 04 21 */	bctrl 
lbl_80AC1E7C:
/* 80AC1E7C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1E80  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1E84  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80AC1E88  4B 86 65 A4 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1E90  40 82 00 1C */	bne lbl_80AC1EAC
/* 80AC1E94  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1E98  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1E9C  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80AC1EA0  4B 86 65 8C */	b checkPass__12J3DFrameCtrlFf
/* 80AC1EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1EA8  41 82 00 30 */	beq lbl_80AC1ED8
lbl_80AC1EAC:
/* 80AC1EAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80AC1EB0  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80AC1EB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AC1EB8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1EBC  38 81 00 20 */	addi r4, r1, 0x20
/* 80AC1EC0  38 A0 00 00 */	li r5, 0
/* 80AC1EC4  38 C0 FF FF */	li r6, -1
/* 80AC1EC8  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1ECC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC1ED0  7D 89 03 A6 */	mtctr r12
/* 80AC1ED4  4E 80 04 21 */	bctrl 
lbl_80AC1ED8:
/* 80AC1ED8  3C 60 80 AC */	lis r3, l_motionAnmData@ha
/* 80AC1EDC  38 83 47 3C */	addi r4, r3, l_motionAnmData@l
/* 80AC1EE0  80 04 01 3C */	lwz r0, 0x13c(r4)
/* 80AC1EE4  54 00 10 3A */	slwi r0, r0, 2
/* 80AC1EE8  3C 60 80 AC */	lis r3, l_resNameList@ha
/* 80AC1EEC  38 63 46 FC */	addi r3, r3, l_resNameList@l
/* 80AC1EF0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC1EF4  80 84 01 34 */	lwz r4, 0x134(r4)
/* 80AC1EF8  7F C5 F3 78 */	mr r5, r30
/* 80AC1EFC  38 C0 00 80 */	li r6, 0x80
/* 80AC1F00  4B 57 A3 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC1F04  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC1F08  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC1F0C  7C 03 00 40 */	cmplw r3, r0
/* 80AC1F10  40 82 00 40 */	bne lbl_80AC1F50
/* 80AC1F14  38 64 00 0C */	addi r3, r4, 0xc
/* 80AC1F18  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AC1F1C  4B 86 65 10 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1F20  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1F24  41 82 00 2C */	beq lbl_80AC1F50
/* 80AC1F28  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001D@ha */
/* 80AC1F2C  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0005001D@l */
/* 80AC1F30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AC1F34  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1F38  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AC1F3C  38 A0 FF FF */	li r5, -1
/* 80AC1F40  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1F44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC1F48  7D 89 03 A6 */	mtctr r12
/* 80AC1F4C  4E 80 04 21 */	bctrl 
lbl_80AC1F50:
/* 80AC1F50  3C 60 80 AC */	lis r3, l_motionAnmData@ha
/* 80AC1F54  38 83 47 3C */	addi r4, r3, l_motionAnmData@l
/* 80AC1F58  80 04 04 30 */	lwz r0, 0x430(r4)
/* 80AC1F5C  54 00 10 3A */	slwi r0, r0, 2
/* 80AC1F60  3C 60 80 AC */	lis r3, l_resNameList@ha
/* 80AC1F64  38 63 46 FC */	addi r3, r3, l_resNameList@l
/* 80AC1F68  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC1F6C  80 84 04 28 */	lwz r4, 0x428(r4)
/* 80AC1F70  7F C5 F3 78 */	mr r5, r30
/* 80AC1F74  38 C0 00 80 */	li r6, 0x80
/* 80AC1F78  4B 57 A3 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC1F7C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC1F80  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC1F84  7C 03 00 40 */	cmplw r3, r0
/* 80AC1F88  40 82 00 CC */	bne lbl_80AC2054
/* 80AC1F8C  38 64 00 0C */	addi r3, r4, 0xc
/* 80AC1F90  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80AC1F94  4B 86 64 98 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1F98  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1F9C  40 82 00 1C */	bne lbl_80AC1FB8
/* 80AC1FA0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1FA4  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1FA8  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80AC1FAC  4B 86 64 80 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1FB4  41 82 00 2C */	beq lbl_80AC1FE0
lbl_80AC1FB8:
/* 80AC1FB8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001B@ha */
/* 80AC1FBC  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0005001B@l */
/* 80AC1FC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AC1FC4  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC1FC8  38 81 00 18 */	addi r4, r1, 0x18
/* 80AC1FCC  38 A0 FF FF */	li r5, -1
/* 80AC1FD0  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC1FD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC1FD8  7D 89 03 A6 */	mtctr r12
/* 80AC1FDC  4E 80 04 21 */	bctrl 
lbl_80AC1FE0:
/* 80AC1FE0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1FE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC1FE8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AC1FEC  4B 86 64 40 */	b checkPass__12J3DFrameCtrlFf
/* 80AC1FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1FF4  40 82 00 34 */	bne lbl_80AC2028
/* 80AC1FF8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC1FFC  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC2000  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 80AC2004  4B 86 64 28 */	b checkPass__12J3DFrameCtrlFf
/* 80AC2008  2C 03 00 00 */	cmpwi r3, 0
/* 80AC200C  40 82 00 1C */	bne lbl_80AC2028
/* 80AC2010  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC2014  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC2018  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80AC201C  4B 86 64 10 */	b checkPass__12J3DFrameCtrlFf
/* 80AC2020  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2024  41 82 00 30 */	beq lbl_80AC2054
lbl_80AC2028:
/* 80AC2028  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80AC202C  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80AC2030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC2034  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC2038  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC203C  38 A0 00 00 */	li r5, 0
/* 80AC2040  38 C0 FF FF */	li r6, -1
/* 80AC2044  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC2048  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC204C  7D 89 03 A6 */	mtctr r12
/* 80AC2050  4E 80 04 21 */	bctrl 
lbl_80AC2054:
/* 80AC2054  3C 60 80 AC */	lis r3, l_motionAnmData@ha
/* 80AC2058  38 83 47 3C */	addi r4, r3, l_motionAnmData@l
/* 80AC205C  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 80AC2060  54 00 10 3A */	slwi r0, r0, 2
/* 80AC2064  3C 60 80 AC */	lis r3, l_resNameList@ha
/* 80AC2068  38 63 46 FC */	addi r3, r3, l_resNameList@l
/* 80AC206C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AC2070  80 84 00 54 */	lwz r4, 0x54(r4)
/* 80AC2074  7F C5 F3 78 */	mr r5, r30
/* 80AC2078  38 C0 00 80 */	li r6, 0x80
/* 80AC207C  4B 57 A2 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AC2080  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AC2084  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC2088  7C 03 00 40 */	cmplw r3, r0
/* 80AC208C  40 82 00 C8 */	bne lbl_80AC2154
/* 80AC2090  38 64 00 0C */	addi r3, r4, 0xc
/* 80AC2094  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AC2098  4B 86 63 94 */	b checkPass__12J3DFrameCtrlFf
/* 80AC209C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC20A0  41 82 00 2C */	beq lbl_80AC20CC
/* 80AC20A4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007B@ha */
/* 80AC20A8  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0005007B@l */
/* 80AC20AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC20B0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC20B4  38 81 00 10 */	addi r4, r1, 0x10
/* 80AC20B8  38 A0 FF FF */	li r5, -1
/* 80AC20BC  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC20C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC20C4  7D 89 03 A6 */	mtctr r12
/* 80AC20C8  4E 80 04 21 */	bctrl 
lbl_80AC20CC:
/* 80AC20CC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC20D0  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC20D4  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80AC20D8  4B 86 63 54 */	b checkPass__12J3DFrameCtrlFf
/* 80AC20DC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC20E0  41 82 00 30 */	beq lbl_80AC2110
/* 80AC20E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060022@ha */
/* 80AC20E8  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00060022@l */
/* 80AC20EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC20F0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC20F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80AC20F8  38 A0 00 00 */	li r5, 0
/* 80AC20FC  38 C0 FF FF */	li r6, -1
/* 80AC2100  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC2104  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC2108  7D 89 03 A6 */	mtctr r12
/* 80AC210C  4E 80 04 21 */	bctrl 
lbl_80AC2110:
/* 80AC2110  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AC2114  38 63 00 0C */	addi r3, r3, 0xc
/* 80AC2118  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80AC211C  4B 86 63 10 */	b checkPass__12J3DFrameCtrlFf
/* 80AC2120  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2124  41 82 00 30 */	beq lbl_80AC2154
/* 80AC2128  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060021@ha */
/* 80AC212C  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00060021@l */
/* 80AC2130  90 01 00 08 */	stw r0, 8(r1)
/* 80AC2134  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AC2138  38 81 00 08 */	addi r4, r1, 8
/* 80AC213C  38 A0 00 00 */	li r5, 0
/* 80AC2140  38 C0 FF FF */	li r6, -1
/* 80AC2144  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80AC2148  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80AC214C  7D 89 03 A6 */	mtctr r12
/* 80AC2150  4E 80 04 21 */	bctrl 
lbl_80AC2154:
/* 80AC2154  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC2158  4B 8A 00 D0 */	b _restgpr_29
/* 80AC215C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AC2160  7C 08 03 A6 */	mtlr r0
/* 80AC2164  38 21 00 50 */	addi r1, r1, 0x50
/* 80AC2168  4E 80 00 20 */	blr 
