lbl_801A1D64:
/* 801A1D64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801A1D68  7C 08 02 A6 */	mflr r0
/* 801A1D6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A1D70  39 61 00 50 */	addi r11, r1, 0x50
/* 801A1D74  48 1C 04 5D */	bl _savegpr_26
/* 801A1D78  7C 7A 1B 78 */	mr r26, r3
/* 801A1D7C  7C BB 2B 78 */	mr r27, r5
/* 801A1D80  7C DC 33 78 */	mr r28, r6
/* 801A1D84  7C FD 3B 78 */	mr r29, r7
/* 801A1D88  7D 1E 43 78 */	mr r30, r8
/* 801A1D8C  7D 3F 4B 78 */	mr r31, r9
/* 801A1D90  88 05 03 81 */	lbz r0, 0x381(r5)
/* 801A1D94  28 00 00 FF */	cmplwi r0, 0xff
/* 801A1D98  41 82 00 50 */	beq lbl_801A1DE8
/* 801A1D9C  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A1DA0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A1DA4  3C 00 43 30 */	lis r0, 0x4330
/* 801A1DA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 801A1DAC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A1DB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A1DB4  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A1DB8  EC 21 00 24 */	fdivs f1, f1, f0
/* 801A1DBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1DC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1DC4  A8 03 12 C0 */	lha r0, 0x12c0(r3)
/* 801A1DC8  2C 00 00 64 */	cmpwi r0, 0x64
/* 801A1DCC  40 82 00 64 */	bne lbl_801A1E30
/* 801A1DD0  38 7B 03 74 */	addi r3, r27, 0x374
/* 801A1DD4  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A1DD8  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A1DDC  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A1DE0  48 0C DB 9D */	bl cLib_addCalc__FPfffff
/* 801A1DE4  48 00 00 4C */	b lbl_801A1E30
lbl_801A1DE8:
/* 801A1DE8  88 7B 03 80 */	lbz r3, 0x380(r27)
/* 801A1DEC  7C 60 07 75 */	extsb. r0, r3
/* 801A1DF0  41 80 00 38 */	blt lbl_801A1E28
/* 801A1DF4  98 7B 03 7C */	stb r3, 0x37c(r27)
/* 801A1DF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1DFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1E00  A8 03 12 C0 */	lha r0, 0x12c0(r3)
/* 801A1E04  2C 00 00 64 */	cmpwi r0, 0x64
/* 801A1E08  40 82 00 28 */	bne lbl_801A1E30
/* 801A1E0C  38 7B 03 74 */	addi r3, r27, 0x374
/* 801A1E10  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A1E14  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A1E18  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A1E1C  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A1E20  48 0C DB 5D */	bl cLib_addCalc__FPfffff
/* 801A1E24  48 00 00 0C */	b lbl_801A1E30
lbl_801A1E28:
/* 801A1E28  38 00 00 00 */	li r0, 0
/* 801A1E2C  98 1B 03 7C */	stb r0, 0x37c(r27)
lbl_801A1E30:
/* 801A1E30  88 1B 03 7A */	lbz r0, 0x37a(r27)
/* 801A1E34  28 00 00 01 */	cmplwi r0, 1
/* 801A1E38  41 80 00 0C */	blt lbl_801A1E44
/* 801A1E3C  28 00 00 07 */	cmplwi r0, 7
/* 801A1E40  40 81 00 18 */	ble lbl_801A1E58
lbl_801A1E44:
/* 801A1E44  28 00 00 09 */	cmplwi r0, 9
/* 801A1E48  40 82 00 38 */	bne lbl_801A1E80
/* 801A1E4C  48 00 A7 31 */	bl dKy_darkworld_check__Fv
/* 801A1E50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1E54  41 82 00 2C */	beq lbl_801A1E80
lbl_801A1E58:
/* 801A1E58  88 1B 03 7A */	lbz r0, 0x37a(r27)
/* 801A1E5C  28 00 00 02 */	cmplwi r0, 2
/* 801A1E60  41 82 00 0C */	beq lbl_801A1E6C
/* 801A1E64  28 00 00 03 */	cmplwi r0, 3
/* 801A1E68  40 82 00 10 */	bne lbl_801A1E78
lbl_801A1E6C:
/* 801A1E6C  48 00 A7 11 */	bl dKy_darkworld_check__Fv
/* 801A1E70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A1E74  41 82 00 0C */	beq lbl_801A1E80
lbl_801A1E78:
/* 801A1E78  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A1E7C  D0 1B 03 74 */	stfs f0, 0x374(r27)
lbl_801A1E80:
/* 801A1E80  88 7B 03 7D */	lbz r3, 0x37d(r27)
/* 801A1E84  88 1B 03 7C */	lbz r0, 0x37c(r27)
/* 801A1E88  7C 03 00 40 */	cmplw r3, r0
/* 801A1E8C  41 82 00 30 */	beq lbl_801A1EBC
/* 801A1E90  C0 3B 03 70 */	lfs f1, 0x370(r27)
/* 801A1E94  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A1E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A1E9C  4C 41 13 82 */	cror 2, 1, 2
/* 801A1EA0  41 82 00 14 */	beq lbl_801A1EB4
/* 801A1EA4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A1EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A1EAC  4C 40 13 82 */	cror 2, 0, 2
/* 801A1EB0  40 82 00 0C */	bne lbl_801A1EBC
lbl_801A1EB4:
/* 801A1EB4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A1EB8  D0 1B 03 70 */	stfs f0, 0x370(r27)
lbl_801A1EBC:
/* 801A1EBC  88 1B 03 7A */	lbz r0, 0x37a(r27)
/* 801A1EC0  28 00 00 08 */	cmplwi r0, 8
/* 801A1EC4  41 82 00 40 */	beq lbl_801A1F04
/* 801A1EC8  7F 43 D3 78 */	mr r3, r26
/* 801A1ECC  7F 64 DB 78 */	mr r4, r27
/* 801A1ED0  7F A5 EB 78 */	mr r5, r29
/* 801A1ED4  7F C6 F3 78 */	mr r6, r30
/* 801A1ED8  7F E7 FB 78 */	mr r7, r31
/* 801A1EDC  4B FF F7 E5 */	bl setLight_actor__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10PfPf
/* 801A1EE0  A8 1B 03 48 */	lha r0, 0x348(r27)
/* 801A1EE4  B0 1C 00 00 */	sth r0, 0(r28)
/* 801A1EE8  A8 1B 03 4A */	lha r0, 0x34a(r27)
/* 801A1EEC  B0 1C 00 02 */	sth r0, 2(r28)
/* 801A1EF0  A8 1B 03 4C */	lha r0, 0x34c(r27)
/* 801A1EF4  B0 1C 00 04 */	sth r0, 4(r28)
/* 801A1EF8  A8 1B 03 4E */	lha r0, 0x34e(r27)
/* 801A1EFC  B0 1C 00 06 */	sth r0, 6(r28)
/* 801A1F00  48 00 00 40 */	b lbl_801A1F40
lbl_801A1F04:
/* 801A1F04  7F 43 D3 78 */	mr r3, r26
/* 801A1F08  7F 64 DB 78 */	mr r4, r27
/* 801A1F0C  38 A1 00 08 */	addi r5, r1, 8
/* 801A1F10  7F A6 EB 78 */	mr r6, r29
/* 801A1F14  7F C7 F3 78 */	mr r7, r30
/* 801A1F18  7F E8 FB 78 */	mr r8, r31
/* 801A1F1C  4B FF F4 21 */	bl setLight_bg__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
/* 801A1F20  A8 01 00 08 */	lha r0, 8(r1)
/* 801A1F24  B0 1C 00 00 */	sth r0, 0(r28)
/* 801A1F28  A8 01 00 0A */	lha r0, 0xa(r1)
/* 801A1F2C  B0 1C 00 02 */	sth r0, 2(r28)
/* 801A1F30  A8 01 00 0C */	lha r0, 0xc(r1)
/* 801A1F34  B0 1C 00 04 */	sth r0, 4(r28)
/* 801A1F38  A8 01 00 0E */	lha r0, 0xe(r1)
/* 801A1F3C  B0 1C 00 06 */	sth r0, 6(r28)
lbl_801A1F40:
/* 801A1F40  39 61 00 50 */	addi r11, r1, 0x50
/* 801A1F44  48 1C 02 D9 */	bl _restgpr_26
/* 801A1F48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A1F4C  7C 08 03 A6 */	mtlr r0
/* 801A1F50  38 21 00 50 */	addi r1, r1, 0x50
/* 801A1F54  4E 80 00 20 */	blr 
