lbl_807E3CC4:
/* 807E3CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E3CC8  7C 08 02 A6 */	mflr r0
/* 807E3CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E3CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 807E3CD4  4B B7 E5 08 */	b _savegpr_29
/* 807E3CD8  7C 7E 1B 78 */	mr r30, r3
/* 807E3CDC  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E3CE0  3B E3 73 00 */	addi r31, r3, lit_3802@l
/* 807E3CE4  3C 60 80 7E */	lis r3, stringBase0@ha
/* 807E3CE8  38 63 74 04 */	addi r3, r3, stringBase0@l
/* 807E3CEC  38 80 00 07 */	li r4, 7
/* 807E3CF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807E3CF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807E3CF8  3F A5 00 02 */	addis r29, r5, 2
/* 807E3CFC  3B BD C2 F8 */	addi r29, r29, -15624
/* 807E3D00  7F A5 EB 78 */	mr r5, r29
/* 807E3D04  38 C0 00 80 */	li r6, 0x80
/* 807E3D08  4B 85 85 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E3D0C  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 807E3D10  80 04 00 08 */	lwz r0, 8(r4)
/* 807E3D14  7C 00 18 40 */	cmplw r0, r3
/* 807E3D18  40 82 01 68 */	bne lbl_807E3E80
/* 807E3D1C  38 64 00 0C */	addi r3, r4, 0xc
/* 807E3D20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E3D24  4B B4 47 08 */	b checkPass__12J3DFrameCtrlFf
/* 807E3D28  2C 03 00 00 */	cmpwi r3, 0
/* 807E3D2C  40 82 01 24 */	bne lbl_807E3E50
/* 807E3D30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3D34  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3D38  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807E3D3C  4B B4 46 F0 */	b checkPass__12J3DFrameCtrlFf
/* 807E3D40  2C 03 00 00 */	cmpwi r3, 0
/* 807E3D44  40 82 01 0C */	bne lbl_807E3E50
/* 807E3D48  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3D4C  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3D50  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807E3D54  4B B4 46 D8 */	b checkPass__12J3DFrameCtrlFf
/* 807E3D58  2C 03 00 00 */	cmpwi r3, 0
/* 807E3D5C  40 82 00 F4 */	bne lbl_807E3E50
/* 807E3D60  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3D64  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3D68  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807E3D6C  4B B4 46 C0 */	b checkPass__12J3DFrameCtrlFf
/* 807E3D70  2C 03 00 00 */	cmpwi r3, 0
/* 807E3D74  40 82 00 DC */	bne lbl_807E3E50
/* 807E3D78  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3D7C  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3D80  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807E3D84  4B B4 46 A8 */	b checkPass__12J3DFrameCtrlFf
/* 807E3D88  2C 03 00 00 */	cmpwi r3, 0
/* 807E3D8C  40 82 00 C4 */	bne lbl_807E3E50
/* 807E3D90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3D94  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3D98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807E3D9C  4B B4 46 90 */	b checkPass__12J3DFrameCtrlFf
/* 807E3DA0  2C 03 00 00 */	cmpwi r3, 0
/* 807E3DA4  40 82 00 AC */	bne lbl_807E3E50
/* 807E3DA8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3DAC  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3DB0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807E3DB4  4B B4 46 78 */	b checkPass__12J3DFrameCtrlFf
/* 807E3DB8  2C 03 00 00 */	cmpwi r3, 0
/* 807E3DBC  40 82 00 94 */	bne lbl_807E3E50
/* 807E3DC0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3DC4  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3DC8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807E3DCC  4B B4 46 60 */	b checkPass__12J3DFrameCtrlFf
/* 807E3DD0  2C 03 00 00 */	cmpwi r3, 0
/* 807E3DD4  40 82 00 7C */	bne lbl_807E3E50
/* 807E3DD8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3DDC  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3DE0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807E3DE4  4B B4 46 48 */	b checkPass__12J3DFrameCtrlFf
/* 807E3DE8  2C 03 00 00 */	cmpwi r3, 0
/* 807E3DEC  40 82 00 64 */	bne lbl_807E3E50
/* 807E3DF0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3DF4  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3DF8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807E3DFC  4B B4 46 30 */	b checkPass__12J3DFrameCtrlFf
/* 807E3E00  2C 03 00 00 */	cmpwi r3, 0
/* 807E3E04  40 82 00 4C */	bne lbl_807E3E50
/* 807E3E08  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3E0C  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3E10  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807E3E14  4B B4 46 18 */	b checkPass__12J3DFrameCtrlFf
/* 807E3E18  2C 03 00 00 */	cmpwi r3, 0
/* 807E3E1C  40 82 00 34 */	bne lbl_807E3E50
/* 807E3E20  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3E24  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3E28  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807E3E2C  4B B4 46 00 */	b checkPass__12J3DFrameCtrlFf
/* 807E3E30  2C 03 00 00 */	cmpwi r3, 0
/* 807E3E34  40 82 00 1C */	bne lbl_807E3E50
/* 807E3E38  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3E3C  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3E40  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807E3E44  4B B4 45 E8 */	b checkPass__12J3DFrameCtrlFf
/* 807E3E48  2C 03 00 00 */	cmpwi r3, 0
/* 807E3E4C  41 82 01 2C */	beq lbl_807E3F78
lbl_807E3E50:
/* 807E3E50  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014B@ha */
/* 807E3E54  38 03 01 4B */	addi r0, r3, 0x014B /* 0x0007014B@l */
/* 807E3E58  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E3E5C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E3E60  38 81 00 0C */	addi r4, r1, 0xc
/* 807E3E64  38 A0 00 00 */	li r5, 0
/* 807E3E68  38 C0 FF FF */	li r6, -1
/* 807E3E6C  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E3E70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E3E74  7D 89 03 A6 */	mtctr r12
/* 807E3E78  4E 80 04 21 */	bctrl 
/* 807E3E7C  48 00 00 FC */	b lbl_807E3F78
lbl_807E3E80:
/* 807E3E80  3C 60 80 7E */	lis r3, stringBase0@ha
/* 807E3E84  38 63 74 04 */	addi r3, r3, stringBase0@l
/* 807E3E88  38 80 00 08 */	li r4, 8
/* 807E3E8C  7F A5 EB 78 */	mr r5, r29
/* 807E3E90  38 C0 00 80 */	li r6, 0x80
/* 807E3E94  4B 85 84 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E3E98  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 807E3E9C  80 04 00 08 */	lwz r0, 8(r4)
/* 807E3EA0  7C 00 18 40 */	cmplw r0, r3
/* 807E3EA4  40 82 00 D4 */	bne lbl_807E3F78
/* 807E3EA8  38 64 00 0C */	addi r3, r4, 0xc
/* 807E3EAC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807E3EB0  4B B4 45 7C */	b checkPass__12J3DFrameCtrlFf
/* 807E3EB4  2C 03 00 00 */	cmpwi r3, 0
/* 807E3EB8  40 82 00 94 */	bne lbl_807E3F4C
/* 807E3EBC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3EC0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3EC4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807E3EC8  4B B4 45 64 */	b checkPass__12J3DFrameCtrlFf
/* 807E3ECC  2C 03 00 00 */	cmpwi r3, 0
/* 807E3ED0  40 82 00 7C */	bne lbl_807E3F4C
/* 807E3ED4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3ED8  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3EDC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807E3EE0  4B B4 45 4C */	b checkPass__12J3DFrameCtrlFf
/* 807E3EE4  2C 03 00 00 */	cmpwi r3, 0
/* 807E3EE8  40 82 00 64 */	bne lbl_807E3F4C
/* 807E3EEC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3EF0  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3EF4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807E3EF8  4B B4 45 34 */	b checkPass__12J3DFrameCtrlFf
/* 807E3EFC  2C 03 00 00 */	cmpwi r3, 0
/* 807E3F00  40 82 00 4C */	bne lbl_807E3F4C
/* 807E3F04  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3F08  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3F0C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 807E3F10  4B B4 45 1C */	b checkPass__12J3DFrameCtrlFf
/* 807E3F14  2C 03 00 00 */	cmpwi r3, 0
/* 807E3F18  40 82 00 34 */	bne lbl_807E3F4C
/* 807E3F1C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3F20  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3F24  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807E3F28  4B B4 45 04 */	b checkPass__12J3DFrameCtrlFf
/* 807E3F2C  2C 03 00 00 */	cmpwi r3, 0
/* 807E3F30  40 82 00 1C */	bne lbl_807E3F4C
/* 807E3F34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E3F38  38 63 00 0C */	addi r3, r3, 0xc
/* 807E3F3C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807E3F40  4B B4 44 EC */	b checkPass__12J3DFrameCtrlFf
/* 807E3F44  2C 03 00 00 */	cmpwi r3, 0
/* 807E3F48  41 82 00 30 */	beq lbl_807E3F78
lbl_807E3F4C:
/* 807E3F4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014B@ha */
/* 807E3F50  38 03 01 4B */	addi r0, r3, 0x014B /* 0x0007014B@l */
/* 807E3F54  90 01 00 08 */	stw r0, 8(r1)
/* 807E3F58  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E3F5C  38 81 00 08 */	addi r4, r1, 8
/* 807E3F60  38 A0 00 00 */	li r5, 0
/* 807E3F64  38 C0 FF FF */	li r6, -1
/* 807E3F68  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E3F6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E3F70  7D 89 03 A6 */	mtctr r12
/* 807E3F74  4E 80 04 21 */	bctrl 
lbl_807E3F78:
/* 807E3F78  39 61 00 20 */	addi r11, r1, 0x20
/* 807E3F7C  4B B7 E2 AC */	b _restgpr_29
/* 807E3F80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E3F84  7C 08 03 A6 */	mtlr r0
/* 807E3F88  38 21 00 20 */	addi r1, r1, 0x20
/* 807E3F8C  4E 80 00 20 */	blr 
