lbl_80A89D28:
/* 80A89D28  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80A89D2C  7C 08 02 A6 */	mflr r0
/* 80A89D30  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A89D34  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80A89D38  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80A89D3C  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 80A89D40  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 80A89D44  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 80A89D48  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 80A89D4C  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 80A89D50  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 80A89D54  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80A89D58  4B 8D 84 75 */	bl _savegpr_25
/* 80A89D5C  7C 7C 1B 78 */	mr r28, r3
/* 80A89D60  7C 99 23 78 */	mr r25, r4
/* 80A89D64  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A89D68  3B C3 24 1C */	addi r30, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A89D6C  C3 9E 00 58 */	lfs f28, 0x58(r30)
/* 80A89D70  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A89D74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A89D78  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A89D7C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A89D80  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A89D84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A89D88  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A89D8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A89D90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A89D94  3B 60 00 00 */	li r27, 0
/* 80A89D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A89D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A89DA0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80A89DA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A89DA8  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80A89DAC  C3 BE 00 10 */	lfs f29, 0x10(r30)
/* 80A89DB0  C3 DE 00 18 */	lfs f30, 0x18(r30)
/* 80A89DB4  C3 FE 00 24 */	lfs f31, 0x24(r30)
lbl_80A89DB8:
/* 80A89DB8  3B 40 00 00 */	li r26, 0
lbl_80A89DBC:
/* 80A89DBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A89DC0  7F 24 CB 78 */	mr r4, r25
/* 80A89DC4  4B 58 26 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A89DC8  D3 A1 00 2C */	stfs f29, 0x2c(r1)
/* 80A89DCC  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80A89DD0  D3 81 00 34 */	stfs f28, 0x34(r1)
/* 80A89DD4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A89DD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89DDC  4B 7E 71 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80A89DE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80A89DE4  38 81 00 20 */	addi r4, r1, 0x20
/* 80A89DE8  7C 65 1B 78 */	mr r5, r3
/* 80A89DEC  4B 8B D2 A5 */	bl PSVECAdd
/* 80A89DF0  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89DF4  4B 5E DE 75 */	bl __ct__11dBgS_LinChkFv
/* 80A89DF8  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89DFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80A89E00  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A89E04  7F 86 E3 78 */	mr r6, r28
/* 80A89E08  4B 5E DF 5D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A89E0C  7F A3 EB 78 */	mr r3, r29
/* 80A89E10  38 81 00 38 */	addi r4, r1, 0x38
/* 80A89E14  4B 5E A5 A1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A89E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A89E1C  41 82 00 0C */	beq lbl_80A89E28
/* 80A89E20  3B 39 10 00 */	addi r25, r25, 0x1000
/* 80A89E24  48 00 00 6C */	b lbl_80A89E90
lbl_80A89E28:
/* 80A89E28  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A89E2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A89E30  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A89E34  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80A89E38  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A89E3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A89E40  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A89E44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A89E48  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89E4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89E50  38 A1 00 08 */	addi r5, r1, 8
/* 80A89E54  7F 86 E3 78 */	mr r6, r28
/* 80A89E58  4B 5E DF 0D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A89E5C  7F A3 EB 78 */	mr r3, r29
/* 80A89E60  38 81 00 38 */	addi r4, r1, 0x38
/* 80A89E64  4B 5E A5 51 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A89E68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A89E6C  40 82 00 0C */	bne lbl_80A89E78
/* 80A89E70  3B 39 10 00 */	addi r25, r25, 0x1000
/* 80A89E74  48 00 00 1C */	b lbl_80A89E90
lbl_80A89E78:
/* 80A89E78  B3 3C 05 D0 */	sth r25, 0x5d0(r28)
/* 80A89E7C  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89E80  38 80 FF FF */	li r4, -1
/* 80A89E84  4B 5E DE 59 */	bl __dt__11dBgS_LinChkFv
/* 80A89E88  38 60 00 01 */	li r3, 1
/* 80A89E8C  48 00 00 30 */	b lbl_80A89EBC
lbl_80A89E90:
/* 80A89E90  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89E94  38 80 FF FF */	li r4, -1
/* 80A89E98  4B 5E DE 45 */	bl __dt__11dBgS_LinChkFv
/* 80A89E9C  3B 5A 00 01 */	addi r26, r26, 1
/* 80A89EA0  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80A89EA4  41 80 FF 18 */	blt lbl_80A89DBC
/* 80A89EA8  EF 9C F8 28 */	fsubs f28, f28, f31
/* 80A89EAC  3B 7B 00 01 */	addi r27, r27, 1
/* 80A89EB0  2C 1B 00 05 */	cmpwi r27, 5
/* 80A89EB4  41 80 FF 04 */	blt lbl_80A89DB8
/* 80A89EB8  38 60 00 00 */	li r3, 0
lbl_80A89EBC:
/* 80A89EBC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80A89EC0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80A89EC4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80A89EC8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80A89ECC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80A89ED0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80A89ED4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80A89ED8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80A89EDC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80A89EE0  4B 8D 83 39 */	bl _restgpr_25
/* 80A89EE4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80A89EE8  7C 08 03 A6 */	mtlr r0
/* 80A89EEC  38 21 01 10 */	addi r1, r1, 0x110
/* 80A89EF0  4E 80 00 20 */	blr 
