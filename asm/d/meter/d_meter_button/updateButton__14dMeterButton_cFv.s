lbl_80205CA0:
/* 80205CA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80205CA4  7C 08 02 A6 */	mflr r0
/* 80205CA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80205CAC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80205CB0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80205CB4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80205CB8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80205CBC  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80205CC0  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80205CC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80205CC8  48 15 C5 0D */	bl _savegpr_27
/* 80205CCC  7C 7D 1B 78 */	mr r29, r3
/* 80205CD0  C3 E2 AD 48 */	lfs f31, lit_4146(r2)
/* 80205CD4  FF C0 F8 90 */	fmr f30, f31
/* 80205CD8  C3 A2 AD 4C */	lfs f29, lit_4147(r2)
/* 80205CDC  3B E0 00 00 */	li r31, 0
/* 80205CE0  3B C0 00 00 */	li r30, 0
/* 80205CE4  C0 03 04 E0 */	lfs f0, 0x4e0(r3)
/* 80205CE8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205CEC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205CF0  C0 43 0C 28 */	lfs f2, 0xc28(r3)
/* 80205CF4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80205CF8  40 82 00 14 */	bne lbl_80205D0C
/* 80205CFC  C0 3D 04 E4 */	lfs f1, 0x4e4(r29)
/* 80205D00  C0 03 0C 2C */	lfs f0, 0xc2c(r3)
/* 80205D04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80205D08  41 82 00 20 */	beq lbl_80205D28
lbl_80205D0C:
/* 80205D0C  D0 5D 04 E0 */	stfs f2, 0x4e0(r29)
/* 80205D10  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205D14  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205D18  C0 03 0C 2C */	lfs f0, 0xc2c(r3)
/* 80205D1C  D0 1D 04 E4 */	stfs f0, 0x4e4(r29)
/* 80205D20  C3 C2 AD 48 */	lfs f30, lit_4146(r2)
/* 80205D24  3B C0 00 01 */	li r30, 1
lbl_80205D28:
/* 80205D28  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80205D2C  3B 83 01 88 */	addi r28, r3, g_meter2_info@l /* 0x80430188@l */
/* 80205D30  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80205D34  88 63 01 E5 */	lbz r3, 0x1e5(r3)
/* 80205D38  88 1D 04 D6 */	lbz r0, 0x4d6(r29)
/* 80205D3C  7C 00 18 40 */	cmplw r0, r3
/* 80205D40  41 82 00 24 */	beq lbl_80205D64
/* 80205D44  98 7D 04 D6 */	stb r3, 0x4d6(r29)
/* 80205D48  88 1D 04 D6 */	lbz r0, 0x4d6(r29)
/* 80205D4C  28 00 00 01 */	cmplwi r0, 1
/* 80205D50  40 82 00 0C */	bne lbl_80205D5C
/* 80205D54  C3 C2 AD 94 */	lfs f30, lit_6012(r2)
/* 80205D58  48 00 00 08 */	b lbl_80205D60
lbl_80205D5C:
/* 80205D5C  C3 C2 AD 48 */	lfs f30, lit_4146(r2)
lbl_80205D60:
/* 80205D60  3B E0 00 01 */	li r31, 1
lbl_80205D64:
/* 80205D64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80205D68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80205D6C  3B 63 4E 00 */	addi r27, r3, 0x4e00
/* 80205D70  7F 63 DB 78 */	mr r3, r27
/* 80205D74  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 80205D78  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
/* 80205D7C  38 84 00 5D */	addi r4, r4, 0x5d
/* 80205D80  48 16 2C 15 */	bl strcmp
/* 80205D84  2C 03 00 00 */	cmpwi r3, 0
/* 80205D88  40 82 00 30 */	bne lbl_80205DB8
/* 80205D8C  38 60 00 00 */	li r3, 0
/* 80205D90  4B E2 6B ED */	bl getLayerNo__14dComIfG_play_cFi
/* 80205D94  2C 03 00 04 */	cmpwi r3, 4
/* 80205D98  41 82 00 14 */	beq lbl_80205DAC
/* 80205D9C  38 60 00 00 */	li r3, 0
/* 80205DA0  4B E2 6B DD */	bl getLayerNo__14dComIfG_play_cFi
/* 80205DA4  2C 03 00 05 */	cmpwi r3, 5
/* 80205DA8  40 82 00 10 */	bne lbl_80205DB8
lbl_80205DAC:
/* 80205DAC  C3 C2 AD 94 */	lfs f30, lit_6012(r2)
/* 80205DB0  3B E0 00 01 */	li r31, 1
/* 80205DB4  48 00 00 3C */	b lbl_80205DF0
lbl_80205DB8:
/* 80205DB8  7F 63 DB 78 */	mr r3, r27
/* 80205DBC  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha /* 0x803980E8@ha */
/* 80205DC0  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l /* 0x803980E8@l */
/* 80205DC4  38 84 00 64 */	addi r4, r4, 0x64
/* 80205DC8  48 16 2B CD */	bl strcmp
/* 80205DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80205DD0  40 82 00 20 */	bne lbl_80205DF0
/* 80205DD4  38 60 00 0E */	li r3, 0xe
/* 80205DD8  38 80 FF FF */	li r4, -1
/* 80205DDC  4B E2 7D 89 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 80205DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80205DE4  41 82 00 0C */	beq lbl_80205DF0
/* 80205DE8  C3 C2 AD 94 */	lfs f30, lit_6012(r2)
/* 80205DEC  3B E0 00 01 */	li r31, 1
lbl_80205DF0:
/* 80205DF0  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 80205DF4  88 03 01 E5 */	lbz r0, 0x1e5(r3)
/* 80205DF8  28 00 00 04 */	cmplwi r0, 4
/* 80205DFC  40 82 00 08 */	bne lbl_80205E04
/* 80205E00  C3 A2 AD 98 */	lfs f29, lit_6013(r2)
lbl_80205E04:
/* 80205E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80205E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80205E0C  88 03 5E 32 */	lbz r0, 0x5e32(r3)
/* 80205E10  28 00 00 43 */	cmplwi r0, 0x43
/* 80205E14  41 82 00 0C */	beq lbl_80205E20
/* 80205E18  28 00 00 4D */	cmplwi r0, 0x4d
/* 80205E1C  40 82 00 14 */	bne lbl_80205E30
lbl_80205E20:
/* 80205E20  C3 E2 AD 9C */	lfs f31, lit_6014(r2)
/* 80205E24  C3 C2 AD A0 */	lfs f30, lit_6015(r2)
/* 80205E28  C3 A2 AD A4 */	lfs f29, lit_6016(r2)
/* 80205E2C  3B E0 00 01 */	li r31, 1
lbl_80205E30:
/* 80205E30  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80205E34  40 82 00 0C */	bne lbl_80205E40
/* 80205E38  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80205E3C  41 82 00 2C */	beq lbl_80205E68
lbl_80205E40:
/* 80205E40  7F A3 EB 78 */	mr r3, r29
/* 80205E44  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 80205E48  C0 3D 04 E0 */	lfs f1, 0x4e0(r29)
/* 80205E4C  C0 1D 02 F0 */	lfs f0, 0x2f0(r29)
/* 80205E50  EC 01 00 2A */	fadds f0, f1, f0
/* 80205E54  EC 3F 00 2A */	fadds f1, f31, f0
/* 80205E58  C0 1D 04 E4 */	lfs f0, 0x4e4(r29)
/* 80205E5C  EC 40 F0 2A */	fadds f2, f0, f30
/* 80205E60  38 A0 00 FF */	li r5, 0xff
/* 80205E64  48 00 50 05 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80205E68:
/* 80205E68  C0 3D 04 E8 */	lfs f1, 0x4e8(r29)
/* 80205E6C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205E70  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205E74  C0 03 0C 30 */	lfs f0, 0xc30(r3)
/* 80205E78  EC 00 07 72 */	fmuls f0, f0, f29
/* 80205E7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80205E80  41 82 00 2C */	beq lbl_80205EAC
/* 80205E84  D0 1D 04 E8 */	stfs f0, 0x4e8(r29)
/* 80205E88  C0 1D 04 E8 */	lfs f0, 0x4e8(r29)
/* 80205E8C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80205E90  80 63 00 04 */	lwz r3, 4(r3)
/* 80205E94  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80205E98  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80205E9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80205EA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80205EA4  7D 89 03 A6 */	mtctr r12
/* 80205EA8  4E 80 04 21 */	bctrl 
lbl_80205EAC:
/* 80205EAC  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80205EB0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205EB4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205EB8  C0 43 0C 34 */	lfs f2, 0xc34(r3)
/* 80205EBC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80205EC0  40 82 00 14 */	bne lbl_80205ED4
/* 80205EC4  C0 3D 04 F0 */	lfs f1, 0x4f0(r29)
/* 80205EC8  C0 03 0C 38 */	lfs f0, 0xc38(r3)
/* 80205ECC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80205ED0  41 82 00 40 */	beq lbl_80205F10
lbl_80205ED4:
/* 80205ED4  D0 5D 04 EC */	stfs f2, 0x4ec(r29)
/* 80205ED8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205EDC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205EE0  C0 03 0C 38 */	lfs f0, 0xc38(r3)
/* 80205EE4  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80205EE8  7F A3 EB 78 */	mr r3, r29
/* 80205EEC  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 80205EF0  C0 5D 03 04 */	lfs f2, 0x304(r29)
/* 80205EF4  C0 3D 04 EC */	lfs f1, 0x4ec(r29)
/* 80205EF8  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 80205EFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80205F00  EC 22 00 2A */	fadds f1, f2, f0
/* 80205F04  C0 5D 04 F0 */	lfs f2, 0x4f0(r29)
/* 80205F08  38 A0 00 FF */	li r5, 0xff
/* 80205F0C  48 00 4F 5D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80205F10:
/* 80205F10  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80205F14  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205F18  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205F1C  C0 23 0C 3C */	lfs f1, 0xc3c(r3)
/* 80205F20  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80205F24  41 82 00 40 */	beq lbl_80205F64
/* 80205F28  D0 3D 04 F4 */	stfs f1, 0x4f4(r29)
/* 80205F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80205F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80205F34  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 80205F38  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80205F3C  40 82 00 28 */	bne lbl_80205F64
/* 80205F40  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80205F44  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 80205F48  80 63 00 04 */	lwz r3, 4(r3)
/* 80205F4C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80205F50  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80205F54  81 83 00 00 */	lwz r12, 0(r3)
/* 80205F58  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80205F5C  7D 89 03 A6 */	mtctr r12
/* 80205F60  4E 80 04 21 */	bctrl 
lbl_80205F64:
/* 80205F64  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80205F68  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205F6C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205F70  C0 43 0C 40 */	lfs f2, 0xc40(r3)
/* 80205F74  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80205F78  40 82 00 14 */	bne lbl_80205F8C
/* 80205F7C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80205F80  C0 03 0C 44 */	lfs f0, 0xc44(r3)
/* 80205F84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80205F88  41 82 00 40 */	beq lbl_80205FC8
lbl_80205F8C:
/* 80205F8C  D0 5D 04 F8 */	stfs f2, 0x4f8(r29)
/* 80205F90  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205F94  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205F98  C0 03 0C 44 */	lfs f0, 0xc44(r3)
/* 80205F9C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80205FA0  7F A3 EB 78 */	mr r3, r29
/* 80205FA4  80 9D 00 24 */	lwz r4, 0x24(r29)
/* 80205FA8  C0 5D 03 08 */	lfs f2, 0x308(r29)
/* 80205FAC  C0 3D 04 F8 */	lfs f1, 0x4f8(r29)
/* 80205FB0  C0 1D 01 90 */	lfs f0, 0x190(r29)
/* 80205FB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80205FB8  EC 22 00 2A */	fadds f1, f2, f0
/* 80205FBC  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 80205FC0  38 A0 00 FF */	li r5, 0xff
/* 80205FC4  48 00 4E A5 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80205FC8:
/* 80205FC8  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80205FCC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80205FD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80205FD4  C0 23 0C 48 */	lfs f1, 0xc48(r3)
/* 80205FD8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80205FDC  41 82 00 2C */	beq lbl_80206008
/* 80205FE0  D0 3D 05 00 */	stfs f1, 0x500(r29)
/* 80205FE4  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80205FE8  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80205FEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80205FF0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80205FF4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80205FF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80205FFC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206000  7D 89 03 A6 */	mtctr r12
/* 80206004  4E 80 04 21 */	bctrl 
lbl_80206008:
/* 80206008  C0 1D 05 04 */	lfs f0, 0x504(r29)
/* 8020600C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206010  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206014  C0 43 0C 4C */	lfs f2, 0xc4c(r3)
/* 80206018  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8020601C  40 82 00 14 */	bne lbl_80206030
/* 80206020  C0 3D 05 08 */	lfs f1, 0x508(r29)
/* 80206024  C0 03 0C 50 */	lfs f0, 0xc50(r3)
/* 80206028  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8020602C  41 82 00 40 */	beq lbl_8020606C
lbl_80206030:
/* 80206030  D0 5D 05 04 */	stfs f2, 0x504(r29)
/* 80206034  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206038  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020603C  C0 03 0C 50 */	lfs f0, 0xc50(r3)
/* 80206040  D0 1D 05 08 */	stfs f0, 0x508(r29)
/* 80206044  7F A3 EB 78 */	mr r3, r29
/* 80206048  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 8020604C  C0 5D 03 0C */	lfs f2, 0x30c(r29)
/* 80206050  C0 3D 05 04 */	lfs f1, 0x504(r29)
/* 80206054  C0 1D 01 94 */	lfs f0, 0x194(r29)
/* 80206058  EC 01 00 2A */	fadds f0, f1, f0
/* 8020605C  EC 22 00 2A */	fadds f1, f2, f0
/* 80206060  C0 5D 05 08 */	lfs f2, 0x508(r29)
/* 80206064  38 A0 00 FF */	li r5, 0xff
/* 80206068  48 00 4E 01 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_8020606C:
/* 8020606C  C0 1D 05 0C */	lfs f0, 0x50c(r29)
/* 80206070  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206074  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206078  C0 23 0C 54 */	lfs f1, 0xc54(r3)
/* 8020607C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206080  41 82 00 2C */	beq lbl_802060AC
/* 80206084  D0 3D 05 0C */	stfs f1, 0x50c(r29)
/* 80206088  C0 1D 05 0C */	lfs f0, 0x50c(r29)
/* 8020608C  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 80206090  80 63 00 04 */	lwz r3, 4(r3)
/* 80206094  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206098  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020609C  81 83 00 00 */	lwz r12, 0(r3)
/* 802060A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802060A4  7D 89 03 A6 */	mtctr r12
/* 802060A8  4E 80 04 21 */	bctrl 
lbl_802060AC:
/* 802060AC  C0 1D 05 10 */	lfs f0, 0x510(r29)
/* 802060B0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802060B4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802060B8  C0 43 0C 58 */	lfs f2, 0xc58(r3)
/* 802060BC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802060C0  40 82 00 14 */	bne lbl_802060D4
/* 802060C4  C0 3D 05 14 */	lfs f1, 0x514(r29)
/* 802060C8  C0 03 0C 5C */	lfs f0, 0xc5c(r3)
/* 802060CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802060D0  41 82 00 40 */	beq lbl_80206110
lbl_802060D4:
/* 802060D4  D0 5D 05 10 */	stfs f2, 0x510(r29)
/* 802060D8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802060DC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802060E0  C0 03 0C 5C */	lfs f0, 0xc5c(r3)
/* 802060E4  D0 1D 05 14 */	stfs f0, 0x514(r29)
/* 802060E8  7F A3 EB 78 */	mr r3, r29
/* 802060EC  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802060F0  C0 5D 03 10 */	lfs f2, 0x310(r29)
/* 802060F4  C0 3D 05 10 */	lfs f1, 0x510(r29)
/* 802060F8  C0 1D 01 98 */	lfs f0, 0x198(r29)
/* 802060FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80206100  EC 22 00 2A */	fadds f1, f2, f0
/* 80206104  C0 5D 05 14 */	lfs f2, 0x514(r29)
/* 80206108  38 A0 00 FF */	li r5, 0xff
/* 8020610C  48 00 4D 5D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206110:
/* 80206110  C0 1D 05 18 */	lfs f0, 0x518(r29)
/* 80206114  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206118  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020611C  C0 23 0C 60 */	lfs f1, 0xc60(r3)
/* 80206120  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206124  41 82 00 2C */	beq lbl_80206150
/* 80206128  D0 3D 05 18 */	stfs f1, 0x518(r29)
/* 8020612C  C0 1D 05 18 */	lfs f0, 0x518(r29)
/* 80206130  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80206134  80 63 00 04 */	lwz r3, 4(r3)
/* 80206138  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020613C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206140  81 83 00 00 */	lwz r12, 0(r3)
/* 80206144  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206148  7D 89 03 A6 */	mtctr r12
/* 8020614C  4E 80 04 21 */	bctrl 
lbl_80206150:
/* 80206150  C0 1D 05 1C */	lfs f0, 0x51c(r29)
/* 80206154  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206158  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020615C  C0 43 0C 64 */	lfs f2, 0xc64(r3)
/* 80206160  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206164  40 82 00 14 */	bne lbl_80206178
/* 80206168  C0 3D 05 20 */	lfs f1, 0x520(r29)
/* 8020616C  C0 03 0C 68 */	lfs f0, 0xc68(r3)
/* 80206170  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80206174  41 82 00 40 */	beq lbl_802061B4
lbl_80206178:
/* 80206178  D0 5D 05 1C */	stfs f2, 0x51c(r29)
/* 8020617C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206180  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206184  C0 03 0C 68 */	lfs f0, 0xc68(r3)
/* 80206188  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 8020618C  7F A3 EB 78 */	mr r3, r29
/* 80206190  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 80206194  C0 5D 03 14 */	lfs f2, 0x314(r29)
/* 80206198  C0 3D 05 1C */	lfs f1, 0x51c(r29)
/* 8020619C  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 802061A0  EC 01 00 2A */	fadds f0, f1, f0
/* 802061A4  EC 22 00 2A */	fadds f1, f2, f0
/* 802061A8  C0 5D 05 20 */	lfs f2, 0x520(r29)
/* 802061AC  38 A0 00 FF */	li r5, 0xff
/* 802061B0  48 00 4C B9 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_802061B4:
/* 802061B4  C0 1D 05 24 */	lfs f0, 0x524(r29)
/* 802061B8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802061BC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802061C0  C0 23 0C 6C */	lfs f1, 0xc6c(r3)
/* 802061C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802061C8  41 82 00 2C */	beq lbl_802061F4
/* 802061CC  D0 3D 05 24 */	stfs f1, 0x524(r29)
/* 802061D0  C0 1D 05 24 */	lfs f0, 0x524(r29)
/* 802061D4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 802061D8  80 63 00 04 */	lwz r3, 4(r3)
/* 802061DC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802061E0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802061E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802061E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802061EC  7D 89 03 A6 */	mtctr r12
/* 802061F0  4E 80 04 21 */	bctrl 
lbl_802061F4:
/* 802061F4  C0 1D 05 28 */	lfs f0, 0x528(r29)
/* 802061F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802061FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206200  C0 43 0C 70 */	lfs f2, 0xc70(r3)
/* 80206204  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206208  40 82 00 14 */	bne lbl_8020621C
/* 8020620C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80206210  C0 03 0C 74 */	lfs f0, 0xc74(r3)
/* 80206214  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80206218  41 82 00 40 */	beq lbl_80206258
lbl_8020621C:
/* 8020621C  D0 5D 05 28 */	stfs f2, 0x528(r29)
/* 80206220  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206224  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206228  C0 03 0C 74 */	lfs f0, 0xc74(r3)
/* 8020622C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80206230  7F A3 EB 78 */	mr r3, r29
/* 80206234  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 80206238  C0 5D 03 18 */	lfs f2, 0x318(r29)
/* 8020623C  C0 3D 05 28 */	lfs f1, 0x528(r29)
/* 80206240  C0 1D 01 A0 */	lfs f0, 0x1a0(r29)
/* 80206244  EC 01 00 2A */	fadds f0, f1, f0
/* 80206248  EC 22 00 2A */	fadds f1, f2, f0
/* 8020624C  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 80206250  38 A0 00 FF */	li r5, 0xff
/* 80206254  48 00 4C 15 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206258:
/* 80206258  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8020625C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206260  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206264  C0 23 0C 78 */	lfs f1, 0xc78(r3)
/* 80206268  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020626C  41 82 00 2C */	beq lbl_80206298
/* 80206270  D0 3D 05 30 */	stfs f1, 0x530(r29)
/* 80206274  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80206278  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8020627C  80 63 00 04 */	lwz r3, 4(r3)
/* 80206280  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206284  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206288  81 83 00 00 */	lwz r12, 0(r3)
/* 8020628C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206290  7D 89 03 A6 */	mtctr r12
/* 80206294  4E 80 04 21 */	bctrl 
lbl_80206298:
/* 80206298  C0 1D 05 34 */	lfs f0, 0x534(r29)
/* 8020629C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802062A0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802062A4  C0 43 0C 7C */	lfs f2, 0xc7c(r3)
/* 802062A8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802062AC  40 82 00 14 */	bne lbl_802062C0
/* 802062B0  C0 3D 05 38 */	lfs f1, 0x538(r29)
/* 802062B4  C0 03 0C 80 */	lfs f0, 0xc80(r3)
/* 802062B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802062BC  41 82 00 40 */	beq lbl_802062FC
lbl_802062C0:
/* 802062C0  D0 5D 05 34 */	stfs f2, 0x534(r29)
/* 802062C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802062C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802062CC  C0 03 0C 80 */	lfs f0, 0xc80(r3)
/* 802062D0  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 802062D4  7F A3 EB 78 */	mr r3, r29
/* 802062D8  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 802062DC  C0 5D 03 1C */	lfs f2, 0x31c(r29)
/* 802062E0  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 802062E4  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 802062E8  EC 01 00 2A */	fadds f0, f1, f0
/* 802062EC  EC 22 00 2A */	fadds f1, f2, f0
/* 802062F0  C0 5D 05 38 */	lfs f2, 0x538(r29)
/* 802062F4  38 A0 00 FF */	li r5, 0xff
/* 802062F8  48 00 4B 71 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_802062FC:
/* 802062FC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80206300  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206304  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206308  C0 23 0C 84 */	lfs f1, 0xc84(r3)
/* 8020630C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206310  41 82 00 2C */	beq lbl_8020633C
/* 80206314  D0 3D 05 3C */	stfs f1, 0x53c(r29)
/* 80206318  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8020631C  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80206320  80 63 00 04 */	lwz r3, 4(r3)
/* 80206324  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206328  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020632C  81 83 00 00 */	lwz r12, 0(r3)
/* 80206330  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206334  7D 89 03 A6 */	mtctr r12
/* 80206338  4E 80 04 21 */	bctrl 
lbl_8020633C:
/* 8020633C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80206340  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206344  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206348  C0 43 0C 88 */	lfs f2, 0xc88(r3)
/* 8020634C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206350  40 82 00 14 */	bne lbl_80206364
/* 80206354  C0 3D 05 44 */	lfs f1, 0x544(r29)
/* 80206358  C0 03 0C 8C */	lfs f0, 0xc8c(r3)
/* 8020635C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80206360  41 82 00 40 */	beq lbl_802063A0
lbl_80206364:
/* 80206364  D0 5D 05 40 */	stfs f2, 0x540(r29)
/* 80206368  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020636C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206370  C0 03 0C 8C */	lfs f0, 0xc8c(r3)
/* 80206374  D0 1D 05 44 */	stfs f0, 0x544(r29)
/* 80206378  7F A3 EB 78 */	mr r3, r29
/* 8020637C  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 80206380  C0 5D 03 20 */	lfs f2, 0x320(r29)
/* 80206384  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 80206388  C0 1D 01 A8 */	lfs f0, 0x1a8(r29)
/* 8020638C  EC 01 00 2A */	fadds f0, f1, f0
/* 80206390  EC 22 00 2A */	fadds f1, f2, f0
/* 80206394  C0 5D 05 44 */	lfs f2, 0x544(r29)
/* 80206398  38 A0 00 FF */	li r5, 0xff
/* 8020639C  48 00 4A CD */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_802063A0:
/* 802063A0  C0 1D 05 48 */	lfs f0, 0x548(r29)
/* 802063A4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802063A8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802063AC  C0 23 0C 90 */	lfs f1, 0xc90(r3)
/* 802063B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802063B4  41 82 00 2C */	beq lbl_802063E0
/* 802063B8  D0 3D 05 48 */	stfs f1, 0x548(r29)
/* 802063BC  C0 1D 05 48 */	lfs f0, 0x548(r29)
/* 802063C0  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 802063C4  80 63 00 04 */	lwz r3, 4(r3)
/* 802063C8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802063CC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802063D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802063D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802063D8  7D 89 03 A6 */	mtctr r12
/* 802063DC  4E 80 04 21 */	bctrl 
lbl_802063E0:
/* 802063E0  C0 1D 05 4C */	lfs f0, 0x54c(r29)
/* 802063E4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802063E8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802063EC  C0 43 0C 94 */	lfs f2, 0xc94(r3)
/* 802063F0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802063F4  40 82 00 14 */	bne lbl_80206408
/* 802063F8  C0 3D 05 50 */	lfs f1, 0x550(r29)
/* 802063FC  C0 03 0C 98 */	lfs f0, 0xc98(r3)
/* 80206400  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80206404  41 82 00 40 */	beq lbl_80206444
lbl_80206408:
/* 80206408  D0 5D 05 4C */	stfs f2, 0x54c(r29)
/* 8020640C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206410  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206414  C0 03 0C 98 */	lfs f0, 0xc98(r3)
/* 80206418  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8020641C  7F A3 EB 78 */	mr r3, r29
/* 80206420  80 9D 00 3C */	lwz r4, 0x3c(r29)
/* 80206424  C0 5D 03 24 */	lfs f2, 0x324(r29)
/* 80206428  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 8020642C  C0 1D 01 AC */	lfs f0, 0x1ac(r29)
/* 80206430  EC 01 00 2A */	fadds f0, f1, f0
/* 80206434  EC 22 00 2A */	fadds f1, f2, f0
/* 80206438  C0 5D 05 50 */	lfs f2, 0x550(r29)
/* 8020643C  38 A0 00 FF */	li r5, 0xff
/* 80206440  48 00 4A 29 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206444:
/* 80206444  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80206448  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020644C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206450  C0 23 0C 9C */	lfs f1, 0xc9c(r3)
/* 80206454  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206458  41 82 00 2C */	beq lbl_80206484
/* 8020645C  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80206460  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80206464  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 80206468  80 63 00 04 */	lwz r3, 4(r3)
/* 8020646C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206470  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206474  81 83 00 00 */	lwz r12, 0(r3)
/* 80206478  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020647C  7D 89 03 A6 */	mtctr r12
/* 80206480  4E 80 04 21 */	bctrl 
lbl_80206484:
/* 80206484  C0 1D 05 88 */	lfs f0, 0x588(r29)
/* 80206488  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020648C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206490  C0 43 0C E8 */	lfs f2, 0xce8(r3)
/* 80206494  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206498  40 82 00 14 */	bne lbl_802064AC
/* 8020649C  C0 3D 05 8C */	lfs f1, 0x58c(r29)
/* 802064A0  C0 03 0C EC */	lfs f0, 0xcec(r3)
/* 802064A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802064A8  41 82 00 40 */	beq lbl_802064E8
lbl_802064AC:
/* 802064AC  D0 5D 05 88 */	stfs f2, 0x588(r29)
/* 802064B0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802064B4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802064B8  C0 03 0C EC */	lfs f0, 0xcec(r3)
/* 802064BC  D0 1D 05 8C */	stfs f0, 0x58c(r29)
/* 802064C0  7F A3 EB 78 */	mr r3, r29
/* 802064C4  80 9D 00 50 */	lwz r4, 0x50(r29)
/* 802064C8  C0 5D 03 38 */	lfs f2, 0x338(r29)
/* 802064CC  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 802064D0  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 802064D4  EC 01 00 2A */	fadds f0, f1, f0
/* 802064D8  EC 22 00 2A */	fadds f1, f2, f0
/* 802064DC  C0 5D 05 8C */	lfs f2, 0x58c(r29)
/* 802064E0  38 A0 00 FF */	li r5, 0xff
/* 802064E4  48 00 49 85 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_802064E8:
/* 802064E8  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 802064EC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802064F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802064F4  C0 23 0C F0 */	lfs f1, 0xcf0(r3)
/* 802064F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802064FC  41 82 00 2C */	beq lbl_80206528
/* 80206500  D0 3D 05 90 */	stfs f1, 0x590(r29)
/* 80206504  C0 1D 05 90 */	lfs f0, 0x590(r29)
/* 80206508  80 7D 00 50 */	lwz r3, 0x50(r29)
/* 8020650C  80 63 00 04 */	lwz r3, 4(r3)
/* 80206510  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206514  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206518  81 83 00 00 */	lwz r12, 0(r3)
/* 8020651C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206520  7D 89 03 A6 */	mtctr r12
/* 80206524  4E 80 04 21 */	bctrl 
lbl_80206528:
/* 80206528  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 8020652C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206530  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206534  C0 43 0D 30 */	lfs f2, 0xd30(r3)
/* 80206538  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8020653C  40 82 00 14 */	bne lbl_80206550
/* 80206540  C0 3D 05 EC */	lfs f1, 0x5ec(r29)
/* 80206544  C0 03 0D 34 */	lfs f0, 0xd34(r3)
/* 80206548  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8020654C  41 82 00 40 */	beq lbl_8020658C
lbl_80206550:
/* 80206550  D0 5D 05 E8 */	stfs f2, 0x5e8(r29)
/* 80206554  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206558  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020655C  C0 03 0D 34 */	lfs f0, 0xd34(r3)
/* 80206560  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80206564  7F A3 EB 78 */	mr r3, r29
/* 80206568  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8020656C  C0 5D 03 58 */	lfs f2, 0x358(r29)
/* 80206570  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 80206574  C0 1D 01 E0 */	lfs f0, 0x1e0(r29)
/* 80206578  EC 01 00 2A */	fadds f0, f1, f0
/* 8020657C  EC 22 00 2A */	fadds f1, f2, f0
/* 80206580  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 80206584  38 A0 00 FF */	li r5, 0xff
/* 80206588  48 00 48 E1 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_8020658C:
/* 8020658C  80 1D 00 80 */	lwz r0, 0x80(r29)
/* 80206590  28 00 00 00 */	cmplwi r0, 0
/* 80206594  41 82 00 98 */	beq lbl_8020662C
/* 80206598  C0 1D 05 F4 */	lfs f0, 0x5f4(r29)
/* 8020659C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802065A0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802065A4  C0 43 0D 3C */	lfs f2, 0xd3c(r3)
/* 802065A8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802065AC  40 82 00 14 */	bne lbl_802065C0
/* 802065B0  C0 3D 05 F8 */	lfs f1, 0x5f8(r29)
/* 802065B4  C0 03 0D 40 */	lfs f0, 0xd40(r3)
/* 802065B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802065BC  41 82 00 30 */	beq lbl_802065EC
lbl_802065C0:
/* 802065C0  D0 5D 05 F4 */	stfs f2, 0x5f4(r29)
/* 802065C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802065C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802065CC  C0 03 0D 40 */	lfs f0, 0xd40(r3)
/* 802065D0  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 802065D4  7F A3 EB 78 */	mr r3, r29
/* 802065D8  80 9D 00 80 */	lwz r4, 0x80(r29)
/* 802065DC  C0 3D 05 F4 */	lfs f1, 0x5f4(r29)
/* 802065E0  C0 5D 05 F8 */	lfs f2, 0x5f8(r29)
/* 802065E4  38 A0 00 FF */	li r5, 0xff
/* 802065E8  48 00 48 81 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_802065EC:
/* 802065EC  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 802065F0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802065F4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802065F8  C0 23 0D 44 */	lfs f1, 0xd44(r3)
/* 802065FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206600  41 82 00 2C */	beq lbl_8020662C
/* 80206604  D0 3D 05 FC */	stfs f1, 0x5fc(r29)
/* 80206608  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 8020660C  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 80206610  80 63 00 04 */	lwz r3, 4(r3)
/* 80206614  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206618  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020661C  81 83 00 00 */	lwz r12, 0(r3)
/* 80206620  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206624  7D 89 03 A6 */	mtctr r12
/* 80206628  4E 80 04 21 */	bctrl 
lbl_8020662C:
/* 8020662C  C0 1D 06 24 */	lfs f0, 0x624(r29)
/* 80206630  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206634  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206638  C0 43 0D 6C */	lfs f2, 0xd6c(r3)
/* 8020663C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206640  40 82 00 14 */	bne lbl_80206654
/* 80206644  C0 3D 06 28 */	lfs f1, 0x628(r29)
/* 80206648  C0 03 0D 70 */	lfs f0, 0xd70(r3)
/* 8020664C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80206650  41 82 00 30 */	beq lbl_80206680
lbl_80206654:
/* 80206654  D0 5D 06 24 */	stfs f2, 0x624(r29)
/* 80206658  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020665C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206660  C0 03 0D 70 */	lfs f0, 0xd70(r3)
/* 80206664  D0 1D 06 28 */	stfs f0, 0x628(r29)
/* 80206668  7F A3 EB 78 */	mr r3, r29
/* 8020666C  80 9D 00 F8 */	lwz r4, 0xf8(r29)
/* 80206670  C0 3D 06 24 */	lfs f1, 0x624(r29)
/* 80206674  C0 5D 06 28 */	lfs f2, 0x628(r29)
/* 80206678  38 A0 00 FF */	li r5, 0xff
/* 8020667C  48 00 47 ED */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206680:
/* 80206680  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 80206684  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206688  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020668C  C0 23 0D 74 */	lfs f1, 0xd74(r3)
/* 80206690  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206694  41 82 00 2C */	beq lbl_802066C0
/* 80206698  D0 3D 06 2C */	stfs f1, 0x62c(r29)
/* 8020669C  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 802066A0  80 7D 00 F8 */	lwz r3, 0xf8(r29)
/* 802066A4  80 63 00 04 */	lwz r3, 4(r3)
/* 802066A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802066AC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802066B0  81 83 00 00 */	lwz r12, 0(r3)
/* 802066B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802066B8  7D 89 03 A6 */	mtctr r12
/* 802066BC  4E 80 04 21 */	bctrl 
lbl_802066C0:
/* 802066C0  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 802066C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802066C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802066CC  C0 43 0D 48 */	lfs f2, 0xd48(r3)
/* 802066D0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 802066D4  40 82 00 14 */	bne lbl_802066E8
/* 802066D8  C0 3D 06 08 */	lfs f1, 0x608(r29)
/* 802066DC  C0 03 0D 50 */	lfs f0, 0xd50(r3)
/* 802066E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802066E4  41 82 00 64 */	beq lbl_80206748
lbl_802066E8:
/* 802066E8  D0 5D 06 00 */	stfs f2, 0x600(r29)
/* 802066EC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802066F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802066F4  C0 03 0D 50 */	lfs f0, 0xd50(r3)
/* 802066F8  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 802066FC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80206700  FC 40 08 90 */	fmr f2, f1
/* 80206704  88 9D 04 BE */	lbz r4, 0x4be(r29)
/* 80206708  28 04 00 16 */	cmplwi r4, 0x16
/* 8020670C  41 82 00 10 */	beq lbl_8020671C
/* 80206710  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80206714  7C 7D 02 14 */	add r3, r29, r0
/* 80206718  C0 23 01 8C */	lfs f1, 0x18c(r3)
lbl_8020671C:
/* 8020671C  28 04 00 06 */	cmplwi r4, 6
/* 80206720  40 82 00 08 */	bne lbl_80206728
/* 80206724  C0 5D 05 38 */	lfs f2, 0x538(r29)
lbl_80206728:
/* 80206728  7F A3 EB 78 */	mr r3, r29
/* 8020672C  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 80206730  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 80206734  EC 20 08 2A */	fadds f1, f0, f1
/* 80206738  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 8020673C  EC 40 10 2A */	fadds f2, f0, f2
/* 80206740  38 A0 00 00 */	li r5, 0
/* 80206744  48 00 47 25 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206748:
/* 80206748  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 8020674C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206750  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206754  C0 23 0D 58 */	lfs f1, 0xd58(r3)
/* 80206758  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020675C  41 82 00 2C */	beq lbl_80206788
/* 80206760  D0 3D 06 10 */	stfs f1, 0x610(r29)
/* 80206764  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80206768  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 8020676C  80 63 00 04 */	lwz r3, 4(r3)
/* 80206770  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206774  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206778  81 83 00 00 */	lwz r12, 0(r3)
/* 8020677C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206780  7D 89 03 A6 */	mtctr r12
/* 80206784  4E 80 04 21 */	bctrl 
lbl_80206788:
/* 80206788  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 8020678C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206790  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206794  C0 43 0D 4C */	lfs f2, 0xd4c(r3)
/* 80206798  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8020679C  40 82 00 14 */	bne lbl_802067B0
/* 802067A0  C0 3D 06 0C */	lfs f1, 0x60c(r29)
/* 802067A4  C0 03 0D 54 */	lfs f0, 0xd54(r3)
/* 802067A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802067AC  41 82 00 64 */	beq lbl_80206810
lbl_802067B0:
/* 802067B0  D0 5D 06 04 */	stfs f2, 0x604(r29)
/* 802067B4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802067B8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802067BC  C0 03 0D 54 */	lfs f0, 0xd54(r3)
/* 802067C0  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 802067C4  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802067C8  FC 40 08 90 */	fmr f2, f1
/* 802067CC  88 9D 04 BF */	lbz r4, 0x4bf(r29)
/* 802067D0  28 04 00 16 */	cmplwi r4, 0x16
/* 802067D4  41 82 00 10 */	beq lbl_802067E4
/* 802067D8  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 802067DC  7C 7D 02 14 */	add r3, r29, r0
/* 802067E0  C0 23 01 8C */	lfs f1, 0x18c(r3)
lbl_802067E4:
/* 802067E4  28 04 00 06 */	cmplwi r4, 6
/* 802067E8  40 82 00 08 */	bne lbl_802067F0
/* 802067EC  C0 5D 05 38 */	lfs f2, 0x538(r29)
lbl_802067F0:
/* 802067F0  7F A3 EB 78 */	mr r3, r29
/* 802067F4  80 9D 00 7C */	lwz r4, 0x7c(r29)
/* 802067F8  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 802067FC  EC 20 08 2A */	fadds f1, f0, f1
/* 80206800  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80206804  EC 40 10 2A */	fadds f2, f0, f2
/* 80206808  38 A0 00 01 */	li r5, 1
/* 8020680C  48 00 46 5D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206810:
/* 80206810  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80206814  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206818  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020681C  C0 23 0D 5C */	lfs f1, 0xd5c(r3)
/* 80206820  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206824  41 82 00 2C */	beq lbl_80206850
/* 80206828  D0 3D 06 14 */	stfs f1, 0x614(r29)
/* 8020682C  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80206830  80 7D 00 7C */	lwz r3, 0x7c(r29)
/* 80206834  80 63 00 04 */	lwz r3, 4(r3)
/* 80206838  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020683C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206840  81 83 00 00 */	lwz r12, 0(r3)
/* 80206844  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206848  7D 89 03 A6 */	mtctr r12
/* 8020684C  4E 80 04 21 */	bctrl 
lbl_80206850:
/* 80206850  38 80 FF FF */	li r4, -1
/* 80206854  38 60 00 00 */	li r3, 0
/* 80206858  38 00 00 02 */	li r0, 2
/* 8020685C  7C 09 03 A6 */	mtctr r0
lbl_80206860:
/* 80206860  88 1D 04 D9 */	lbz r0, 0x4d9(r29)
/* 80206864  7C 03 00 00 */	cmpw r3, r0
/* 80206868  40 82 00 08 */	bne lbl_80206870
/* 8020686C  7C 64 1B 78 */	mr r4, r3
lbl_80206870:
/* 80206870  38 63 00 01 */	addi r3, r3, 1
/* 80206874  42 00 FF EC */	bdnz lbl_80206860
/* 80206878  2C 04 00 00 */	cmpwi r4, 0
/* 8020687C  41 80 00 CC */	blt lbl_80206948
/* 80206880  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 80206884  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206888  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020688C  C0 43 0D 60 */	lfs f2, 0xd60(r3)
/* 80206890  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80206894  40 82 00 14 */	bne lbl_802068A8
/* 80206898  C0 3D 06 1C */	lfs f1, 0x61c(r29)
/* 8020689C  C0 03 0D 64 */	lfs f0, 0xd64(r3)
/* 802068A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802068A4  41 82 00 64 */	beq lbl_80206908
lbl_802068A8:
/* 802068A8  D0 5D 06 18 */	stfs f2, 0x618(r29)
/* 802068AC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802068B0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802068B4  C0 03 0D 64 */	lfs f0, 0xd64(r3)
/* 802068B8  D0 1D 06 1C */	stfs f0, 0x61c(r29)
/* 802068BC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802068C0  7C 7D 22 14 */	add r3, r29, r4
/* 802068C4  88 03 04 BE */	lbz r0, 0x4be(r3)
/* 802068C8  28 00 00 16 */	cmplwi r0, 0x16
/* 802068CC  41 82 00 10 */	beq lbl_802068DC
/* 802068D0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802068D4  7C 7D 02 14 */	add r3, r29, r0
/* 802068D8  C0 23 01 8C */	lfs f1, 0x18c(r3)
lbl_802068DC:
/* 802068DC  C0 02 AD A8 */	lfs f0, lit_6017(r2)
/* 802068E0  EC 21 00 2A */	fadds f1, f1, f0
/* 802068E4  7F A3 EB 78 */	mr r3, r29
/* 802068E8  80 9D 00 F4 */	lwz r4, 0xf4(r29)
/* 802068EC  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 802068F0  EC 20 08 2A */	fadds f1, f0, f1
/* 802068F4  C0 5D 06 1C */	lfs f2, 0x61c(r29)
/* 802068F8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802068FC  EC 42 00 2A */	fadds f2, f2, f0
/* 80206900  38 A0 00 FF */	li r5, 0xff
/* 80206904  48 00 45 65 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_80206908:
/* 80206908  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 8020690C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80206910  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80206914  C0 23 0D 68 */	lfs f1, 0xd68(r3)
/* 80206918  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020691C  41 82 00 2C */	beq lbl_80206948
/* 80206920  D0 3D 06 20 */	stfs f1, 0x620(r29)
/* 80206924  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 80206928  80 7D 00 F4 */	lwz r3, 0xf4(r29)
/* 8020692C  80 63 00 04 */	lwz r3, 4(r3)
/* 80206930  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80206934  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80206938  81 83 00 00 */	lwz r12, 0(r3)
/* 8020693C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80206940  7D 89 03 A6 */	mtctr r12
/* 80206944  4E 80 04 21 */	bctrl 
lbl_80206948:
/* 80206948  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8020694C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80206950  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80206954  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80206958  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8020695C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80206960  39 61 00 20 */	addi r11, r1, 0x20
/* 80206964  48 15 B8 BD */	bl _restgpr_27
/* 80206968  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8020696C  7C 08 03 A6 */	mtlr r0
/* 80206970  38 21 00 50 */	addi r1, r1, 0x50
/* 80206974  4E 80 00 20 */	blr 
