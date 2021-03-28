lbl_801AAD50:
/* 801AAD50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AAD54  7C 08 02 A6 */	mflr r0
/* 801AAD58  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AAD5C  39 61 00 20 */	addi r11, r1, 0x20
/* 801AAD60  48 1B 74 75 */	bl _savegpr_27
/* 801AAD64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AAD68  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801AAD6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AAD70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AAD74  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 801AAD78  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 801AAD7C  3B 63 4E 00 */	addi r27, r3, 0x4e00
/* 801AAD80  7F 63 DB 78 */	mr r3, r27
/* 801AAD84  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AAD88  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AAD8C  38 84 01 44 */	addi r4, r4, 0x144
/* 801AAD90  48 1B DC 05 */	bl strcmp
/* 801AAD94  2C 03 00 00 */	cmpwi r3, 0
/* 801AAD98  40 82 00 24 */	bne lbl_801AADBC
/* 801AAD9C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801AADA0  2C 00 00 03 */	cmpwi r0, 3
/* 801AADA4  40 82 00 18 */	bne lbl_801AADBC
/* 801AADA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AADAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AADB0  88 03 4E 0B */	lbz r0, 0x4e0b(r3)
/* 801AADB4  2C 00 00 0C */	cmpwi r0, 0xc
/* 801AADB8  41 82 02 4C */	beq lbl_801AB004
lbl_801AADBC:
/* 801AADBC  48 00 17 C1 */	bl dKy_darkworld_check__Fv
/* 801AADC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AADC4  41 82 02 40 */	beq lbl_801AB004
/* 801AADC8  7F 63 DB 78 */	mr r3, r27
/* 801AADCC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AADD0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AADD4  38 84 01 00 */	addi r4, r4, 0x100
/* 801AADD8  38 A0 00 06 */	li r5, 6
/* 801AADDC  48 1B B2 B1 */	bl memcmp
/* 801AADE0  2C 03 00 00 */	cmpwi r3, 0
/* 801AADE4  40 82 00 08 */	bne lbl_801AADEC
/* 801AADE8  48 00 02 1C */	b lbl_801AB004
lbl_801AADEC:
/* 801AADEC  4B FB 46 39 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801AADF0  2C 03 00 00 */	cmpwi r3, 0
/* 801AADF4  40 82 02 10 */	bne lbl_801AB004
/* 801AADF8  38 60 00 00 */	li r3, 0
/* 801AADFC  3B 60 00 00 */	li r27, 0
/* 801AAE00  38 00 00 06 */	li r0, 6
/* 801AAE04  7C 09 03 A6 */	mtctr r0
lbl_801AAE08:
/* 801AAE08  7F BF DA 14 */	add r29, r31, r27
/* 801AAE0C  88 1D 0C 3E */	lbz r0, 0xc3e(r29)
/* 801AAE10  28 00 00 01 */	cmplwi r0, 1
/* 801AAE14  41 82 01 E4 */	beq lbl_801AAFF8
/* 801AAE18  4B FF 21 CD */	bl dKy_twi_wolflight_set__Fi
/* 801AAE1C  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801AAE20  D0 1D 0C 2C */	stfs f0, 0xc2c(r29)
/* 801AAE24  38 00 00 FE */	li r0, 0xfe
/* 801AAE28  98 1D 0C 27 */	stb r0, 0xc27(r29)
/* 801AAE2C  C0 42 A2 0C */	lfs f2, lit_4409(r2)
/* 801AAE30  28 1E 00 00 */	cmplwi r30, 0
/* 801AAE34  41 82 00 34 */	beq lbl_801AAE68
/* 801AAE38  C0 3C 00 DC */	lfs f1, 0xdc(r28)
/* 801AAE3C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801AAE40  EC 21 00 28 */	fsubs f1, f1, f0
/* 801AAE44  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801AAE48  40 80 00 08 */	bge lbl_801AAE50
/* 801AAE4C  FC 20 10 90 */	fmr f1, f2
lbl_801AAE50:
/* 801AAE50  C0 02 A3 D0 */	lfs f0, lit_9722(r2)
/* 801AAE54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AAE58  40 81 00 08 */	ble lbl_801AAE60
/* 801AAE5C  FC 20 00 90 */	fmr f1, f0
lbl_801AAE60:
/* 801AAE60  C0 02 A2 D0 */	lfs f0, lit_5615(r2)
/* 801AAE64  EC 41 00 24 */	fdivs f2, f1, f0
lbl_801AAE68:
/* 801AAE68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AAE6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AAE70  88 03 13 09 */	lbz r0, 0x1309(r3)
/* 801AAE74  2C 00 00 02 */	cmpwi r0, 2
/* 801AAE78  41 82 00 C4 */	beq lbl_801AAF3C
/* 801AAE7C  40 80 00 14 */	bge lbl_801AAE90
/* 801AAE80  2C 00 00 00 */	cmpwi r0, 0
/* 801AAE84  41 82 00 18 */	beq lbl_801AAE9C
/* 801AAE88  40 80 00 64 */	bge lbl_801AAEEC
/* 801AAE8C  48 00 01 4C */	b lbl_801AAFD8
lbl_801AAE90:
/* 801AAE90  2C 00 00 04 */	cmpwi r0, 4
/* 801AAE94  40 80 01 44 */	bge lbl_801AAFD8
/* 801AAE98  48 00 00 F4 */	b lbl_801AAF8C
lbl_801AAE9C:
/* 801AAE9C  38 00 00 19 */	li r0, 0x19
/* 801AAEA0  7C 7F DA 14 */	add r3, r31, r27
/* 801AAEA4  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AAEA8  38 00 00 5A */	li r0, 0x5a
/* 801AAEAC  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AAEB0  38 00 00 B7 */	li r0, 0xb7
/* 801AAEB4  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AAEB8  38 7D 0C 28 */	addi r3, r29, 0xc28
/* 801AAEBC  C0 22 A3 D4 */	lfs f1, lit_9723(r2)
/* 801AAEC0  C0 02 A3 34 */	lfs f0, lit_6769(r2)
/* 801AAEC4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AAEC8  EC 21 00 2A */	fadds f1, f1, f0
/* 801AAECC  C0 42 A2 F4 */	lfs f2, lit_6035(r2)
/* 801AAED0  C0 62 A3 28 */	lfs f3, lit_6766(r2)
/* 801AAED4  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801AAED8  48 0C 4A A5 */	bl cLib_addCalc__FPfffff
/* 801AAEDC  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801AAEE0  7C 7F DA 14 */	add r3, r31, r27
/* 801AAEE4  D0 03 0C 30 */	stfs f0, 0xc30(r3)
/* 801AAEE8  48 00 00 F0 */	b lbl_801AAFD8
lbl_801AAEEC:
/* 801AAEEC  38 00 00 48 */	li r0, 0x48
/* 801AAEF0  7C 7F DA 14 */	add r3, r31, r27
/* 801AAEF4  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AAEF8  38 00 00 87 */	li r0, 0x87
/* 801AAEFC  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AAF00  38 00 00 CE */	li r0, 0xce
/* 801AAF04  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AAF08  38 7D 0C 28 */	addi r3, r29, 0xc28
/* 801AAF0C  C0 22 A3 D8 */	lfs f1, lit_9724(r2)
/* 801AAF10  C0 02 A3 34 */	lfs f0, lit_6769(r2)
/* 801AAF14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AAF18  EC 21 00 2A */	fadds f1, f1, f0
/* 801AAF1C  C0 42 A2 F4 */	lfs f2, lit_6035(r2)
/* 801AAF20  C0 62 A3 28 */	lfs f3, lit_6766(r2)
/* 801AAF24  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801AAF28  48 0C 4A 55 */	bl cLib_addCalc__FPfffff
/* 801AAF2C  C0 02 A3 DC */	lfs f0, lit_9725(r2)
/* 801AAF30  7C 7F DA 14 */	add r3, r31, r27
/* 801AAF34  D0 03 0C 30 */	stfs f0, 0xc30(r3)
/* 801AAF38  48 00 00 A0 */	b lbl_801AAFD8
lbl_801AAF3C:
/* 801AAF3C  38 00 00 48 */	li r0, 0x48
/* 801AAF40  7C 7F DA 14 */	add r3, r31, r27
/* 801AAF44  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AAF48  38 00 00 87 */	li r0, 0x87
/* 801AAF4C  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AAF50  38 00 00 CE */	li r0, 0xce
/* 801AAF54  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AAF58  38 7D 0C 28 */	addi r3, r29, 0xc28
/* 801AAF5C  C0 22 A3 E0 */	lfs f1, lit_9726(r2)
/* 801AAF60  C0 02 A3 34 */	lfs f0, lit_6769(r2)
/* 801AAF64  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AAF68  EC 21 00 2A */	fadds f1, f1, f0
/* 801AAF6C  C0 42 A2 F4 */	lfs f2, lit_6035(r2)
/* 801AAF70  C0 62 A3 28 */	lfs f3, lit_6766(r2)
/* 801AAF74  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801AAF78  48 0C 4A 05 */	bl cLib_addCalc__FPfffff
/* 801AAF7C  C0 02 A3 DC */	lfs f0, lit_9725(r2)
/* 801AAF80  7C 7F DA 14 */	add r3, r31, r27
/* 801AAF84  D0 03 0C 30 */	stfs f0, 0xc30(r3)
/* 801AAF88  48 00 00 50 */	b lbl_801AAFD8
lbl_801AAF8C:
/* 801AAF8C  38 00 00 50 */	li r0, 0x50
/* 801AAF90  7C 7F DA 14 */	add r3, r31, r27
/* 801AAF94  98 03 0C 24 */	stb r0, 0xc24(r3)
/* 801AAF98  38 00 00 87 */	li r0, 0x87
/* 801AAF9C  98 03 0C 25 */	stb r0, 0xc25(r3)
/* 801AAFA0  38 00 00 CE */	li r0, 0xce
/* 801AAFA4  98 03 0C 26 */	stb r0, 0xc26(r3)
/* 801AAFA8  38 7D 0C 28 */	addi r3, r29, 0xc28
/* 801AAFAC  C0 22 A3 E4 */	lfs f1, lit_9727(r2)
/* 801AAFB0  C0 02 A3 34 */	lfs f0, lit_6769(r2)
/* 801AAFB4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AAFB8  EC 21 00 2A */	fadds f1, f1, f0
/* 801AAFBC  C0 42 A2 F4 */	lfs f2, lit_6035(r2)
/* 801AAFC0  C0 62 A3 28 */	lfs f3, lit_6766(r2)
/* 801AAFC4  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801AAFC8  48 0C 49 B5 */	bl cLib_addCalc__FPfffff
/* 801AAFCC  C0 02 A3 E8 */	lfs f0, lit_9728(r2)
/* 801AAFD0  7C 7F DA 14 */	add r3, r31, r27
/* 801AAFD4  D0 03 0C 30 */	stfs f0, 0xc30(r3)
lbl_801AAFD8:
/* 801AAFD8  38 00 00 02 */	li r0, 2
/* 801AAFDC  7C 7F DA 14 */	add r3, r31, r27
/* 801AAFE0  98 03 0C 3C */	stb r0, 0xc3c(r3)
/* 801AAFE4  38 00 00 03 */	li r0, 3
/* 801AAFE8  98 03 0C 3D */	stb r0, 0xc3d(r3)
/* 801AAFEC  38 00 00 01 */	li r0, 1
/* 801AAFF0  98 03 0C 3E */	stb r0, 0xc3e(r3)
/* 801AAFF4  48 00 00 10 */	b lbl_801AB004
lbl_801AAFF8:
/* 801AAFF8  38 63 00 01 */	addi r3, r3, 1
/* 801AAFFC  3B 7B 00 28 */	addi r27, r27, 0x28
/* 801AB000  42 00 FE 08 */	bdnz lbl_801AAE08
lbl_801AB004:
/* 801AB004  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB008  48 1B 72 19 */	bl _restgpr_27
/* 801AB00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB010  7C 08 03 A6 */	mtlr r0
/* 801AB014  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB018  4E 80 00 20 */	blr 
