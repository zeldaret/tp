lbl_80629D20:
/* 80629D20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80629D24  7C 08 02 A6 */	mflr r0
/* 80629D28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80629D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80629D30  4B D3 84 A8 */	b _savegpr_28
/* 80629D34  7C 7E 1B 78 */	mr r30, r3
/* 80629D38  3C 80 80 63 */	lis r4, lit_3920@ha
/* 80629D3C  3B E4 E6 34 */	addi r31, r4, lit_3920@l
/* 80629D40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80629D44  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80629D48  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80629D4C  4B 9F 09 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80629D50  7C 7C 1B 78 */	mr r28, r3
/* 80629D54  7F C3 F3 78 */	mr r3, r30
/* 80629D58  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80629D5C  4B 9F 0A 84 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80629D60  80 1E 06 F4 */	lwz r0, 0x6f4(r30)
/* 80629D64  2C 00 00 01 */	cmpwi r0, 1
/* 80629D68  41 82 00 C4 */	beq lbl_80629E2C
/* 80629D6C  40 80 00 10 */	bge lbl_80629D7C
/* 80629D70  2C 00 00 00 */	cmpwi r0, 0
/* 80629D74  40 80 00 14 */	bge lbl_80629D88
/* 80629D78  48 00 02 20 */	b lbl_80629F98
lbl_80629D7C:
/* 80629D7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80629D80  41 82 00 08 */	beq lbl_80629D88
/* 80629D84  48 00 02 14 */	b lbl_80629F98
lbl_80629D88:
/* 80629D88  98 1E 0A 9B */	stb r0, 0xa9b(r30)
/* 80629D8C  48 00 48 7D */	bl checkNowWolf__9daPy_py_cFv
/* 80629D90  28 03 00 00 */	cmplwi r3, 0
/* 80629D94  41 82 00 24 */	beq lbl_80629DB8
/* 80629D98  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80629D9C  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80629DA0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80629DA4  FC 00 00 1E */	fctiwz f0, f0
/* 80629DA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80629DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629DB0  90 1E 0A 70 */	stw r0, 0xa70(r30)
/* 80629DB4  48 00 00 4C */	b lbl_80629E00
lbl_80629DB8:
/* 80629DB8  88 1E 0A A5 */	lbz r0, 0xaa5(r30)
/* 80629DBC  28 00 00 00 */	cmplwi r0, 0
/* 80629DC0  40 82 00 24 */	bne lbl_80629DE4
/* 80629DC4  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80629DC8  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80629DCC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80629DD0  FC 00 00 1E */	fctiwz f0, f0
/* 80629DD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80629DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629DDC  90 1E 0A 70 */	stw r0, 0xa70(r30)
/* 80629DE0  48 00 00 20 */	b lbl_80629E00
lbl_80629DE4:
/* 80629DE4  3C 60 80 63 */	lis r3, l_HIO@ha
/* 80629DE8  38 63 F0 2C */	addi r3, r3, l_HIO@l
/* 80629DEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80629DF0  FC 00 00 1E */	fctiwz f0, f0
/* 80629DF4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80629DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629DFC  90 1E 0A 70 */	stw r0, 0xa70(r30)
lbl_80629E00:
/* 80629E00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80629E04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80629E08  7F C3 F3 78 */	mr r3, r30
/* 80629E0C  38 80 00 16 */	li r4, 0x16
/* 80629E10  38 A0 00 00 */	li r5, 0
/* 80629E14  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80629E18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80629E1C  4B FF 6A AD */	bl setBck__8daB_TN_cFiUcff
/* 80629E20  38 00 00 01 */	li r0, 1
/* 80629E24  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 80629E28  48 00 01 70 */	b lbl_80629F98
lbl_80629E2C:
/* 80629E2C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629E30  38 63 00 0C */	addi r3, r3, 0xc
/* 80629E34  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80629E38  4B CF E5 F4 */	b checkPass__12J3DFrameCtrlFf
/* 80629E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80629E40  41 82 00 2C */	beq lbl_80629E6C
/* 80629E44  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A0@ha */
/* 80629E48  38 03 03 A0 */	addi r0, r3, 0x03A0 /* 0x000703A0@l */
/* 80629E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80629E50  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80629E54  38 81 00 0C */	addi r4, r1, 0xc
/* 80629E58  38 A0 FF FF */	li r5, -1
/* 80629E5C  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80629E60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80629E64  7D 89 03 A6 */	mtctr r12
/* 80629E68  4E 80 04 21 */	bctrl 
lbl_80629E6C:
/* 80629E6C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629E70  38 63 00 0C */	addi r3, r3, 0xc
/* 80629E74  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80629E78  4B CF E5 B4 */	b checkPass__12J3DFrameCtrlFf
/* 80629E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80629E80  41 82 00 30 */	beq lbl_80629EB0
/* 80629E84  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80629E88  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80629E8C  90 01 00 08 */	stw r0, 8(r1)
/* 80629E90  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80629E94  38 81 00 08 */	addi r4, r1, 8
/* 80629E98  38 A0 00 00 */	li r5, 0
/* 80629E9C  38 C0 FF FF */	li r6, -1
/* 80629EA0  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80629EA4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80629EA8  7D 89 03 A6 */	mtctr r12
/* 80629EAC  4E 80 04 21 */	bctrl 
lbl_80629EB0:
/* 80629EB0  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629EB4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80629EB8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80629EBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80629EC0  40 80 00 1C */	bge lbl_80629EDC
/* 80629EC4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80629EC8  7F 84 E3 78 */	mr r4, r28
/* 80629ECC  38 A0 00 04 */	li r5, 4
/* 80629ED0  38 C0 08 00 */	li r6, 0x800
/* 80629ED4  38 E0 00 10 */	li r7, 0x10
/* 80629ED8  4B C4 66 68 */	b cLib_addCalcAngleS__FPsssss
lbl_80629EDC:
/* 80629EDC  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629EE0  38 63 00 0C */	addi r3, r3, 0xc
/* 80629EE4  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80629EE8  4B CF E5 44 */	b checkPass__12J3DFrameCtrlFf
/* 80629EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80629EF0  41 82 00 10 */	beq lbl_80629F00
/* 80629EF4  80 1E 36 18 */	lwz r0, 0x3618(r30)
/* 80629EF8  60 00 00 01 */	ori r0, r0, 1
/* 80629EFC  90 1E 36 18 */	stw r0, 0x3618(r30)
lbl_80629F00:
/* 80629F00  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629F04  38 63 00 0C */	addi r3, r3, 0xc
/* 80629F08  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 80629F0C  4B CF E5 20 */	b checkPass__12J3DFrameCtrlFf
/* 80629F10  2C 03 00 00 */	cmpwi r3, 0
/* 80629F14  41 82 00 10 */	beq lbl_80629F24
/* 80629F18  80 1E 36 18 */	lwz r0, 0x3618(r30)
/* 80629F1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80629F20  90 1E 36 18 */	stw r0, 0x3618(r30)
lbl_80629F24:
/* 80629F24  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80629F28  38 80 00 01 */	li r4, 1
/* 80629F2C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80629F30  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80629F34  40 82 00 18 */	bne lbl_80629F4C
/* 80629F38  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80629F3C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80629F40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80629F44  41 82 00 08 */	beq lbl_80629F4C
/* 80629F48  38 80 00 00 */	li r4, 0
lbl_80629F4C:
/* 80629F4C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80629F50  41 82 00 48 */	beq lbl_80629F98
/* 80629F54  7F C3 F3 78 */	mr r3, r30
/* 80629F58  4B FF DD 65 */	bl checkAttackAble__8daB_TN_cFv
/* 80629F5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80629F60  41 82 00 28 */	beq lbl_80629F88
/* 80629F64  7F C3 F3 78 */	mr r3, r30
/* 80629F68  4B FF 6F 29 */	bl checkNormalAttackAble__8daB_TN_cFv
/* 80629F6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80629F70  41 82 00 18 */	beq lbl_80629F88
/* 80629F74  7F C3 F3 78 */	mr r3, r30
/* 80629F78  38 80 00 0A */	li r4, 0xa
/* 80629F7C  38 A0 00 14 */	li r5, 0x14
/* 80629F80  4B FF 6A 49 */	bl setActionMode__8daB_TN_cFii
/* 80629F84  48 00 00 14 */	b lbl_80629F98
lbl_80629F88:
/* 80629F88  7F C3 F3 78 */	mr r3, r30
/* 80629F8C  38 80 00 09 */	li r4, 9
/* 80629F90  38 A0 00 00 */	li r5, 0
/* 80629F94  4B FF 6A 35 */	bl setActionMode__8daB_TN_cFii
lbl_80629F98:
/* 80629F98  39 61 00 30 */	addi r11, r1, 0x30
/* 80629F9C  4B D3 82 88 */	b _restgpr_28
/* 80629FA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80629FA4  7C 08 03 A6 */	mtlr r0
/* 80629FA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80629FAC  4E 80 00 20 */	blr 
