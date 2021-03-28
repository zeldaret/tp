lbl_807C8B78:
/* 807C8B78  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807C8B7C  7C 08 02 A6 */	mflr r0
/* 807C8B80  90 01 00 94 */	stw r0, 0x94(r1)
/* 807C8B84  39 61 00 90 */	addi r11, r1, 0x90
/* 807C8B88  4B B9 96 50 */	b _savegpr_28
/* 807C8B8C  7C 7D 1B 78 */	mr r29, r3
/* 807C8B90  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C8B94  3B E3 EC A8 */	addi r31, r3, lit_3907@l
/* 807C8B98  4B 9B 8A A8 */	b dCam_getBody__Fv
/* 807C8B9C  7C 7E 1B 78 */	mr r30, r3
/* 807C8BA0  80 1D 13 20 */	lwz r0, 0x1320(r29)
/* 807C8BA4  28 00 00 0F */	cmplwi r0, 0xf
/* 807C8BA8  41 81 05 9C */	bgt lbl_807C9144
/* 807C8BAC  3C 60 80 7D */	lis r3, lit_7005@ha
/* 807C8BB0  38 63 F2 3C */	addi r3, r3, lit_7005@l
/* 807C8BB4  54 00 10 3A */	slwi r0, r0, 2
/* 807C8BB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 807C8BBC  7C 09 03 A6 */	mtctr r0
/* 807C8BC0  4E 80 04 20 */	bctr 
lbl_807C8BC4:
/* 807C8BC4  88 1D 14 86 */	lbz r0, 0x1486(r29)
/* 807C8BC8  28 00 00 00 */	cmplwi r0, 0
/* 807C8BCC  40 82 00 40 */	bne lbl_807C8C0C
/* 807C8BD0  38 00 00 01 */	li r0, 1
/* 807C8BD4  98 1D 14 86 */	stb r0, 0x1486(r29)
/* 807C8BD8  38 00 00 0A */	li r0, 0xa
/* 807C8BDC  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807C8BE0  38 60 00 08 */	li r3, 8
/* 807C8BE4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C8BE8  7C 04 07 74 */	extsb r4, r0
/* 807C8BEC  4B 86 4F 78 */	b dComIfGs_isOneZoneSwitch__Fii
/* 807C8BF0  2C 03 00 00 */	cmpwi r3, 0
/* 807C8BF4  40 82 00 8C */	bne lbl_807C8C80
/* 807C8BF8  38 60 00 08 */	li r3, 8
/* 807C8BFC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C8C00  7C 04 07 74 */	extsb r4, r0
/* 807C8C04  4B 86 4E 98 */	b dComIfGs_onOneZoneSwitch__Fii
/* 807C8C08  48 00 00 78 */	b lbl_807C8C80
lbl_807C8C0C:
/* 807C8C0C  38 00 00 02 */	li r0, 2
/* 807C8C10  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 807C8C14  38 00 00 1E */	li r0, 0x1e
/* 807C8C18  98 1D 13 80 */	stb r0, 0x1380(r29)
/* 807C8C1C  38 00 00 00 */	li r0, 0
/* 807C8C20  98 1D 13 7E */	stb r0, 0x137e(r29)
/* 807C8C24  98 1D 13 7D */	stb r0, 0x137d(r29)
/* 807C8C28  98 1D 13 7C */	stb r0, 0x137c(r29)
/* 807C8C2C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C8C30  D0 1D 13 14 */	stfs f0, 0x1314(r29)
/* 807C8C34  38 00 00 01 */	li r0, 1
/* 807C8C38  90 1D 13 74 */	stw r0, 0x1374(r29)
/* 807C8C3C  38 00 00 0A */	li r0, 0xa
/* 807C8C40  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 807C8C44  38 00 00 04 */	li r0, 4
/* 807C8C48  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807C8C4C  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C8C50  38 63 F4 C4 */	addi r3, r3, l_HIO@l
/* 807C8C54  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C8C58  FC 00 00 1E */	fctiwz f0, f0
/* 807C8C5C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 807C8C60  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 807C8C64  90 1D 13 4C */	stw r0, 0x134c(r29)
/* 807C8C68  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8C6C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807C8C70  7F A3 EB 78 */	mr r3, r29
/* 807C8C74  38 80 00 0C */	li r4, 0xc
/* 807C8C78  38 A0 00 16 */	li r5, 0x16
/* 807C8C7C  4B FF AC 9D */	bl setActionMode__8daE_VA_cFii
lbl_807C8C80:
/* 807C8C80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807C8C84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807C8C88  80 63 00 00 */	lwz r3, 0(r3)
/* 807C8C8C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C8C90  38 80 00 03 */	li r4, 3
/* 807C8C94  4B AE 91 60 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 807C8C98  48 00 04 AC */	b lbl_807C9144
lbl_807C8C9C:
/* 807C8C9C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 807C8CA0  28 00 00 02 */	cmplwi r0, 2
/* 807C8CA4  41 82 00 2C */	beq lbl_807C8CD0
/* 807C8CA8  7F A3 EB 78 */	mr r3, r29
/* 807C8CAC  38 80 00 02 */	li r4, 2
/* 807C8CB0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807C8CB4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807C8CB8  38 C0 00 00 */	li r6, 0
/* 807C8CBC  4B 85 2C 4C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807C8CC0  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 807C8CC4  60 00 00 02 */	ori r0, r0, 2
/* 807C8CC8  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 807C8CCC  48 00 04 78 */	b lbl_807C9144
lbl_807C8CD0:
/* 807C8CD0  38 00 00 02 */	li r0, 2
/* 807C8CD4  90 1D 13 70 */	stw r0, 0x1370(r29)
/* 807C8CD8  38 00 00 1E */	li r0, 0x1e
/* 807C8CDC  98 1D 13 80 */	stb r0, 0x1380(r29)
/* 807C8CE0  38 00 00 00 */	li r0, 0
/* 807C8CE4  98 1D 13 7E */	stb r0, 0x137e(r29)
/* 807C8CE8  98 1D 13 7D */	stb r0, 0x137d(r29)
/* 807C8CEC  98 1D 13 7C */	stb r0, 0x137c(r29)
/* 807C8CF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8CF4  D0 5D 13 14 */	stfs f2, 0x1314(r29)
/* 807C8CF8  38 00 00 01 */	li r0, 1
/* 807C8CFC  90 1D 13 74 */	stw r0, 0x1374(r29)
/* 807C8D00  7F A3 EB 78 */	mr r3, r29
/* 807C8D04  38 80 00 2A */	li r4, 0x2a
/* 807C8D08  38 A0 00 00 */	li r5, 0
/* 807C8D0C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C8D10  4B FF AB 09 */	bl setBck__8daE_VA_cFiUcff
/* 807C8D14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070329@ha */
/* 807C8D18  38 03 03 29 */	addi r0, r3, 0x0329 /* 0x00070329@l */
/* 807C8D1C  90 01 00 08 */	stw r0, 8(r1)
/* 807C8D20  38 7D 12 54 */	addi r3, r29, 0x1254
/* 807C8D24  38 81 00 08 */	addi r4, r1, 8
/* 807C8D28  38 A0 FF FF */	li r5, -1
/* 807C8D2C  81 9D 12 54 */	lwz r12, 0x1254(r29)
/* 807C8D30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C8D34  7D 89 03 A6 */	mtctr r12
/* 807C8D38  4E 80 04 21 */	bctrl 
/* 807C8D3C  38 00 00 0A */	li r0, 0xa
/* 807C8D40  90 1D 13 54 */	stw r0, 0x1354(r29)
/* 807C8D44  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C8D48  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 807C8D4C  38 00 00 0C */	li r0, 0xc
/* 807C8D50  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807C8D54  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 807C8D58  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807C8D5C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 807C8D60  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807C8D64  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807C8D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C8D6C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807C8D70  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807C8D74  38 81 00 6C */	addi r4, r1, 0x6c
/* 807C8D78  38 A0 80 00 */	li r5, -32768
/* 807C8D7C  38 C0 00 00 */	li r6, 0
/* 807C8D80  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807C8D84  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807C8D88  7D 89 03 A6 */	mtctr r12
/* 807C8D8C  4E 80 04 21 */	bctrl 
/* 807C8D90  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807C8D94  38 00 00 03 */	li r0, 3
/* 807C8D98  B0 04 06 04 */	sth r0, 0x604(r4)
/* 807C8D9C  38 60 00 00 */	li r3, 0
/* 807C8DA0  90 64 06 0C */	stw r3, 0x60c(r4)
/* 807C8DA4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807C8DA8  38 00 00 17 */	li r0, 0x17
/* 807C8DAC  90 04 06 14 */	stw r0, 0x614(r4)
/* 807C8DB0  38 00 00 01 */	li r0, 1
/* 807C8DB4  90 04 06 0C */	stw r0, 0x60c(r4)
/* 807C8DB8  90 64 06 10 */	stw r3, 0x610(r4)
/* 807C8DBC  B0 64 06 0A */	sth r3, 0x60a(r4)
/* 807C8DC0  7F C3 F3 78 */	mr r3, r30
/* 807C8DC4  4B 99 87 0C */	b Stop__9dCamera_cFv
/* 807C8DC8  7F C3 F3 78 */	mr r3, r30
/* 807C8DCC  38 80 00 03 */	li r4, 3
/* 807C8DD0  4B 99 A2 3C */	b SetTrimSize__9dCamera_cFl
/* 807C8DD4  38 00 F0 00 */	li r0, -4096
/* 807C8DD8  B0 1D 14 AC */	sth r0, 0x14ac(r29)
/* 807C8DDC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 807C8DE0  D0 1D 14 88 */	stfs f0, 0x1488(r29)
/* 807C8DE4  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 807C8DE8  D0 1D 14 8C */	stfs f0, 0x148c(r29)
/* 807C8DEC  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 807C8DF0  D0 1D 14 90 */	stfs f0, 0x1490(r29)
/* 807C8DF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8DF8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C8DFC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807C8E00  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807C8E04  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 807C8E08  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807C8E0C  38 7D 14 94 */	addi r3, r29, 0x1494
/* 807C8E10  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807C8E14  A8 BD 14 AC */	lha r5, 0x14ac(r29)
/* 807C8E18  38 C1 00 60 */	addi r6, r1, 0x60
/* 807C8E1C  4B AA 7F A4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C8E20  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 807C8E24  D0 1D 14 A0 */	stfs f0, 0x14a0(r29)
/* 807C8E28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8E2C  D0 1D 14 A4 */	stfs f0, 0x14a4(r29)
/* 807C8E30  48 00 03 14 */	b lbl_807C9144
lbl_807C8E34:
/* 807C8E34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8E38  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807C8E3C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807C8E40  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 807C8E44  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 807C8E48  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 807C8E4C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 807C8E50  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 807C8E54  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 807C8E58  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 807C8E5C  38 00 00 00 */	li r0, 0
/* 807C8E60  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807C8E64  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807C8E68  38 00 00 0D */	li r0, 0xd
/* 807C8E6C  90 1D 13 20 */	stw r0, 0x1320(r29)
lbl_807C8E70:
/* 807C8E70  C0 3D 14 A4 */	lfs f1, 0x14a4(r29)
/* 807C8E74  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C8E78  EC 01 00 2A */	fadds f0, f1, f0
/* 807C8E7C  D0 1D 14 A4 */	stfs f0, 0x14a4(r29)
/* 807C8E80  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 807C8E84  D0 1D 14 88 */	stfs f0, 0x1488(r29)
/* 807C8E88  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 807C8E8C  D0 1D 14 8C */	stfs f0, 0x148c(r29)
/* 807C8E90  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 807C8E94  D0 1D 14 90 */	stfs f0, 0x1490(r29)
/* 807C8E98  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807C8E9C  C0 1D 14 A4 */	lfs f0, 0x14a4(r29)
/* 807C8EA0  EC 21 00 2A */	fadds f1, f1, f0
/* 807C8EA4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C8EA8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C8EAC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807C8EB0  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 807C8EB4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807C8EB8  38 7D 14 94 */	addi r3, r29, 0x1494
/* 807C8EBC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807C8EC0  A8 BD 14 AC */	lha r5, 0x14ac(r29)
/* 807C8EC4  38 C1 00 60 */	addi r6, r1, 0x60
/* 807C8EC8  4B AA 7E F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807C8ECC  A8 7D 14 AC */	lha r3, 0x14ac(r29)
/* 807C8ED0  38 03 00 50 */	addi r0, r3, 0x50
/* 807C8ED4  B0 1D 14 AC */	sth r0, 0x14ac(r29)
/* 807C8ED8  C0 1D 14 88 */	lfs f0, 0x1488(r29)
/* 807C8EDC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807C8EE0  C0 1D 14 8C */	lfs f0, 0x148c(r29)
/* 807C8EE4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807C8EE8  C0 1D 14 90 */	lfs f0, 0x1490(r29)
/* 807C8EEC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C8EF0  C0 1D 14 94 */	lfs f0, 0x1494(r29)
/* 807C8EF4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807C8EF8  C0 1D 14 98 */	lfs f0, 0x1498(r29)
/* 807C8EFC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807C8F00  C0 1D 14 9C */	lfs f0, 0x149c(r29)
/* 807C8F04  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807C8F08  7F C3 F3 78 */	mr r3, r30
/* 807C8F0C  38 81 00 54 */	addi r4, r1, 0x54
/* 807C8F10  38 A1 00 48 */	addi r5, r1, 0x48
/* 807C8F14  C0 3D 14 A0 */	lfs f1, 0x14a0(r29)
/* 807C8F18  38 C0 00 00 */	li r6, 0
/* 807C8F1C  4B 9B 7B C4 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 807C8F20  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807C8F24  38 80 F0 00 */	li r4, -4096
/* 807C8F28  38 A0 00 08 */	li r5, 8
/* 807C8F2C  38 C0 01 00 */	li r6, 0x100
/* 807C8F30  38 E0 01 00 */	li r7, 0x100
/* 807C8F34  4B AA 76 0C */	b cLib_addCalcAngleS__FPsssss
/* 807C8F38  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C8F3C  38 63 00 0C */	addi r3, r3, 0xc
/* 807C8F40  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 807C8F44  4B B5 F4 E8 */	b checkPass__12J3DFrameCtrlFf
/* 807C8F48  2C 03 00 00 */	cmpwi r3, 0
/* 807C8F4C  41 82 01 F8 */	beq lbl_807C9144
/* 807C8F50  38 00 00 0E */	li r0, 0xe
/* 807C8F54  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807C8F58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C8F5C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807C8F60  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807C8F64  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807C8F68  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807C8F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C8F70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C8F74  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C8F78  38 80 00 02 */	li r4, 2
/* 807C8F7C  38 A0 00 1F */	li r5, 0x1f
/* 807C8F80  38 C1 00 3C */	addi r6, r1, 0x3c
/* 807C8F84  4B 8A 6B 8C */	b StartQuake__12dVibration_cFii4cXyz
/* 807C8F88  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 807C8F8C  D0 1D 14 B0 */	stfs f0, 0x14b0(r29)
/* 807C8F90  48 00 01 B4 */	b lbl_807C9144
lbl_807C8F94:
/* 807C8F94  38 7D 14 B0 */	addi r3, r29, 0x14b0
/* 807C8F98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C8F9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C8FA0  C0 7F 01 94 */	lfs f3, 0x194(r31)
/* 807C8FA4  4B AA 6A 98 */	b cLib_addCalc2__FPffff
/* 807C8FA8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 807C8FAC  D0 1D 14 88 */	stfs f0, 0x1488(r29)
/* 807C8FB0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 807C8FB4  D0 1D 14 8C */	stfs f0, 0x148c(r29)
/* 807C8FB8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 807C8FBC  D0 1D 14 90 */	stfs f0, 0x1490(r29)
/* 807C8FC0  38 7D 14 A0 */	addi r3, r29, 0x14a0
/* 807C8FC4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 807C8FC8  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 807C8FCC  4B AA 77 74 */	b cLib_chaseF__FPfff
/* 807C8FD0  C0 1D 14 88 */	lfs f0, 0x1488(r29)
/* 807C8FD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C8FD8  C0 1D 14 8C */	lfs f0, 0x148c(r29)
/* 807C8FDC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C8FE0  C0 1D 14 90 */	lfs f0, 0x1490(r29)
/* 807C8FE4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C8FE8  C0 1D 14 94 */	lfs f0, 0x1494(r29)
/* 807C8FEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C8FF0  C0 1D 14 98 */	lfs f0, 0x1498(r29)
/* 807C8FF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C8FF8  C0 1D 14 9C */	lfs f0, 0x149c(r29)
/* 807C8FFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C9000  7F C3 F3 78 */	mr r3, r30
/* 807C9004  38 81 00 30 */	addi r4, r1, 0x30
/* 807C9008  38 A1 00 24 */	addi r5, r1, 0x24
/* 807C900C  C0 3D 14 A0 */	lfs f1, 0x14a0(r29)
/* 807C9010  38 C0 00 00 */	li r6, 0
/* 807C9014  4B 9B 7A CC */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 807C9018  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C901C  38 63 00 0C */	addi r3, r3, 0xc
/* 807C9020  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 807C9024  4B B5 F4 08 */	b checkPass__12J3DFrameCtrlFf
/* 807C9028  2C 03 00 00 */	cmpwi r3, 0
/* 807C902C  41 82 00 18 */	beq lbl_807C9044
/* 807C9030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C9034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C9038  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807C903C  38 80 00 1F */	li r4, 0x1f
/* 807C9040  4B 8A 6D 54 */	b StopQuake__12dVibration_cFi
lbl_807C9044:
/* 807C9044  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807C9048  38 80 00 01 */	li r4, 1
/* 807C904C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C9050  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C9054  40 82 00 18 */	bne lbl_807C906C
/* 807C9058  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C905C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C9060  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C9064  41 82 00 08 */	beq lbl_807C906C
/* 807C9068  38 80 00 00 */	li r4, 0
lbl_807C906C:
/* 807C906C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C9070  41 82 00 D4 */	beq lbl_807C9144
/* 807C9074  C0 1D 14 88 */	lfs f0, 0x1488(r29)
/* 807C9078  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807C907C  C0 1D 14 8C */	lfs f0, 0x148c(r29)
/* 807C9080  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C9084  C0 1D 14 90 */	lfs f0, 0x1490(r29)
/* 807C9088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807C908C  C0 1D 14 94 */	lfs f0, 0x1494(r29)
/* 807C9090  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807C9094  C0 1D 14 98 */	lfs f0, 0x1498(r29)
/* 807C9098  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807C909C  C0 1D 14 9C */	lfs f0, 0x149c(r29)
/* 807C90A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807C90A4  7F C3 F3 78 */	mr r3, r30
/* 807C90A8  38 81 00 18 */	addi r4, r1, 0x18
/* 807C90AC  38 A1 00 0C */	addi r5, r1, 0xc
/* 807C90B0  4B 9B 7B 68 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 807C90B4  7F C3 F3 78 */	mr r3, r30
/* 807C90B8  4B 99 83 F4 */	b Start__9dCamera_cFv
/* 807C90BC  7F C3 F3 78 */	mr r3, r30
/* 807C90C0  38 80 00 00 */	li r4, 0
/* 807C90C4  4B 99 9F 48 */	b SetTrimSize__9dCamera_cFl
/* 807C90C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C90CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C90D0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 807C90D4  4B 87 93 94 */	b reset__14dEvt_control_cFv
/* 807C90D8  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C90DC  38 63 F4 C4 */	addi r3, r3, l_HIO@l
/* 807C90E0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C90E4  FC 00 00 1E */	fctiwz f0, f0
/* 807C90E8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 807C90EC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 807C90F0  90 1D 13 4C */	stw r0, 0x134c(r29)
/* 807C90F4  38 00 00 04 */	li r0, 4
/* 807C90F8  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807C90FC  7F A3 EB 78 */	mr r3, r29
/* 807C9100  38 80 00 24 */	li r4, 0x24
/* 807C9104  38 A0 00 02 */	li r5, 2
/* 807C9108  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807C910C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C9110  4B FF A7 09 */	bl setBck__8daE_VA_cFiUcff
/* 807C9114  38 00 00 0F */	li r0, 0xf
/* 807C9118  90 1D 13 20 */	stw r0, 0x1320(r29)
/* 807C911C  38 00 00 1E */	li r0, 0x1e
/* 807C9120  90 1D 13 40 */	stw r0, 0x1340(r29)
/* 807C9124  48 00 00 20 */	b lbl_807C9144
lbl_807C9128:
/* 807C9128  80 1D 13 40 */	lwz r0, 0x1340(r29)
/* 807C912C  2C 00 00 00 */	cmpwi r0, 0
/* 807C9130  40 82 00 14 */	bne lbl_807C9144
/* 807C9134  7F A3 EB 78 */	mr r3, r29
/* 807C9138  38 80 00 0C */	li r4, 0xc
/* 807C913C  38 A0 00 00 */	li r5, 0
/* 807C9140  4B FF A7 D9 */	bl setActionMode__8daE_VA_cFii
lbl_807C9144:
/* 807C9144  39 61 00 90 */	addi r11, r1, 0x90
/* 807C9148  4B B9 90 DC */	b _restgpr_28
/* 807C914C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807C9150  7C 08 03 A6 */	mtlr r0
/* 807C9154  38 21 00 90 */	addi r1, r1, 0x90
/* 807C9158  4E 80 00 20 */	blr 
