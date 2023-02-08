lbl_80BB1BD0:
/* 80BB1BD0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80BB1BD4  7C 08 02 A6 */	mflr r0
/* 80BB1BD8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80BB1BDC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80BB1BE0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80BB1BE4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BB1BE8  4B 7B 05 E1 */	bl _savegpr_24
/* 80BB1BEC  7C 7F 1B 78 */	mr r31, r3
/* 80BB1BF0  3C 80 80 BB */	lis r4, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BB1BF4  3B C4 37 B8 */	addi r30, r4, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BB1BF8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB1BFC  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB1C00  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 80BB1C04  4B 46 8D 61 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB1C08  FF E0 08 90 */	fmr f31, f1
/* 80BB1C0C  7F E3 FB 78 */	mr r3, r31
/* 80BB1C10  4B FF E6 A9 */	bl getBeamSearchDistance__9daObjBm_cFv
/* 80BB1C14  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80BB1C18  40 81 00 10 */	ble lbl_80BB1C28
/* 80BB1C1C  7F E3 FB 78 */	mr r3, r31
/* 80BB1C20  4B FF E6 99 */	bl getBeamSearchDistance__9daObjBm_cFv
/* 80BB1C24  FF E0 08 90 */	fmr f31, f1
lbl_80BB1C28:
/* 80BB1C28  3B 00 00 01 */	li r24, 1
/* 80BB1C2C  7F E3 FB 78 */	mr r3, r31
/* 80BB1C30  4B FF E4 D5 */	bl checkSearchPlayer__9daObjBm_cFv
/* 80BB1C34  7C 60 07 74 */	extsb r0, r3
/* 80BB1C38  2C 00 FF FF */	cmpwi r0, -1
/* 80BB1C3C  40 82 00 14 */	bne lbl_80BB1C50
/* 80BB1C40  38 7F 0F E5 */	addi r3, r31, 0xfe5
/* 80BB1C44  48 00 18 69 */	bl func_80BB34AC
/* 80BB1C48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB1C4C  41 82 00 10 */	beq lbl_80BB1C5C
lbl_80BB1C50:
/* 80BB1C50  88 1F 0F E8 */	lbz r0, 0xfe8(r31)
/* 80BB1C54  28 00 00 00 */	cmplwi r0, 0
/* 80BB1C58  41 82 00 08 */	beq lbl_80BB1C60
lbl_80BB1C5C:
/* 80BB1C5C  3B 00 00 00 */	li r24, 0
lbl_80BB1C60:
/* 80BB1C60  88 1F 0F EA */	lbz r0, 0xfea(r31)
/* 80BB1C64  2C 00 00 02 */	cmpwi r0, 2
/* 80BB1C68  41 82 00 A0 */	beq lbl_80BB1D08
/* 80BB1C6C  40 80 00 14 */	bge lbl_80BB1C80
/* 80BB1C70  2C 00 00 00 */	cmpwi r0, 0
/* 80BB1C74  41 82 00 1C */	beq lbl_80BB1C90
/* 80BB1C78  40 80 00 34 */	bge lbl_80BB1CAC
/* 80BB1C7C  48 00 02 E4 */	b lbl_80BB1F60
lbl_80BB1C80:
/* 80BB1C80  2C 00 00 04 */	cmpwi r0, 4
/* 80BB1C84  41 82 02 04 */	beq lbl_80BB1E88
/* 80BB1C88  40 80 02 D8 */	bge lbl_80BB1F60
/* 80BB1C8C  48 00 00 C0 */	b lbl_80BB1D4C
lbl_80BB1C90:
/* 80BB1C90  38 7F 0F E6 */	addi r3, r31, 0xfe6
/* 80BB1C94  48 00 18 19 */	bl func_80BB34AC
/* 80BB1C98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB1C9C  40 82 02 C4 */	bne lbl_80BB1F60
/* 80BB1CA0  38 00 00 02 */	li r0, 2
/* 80BB1CA4  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1CA8  48 00 02 B8 */	b lbl_80BB1F60
lbl_80BB1CAC:
/* 80BB1CAC  38 00 00 C8 */	li r0, 0xc8
/* 80BB1CB0  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB1CB4  7F E3 FB 78 */	mr r3, r31
/* 80BB1CB8  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 80BB1CBC  4B 46 8A 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB1CC0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BB1CC4  7C 00 18 50 */	subf r0, r0, r3
/* 80BB1CC8  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB1CCC  38 7F 10 04 */	addi r3, r31, 0x1004
/* 80BB1CD0  FC 20 F8 90 */	fmr f1, f31
/* 80BB1CD4  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80BB1CD8  4B 6B EA 69 */	bl cLib_chaseF__FPfff
/* 80BB1CDC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80BB1CE0  40 82 00 0C */	bne lbl_80BB1CEC
/* 80BB1CE4  38 00 00 03 */	li r0, 3
/* 80BB1CE8  98 1F 0F EA */	stb r0, 0xfea(r31)
lbl_80BB1CEC:
/* 80BB1CEC  38 7F 0F EC */	addi r3, r31, 0xfec
/* 80BB1CF0  48 00 17 BD */	bl func_80BB34AC
/* 80BB1CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB1CF8  40 82 02 68 */	bne lbl_80BB1F60
/* 80BB1CFC  38 00 00 02 */	li r0, 2
/* 80BB1D00  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1D04  48 00 02 5C */	b lbl_80BB1F60
lbl_80BB1D08:
/* 80BB1D08  38 00 01 C2 */	li r0, 0x1c2
/* 80BB1D0C  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB1D10  7F E3 FB 78 */	mr r3, r31
/* 80BB1D14  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 80BB1D18  4B 46 89 F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB1D1C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BB1D20  7C 00 18 50 */	subf r0, r0, r3
/* 80BB1D24  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB1D28  38 7F 10 04 */	addi r3, r31, 0x1004
/* 80BB1D2C  FC 20 F8 90 */	fmr f1, f31
/* 80BB1D30  C0 5E 02 80 */	lfs f2, 0x280(r30)
/* 80BB1D34  4B 6B EA 0D */	bl cLib_chaseF__FPfff
/* 80BB1D38  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80BB1D3C  40 82 02 24 */	bne lbl_80BB1F60
/* 80BB1D40  38 00 00 03 */	li r0, 3
/* 80BB1D44  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1D48  48 00 02 18 */	b lbl_80BB1F60
lbl_80BB1D4C:
/* 80BB1D4C  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB1D50  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB1D54  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB1D58  38 80 00 1A */	li r4, 0x1a
/* 80BB1D5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB1D60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB1D64  3F 25 00 02 */	addis r25, r5, 2
/* 80BB1D68  3B 39 C2 F8 */	addi r25, r25, -15624
/* 80BB1D6C  7F 25 CB 78 */	mr r5, r25
/* 80BB1D70  38 C0 00 80 */	li r6, 0x80
/* 80BB1D74  4B 48 A5 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1D78  7C 65 1B 78 */	mr r5, r3
/* 80BB1D7C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BB1D80  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB1D84  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80BB1D88  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB1D8C  38 C0 00 01 */	li r6, 1
/* 80BB1D90  38 E0 00 00 */	li r7, 0
/* 80BB1D94  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB1D98  39 00 00 00 */	li r8, 0
/* 80BB1D9C  39 20 FF FF */	li r9, -1
/* 80BB1DA0  4B 45 B8 9D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BB1DA4  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB1DA8  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB1DAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB1DB0  38 80 00 14 */	li r4, 0x14
/* 80BB1DB4  7F 25 CB 78 */	mr r5, r25
/* 80BB1DB8  38 C0 00 80 */	li r6, 0x80
/* 80BB1DBC  4B 48 A5 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1DC0  7C 65 1B 78 */	mr r5, r3
/* 80BB1DC4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB1DC8  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB1DCC  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB1DD0  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB1DD4  38 C0 00 01 */	li r6, 1
/* 80BB1DD8  38 E0 00 02 */	li r7, 2
/* 80BB1DDC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB1DE0  39 00 00 00 */	li r8, 0
/* 80BB1DE4  39 20 FF FF */	li r9, -1
/* 80BB1DE8  4B 45 B9 25 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BB1DEC  38 00 00 14 */	li r0, 0x14
/* 80BB1DF0  98 1F 10 38 */	stb r0, 0x1038(r31)
/* 80BB1DF4  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB1DF8  28 03 00 00 */	cmplwi r3, 0
/* 80BB1DFC  41 82 00 30 */	beq lbl_80BB1E2C
/* 80BB1E00  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB1E04  60 00 00 01 */	ori r0, r0, 1
/* 80BB1E08  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB1E0C  38 00 00 01 */	li r0, 1
/* 80BB1E10  90 03 00 24 */	stw r0, 0x24(r3)
/* 80BB1E14  80 7F 10 34 */	lwz r3, 0x1034(r31)
/* 80BB1E18  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80BB1E1C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB1E20  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80BB1E24  38 00 00 00 */	li r0, 0
/* 80BB1E28  90 1F 10 34 */	stw r0, 0x1034(r31)
lbl_80BB1E2C:
/* 80BB1E2C  38 60 00 00 */	li r3, 0
/* 80BB1E30  38 C0 00 01 */	li r6, 1
/* 80BB1E34  7C 64 1B 78 */	mr r4, r3
/* 80BB1E38  38 00 00 02 */	li r0, 2
/* 80BB1E3C  7C 09 03 A6 */	mtctr r0
lbl_80BB1E40:
/* 80BB1E40  38 E3 10 18 */	addi r7, r3, 0x1018
/* 80BB1E44  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1E48  28 05 00 00 */	cmplwi r5, 0
/* 80BB1E4C  41 82 00 28 */	beq lbl_80BB1E74
/* 80BB1E50  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1E54  60 00 00 01 */	ori r0, r0, 1
/* 80BB1E58  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1E5C  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB1E60  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1E64  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1E68  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB1E6C  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1E70  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB1E74:
/* 80BB1E74  38 63 00 04 */	addi r3, r3, 4
/* 80BB1E78  42 00 FF C8 */	bdnz lbl_80BB1E40
/* 80BB1E7C  38 00 00 04 */	li r0, 4
/* 80BB1E80  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1E84  48 00 00 DC */	b lbl_80BB1F60
lbl_80BB1E88:
/* 80BB1E88  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80BB1E8C  38 80 00 01 */	li r4, 1
/* 80BB1E90  88 03 00 05 */	lbz r0, 5(r3)
/* 80BB1E94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BB1E98  40 82 00 18 */	bne lbl_80BB1EB0
/* 80BB1E9C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB1EA0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB1EA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB1EA8  41 82 00 08 */	beq lbl_80BB1EB0
/* 80BB1EAC  38 80 00 00 */	li r4, 0
lbl_80BB1EB0:
/* 80BB1EB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BB1EB4  41 82 00 AC */	beq lbl_80BB1F60
/* 80BB1EB8  38 60 00 00 */	li r3, 0
/* 80BB1EBC  38 C0 00 01 */	li r6, 1
/* 80BB1EC0  38 80 00 00 */	li r4, 0
/* 80BB1EC4  38 00 00 02 */	li r0, 2
/* 80BB1EC8  7C 09 03 A6 */	mtctr r0
lbl_80BB1ECC:
/* 80BB1ECC  38 E3 10 10 */	addi r7, r3, 0x1010
/* 80BB1ED0  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1ED4  28 05 00 00 */	cmplwi r5, 0
/* 80BB1ED8  41 82 00 28 */	beq lbl_80BB1F00
/* 80BB1EDC  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1EE0  60 00 00 01 */	ori r0, r0, 1
/* 80BB1EE4  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1EE8  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB1EEC  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1EF0  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1EF4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB1EF8  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1EFC  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB1F00:
/* 80BB1F00  38 63 00 04 */	addi r3, r3, 4
/* 80BB1F04  42 00 FF C8 */	bdnz lbl_80BB1ECC
/* 80BB1F08  38 60 00 00 */	li r3, 0
/* 80BB1F0C  38 C0 00 01 */	li r6, 1
/* 80BB1F10  38 80 00 00 */	li r4, 0
/* 80BB1F14  38 00 00 03 */	li r0, 3
/* 80BB1F18  7C 09 03 A6 */	mtctr r0
lbl_80BB1F1C:
/* 80BB1F1C  38 E3 10 20 */	addi r7, r3, 0x1020
/* 80BB1F20  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1F24  28 05 00 00 */	cmplwi r5, 0
/* 80BB1F28  41 82 00 28 */	beq lbl_80BB1F50
/* 80BB1F2C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1F30  60 00 00 01 */	ori r0, r0, 1
/* 80BB1F34  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1F38  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80BB1F3C  7C BF 38 2E */	lwzx r5, r31, r7
/* 80BB1F40  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80BB1F44  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80BB1F48  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80BB1F4C  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80BB1F50:
/* 80BB1F50  38 63 00 04 */	addi r3, r3, 4
/* 80BB1F54  42 00 FF C8 */	bdnz lbl_80BB1F1C
/* 80BB1F58  7F E3 FB 78 */	mr r3, r31
/* 80BB1F5C  4B FF F5 6D */	bl initActionWarning__9daObjBm_cFv
lbl_80BB1F60:
/* 80BB1F60  3B 00 00 00 */	li r24, 0
/* 80BB1F64  3B 20 00 00 */	li r25, 0
/* 80BB1F68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB1F6C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BB1F70:
/* 80BB1F70  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BB1F74  38 80 00 00 */	li r4, 0
/* 80BB1F78  38 A0 00 00 */	li r5, 0
/* 80BB1F7C  38 C0 00 00 */	li r6, 0
/* 80BB1F80  4B 6B 54 75 */	bl __ct__5csXyzFsss
/* 80BB1F84  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80BB1F88  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB1F8C  7C 03 02 14 */	add r0, r3, r0
/* 80BB1F90  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 80BB1F94  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80BB1F98  4B 45 AD CD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BB1F9C  7F 43 D3 78 */	mr r3, r26
/* 80BB1FA0  A8 81 00 2E */	lha r4, 0x2e(r1)
/* 80BB1FA4  4B 45 A4 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB1FA8  38 19 10 18 */	addi r0, r25, 0x1018
/* 80BB1FAC  7C BF 00 2E */	lwzx r5, r31, r0
/* 80BB1FB0  28 05 00 00 */	cmplwi r5, 0
/* 80BB1FB4  41 82 00 18 */	beq lbl_80BB1FCC
/* 80BB1FB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB1FBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB1FC0  38 85 00 68 */	addi r4, r5, 0x68
/* 80BB1FC4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BB1FC8  4B 6C E8 19 */	bl func_802807E0
lbl_80BB1FCC:
/* 80BB1FCC  3B 18 00 01 */	addi r24, r24, 1
/* 80BB1FD0  2C 18 00 02 */	cmpwi r24, 2
/* 80BB1FD4  3B 39 00 04 */	addi r25, r25, 4
/* 80BB1FD8  41 80 FF 98 */	blt lbl_80BB1F70
/* 80BB1FDC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80BB1FE0  D0 1F 10 54 */	stfs f0, 0x1054(r31)
/* 80BB1FE4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80BB1FE8  D0 1F 10 58 */	stfs f0, 0x1058(r31)
/* 80BB1FEC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80BB1FF0  D0 1F 10 5C */	stfs f0, 0x105c(r31)
/* 80BB1FF4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80BB1FF8  38 9F 0F CC */	addi r4, r31, 0xfcc
/* 80BB1FFC  38 BF 0F B8 */	addi r5, r31, 0xfb8
/* 80BB2000  4B 6B 4B 35 */	bl __mi__4cXyzCFRC3Vec
/* 80BB2004  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BB2008  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BB200C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80BB2010  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BB2014  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80BB2018  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BB201C  C0 1F 0F B8 */	lfs f0, 0xfb8(r31)
/* 80BB2020  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BB2024  C0 1F 0F BC */	lfs f0, 0xfbc(r31)
/* 80BB2028  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BB202C  C0 1F 0F C0 */	lfs f0, 0xfc0(r31)
/* 80BB2030  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BB2034  38 61 00 40 */	addi r3, r1, 0x40
/* 80BB2038  38 81 00 64 */	addi r4, r1, 0x64
/* 80BB203C  4B 6B 4F 0D */	bl normalizeZP__4cXyzFv
/* 80BB2040  38 61 00 34 */	addi r3, r1, 0x34
/* 80BB2044  38 81 00 64 */	addi r4, r1, 0x64
/* 80BB2048  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80BB204C  4B 6B 4B 39 */	bl __ml__4cXyzCFf
/* 80BB2050  38 61 00 58 */	addi r3, r1, 0x58
/* 80BB2054  38 81 00 34 */	addi r4, r1, 0x34
/* 80BB2058  7C 65 1B 78 */	mr r5, r3
/* 80BB205C  4B 79 50 35 */	bl PSVECAdd
/* 80BB2060  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80BB2064  38 81 00 58 */	addi r4, r1, 0x58
/* 80BB2068  7F E5 FB 78 */	mr r5, r31
/* 80BB206C  4B 46 BB FD */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BB2070  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2074  41 82 02 D0 */	beq lbl_80BB2344
/* 80BB2078  3C 60 80 BB */	lis r3, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BB207C  38 03 3E 40 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BB2080  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BB2084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB2088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB208C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80BB2090  7F 83 E3 78 */	mr r3, r28
/* 80BB2094  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BB2098  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BB209C  3B 04 00 14 */	addi r24, r4, 0x14
/* 80BB20A0  7F 04 C3 78 */	mr r4, r24
/* 80BB20A4  38 A1 00 84 */	addi r5, r1, 0x84
/* 80BB20A8  4B 4C 26 9D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BB20AC  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80BB20B0  4B 6B 61 35 */	bl cBgW_CheckBGround__Ff
/* 80BB20B4  3C 80 80 BB */	lis r4, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BB20B8  38 04 3E 40 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BB20BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BB20C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB20C4  41 82 02 80 */	beq lbl_80BB2344
/* 80BB20C8  88 1F 0F ED */	lbz r0, 0xfed(r31)
/* 80BB20CC  28 00 00 00 */	cmplwi r0, 0
/* 80BB20D0  40 82 01 1C */	bne lbl_80BB21EC
/* 80BB20D4  3B 60 00 00 */	li r27, 0
/* 80BB20D8  3B 40 00 00 */	li r26, 0
/* 80BB20DC  3B 20 00 00 */	li r25, 0
/* 80BB20E0  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BB20E4  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BB20E8  3B 83 00 30 */	addi r28, r3, 0x30
/* 80BB20EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB20F0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80BB20F4:
/* 80BB20F4  3B 19 10 10 */	addi r24, r25, 0x1010
/* 80BB20F8  7C 1F C0 2E */	lwzx r0, r31, r24
/* 80BB20FC  28 00 00 00 */	cmplwi r0, 0
/* 80BB2100  40 82 00 50 */	bne lbl_80BB2150
/* 80BB2104  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BB2108  38 80 00 00 */	li r4, 0
/* 80BB210C  90 81 00 08 */	stw r4, 8(r1)
/* 80BB2110  38 00 FF FF */	li r0, -1
/* 80BB2114  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB2118  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB211C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB2120  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB2124  38 80 00 00 */	li r4, 0
/* 80BB2128  38 BE 02 74 */	addi r5, r30, 0x274
/* 80BB212C  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80BB2130  7F 86 E3 78 */	mr r6, r28
/* 80BB2134  38 E0 00 00 */	li r7, 0
/* 80BB2138  39 00 00 00 */	li r8, 0
/* 80BB213C  39 20 00 00 */	li r9, 0
/* 80BB2140  39 40 00 FF */	li r10, 0xff
/* 80BB2144  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB2148  4B 49 A9 49 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB214C  7C 7F C1 2E */	stwx r3, r31, r24
lbl_80BB2150:
/* 80BB2150  3B 7B 00 01 */	addi r27, r27, 1
/* 80BB2154  2C 1B 00 02 */	cmpwi r27, 2
/* 80BB2158  3B 5A 00 02 */	addi r26, r26, 2
/* 80BB215C  3B 39 00 04 */	addi r25, r25, 4
/* 80BB2160  41 80 FF 94 */	blt lbl_80BB20F4
/* 80BB2164  3B 20 00 00 */	li r25, 0
/* 80BB2168  3B 60 00 00 */	li r27, 0
/* 80BB216C  3B 40 00 00 */	li r26, 0
lbl_80BB2170:
/* 80BB2170  3B 1A 10 20 */	addi r24, r26, 0x1020
/* 80BB2174  7C 1F C0 2E */	lwzx r0, r31, r24
/* 80BB2178  28 00 00 00 */	cmplwi r0, 0
/* 80BB217C  40 82 00 50 */	bne lbl_80BB21CC
/* 80BB2180  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BB2184  38 80 00 00 */	li r4, 0
/* 80BB2188  90 81 00 08 */	stw r4, 8(r1)
/* 80BB218C  38 00 FF FF */	li r0, -1
/* 80BB2190  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB2194  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB2198  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB219C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB21A0  38 80 00 00 */	li r4, 0
/* 80BB21A4  38 BE 02 78 */	addi r5, r30, 0x278
/* 80BB21A8  7C A5 DA 2E */	lhzx r5, r5, r27
/* 80BB21AC  7F 86 E3 78 */	mr r6, r28
/* 80BB21B0  38 E0 00 00 */	li r7, 0
/* 80BB21B4  39 00 00 00 */	li r8, 0
/* 80BB21B8  39 20 00 00 */	li r9, 0
/* 80BB21BC  39 40 00 FF */	li r10, 0xff
/* 80BB21C0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB21C4  4B 49 A8 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB21C8  7C 7F C1 2E */	stwx r3, r31, r24
lbl_80BB21CC:
/* 80BB21CC  3B 39 00 01 */	addi r25, r25, 1
/* 80BB21D0  2C 19 00 03 */	cmpwi r25, 3
/* 80BB21D4  3B 7B 00 02 */	addi r27, r27, 2
/* 80BB21D8  3B 5A 00 04 */	addi r26, r26, 4
/* 80BB21DC  41 80 FF 94 */	blt lbl_80BB2170
/* 80BB21E0  38 00 00 01 */	li r0, 1
/* 80BB21E4  98 1F 0F ED */	stb r0, 0xfed(r31)
/* 80BB21E8  48 00 01 5C */	b lbl_80BB2344
lbl_80BB21EC:
/* 80BB21EC  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BB21F0  3B A3 1C 48 */	addi r29, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BB21F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB21F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB21FC  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80BB2200  C0 5E 02 84 */	lfs f2, 0x284(r30)
/* 80BB2204  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80BB2208  EC 42 00 2A */	fadds f2, f2, f0
/* 80BB220C  C0 7D 00 38 */	lfs f3, 0x38(r29)
/* 80BB2210  4B 79 46 D9 */	bl PSMTXTrans
/* 80BB2214  3C 60 80 BB */	lis r3, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BB2218  38 03 3E 40 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BB221C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80BB2220  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BB2224  7F 83 E3 78 */	mr r3, r28
/* 80BB2228  7F 04 C3 78 */	mr r4, r24
/* 80BB222C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80BB2230  4B 4C 25 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BB2234  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80BB2238  4B 6B 5F AD */	bl cBgW_CheckBGround__Ff
/* 80BB223C  3C 80 80 BB */	lis r4, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BB2240  38 04 3E 40 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BB2244  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BB2248  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB224C  41 82 00 44 */	beq lbl_80BB2290
/* 80BB2250  7F 83 E3 78 */	mr r3, r28
/* 80BB2254  7F 04 C3 78 */	mr r4, r24
/* 80BB2258  38 A1 00 98 */	addi r5, r1, 0x98
/* 80BB225C  4B 4C 24 E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BB2260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2264  41 82 00 2C */	beq lbl_80BB2290
/* 80BB2268  38 61 00 98 */	addi r3, r1, 0x98
/* 80BB226C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BB2270  38 A1 00 28 */	addi r5, r1, 0x28
/* 80BB2274  4B 6B C2 89 */	bl cM3d_CalcVecAngle__FRC3VecPsPs
/* 80BB2278  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB227C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB2280  A8 81 00 24 */	lha r4, 0x24(r1)
/* 80BB2284  38 A0 00 00 */	li r5, 0
/* 80BB2288  A8 C1 00 28 */	lha r6, 0x28(r1)
/* 80BB228C  4B 45 9E D9 */	bl mDoMtx_XYZrotM__FPA4_fsss
lbl_80BB2290:
/* 80BB2290  3B 00 00 00 */	li r24, 0
/* 80BB2294  3B 60 00 00 */	li r27, 0
/* 80BB2298  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB229C  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BB22A0:
/* 80BB22A0  38 1B 10 10 */	addi r0, r27, 0x1010
/* 80BB22A4  7C BF 00 2E */	lwzx r5, r31, r0
/* 80BB22A8  28 05 00 00 */	cmplwi r5, 0
/* 80BB22AC  41 82 00 14 */	beq lbl_80BB22C0
/* 80BB22B0  7F 23 CB 78 */	mr r3, r25
/* 80BB22B4  38 85 00 68 */	addi r4, r5, 0x68
/* 80BB22B8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BB22BC  4B 6C E5 25 */	bl func_802807E0
lbl_80BB22C0:
/* 80BB22C0  3B 18 00 01 */	addi r24, r24, 1
/* 80BB22C4  2C 18 00 02 */	cmpwi r24, 2
/* 80BB22C8  3B 7B 00 04 */	addi r27, r27, 4
/* 80BB22CC  41 80 FF D4 */	blt lbl_80BB22A0
/* 80BB22D0  3B 00 00 00 */	li r24, 0
/* 80BB22D4  3B 60 00 00 */	li r27, 0
/* 80BB22D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB22DC  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80BB22E0:
/* 80BB22E0  38 1B 10 20 */	addi r0, r27, 0x1020
/* 80BB22E4  7C BF 00 2E */	lwzx r5, r31, r0
/* 80BB22E8  28 05 00 00 */	cmplwi r5, 0
/* 80BB22EC  41 82 00 14 */	beq lbl_80BB2300
/* 80BB22F0  7F 23 CB 78 */	mr r3, r25
/* 80BB22F4  38 85 00 68 */	addi r4, r5, 0x68
/* 80BB22F8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80BB22FC  4B 6C E4 E5 */	bl func_802807E0
lbl_80BB2300:
/* 80BB2300  3B 18 00 01 */	addi r24, r24, 1
/* 80BB2304  2C 18 00 03 */	cmpwi r24, 3
/* 80BB2308  3B 7B 00 04 */	addi r27, r27, 4
/* 80BB230C  41 80 FF D4 */	blt lbl_80BB22E0
/* 80BB2310  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80BB2314  D0 1F 10 54 */	stfs f0, 0x1054(r31)
/* 80BB2318  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80BB231C  D0 1F 10 58 */	stfs f0, 0x1058(r31)
/* 80BB2320  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80BB2324  D0 1F 10 5C */	stfs f0, 0x105c(r31)
/* 80BB2328  C0 3F 10 58 */	lfs f1, 0x1058(r31)
/* 80BB232C  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 80BB2330  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB2334  D0 1F 10 58 */	stfs f0, 0x1058(r31)
/* 80BB2338  3C 60 80 BB */	lis r3, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BB233C  38 03 3E 40 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BB2340  90 01 00 A8 */	stw r0, 0xa8(r1)
lbl_80BB2344:
/* 80BB2344  38 7F 10 54 */	addi r3, r31, 0x1054
/* 80BB2348  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80BB234C  4B 6B 4D 21 */	bl __ne__4cXyzCFRC3Vec
/* 80BB2350  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB2354  41 82 00 30 */	beq lbl_80BB2384
/* 80BB2358  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070229@ha */
/* 80BB235C  38 03 02 29 */	addi r0, r3, 0x0229 /* 0x00070229@l */
/* 80BB2360  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BB2364  38 7F 10 80 */	addi r3, r31, 0x1080
/* 80BB2368  38 81 00 20 */	addi r4, r1, 0x20
/* 80BB236C  38 A0 00 00 */	li r5, 0
/* 80BB2370  38 C0 FF FF */	li r6, -1
/* 80BB2374  81 9F 10 90 */	lwz r12, 0x1090(r31)
/* 80BB2378  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BB237C  7D 89 03 A6 */	mtctr r12
/* 80BB2380  4E 80 04 21 */	bctrl 
lbl_80BB2384:
/* 80BB2384  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB2388  38 80 00 01 */	li r4, 1
/* 80BB238C  88 03 00 05 */	lbz r0, 5(r3)
/* 80BB2390  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BB2394  40 82 00 18 */	bne lbl_80BB23AC
/* 80BB2398  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB239C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BB23A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB23A4  41 82 00 08 */	beq lbl_80BB23AC
/* 80BB23A8  38 80 00 00 */	li r4, 0
lbl_80BB23AC:
/* 80BB23AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BB23B0  41 82 00 58 */	beq lbl_80BB2408
/* 80BB23B4  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BB23B8  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BB23BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB23C0  38 80 00 12 */	li r4, 0x12
/* 80BB23C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB23C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB23CC  3C A5 00 02 */	addis r5, r5, 2
/* 80BB23D0  38 C0 00 80 */	li r6, 0x80
/* 80BB23D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB23D8  4B 48 9F 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB23DC  7C 65 1B 78 */	mr r5, r3
/* 80BB23E0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB23E4  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB23E8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB23EC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB23F0  38 C0 00 01 */	li r6, 1
/* 80BB23F4  38 E0 00 02 */	li r7, 2
/* 80BB23F8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BB23FC  39 00 00 00 */	li r8, 0
/* 80BB2400  39 20 FF FF */	li r9, -1
/* 80BB2404  4B 45 B3 09 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
lbl_80BB2408:
/* 80BB2408  A8 1F 0F AC */	lha r0, 0xfac(r31)
/* 80BB240C  1C 00 00 03 */	mulli r0, r0, 3
/* 80BB2410  B0 1F 0F B0 */	sth r0, 0xfb0(r31)
/* 80BB2414  A8 7F 0F AE */	lha r3, 0xfae(r31)
/* 80BB2418  A8 1F 0F 9A */	lha r0, 0xf9a(r31)
/* 80BB241C  7C 03 00 50 */	subf r0, r3, r0
/* 80BB2420  B0 1F 0F 9C */	sth r0, 0xf9c(r31)
/* 80BB2424  A8 7F 0F 9E */	lha r3, 0xf9e(r31)
/* 80BB2428  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB242C  7C 03 02 14 */	add r0, r3, r0
/* 80BB2430  B0 1F 0F A0 */	sth r0, 0xfa0(r31)
/* 80BB2434  A8 7F 0F A2 */	lha r3, 0xfa2(r31)
/* 80BB2438  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB243C  7C 03 02 14 */	add r0, r3, r0
/* 80BB2440  B0 1F 0F A4 */	sth r0, 0xfa4(r31)
/* 80BB2444  A8 7F 0F A6 */	lha r3, 0xfa6(r31)
/* 80BB2448  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB244C  7C 03 02 14 */	add r0, r3, r0
/* 80BB2450  B0 1F 0F A8 */	sth r0, 0xfa8(r31)
/* 80BB2454  A0 1F 10 0A */	lhz r0, 0x100a(r31)
/* 80BB2458  54 00 8F FF */	rlwinm. r0, r0, 0x11, 0x1f, 0x1f
/* 80BB245C  40 82 00 10 */	bne lbl_80BB246C
/* 80BB2460  4B 5C F1 E1 */	bl dCam_getBody__Fv
/* 80BB2464  7F E4 FB 78 */	mr r4, r31
/* 80BB2468  4B 5C F0 CD */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
lbl_80BB246C:
/* 80BB246C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80BB2470  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80BB2474  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BB2478  4B 7A FD 9D */	bl _restgpr_24
/* 80BB247C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80BB2480  7C 08 03 A6 */	mtlr r0
/* 80BB2484  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80BB2488  4E 80 00 20 */	blr 
