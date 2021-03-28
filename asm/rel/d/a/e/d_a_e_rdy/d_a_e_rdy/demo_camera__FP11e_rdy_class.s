lbl_80775B50:
/* 80775B50  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80775B54  7C 08 02 A6 */	mflr r0
/* 80775B58  90 01 01 64 */	stw r0, 0x164(r1)
/* 80775B5C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80775B60  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80775B64  39 61 01 50 */	addi r11, r1, 0x150
/* 80775B68  4B BE C6 5C */	b _savegpr_23
/* 80775B6C  7C 7F 1B 78 */	mr r31, r3
/* 80775B70  3C 60 80 78 */	lis r3, lit_4018@ha
/* 80775B74  3B C3 9D FC */	addi r30, r3, lit_4018@l
/* 80775B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80775B7C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80775B80  83 BB 5D AC */	lwz r29, 0x5dac(r27)
/* 80775B84  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 80775B88  7C 00 07 74 */	extsb r0, r0
/* 80775B8C  38 7B 5D 74 */	addi r3, r27, 0x5d74
/* 80775B90  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80775B94  7F 43 00 2E */	lwzx r26, r3, r0
/* 80775B98  82 FB 5D 74 */	lwz r23, 0x5d74(r27)
/* 80775B9C  3B 20 00 00 */	li r25, 0
/* 80775BA0  3B 00 00 00 */	li r24, 0
/* 80775BA4  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 80775BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80775BAC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80775BB0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80775BB4  38 81 00 14 */	addi r4, r1, 0x14
/* 80775BB8  4B 8A 3C 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80775BBC  7C 7C 1B 78 */	mr r28, r3
/* 80775BC0  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 80775BC4  28 00 00 64 */	cmplwi r0, 0x64
/* 80775BC8  41 81 12 70 */	bgt lbl_80776E38
/* 80775BCC  3C 60 80 78 */	lis r3, lit_8596@ha
/* 80775BD0  38 63 A4 34 */	addi r3, r3, lit_8596@l
/* 80775BD4  54 00 10 3A */	slwi r0, r0, 2
/* 80775BD8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80775BDC  7C 09 03 A6 */	mtctr r0
/* 80775BE0  4E 80 04 20 */	bctr 
lbl_80775BE4:
/* 80775BE4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80775BE8  28 00 00 02 */	cmplwi r0, 2
/* 80775BEC  41 82 00 2C */	beq lbl_80775C18
/* 80775BF0  7F E3 FB 78 */	mr r3, r31
/* 80775BF4  38 80 00 02 */	li r4, 2
/* 80775BF8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80775BFC  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80775C00  38 C0 00 00 */	li r6, 0
/* 80775C04  4B 8A 5D 04 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80775C08  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80775C0C  60 00 00 02 */	ori r0, r0, 2
/* 80775C10  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80775C14  48 00 16 FC */	b lbl_80777310
lbl_80775C18:
/* 80775C18  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775C1C  4B 9E B8 B4 */	b Stop__9dCamera_cFv
/* 80775C20  38 00 00 02 */	li r0, 2
/* 80775C24  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80775C28  38 00 00 00 */	li r0, 0
/* 80775C2C  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80775C30  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80775C34  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80775C38  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775C3C  38 80 00 03 */	li r4, 3
/* 80775C40  4B 9E D3 CC */	b SetTrimSize__9dCamera_cFl
/* 80775C44  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80775C48  38 00 00 03 */	li r0, 3
/* 80775C4C  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80775C50  38 00 00 00 */	li r0, 0
/* 80775C54  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80775C58  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80775C5C  38 80 00 38 */	li r4, 0x38
/* 80775C60  38 A0 00 00 */	li r5, 0
/* 80775C64  38 C0 00 00 */	li r6, 0
/* 80775C68  38 E0 00 00 */	li r7, 0
/* 80775C6C  48 00 41 69 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80775C70  C0 17 00 D8 */	lfs f0, 0xd8(r23)
/* 80775C74  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80775C78  C0 17 00 DC */	lfs f0, 0xdc(r23)
/* 80775C7C  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80775C80  C0 17 00 E0 */	lfs f0, 0xe0(r23)
/* 80775C84  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80775C88  C0 17 00 E4 */	lfs f0, 0xe4(r23)
/* 80775C8C  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80775C90  C0 17 00 E8 */	lfs f0, 0xe8(r23)
/* 80775C94  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80775C98  C0 17 00 EC */	lfs f0, 0xec(r23)
/* 80775C9C  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80775CA0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80775CA4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80775CA8  7C 03 00 50 */	subf r0, r3, r0
/* 80775CAC  7C 00 07 35 */	extsh. r0, r0
/* 80775CB0  40 81 00 10 */	ble lbl_80775CC0
/* 80775CB4  38 00 C0 00 */	li r0, -16384
/* 80775CB8  B0 1F 13 D4 */	sth r0, 0x13d4(r31)
/* 80775CBC  48 00 00 0C */	b lbl_80775CC8
lbl_80775CC0:
/* 80775CC0  38 00 40 00 */	li r0, 0x4000
/* 80775CC4  B0 1F 13 D4 */	sth r0, 0x13d4(r31)
lbl_80775CC8:
/* 80775CC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80775CCC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80775CD0:
/* 80775CD0  38 7F 13 84 */	addi r3, r31, 0x1384
/* 80775CD4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80775CD8  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775CDC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80775CE0  4B AF 9D 5C */	b cLib_addCalc2__FPffff
/* 80775CE4  38 7F 13 88 */	addi r3, r31, 0x1388
/* 80775CE8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80775CEC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80775CF0  EC 23 00 2A */	fadds f1, f3, f0
/* 80775CF4  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775CF8  4B AF 9D 44 */	b cLib_addCalc2__FPffff
/* 80775CFC  38 7F 13 8C */	addi r3, r31, 0x138c
/* 80775D00  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80775D04  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775D08  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80775D0C  4B AF 9D 30 */	b cLib_addCalc2__FPffff
/* 80775D10  38 7F 13 7C */	addi r3, r31, 0x137c
/* 80775D14  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80775D18  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80775D1C  EC 21 00 2A */	fadds f1, f1, f0
/* 80775D20  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80775D24  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80775D28  4B AF 9D 14 */	b cLib_addCalc2__FPffff
/* 80775D2C  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 80775D30  2C 00 00 03 */	cmpwi r0, 3
/* 80775D34  40 82 00 58 */	bne lbl_80775D8C
/* 80775D38  38 00 00 04 */	li r0, 4
/* 80775D3C  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80775D40  38 00 00 00 */	li r0, 0
/* 80775D44  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80775D48  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80775D4C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80775D50  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80775D54  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80775D58  38 A0 00 02 */	li r5, 2
/* 80775D5C  38 C0 00 01 */	li r6, 1
/* 80775D60  38 E0 00 00 */	li r7, 0
/* 80775D64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80775D68  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80775D6C  7D 89 03 A6 */	mtctr r12
/* 80775D70  4E 80 04 21 */	bctrl 
/* 80775D74  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80775D78  38 80 00 01 */	li r4, 1
/* 80775D7C  38 A0 00 00 */	li r5, 0
/* 80775D80  38 C0 00 00 */	li r6, 0
/* 80775D84  38 E0 00 00 */	li r7, 0
/* 80775D88  48 00 40 4D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80775D8C:
/* 80775D8C  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 80775D90  2C 00 00 04 */	cmpwi r0, 4
/* 80775D94  40 82 10 A4 */	bne lbl_80776E38
/* 80775D98  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80775D9C  2C 00 00 46 */	cmpwi r0, 0x46
/* 80775DA0  40 82 10 98 */	bne lbl_80776E38
/* 80775DA4  3B 20 00 01 */	li r25, 1
/* 80775DA8  48 00 10 90 */	b lbl_80776E38
lbl_80775DAC:
/* 80775DAC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80775DB0  28 00 00 02 */	cmplwi r0, 2
/* 80775DB4  41 82 00 2C */	beq lbl_80775DE0
/* 80775DB8  7F E3 FB 78 */	mr r3, r31
/* 80775DBC  38 80 00 02 */	li r4, 2
/* 80775DC0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80775DC4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80775DC8  38 C0 00 00 */	li r6, 0
/* 80775DCC  4B 8A 5B 3C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80775DD0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80775DD4  60 00 00 02 */	ori r0, r0, 2
/* 80775DD8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80775DDC  48 00 15 34 */	b lbl_80777310
lbl_80775DE0:
/* 80775DE0  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775DE4  4B 9E B6 EC */	b Stop__9dCamera_cFv
/* 80775DE8  38 00 00 06 */	li r0, 6
/* 80775DEC  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80775DF0  38 00 00 00 */	li r0, 0
/* 80775DF4  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80775DF8  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80775DFC  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80775E00  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775E04  38 80 00 03 */	li r4, 3
/* 80775E08  4B 9E D2 04 */	b SetTrimSize__9dCamera_cFl
/* 80775E0C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80775E10  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80775E14  80 63 00 00 */	lwz r3, 0(r3)
/* 80775E18  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80775E1C  4B 89 65 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80775E20  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80775E24  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80775E28  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80775E2C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80775E30  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80775E34  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80775E38  38 61 01 10 */	addi r3, r1, 0x110
/* 80775E3C  38 9F 13 78 */	addi r4, r31, 0x1378
/* 80775E40  4B AF B0 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80775E44  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80775E48  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80775E4C  7C 65 1B 78 */	mr r5, r3
/* 80775E50  4B BD 12 40 */	b PSVECAdd
lbl_80775E54:
/* 80775E54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80775E58  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80775E5C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80775E60  D0 61 00 F0 */	stfs f3, 0xf0(r1)
/* 80775E64  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80775E68  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80775E6C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80775E70  EC 03 00 2A */	fadds f0, f3, f0
/* 80775E74  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80775E78  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80775E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80775E80  40 82 00 14 */	bne lbl_80775E94
/* 80775E84  D0 3F 13 84 */	stfs f1, 0x1384(r31)
/* 80775E88  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80775E8C  D0 5F 13 8C */	stfs f2, 0x138c(r31)
/* 80775E90  48 00 00 3C */	b lbl_80775ECC
lbl_80775E94:
/* 80775E94  38 7F 13 84 */	addi r3, r31, 0x1384
/* 80775E98  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775E9C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775EA0  4B AF 9B 9C */	b cLib_addCalc2__FPffff
/* 80775EA4  38 7F 13 88 */	addi r3, r31, 0x1388
/* 80775EA8  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80775EAC  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775EB0  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775EB4  4B AF 9B 88 */	b cLib_addCalc2__FPffff
/* 80775EB8  38 7F 13 8C */	addi r3, r31, 0x138c
/* 80775EBC  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80775EC0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80775EC4  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775EC8  4B AF 9B 74 */	b cLib_addCalc2__FPffff
lbl_80775ECC:
/* 80775ECC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80775ED0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80775ED4  80 63 00 00 */	lwz r3, 0(r3)
/* 80775ED8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80775EDC  4B 89 65 00 */	b mDoMtx_YrotS__FPA4_fs
/* 80775EE0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80775EE4  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80775EE8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80775EEC  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80775EF0  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80775EF4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80775EF8  38 61 01 10 */	addi r3, r1, 0x110
/* 80775EFC  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80775F00  4B AF AF EC */	b MtxPosition__FP4cXyzP4cXyz
/* 80775F04  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80775F08  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80775F0C  7C 65 1B 78 */	mr r5, r3
/* 80775F10  4B BD 11 80 */	b PSVECAdd
/* 80775F14  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80775F18  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 80775F1C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80775F20  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775F24  4B AF 9B 18 */	b cLib_addCalc2__FPffff
/* 80775F28  38 7F 13 7C */	addi r3, r31, 0x137c
/* 80775F2C  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80775F30  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80775F34  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775F38  4B AF 9B 04 */	b cLib_addCalc2__FPffff
/* 80775F3C  38 7F 13 80 */	addi r3, r31, 0x1380
/* 80775F40  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80775F44  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80775F48  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80775F4C  4B AF 9A F0 */	b cLib_addCalc2__FPffff
/* 80775F50  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80775F54  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80775F58  40 82 0E E0 */	bne lbl_80776E38
/* 80775F5C  3B 20 00 01 */	li r25, 1
/* 80775F60  C0 1F 13 84 */	lfs f0, 0x1384(r31)
/* 80775F64  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80775F68  C0 1F 13 88 */	lfs f0, 0x1388(r31)
/* 80775F6C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80775F70  C0 1F 13 8C */	lfs f0, 0x138c(r31)
/* 80775F74  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80775F78  C0 1F 13 78 */	lfs f0, 0x1378(r31)
/* 80775F7C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80775F80  C0 1F 13 7C */	lfs f0, 0x137c(r31)
/* 80775F84  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80775F88  C0 1F 13 80 */	lfs f0, 0x1380(r31)
/* 80775F8C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80775F90  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775F94  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80775F98  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80775F9C  4B A0 AC 7C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80775FA0  38 60 00 01 */	li r3, 1
/* 80775FA4  38 80 FF FF */	li r4, -1
/* 80775FA8  4B 8B 7B 58 */	b dComIfGs_offOneZoneSwitch__Fii
/* 80775FAC  48 00 0E 8C */	b lbl_80776E38
lbl_80775FB0:
/* 80775FB0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80775FB4  28 00 00 02 */	cmplwi r0, 2
/* 80775FB8  41 82 00 2C */	beq lbl_80775FE4
/* 80775FBC  7F E3 FB 78 */	mr r3, r31
/* 80775FC0  38 80 00 02 */	li r4, 2
/* 80775FC4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80775FC8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80775FCC  38 C0 00 00 */	li r6, 0
/* 80775FD0  4B 8A 59 38 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80775FD4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80775FD8  60 00 00 02 */	ori r0, r0, 2
/* 80775FDC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80775FE0  48 00 13 30 */	b lbl_80777310
lbl_80775FE4:
/* 80775FE4  38 7A 02 48 */	addi r3, r26, 0x248
/* 80775FE8  4B 9E B4 E8 */	b Stop__9dCamera_cFv
/* 80775FEC  38 00 00 0B */	li r0, 0xb
/* 80775FF0  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80775FF4  38 00 00 00 */	li r0, 0
/* 80775FF8  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80775FFC  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80776000  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80776004  38 7A 02 48 */	addi r3, r26, 0x248
/* 80776008  38 80 00 03 */	li r4, 3
/* 8077600C  4B 9E D0 00 */	b SetTrimSize__9dCamera_cFl
/* 80776010  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776014  38 00 00 03 */	li r0, 3
/* 80776018  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8077601C  38 00 00 00 */	li r0, 0
/* 80776020  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80776024  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776028  38 80 00 17 */	li r4, 0x17
/* 8077602C  38 A0 00 00 */	li r5, 0
/* 80776030  38 C0 00 00 */	li r6, 0
/* 80776034  38 E0 00 00 */	li r7, 0
/* 80776038  48 00 3D 9D */	bl changeDemoMode__9daPy_py_cFUliis
/* 8077603C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80776040  D0 1F 13 C0 */	stfs f0, 0x13c0(r31)
/* 80776044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80776048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077604C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80776050  7F E4 FB 78 */	mr r4, r31
/* 80776054  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80776058  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 8077605C  38 C0 00 00 */	li r6, 0
/* 80776060  4B 8C C8 B4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80776064  A8 1F 0A 4C */	lha r0, 0xa4c(r31)
/* 80776068  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 8077606C  38 00 CC 7C */	li r0, -13188
/* 80776070  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80776074  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80776078  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8077607C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80776080  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80776084  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80776088  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8077608C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80776090  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80776094:
/* 80776094  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80776098  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8077609C  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807760A0  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 807760A4  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 807760A8  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 807760AC  7F A3 EB 78 */	mr r3, r29
/* 807760B0  38 81 01 04 */	addi r4, r1, 0x104
/* 807760B4  38 A0 8C 7C */	li r5, -29572
/* 807760B8  38 C0 00 00 */	li r6, 0
/* 807760BC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807760C0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807760C4  7D 89 03 A6 */	mtctr r12
/* 807760C8  4E 80 04 21 */	bctrl 
/* 807760CC  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807760D0  2C 00 00 01 */	cmpwi r0, 1
/* 807760D4  41 80 00 34 */	blt lbl_80776108
/* 807760D8  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 807760DC  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 807760E0  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 807760E4  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807760E8  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 807760EC  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 807760F0  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 807760F4  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 807760F8  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 807760FC  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80776100  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 80776104  D0 1F 13 80 */	stfs f0, 0x1380(r31)
lbl_80776108:
/* 80776108  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 8077610C  2C 00 00 55 */	cmpwi r0, 0x55
/* 80776110  40 82 0D 28 */	bne lbl_80776E38
/* 80776114  38 00 00 0C */	li r0, 0xc
/* 80776118  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 8077611C  38 00 00 00 */	li r0, 0
/* 80776120  B0 1F 13 72 */	sth r0, 0x1372(r31)
lbl_80776124:
/* 80776124  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 80776128  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8077612C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 80776130  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80776134  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 80776138  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 8077613C  7F A3 EB 78 */	mr r3, r29
/* 80776140  38 81 01 04 */	addi r4, r1, 0x104
/* 80776144  38 A0 C4 A3 */	li r5, -15197
/* 80776148  38 C0 00 00 */	li r6, 0
/* 8077614C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80776150  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80776154  7D 89 03 A6 */	mtctr r12
/* 80776158  4E 80 04 21 */	bctrl 
/* 8077615C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80776160  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776164  80 63 00 00 */	lwz r3, 0(r3)
/* 80776168  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8077616C  4B 89 62 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80776170  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80776174  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776178  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8077617C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80776180  C0 1F 13 C0 */	lfs f0, 0x13c0(r31)
/* 80776184  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80776188  38 61 01 10 */	addi r3, r1, 0x110
/* 8077618C  38 9F 13 78 */	addi r4, r31, 0x1378
/* 80776190  4B AF AD 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 80776194  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80776198  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8077619C  7C 65 1B 78 */	mr r5, r3
/* 807761A0  4B BD 0E F0 */	b PSVECAdd
lbl_807761A4:
/* 807761A4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807761A8  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 807761AC  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807761B0  D0 61 00 F0 */	stfs f3, 0xf0(r1)
/* 807761B4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807761B8  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 807761BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807761C0  EC 03 00 2A */	fadds f0, f3, f0
/* 807761C4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 807761C8  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807761CC  2C 00 00 00 */	cmpwi r0, 0
/* 807761D0  40 82 00 14 */	bne lbl_807761E4
/* 807761D4  D0 3F 13 84 */	stfs f1, 0x1384(r31)
/* 807761D8  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807761DC  D0 5F 13 8C */	stfs f2, 0x138c(r31)
/* 807761E0  48 00 00 3C */	b lbl_8077621C
lbl_807761E4:
/* 807761E4  38 7F 13 84 */	addi r3, r31, 0x1384
/* 807761E8  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 807761EC  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807761F0  4B AF 98 4C */	b cLib_addCalc2__FPffff
/* 807761F4  38 7F 13 88 */	addi r3, r31, 0x1388
/* 807761F8  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 807761FC  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80776200  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80776204  4B AF 98 38 */	b cLib_addCalc2__FPffff
/* 80776208  38 7F 13 8C */	addi r3, r31, 0x138c
/* 8077620C  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80776210  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80776214  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80776218  4B AF 98 24 */	b cLib_addCalc2__FPffff
lbl_8077621C:
/* 8077621C  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776220  2C 00 00 14 */	cmpwi r0, 0x14
/* 80776224  41 80 0C 14 */	blt lbl_80776E38
/* 80776228  38 7F 13 C0 */	addi r3, r31, 0x13c0
/* 8077622C  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 80776230  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80776234  C0 7F 13 D0 */	lfs f3, 0x13d0(r31)
/* 80776238  4B AF 98 04 */	b cLib_addCalc2__FPffff
/* 8077623C  38 7F 13 D0 */	addi r3, r31, 0x13d0
/* 80776240  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80776244  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80776248  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 8077624C  4B AF 97 F0 */	b cLib_addCalc2__FPffff
/* 80776250  48 00 0B E8 */	b lbl_80776E38
lbl_80776254:
/* 80776254  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80776258  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 8077625C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80776260  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776264  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80776268  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 8077626C  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 80776270  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80776274  EC 01 00 2A */	fadds f0, f1, f0
/* 80776278  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 8077627C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80776280  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776284  80 63 00 00 */	lwz r3, 0(r3)
/* 80776288  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8077628C  4B 89 61 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80776290  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 80776294  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776298  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8077629C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 807762A0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807762A4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 807762A8  38 61 01 10 */	addi r3, r1, 0x110
/* 807762AC  38 9F 13 78 */	addi r4, r31, 0x1378
/* 807762B0  4B AF AC 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 807762B4  38 7F 13 78 */	addi r3, r31, 0x1378
/* 807762B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807762BC  7C 65 1B 78 */	mr r5, r3
/* 807762C0  4B BD 0D D0 */	b PSVECAdd
/* 807762C4  48 00 0B 74 */	b lbl_80776E38
lbl_807762C8:
/* 807762C8  38 7F 13 C8 */	addi r3, r31, 0x13c8
/* 807762CC  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 807762D0  C0 5E 01 A8 */	lfs f2, 0x1a8(r30)
/* 807762D4  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 807762D8  4B AF 97 64 */	b cLib_addCalc2__FPffff
/* 807762DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807762E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807762E4  80 63 00 00 */	lwz r3, 0(r3)
/* 807762E8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807762EC  4B 89 60 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 807762F0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807762F4  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 807762F8  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 807762FC  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80776300  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80776304  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80776308  38 61 01 10 */	addi r3, r1, 0x110
/* 8077630C  38 9F 13 78 */	addi r4, r31, 0x1378
/* 80776310  4B AF AB DC */	b MtxPosition__FP4cXyzP4cXyz
/* 80776314  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80776318  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8077631C  7C 65 1B 78 */	mr r5, r3
/* 80776320  4B BD 0D 70 */	b PSVECAdd
/* 80776324  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776328  D0 1F 13 D0 */	stfs f0, 0x13d0(r31)
/* 8077632C  48 00 0B 0C */	b lbl_80776E38
lbl_80776330:
/* 80776330  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80776334  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80776338  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077633C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776340  80 63 00 00 */	lwz r3, 0(r3)
/* 80776344  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80776348  4B 89 60 94 */	b mDoMtx_YrotS__FPA4_fs
/* 8077634C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80776350  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776354  80 63 00 00 */	lwz r3, 0(r3)
/* 80776358  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 8077635C  4B 89 60 40 */	b mDoMtx_XrotM__FPA4_fs
/* 80776360  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776364  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776368  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8077636C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80776370  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80776374  38 61 01 10 */	addi r3, r1, 0x110
/* 80776378  38 9F 13 84 */	addi r4, r31, 0x1384
/* 8077637C  4B AF AB 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 80776380  38 7F 13 84 */	addi r3, r31, 0x1384
/* 80776384  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80776388  7C 65 1B 78 */	mr r5, r3
/* 8077638C  4B BD 0D 04 */	b PSVECAdd
/* 80776390  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80776394  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776398  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8077639C  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 807763A0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807763A4  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 807763A8  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807763AC  2C 00 00 50 */	cmpwi r0, 0x50
/* 807763B0  40 82 00 14 */	bne lbl_807763C4
/* 807763B4  38 00 00 03 */	li r0, 3
/* 807763B8  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 807763BC  38 00 00 50 */	li r0, 0x50
/* 807763C0  B0 1F 13 74 */	sth r0, 0x1374(r31)
lbl_807763C4:
/* 807763C4  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807763C8  2C 00 00 50 */	cmpwi r0, 0x50
/* 807763CC  41 80 0A 6C */	blt lbl_80776E38
/* 807763D0  38 7F 13 CC */	addi r3, r31, 0x13cc
/* 807763D4  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 807763D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807763DC  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 807763E0  4B AF 96 5C */	b cLib_addCalc2__FPffff
/* 807763E4  48 00 0A 54 */	b lbl_80776E38
lbl_807763E8:
/* 807763E8  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 807763EC  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 807763F0  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807763F4  2C 00 00 01 */	cmpwi r0, 1
/* 807763F8  41 80 0A 40 */	blt lbl_80776E38
/* 807763FC  38 00 00 00 */	li r0, 0
/* 80776400  98 1C 06 B2 */	stb r0, 0x6b2(r28)
/* 80776404  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776408  D0 1F 13 CC */	stfs f0, 0x13cc(r31)
/* 8077640C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80776410  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80776414  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80776418  4B AF 07 1C */	b __mi__4cXyzCFRC3Vec
/* 8077641C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80776420  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80776424  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80776428  4B AF 07 5C */	b __ml__4cXyzCFf
/* 8077642C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80776430  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80776434  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80776438  4B AF 06 AC */	b __pl__4cXyzCFRC3Vec
/* 8077643C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80776440  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80776444  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80776448  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 8077644C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80776450  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80776454  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 80776458  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8077645C  EC 01 00 2A */	fadds f0, f1, f0
/* 80776460  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776464  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80776468  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077646C  80 63 00 00 */	lwz r3, 0(r3)
/* 80776470  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80776474  4B 89 5F 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80776478  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8077647C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776480  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80776484  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80776488  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 8077648C  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80776490  38 61 01 10 */	addi r3, r1, 0x110
/* 80776494  38 9F 13 78 */	addi r4, r31, 0x1378
/* 80776498  4B AF AA 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077649C  38 7F 13 78 */	addi r3, r31, 0x1378
/* 807764A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807764A4  7C 65 1B 78 */	mr r5, r3
/* 807764A8  4B BD 0B E8 */	b PSVECAdd
/* 807764AC  48 00 09 8C */	b lbl_80776E38
lbl_807764B0:
/* 807764B0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807764B4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807764B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807764BC  4B AF 06 78 */	b __mi__4cXyzCFRC3Vec
/* 807764C0  38 61 00 98 */	addi r3, r1, 0x98
/* 807764C4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807764C8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807764CC  4B AF 06 B8 */	b __ml__4cXyzCFf
/* 807764D0  38 61 00 8C */	addi r3, r1, 0x8c
/* 807764D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807764D8  38 A1 00 98 */	addi r5, r1, 0x98
/* 807764DC  4B AF 06 08 */	b __pl__4cXyzCFRC3Vec
/* 807764E0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807764E4  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 807764E8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807764EC  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807764F0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807764F4  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 807764F8  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 807764FC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80776500  EC 01 00 2A */	fadds f0, f1, f0
/* 80776504  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776508  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077650C  D0 1F 13 D0 */	stfs f0, 0x13d0(r31)
/* 80776510  48 00 09 28 */	b lbl_80776E38
lbl_80776514:
/* 80776514  38 61 00 80 */	addi r3, r1, 0x80
/* 80776518  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8077651C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80776520  4B AF 06 14 */	b __mi__4cXyzCFRC3Vec
/* 80776524  38 61 00 74 */	addi r3, r1, 0x74
/* 80776528  38 81 00 80 */	addi r4, r1, 0x80
/* 8077652C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80776530  4B AF 06 54 */	b __ml__4cXyzCFf
/* 80776534  38 61 00 68 */	addi r3, r1, 0x68
/* 80776538  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8077653C  38 A1 00 74 */	addi r5, r1, 0x74
/* 80776540  4B AF 05 A4 */	b __pl__4cXyzCFRC3Vec
/* 80776544  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80776548  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 8077654C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80776550  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776554  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80776558  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 8077655C  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 80776560  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80776564  EC 01 00 2A */	fadds f0, f1, f0
/* 80776568  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 8077656C  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776570  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80776574  40 81 00 B4 */	ble lbl_80776628
/* 80776578  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077657C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776580  80 63 00 00 */	lwz r3, 0(r3)
/* 80776584  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80776588  4B 89 5E 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8077658C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80776590  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776594  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80776598  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8077659C  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807765A0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 807765A4  38 61 01 10 */	addi r3, r1, 0x110
/* 807765A8  38 81 00 F8 */	addi r4, r1, 0xf8
/* 807765AC  4B AF A9 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 807765B0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 807765B4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807765B8  7C 65 1B 78 */	mr r5, r3
/* 807765BC  4B BD 0A D4 */	b PSVECAdd
/* 807765C0  38 7F 13 78 */	addi r3, r31, 0x1378
/* 807765C4  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 807765C8  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 807765CC  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807765D0  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 807765D4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807765D8  4B AF 94 64 */	b cLib_addCalc2__FPffff
/* 807765DC  38 7F 13 7C */	addi r3, r31, 0x137c
/* 807765E0  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 807765E4  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 807765E8  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807765EC  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 807765F0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807765F4  4B AF 94 48 */	b cLib_addCalc2__FPffff
/* 807765F8  38 7F 13 80 */	addi r3, r31, 0x1380
/* 807765FC  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80776600  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80776604  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80776608  C0 1F 13 D0 */	lfs f0, 0x13d0(r31)
/* 8077660C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80776610  4B AF 94 2C */	b cLib_addCalc2__FPffff
/* 80776614  38 7F 13 D0 */	addi r3, r31, 0x13d0
/* 80776618  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077661C  FC 40 08 90 */	fmr f2, f1
/* 80776620  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 80776624  4B AF 94 18 */	b cLib_addCalc2__FPffff
lbl_80776628:
/* 80776628  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 8077662C  2C 00 00 96 */	cmpwi r0, 0x96
/* 80776630  40 82 08 08 */	bne lbl_80776E38
/* 80776634  38 00 00 20 */	li r0, 0x20
/* 80776638  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 8077663C  38 60 00 00 */	li r3, 0
/* 80776640  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 80776644  38 00 00 0B */	li r0, 0xb
/* 80776648  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 8077664C  B0 7C 06 70 */	sth r3, 0x670(r28)
/* 80776650  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80776654  D0 1C 04 A8 */	stfs f0, 0x4a8(r28)
/* 80776658  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8077665C  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 80776660  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80776664  D0 1C 04 B0 */	stfs f0, 0x4b0(r28)
/* 80776668  38 00 00 01 */	li r0, 1
/* 8077666C  90 1C 06 64 */	stw r0, 0x664(r28)
/* 80776670  3B 20 00 01 */	li r25, 1
/* 80776674  C0 1F 13 84 */	lfs f0, 0x1384(r31)
/* 80776678  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8077667C  C0 1F 13 88 */	lfs f0, 0x1388(r31)
/* 80776680  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80776684  C0 1F 13 8C */	lfs f0, 0x138c(r31)
/* 80776688  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8077668C  C0 1F 13 78 */	lfs f0, 0x1378(r31)
/* 80776690  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80776694  C0 1F 13 7C */	lfs f0, 0x137c(r31)
/* 80776698  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8077669C  C0 1F 13 80 */	lfs f0, 0x1380(r31)
/* 807766A0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807766A4  38 7A 02 48 */	addi r3, r26, 0x248
/* 807766A8  38 81 00 5C */	addi r4, r1, 0x5c
/* 807766AC  38 A1 00 50 */	addi r5, r1, 0x50
/* 807766B0  4B A0 A5 68 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 807766B4  38 60 00 01 */	li r3, 1
/* 807766B8  38 80 FF FF */	li r4, -1
/* 807766BC  4B 8B 73 E0 */	b dComIfGs_onOneZoneSwitch__Fii
/* 807766C0  48 00 07 78 */	b lbl_80776E38
lbl_807766C4:
/* 807766C4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 807766C8  28 00 00 02 */	cmplwi r0, 2
/* 807766CC  41 82 00 2C */	beq lbl_807766F8
/* 807766D0  7F E3 FB 78 */	mr r3, r31
/* 807766D4  38 80 00 02 */	li r4, 2
/* 807766D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807766DC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807766E0  38 C0 00 00 */	li r6, 0
/* 807766E4  4B 8A 52 24 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807766E8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807766EC  60 00 00 02 */	ori r0, r0, 2
/* 807766F0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 807766F4  48 00 0C 1C */	b lbl_80777310
lbl_807766F8:
/* 807766F8  38 7A 02 48 */	addi r3, r26, 0x248
/* 807766FC  4B 9E AD D4 */	b Stop__9dCamera_cFv
/* 80776700  38 00 00 15 */	li r0, 0x15
/* 80776704  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776708  38 00 00 00 */	li r0, 0
/* 8077670C  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776710  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80776714  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 80776718  38 7A 02 48 */	addi r3, r26, 0x248
/* 8077671C  38 80 00 03 */	li r4, 3
/* 80776720  4B 9E C8 EC */	b SetTrimSize__9dCamera_cFl
/* 80776724  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80776728  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 8077672C  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 80776730  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776734  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 80776738  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 8077673C  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 80776740  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776744  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80776748  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 8077674C  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 80776750  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80776754  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776758  38 00 00 03 */	li r0, 3
/* 8077675C  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80776760  38 00 00 00 */	li r0, 0
/* 80776764  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80776768  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 8077676C  38 80 00 04 */	li r4, 4
/* 80776770  38 A0 00 00 */	li r5, 0
/* 80776774  38 C0 00 00 */	li r6, 0
/* 80776778  38 E0 00 00 */	li r7, 0
/* 8077677C  48 00 36 59 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80776780  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80776784  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80776788  80 63 00 00 */	lwz r3, 0(r3)
/* 8077678C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80776790  38 80 00 46 */	li r4, 0x46
/* 80776794  38 A0 00 00 */	li r5, 0
/* 80776798  4B B3 8C 70 */	b bgmStop__8Z2SeqMgrFUll
/* 8077679C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807767A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807767A4  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 807767A8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 807767AC  B0 03 4F A2 */	sth r0, 0x4fa2(r3)
/* 807767B0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 807767B4  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 807767B8  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 807767BC  A0 84 00 16 */	lhz r4, 0x16(r4)
/* 807767C0  4B 8B E1 E4 */	b offEventBit__11dSv_event_cFUs
lbl_807767C4:
/* 807767C4  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 807767C8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 807767CC  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 807767D0  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 807767D4  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 807767D8  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 807767DC  7F A3 EB 78 */	mr r3, r29
/* 807767E0  38 81 01 04 */	addi r4, r1, 0x104
/* 807767E4  38 A0 00 00 */	li r5, 0
/* 807767E8  38 C0 00 00 */	li r6, 0
/* 807767EC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807767F0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807767F4  7D 89 03 A6 */	mtctr r12
/* 807767F8  4E 80 04 21 */	bctrl 
/* 807767FC  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776800  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80776804  41 80 06 34 */	blt lbl_80776E38
/* 80776808  40 82 00 1C */	bne lbl_80776824
/* 8077680C  38 7F 13 E0 */	addi r3, r31, 0x13e0
/* 80776810  7F E4 FB 78 */	mr r4, r31
/* 80776814  38 A0 07 D1 */	li r5, 0x7d1
/* 80776818  38 C0 00 00 */	li r6, 0
/* 8077681C  38 E0 00 00 */	li r7, 0
/* 80776820  4B AD 37 70 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80776824:
/* 80776824  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776828  2C 00 00 32 */	cmpwi r0, 0x32
/* 8077682C  40 82 00 24 */	bne lbl_80776850
/* 80776830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80776834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80776838  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8077683C  7F E4 FB 78 */	mr r4, r31
/* 80776840  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80776844  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80776848  38 C0 00 00 */	li r6, 0
/* 8077684C  4B 8C C0 C8 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80776850:
/* 80776850  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776854  2C 00 00 37 */	cmpwi r0, 0x37
/* 80776858  40 82 00 1C */	bne lbl_80776874
/* 8077685C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776860  38 80 00 01 */	li r4, 1
/* 80776864  38 A0 00 04 */	li r5, 4
/* 80776868  38 C0 00 00 */	li r6, 0
/* 8077686C  38 E0 00 00 */	li r7, 0
/* 80776870  48 00 35 65 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80776874:
/* 80776874  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776878  2C 00 00 82 */	cmpwi r0, 0x82
/* 8077687C  40 82 00 1C */	bne lbl_80776898
/* 80776880  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776884  38 80 00 35 */	li r4, 0x35
/* 80776888  38 A0 00 00 */	li r5, 0
/* 8077688C  38 C0 00 00 */	li r6, 0
/* 80776890  38 E0 00 00 */	li r7, 0
/* 80776894  48 00 35 41 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80776898:
/* 80776898  38 7F 13 E0 */	addi r3, r31, 0x13e0
/* 8077689C  7F E4 FB 78 */	mr r4, r31
/* 807768A0  38 A0 00 00 */	li r5, 0
/* 807768A4  38 C0 00 00 */	li r6, 0
/* 807768A8  4B AD 3A 30 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 807768AC  2C 03 00 00 */	cmpwi r3, 0
/* 807768B0  41 82 05 88 */	beq lbl_80776E38
/* 807768B4  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807768B8  2C 00 00 82 */	cmpwi r0, 0x82
/* 807768BC  40 80 00 1C */	bge lbl_807768D8
/* 807768C0  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 807768C4  38 80 00 35 */	li r4, 0x35
/* 807768C8  38 A0 00 00 */	li r5, 0
/* 807768CC  38 C0 00 00 */	li r6, 0
/* 807768D0  38 E0 00 00 */	li r7, 0
/* 807768D4  48 00 35 01 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807768D8:
/* 807768D8  38 00 00 16 */	li r0, 0x16
/* 807768DC  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 807768E0  38 00 00 00 */	li r0, 0
/* 807768E4  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 807768E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807768EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807768F0  80 63 00 00 */	lwz r3, 0(r3)
/* 807768F4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807768F8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000036@ha */
/* 807768FC  38 84 00 36 */	addi r4, r4, 0x0036 /* 0x01000036@l */
/* 80776900  38 A0 00 00 */	li r5, 0
/* 80776904  38 C0 00 00 */	li r6, 0
/* 80776908  4B B3 87 08 */	b bgmStart__8Z2SeqMgrFUlUll
/* 8077690C  48 00 05 2C */	b lbl_80776E38
lbl_80776910:
/* 80776910  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776914  2C 00 00 32 */	cmpwi r0, 0x32
/* 80776918  40 82 00 1C */	bne lbl_80776934
/* 8077691C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80776920  38 80 00 17 */	li r4, 0x17
/* 80776924  38 A0 00 00 */	li r5, 0
/* 80776928  38 C0 00 00 */	li r6, 0
/* 8077692C  38 E0 00 00 */	li r7, 0
/* 80776930  48 00 34 A5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80776934:
/* 80776934  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776938  2C 00 00 46 */	cmpwi r0, 0x46
/* 8077693C  41 80 00 58 */	blt lbl_80776994
/* 80776940  40 82 00 34 */	bne lbl_80776974
/* 80776944  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80776948  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 8077694C  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80776950  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776954  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80776958  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 8077695C  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80776960  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776964  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 80776968  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 8077696C  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 80776970  D0 1F 13 80 */	stfs f0, 0x1380(r31)
lbl_80776974:
/* 80776974  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776978  2C 00 00 50 */	cmpwi r0, 0x50
/* 8077697C  41 80 00 18 */	blt lbl_80776994
/* 80776980  38 7F 13 C8 */	addi r3, r31, 0x13c8
/* 80776984  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80776988  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8077698C  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80776990  4B AF 90 AC */	b cLib_addCalc2__FPffff
lbl_80776994:
/* 80776994  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776998  2C 00 00 6E */	cmpwi r0, 0x6e
/* 8077699C  40 82 04 9C */	bne lbl_80776E38
/* 807769A0  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 807769A4  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 807769A8  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 807769AC  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807769B0  C0 1E 02 00 */	lfs f0, 0x200(r30)
/* 807769B4  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 807769B8  C0 1E 02 04 */	lfs f0, 0x204(r30)
/* 807769BC  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 807769C0  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 807769C4  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 807769C8  C0 1E 02 0C */	lfs f0, 0x20c(r30)
/* 807769CC  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 807769D0  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 807769D4  D0 1F 13 C8 */	stfs f0, 0x13c8(r31)
/* 807769D8  38 00 00 17 */	li r0, 0x17
/* 807769DC  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 807769E0  38 00 00 00 */	li r0, 0
/* 807769E4  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 807769E8  48 00 04 50 */	b lbl_80776E38
lbl_807769EC:
/* 807769EC  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 807769F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807769F4  40 82 00 14 */	bne lbl_80776A08
/* 807769F8  38 00 00 03 */	li r0, 3
/* 807769FC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80776A00  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80776A04  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80776A08:
/* 80776A08  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776A0C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80776A10  40 82 04 28 */	bne lbl_80776E38
/* 80776A14  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80776A18  D0 1F 13 9C */	stfs f0, 0x139c(r31)
/* 80776A1C  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80776A20  D0 1F 13 A0 */	stfs f0, 0x13a0(r31)
/* 80776A24  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80776A28  D0 1F 13 A4 */	stfs f0, 0x13a4(r31)
/* 80776A2C  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80776A30  D0 1F 13 90 */	stfs f0, 0x1390(r31)
/* 80776A34  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80776A38  D0 1F 13 94 */	stfs f0, 0x1394(r31)
/* 80776A3C  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80776A40  D0 1F 13 98 */	stfs f0, 0x1398(r31)
/* 80776A44  C0 3F 13 90 */	lfs f1, 0x1390(r31)
/* 80776A48  C0 1F 13 78 */	lfs f0, 0x1378(r31)
/* 80776A4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776A50  FC 00 02 10 */	fabs f0, f0
/* 80776A54  FC 00 00 18 */	frsp f0, f0
/* 80776A58  D0 1F 13 A8 */	stfs f0, 0x13a8(r31)
/* 80776A5C  C0 3F 13 94 */	lfs f1, 0x1394(r31)
/* 80776A60  C0 1F 13 7C */	lfs f0, 0x137c(r31)
/* 80776A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776A68  FC 00 02 10 */	fabs f0, f0
/* 80776A6C  FC 00 00 18 */	frsp f0, f0
/* 80776A70  D0 1F 13 AC */	stfs f0, 0x13ac(r31)
/* 80776A74  C0 3F 13 98 */	lfs f1, 0x1398(r31)
/* 80776A78  C0 1F 13 80 */	lfs f0, 0x1380(r31)
/* 80776A7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776A80  FC 00 02 10 */	fabs f0, f0
/* 80776A84  FC 00 00 18 */	frsp f0, f0
/* 80776A88  D0 1F 13 B0 */	stfs f0, 0x13b0(r31)
/* 80776A8C  C0 3F 13 9C */	lfs f1, 0x139c(r31)
/* 80776A90  C0 1F 13 84 */	lfs f0, 0x1384(r31)
/* 80776A94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776A98  FC 00 02 10 */	fabs f0, f0
/* 80776A9C  FC 00 00 18 */	frsp f0, f0
/* 80776AA0  D0 1F 13 B4 */	stfs f0, 0x13b4(r31)
/* 80776AA4  C0 3F 13 A0 */	lfs f1, 0x13a0(r31)
/* 80776AA8  C0 1F 13 88 */	lfs f0, 0x1388(r31)
/* 80776AAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776AB0  FC 00 02 10 */	fabs f0, f0
/* 80776AB4  FC 00 00 18 */	frsp f0, f0
/* 80776AB8  D0 1F 13 B8 */	stfs f0, 0x13b8(r31)
/* 80776ABC  C0 3F 13 A4 */	lfs f1, 0x13a4(r31)
/* 80776AC0  C0 1F 13 8C */	lfs f0, 0x138c(r31)
/* 80776AC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776AC8  FC 00 02 10 */	fabs f0, f0
/* 80776ACC  FC 00 00 18 */	frsp f0, f0
/* 80776AD0  D0 1F 13 BC */	stfs f0, 0x13bc(r31)
/* 80776AD4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776AD8  D0 1F 13 D0 */	stfs f0, 0x13d0(r31)
/* 80776ADC  38 00 00 18 */	li r0, 0x18
/* 80776AE0  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776AE4  38 00 00 00 */	li r0, 0
/* 80776AE8  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776AEC  48 00 03 4C */	b lbl_80776E38
lbl_80776AF0:
/* 80776AF0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80776AF4  D0 1F 13 D0 */	stfs f0, 0x13d0(r31)
/* 80776AF8  7F E3 FB 78 */	mr r3, r31
/* 80776AFC  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80776B00  4B FF EF 21 */	bl cam_3d_morf__FP11e_rdy_classf
/* 80776B04  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776B08  2C 00 00 32 */	cmpwi r0, 0x32
/* 80776B0C  40 82 00 0C */	bne lbl_80776B18
/* 80776B10  38 00 00 04 */	li r0, 4
/* 80776B14  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_80776B18:
/* 80776B18  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776B1C  2C 00 00 87 */	cmpwi r0, 0x87
/* 80776B20  40 82 03 18 */	bne lbl_80776E38
/* 80776B24  38 00 00 19 */	li r0, 0x19
/* 80776B28  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776B2C  38 00 00 00 */	li r0, 0
/* 80776B30  B0 1F 13 72 */	sth r0, 0x1372(r31)
lbl_80776B34:
/* 80776B34  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 80776B38  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776B3C  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 80776B40  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80776B44  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 80776B48  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80776B4C  3B 00 00 01 */	li r24, 1
/* 80776B50  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776B54  2C 00 00 64 */	cmpwi r0, 0x64
/* 80776B58  40 82 02 E0 */	bne lbl_80776E38
/* 80776B5C  38 00 00 1A */	li r0, 0x1a
/* 80776B60  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776B64  38 00 00 00 */	li r0, 0
/* 80776B68  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776B6C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80776B70  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80776B74  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 80776B78  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80776B7C  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80776B80  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80776B84  7F A3 EB 78 */	mr r3, r29
/* 80776B88  38 81 01 04 */	addi r4, r1, 0x104
/* 80776B8C  38 A0 00 00 */	li r5, 0
/* 80776B90  38 C0 00 00 */	li r6, 0
/* 80776B94  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80776B98  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80776B9C  7D 89 03 A6 */	mtctr r12
/* 80776BA0  4E 80 04 21 */	bctrl 
lbl_80776BA4:
/* 80776BA4  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80776BA8  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776BAC  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 80776BB0  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80776BB4  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 80776BB8  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80776BBC  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776BC0  2C 00 00 73 */	cmpwi r0, 0x73
/* 80776BC4  41 80 00 28 */	blt lbl_80776BEC
/* 80776BC8  38 00 00 1B */	li r0, 0x1b
/* 80776BCC  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776BD0  38 00 00 00 */	li r0, 0
/* 80776BD4  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776BD8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776BDC  D0 1F 13 AC */	stfs f0, 0x13ac(r31)
/* 80776BE0  D0 1F 13 A8 */	stfs f0, 0x13a8(r31)
/* 80776BE4  D0 1F 13 D0 */	stfs f0, 0x13d0(r31)
/* 80776BE8  48 00 02 50 */	b lbl_80776E38
lbl_80776BEC:
/* 80776BEC  3B 00 00 02 */	li r24, 2
/* 80776BF0  48 00 02 48 */	b lbl_80776E38
lbl_80776BF4:
/* 80776BF4  3B 00 00 03 */	li r24, 3
/* 80776BF8  38 7F 13 7C */	addi r3, r31, 0x137c
/* 80776BFC  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80776C00  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80776C04  C0 7F 13 AC */	lfs f3, 0x13ac(r31)
/* 80776C08  4B AF 8E 34 */	b cLib_addCalc2__FPffff
/* 80776C0C  38 7F 13 AC */	addi r3, r31, 0x13ac
/* 80776C10  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80776C14  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80776C18  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 80776C1C  4B AF 8E 20 */	b cLib_addCalc2__FPffff
/* 80776C20  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80776C24  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 80776C28  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80776C2C  C0 7F 13 A8 */	lfs f3, 0x13a8(r31)
/* 80776C30  4B AF 8E 0C */	b cLib_addCalc2__FPffff
/* 80776C34  38 7F 13 A8 */	addi r3, r31, 0x13a8
/* 80776C38  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80776C3C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80776C40  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 80776C44  4B AF 8D F8 */	b cLib_addCalc2__FPffff
/* 80776C48  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776C4C  2C 00 00 73 */	cmpwi r0, 0x73
/* 80776C50  40 82 01 E8 */	bne lbl_80776E38
/* 80776C54  38 00 00 1C */	li r0, 0x1c
/* 80776C58  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776C5C  38 00 00 00 */	li r0, 0
/* 80776C60  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776C64  38 00 00 04 */	li r0, 4
/* 80776C68  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80776C6C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776C70  D0 1F 13 C0 */	stfs f0, 0x13c0(r31)
/* 80776C74  38 00 02 E5 */	li r0, 0x2e5
/* 80776C78  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80776C7C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80776C80  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80776C84  38 81 00 12 */	addi r4, r1, 0x12
/* 80776C88  4B 8A 2B 70 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80776C8C  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 80776C90  D0 03 0A 08 */	stfs f0, 0xa08(r3)
/* 80776C94  3B 00 00 00 */	li r24, 0
lbl_80776C98:
/* 80776C98  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80776C9C  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80776CA0  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80776CA4  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776CA8  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80776CAC  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80776CB0  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80776CB4  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776CB8  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80776CBC  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80776CC0  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80776CC4  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80776CC8  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776CCC  2C 00 00 50 */	cmpwi r0, 0x50
/* 80776CD0  40 82 01 68 */	bne lbl_80776E38
/* 80776CD4  38 00 00 1D */	li r0, 0x1d
/* 80776CD8  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776CDC  38 00 00 00 */	li r0, 0
/* 80776CE0  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776CE4  48 00 01 54 */	b lbl_80776E38
lbl_80776CE8:
/* 80776CE8  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 80776CEC  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80776CF0  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 80776CF4  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776CF8  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 80776CFC  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80776D00  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 80776D04  D0 1F 13 78 */	stfs f0, 0x1378(r31)
/* 80776D08  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80776D0C  D0 1F 13 7C */	stfs f0, 0x137c(r31)
/* 80776D10  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 80776D14  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80776D18  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776D1C  2C 00 00 73 */	cmpwi r0, 0x73
/* 80776D20  40 82 01 18 */	bne lbl_80776E38
/* 80776D24  38 00 00 1E */	li r0, 0x1e
/* 80776D28  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 80776D2C  38 00 00 00 */	li r0, 0
/* 80776D30  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80776D34  38 00 E0 00 */	li r0, -8192
/* 80776D38  B0 1F 13 D4 */	sth r0, 0x13d4(r31)
/* 80776D3C  48 00 00 FC */	b lbl_80776E38
lbl_80776D40:
/* 80776D40  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80776D44  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80776D48  80 63 00 00 */	lwz r3, 0(r3)
/* 80776D4C  A8 9F 13 D4 */	lha r4, 0x13d4(r31)
/* 80776D50  4B 89 56 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80776D54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776D58  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80776D5C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80776D60  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80776D64  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 80776D68  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80776D6C  38 61 01 10 */	addi r3, r1, 0x110
/* 80776D70  38 9F 13 78 */	addi r4, r31, 0x1378
/* 80776D74  4B AF A1 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 80776D78  38 7F 13 78 */	addi r3, r31, 0x1378
/* 80776D7C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80776D80  7C 65 1B 78 */	mr r5, r3
/* 80776D84  4B BD 03 0C */	b PSVECAdd
/* 80776D88  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80776D8C  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80776D90  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80776D94  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776D98  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80776D9C  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80776DA0  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 80776DA4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80776DA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80776DAC  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776DB0  A8 7F 13 D4 */	lha r3, 0x13d4(r31)
/* 80776DB4  38 03 00 E6 */	addi r0, r3, 0xe6
/* 80776DB8  B0 1F 13 D4 */	sth r0, 0x13d4(r31)
/* 80776DBC  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776DC0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80776DC4  41 80 00 74 */	blt lbl_80776E38
/* 80776DC8  40 82 00 1C */	bne lbl_80776DE4
/* 80776DCC  38 7F 13 E0 */	addi r3, r31, 0x13e0
/* 80776DD0  7F E4 FB 78 */	mr r4, r31
/* 80776DD4  38 A0 07 D1 */	li r5, 0x7d1
/* 80776DD8  38 C0 00 00 */	li r6, 0
/* 80776DDC  38 E0 00 00 */	li r7, 0
/* 80776DE0  4B AD 31 B0 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_80776DE4:
/* 80776DE4  38 7F 13 E0 */	addi r3, r31, 0x13e0
/* 80776DE8  7F E4 FB 78 */	mr r4, r31
/* 80776DEC  38 A0 00 00 */	li r5, 0
/* 80776DF0  38 C0 00 00 */	li r6, 0
/* 80776DF4  4B AD 34 E4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80776DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80776DFC  41 82 00 08 */	beq lbl_80776E04
/* 80776E00  3B 20 00 01 */	li r25, 1
lbl_80776E04:
/* 80776E04  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776E08  2C 00 00 28 */	cmpwi r0, 0x28
/* 80776E0C  41 80 00 2C */	blt lbl_80776E38
/* 80776E10  4B AC 14 1C */	b getStatus__12dMsgObject_cFv
/* 80776E14  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80776E18  20 60 00 01 */	subfic r3, r0, 1
/* 80776E1C  30 03 FF FF */	addic r0, r3, -1
/* 80776E20  7C 00 19 10 */	subfe r0, r0, r3
/* 80776E24  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80776E28  40 82 00 10 */	bne lbl_80776E38
/* 80776E2C  3B 20 00 01 */	li r25, 1
/* 80776E30  48 00 00 08 */	b lbl_80776E38
lbl_80776E34:
/* 80776E34  3B 20 00 01 */	li r25, 1
lbl_80776E38:
/* 80776E38  7F 00 07 75 */	extsb. r0, r24
/* 80776E3C  41 82 00 F0 */	beq lbl_80776F2C
/* 80776E40  38 00 02 E5 */	li r0, 0x2e5
/* 80776E44  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80776E48  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80776E4C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80776E50  38 81 00 10 */	addi r4, r1, 0x10
/* 80776E54  4B 8A 29 A4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80776E58  28 03 00 00 */	cmplwi r3, 0
/* 80776E5C  41 82 00 D0 */	beq lbl_80776F2C
/* 80776E60  7F 00 07 74 */	extsb r0, r24
/* 80776E64  2C 00 00 03 */	cmpwi r0, 3
/* 80776E68  40 82 00 20 */	bne lbl_80776E88
/* 80776E6C  C0 03 0A 00 */	lfs f0, 0xa00(r3)
/* 80776E70  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80776E74  C0 03 0A 04 */	lfs f0, 0xa04(r3)
/* 80776E78  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80776E7C  C0 03 0A 08 */	lfs f0, 0xa08(r3)
/* 80776E80  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80776E84  48 00 00 1C */	b lbl_80776EA0
lbl_80776E88:
/* 80776E88  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80776E8C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80776E90  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80776E94  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80776E98  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80776E9C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
lbl_80776EA0:
/* 80776EA0  7F 00 07 74 */	extsb r0, r24
/* 80776EA4  2C 00 00 01 */	cmpwi r0, 1
/* 80776EA8  40 82 00 1C */	bne lbl_80776EC4
/* 80776EAC  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80776EB0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80776EB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80776EB8  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80776EBC  C3 FE 01 28 */	lfs f31, 0x128(r30)
/* 80776EC0  48 00 00 08 */	b lbl_80776EC8
lbl_80776EC4:
/* 80776EC4  C3 FE 00 9C */	lfs f31, 0x9c(r30)
lbl_80776EC8:
/* 80776EC8  A8 1F 13 72 */	lha r0, 0x1372(r31)
/* 80776ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80776ED0  40 82 00 20 */	bne lbl_80776EF0
/* 80776ED4  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80776ED8  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 80776EDC  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80776EE0  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 80776EE4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80776EE8  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 80776EEC  48 00 00 40 */	b lbl_80776F2C
lbl_80776EF0:
/* 80776EF0  38 7F 13 84 */	addi r3, r31, 0x1384
/* 80776EF4  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80776EF8  FC 40 F8 90 */	fmr f2, f31
/* 80776EFC  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80776F00  4B AF 8B 3C */	b cLib_addCalc2__FPffff
/* 80776F04  38 7F 13 88 */	addi r3, r31, 0x1388
/* 80776F08  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80776F0C  FC 40 F8 90 */	fmr f2, f31
/* 80776F10  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80776F14  4B AF 8B 28 */	b cLib_addCalc2__FPffff
/* 80776F18  38 7F 13 8C */	addi r3, r31, 0x138c
/* 80776F1C  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80776F20  FC 40 F8 90 */	fmr f2, f31
/* 80776F24  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80776F28  4B AF 8B 14 */	b cLib_addCalc2__FPffff
lbl_80776F2C:
/* 80776F2C  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 80776F30  2C 00 00 0B */	cmpwi r0, 0xb
/* 80776F34  41 80 00 A4 */	blt lbl_80776FD8
/* 80776F38  2C 00 00 14 */	cmpwi r0, 0x14
/* 80776F3C  40 80 00 9C */	bge lbl_80776FD8
/* 80776F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80776F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80776F48  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 80776F4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80776F50  41 82 02 18 */	beq lbl_80777168
/* 80776F54  C0 5E 02 68 */	lfs f2, 0x268(r30)
/* 80776F58  D0 5F 04 D0 */	stfs f2, 0x4d0(r31)
/* 80776F5C  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 80776F60  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80776F64  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 80776F68  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80776F6C  38 00 44 A3 */	li r0, 0x44a3
/* 80776F70  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80776F74  D0 5C 04 D0 */	stfs f2, 0x4d0(r28)
/* 80776F78  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80776F7C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80776F80  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80776F84  38 00 00 20 */	li r0, 0x20
/* 80776F88  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 80776F8C  38 60 00 00 */	li r3, 0
/* 80776F90  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 80776F94  38 00 00 0B */	li r0, 0xb
/* 80776F98  B0 1C 06 6E */	sth r0, 0x66e(r28)
/* 80776F9C  B0 7C 06 70 */	sth r3, 0x670(r28)
/* 80776FA0  98 7C 06 B2 */	stb r3, 0x6b2(r28)
/* 80776FA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80776FA8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80776FAC  3B 20 00 01 */	li r25, 1
/* 80776FB0  38 60 00 01 */	li r3, 1
/* 80776FB4  38 80 FF FF */	li r4, -1
/* 80776FB8  4B 8B 6A E4 */	b dComIfGs_onOneZoneSwitch__Fii
/* 80776FBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80776FC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80776FC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80776FC8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80776FCC  38 80 00 00 */	li r4, 0
/* 80776FD0  4B B3 D1 94 */	b setBattleBgmOff__8Z2SeqMgrFb
/* 80776FD4  48 00 01 94 */	b lbl_80777168
lbl_80776FD8:
/* 80776FD8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80776FDC  41 80 01 8C */	blt lbl_80777168
/* 80776FE0  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80776FE4  40 80 01 84 */	bge lbl_80777168
/* 80776FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80776FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80776FF0  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 80776FF4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80776FF8  41 82 01 70 */	beq lbl_80777168
/* 80776FFC  3B 20 00 02 */	li r25, 2
/* 80777000  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80777004  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80777008  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 8077700C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80777010  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80777014  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80777018  7F A3 EB 78 */	mr r3, r29
/* 8077701C  38 81 01 04 */	addi r4, r1, 0x104
/* 80777020  38 A0 00 00 */	li r5, 0
/* 80777024  38 C0 00 00 */	li r6, 0
/* 80777028  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8077702C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80777030  7D 89 03 A6 */	mtctr r12
/* 80777034  4E 80 04 21 */	bctrl 
/* 80777038  3C 60 80 77 */	lis r3, s_adel_sub__FPvPv@ha
/* 8077703C  38 63 5B 04 */	addi r3, r3, s_adel_sub__FPvPv@l
/* 80777040  7F E4 FB 78 */	mr r4, r31
/* 80777044  4B 8A A2 F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80777048  38 00 00 02 */	li r0, 2
/* 8077704C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80777050  7F E3 FB 78 */	mr r3, r31
/* 80777054  38 80 00 4C */	li r4, 0x4c
/* 80777058  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8077705C  38 A0 00 02 */	li r5, 2
/* 80777060  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80777064  4B FF 4E 1D */	bl anm_init__FP11e_rdy_classifUcf
/* 80777068  38 61 00 18 */	addi r3, r1, 0x18
/* 8077706C  38 80 00 00 */	li r4, 0
/* 80777070  38 A0 40 00 */	li r5, 0x4000
/* 80777074  38 C0 00 00 */	li r6, 0
/* 80777078  4B AF 03 7C */	b __ct__5csXyzFsss
/* 8077707C  C0 1E 02 74 */	lfs f0, 0x274(r30)
/* 80777080  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80777084  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 80777088  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8077708C  C0 1E 02 7C */	lfs f0, 0x27c(r30)
/* 80777090  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80777094  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80777098  7C 07 07 74 */	extsb r7, r0
/* 8077709C  38 00 00 00 */	li r0, 0
/* 807770A0  90 01 00 08 */	stw r0, 8(r1)
/* 807770A4  38 60 02 E5 */	li r3, 0x2e5
/* 807770A8  28 1F 00 00 */	cmplwi r31, 0
/* 807770AC  41 82 00 0C */	beq lbl_807770B8
/* 807770B0  80 9F 00 04 */	lwz r4, 4(r31)
/* 807770B4  48 00 00 08 */	b lbl_807770BC
lbl_807770B8:
/* 807770B8  38 80 FF FF */	li r4, -1
lbl_807770BC:
/* 807770BC  3C A0 80 00 */	lis r5, 0x8000 /* 0x80000011@ha */
/* 807770C0  38 A5 00 11 */	addi r5, r5, 0x0011 /* 0x80000011@l */
/* 807770C4  38 C1 01 04 */	addi r6, r1, 0x104
/* 807770C8  39 01 00 18 */	addi r8, r1, 0x18
/* 807770CC  39 20 00 00 */	li r9, 0
/* 807770D0  39 40 FF FF */	li r10, -1
/* 807770D4  4B 8A 2E 1C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807770D8  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 807770DC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 807770E0  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 807770E4  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 807770E8  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 807770EC  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 807770F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807770F4  7C 07 07 74 */	extsb r7, r0
/* 807770F8  38 00 00 00 */	li r0, 0
/* 807770FC  90 01 00 08 */	stw r0, 8(r1)
/* 80777100  38 60 02 E5 */	li r3, 0x2e5
/* 80777104  28 1F 00 00 */	cmplwi r31, 0
/* 80777108  41 82 00 0C */	beq lbl_80777114
/* 8077710C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80777110  48 00 00 08 */	b lbl_80777118
lbl_80777114:
/* 80777114  38 80 FF FF */	li r4, -1
lbl_80777118:
/* 80777118  3C A0 80 00 */	lis r5, 0x8000 /* 0x80000011@ha */
/* 8077711C  38 A5 00 11 */	addi r5, r5, 0x0011 /* 0x80000011@l */
/* 80777120  38 C1 01 04 */	addi r6, r1, 0x104
/* 80777124  39 01 00 18 */	addi r8, r1, 0x18
/* 80777128  39 20 00 00 */	li r9, 0
/* 8077712C  39 40 FF FF */	li r10, -1
/* 80777130  4B 8A 2D C0 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80777134  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80777138  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8077713C  80 63 00 00 */	lwz r3, 0(r3)
/* 80777140  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80777144  38 80 00 1E */	li r4, 0x1e
/* 80777148  38 A0 00 00 */	li r5, 0
/* 8077714C  4B B3 82 BC */	b bgmStop__8Z2SeqMgrFUll
/* 80777150  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80777154  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80777158  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 8077715C  4B 89 0E 7C */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 80777160  38 00 00 1E */	li r0, 0x1e
/* 80777164  98 1F 0A 7E */	stb r0, 0xa7e(r31)
lbl_80777168:
/* 80777168  7F 20 07 75 */	extsb. r0, r25
/* 8077716C  41 82 01 08 */	beq lbl_80777274
/* 80777170  7F 20 07 74 */	extsb r0, r25
/* 80777174  2C 00 00 02 */	cmpwi r0, 2
/* 80777178  40 82 00 BC */	bne lbl_80777234
/* 8077717C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80777180  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80777184  80 63 00 00 */	lwz r3, 0(r3)
/* 80777188  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8077718C  4B 89 52 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80777190  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777194  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80777198  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8077719C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 807771A0  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 807771A4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 807771A8  38 61 01 10 */	addi r3, r1, 0x110
/* 807771AC  38 9F 13 78 */	addi r4, r31, 0x1378
/* 807771B0  4B AF 9D 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 807771B4  38 7F 13 78 */	addi r3, r31, 0x1378
/* 807771B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807771BC  7C 65 1B 78 */	mr r5, r3
/* 807771C0  4B BC FE D0 */	b PSVECAdd
/* 807771C4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807771C8  D0 1F 13 84 */	stfs f0, 0x1384(r31)
/* 807771CC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807771D0  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807771D4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807771D8  D0 1F 13 8C */	stfs f0, 0x138c(r31)
/* 807771DC  C0 3F 13 88 */	lfs f1, 0x1388(r31)
/* 807771E0  C0 1E 02 8C */	lfs f0, 0x28c(r30)
/* 807771E4  EC 01 00 2A */	fadds f0, f1, f0
/* 807771E8  D0 1F 13 88 */	stfs f0, 0x1388(r31)
/* 807771EC  C0 1F 13 84 */	lfs f0, 0x1384(r31)
/* 807771F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807771F4  C0 1F 13 88 */	lfs f0, 0x1388(r31)
/* 807771F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807771FC  C0 1F 13 8C */	lfs f0, 0x138c(r31)
/* 80777200  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80777204  C0 1F 13 78 */	lfs f0, 0x1378(r31)
/* 80777208  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8077720C  C0 1F 13 7C */	lfs f0, 0x137c(r31)
/* 80777210  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80777214  C0 1F 13 80 */	lfs f0, 0x1380(r31)
/* 80777218  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8077721C  38 7A 02 48 */	addi r3, r26, 0x248
/* 80777220  38 81 00 44 */	addi r4, r1, 0x44
/* 80777224  38 A1 00 38 */	addi r5, r1, 0x38
/* 80777228  C0 3F 13 C8 */	lfs f1, 0x13c8(r31)
/* 8077722C  38 C0 00 00 */	li r6, 0
/* 80777230  4B A0 99 70 */	b Reset__9dCamera_cF4cXyz4cXyzfs
lbl_80777234:
/* 80777234  38 7A 02 48 */	addi r3, r26, 0x248
/* 80777238  4B 9E A2 74 */	b Start__9dCamera_cFv
/* 8077723C  38 7A 02 48 */	addi r3, r26, 0x248
/* 80777240  38 80 00 00 */	li r4, 0
/* 80777244  4B 9E BD C8 */	b SetTrimSize__9dCamera_cFl
/* 80777248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077724C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80777250  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80777254  4B 8C B2 14 */	b reset__14dEvt_control_cFv
/* 80777258  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 8077725C  38 00 00 02 */	li r0, 2
/* 80777260  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80777264  38 00 00 01 */	li r0, 1
/* 80777268  90 03 06 14 */	stw r0, 0x614(r3)
/* 8077726C  38 00 00 00 */	li r0, 0
/* 80777270  B0 1F 13 70 */	sth r0, 0x1370(r31)
lbl_80777274:
/* 80777274  A8 1F 13 70 */	lha r0, 0x1370(r31)
/* 80777278  2C 00 00 00 */	cmpwi r0, 0
/* 8077727C  40 81 00 94 */	ble lbl_80777310
/* 80777280  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80777284  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80777288  A8 1F 13 74 */	lha r0, 0x1374(r31)
/* 8077728C  1C 00 02 58 */	mulli r0, r0, 0x258
/* 80777290  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80777294  7C 63 02 14 */	add r3, r3, r0
/* 80777298  C0 23 00 04 */	lfs f1, 4(r3)
/* 8077729C  C0 1F 13 CC */	lfs f0, 0x13cc(r31)
/* 807772A0  FC 00 00 50 */	fneg f0, f0
/* 807772A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807772A8  FC 00 00 1E */	fctiwz f0, f0
/* 807772AC  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 807772B0  80 C1 01 24 */	lwz r6, 0x124(r1)
/* 807772B4  C0 1F 13 84 */	lfs f0, 0x1384(r31)
/* 807772B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807772BC  C0 1F 13 88 */	lfs f0, 0x1388(r31)
/* 807772C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807772C4  C0 1F 13 8C */	lfs f0, 0x138c(r31)
/* 807772C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807772CC  C0 1F 13 78 */	lfs f0, 0x1378(r31)
/* 807772D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807772D4  C0 1F 13 7C */	lfs f0, 0x137c(r31)
/* 807772D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807772DC  C0 1F 13 80 */	lfs f0, 0x1380(r31)
/* 807772E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807772E4  38 7A 02 48 */	addi r3, r26, 0x248
/* 807772E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 807772EC  38 A1 00 20 */	addi r5, r1, 0x20
/* 807772F0  C0 3F 13 C8 */	lfs f1, 0x13c8(r31)
/* 807772F4  4B A0 98 4C */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 807772F8  A8 7F 13 72 */	lha r3, 0x1372(r31)
/* 807772FC  38 03 00 01 */	addi r0, r3, 1
/* 80777300  B0 1F 13 72 */	sth r0, 0x1372(r31)
/* 80777304  A8 7F 13 74 */	lha r3, 0x1374(r31)
/* 80777308  38 03 00 01 */	addi r0, r3, 1
/* 8077730C  B0 1F 13 74 */	sth r0, 0x1374(r31)
lbl_80777310:
/* 80777310  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80777314  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80777318  39 61 01 50 */	addi r11, r1, 0x150
/* 8077731C  4B BE AE F4 */	b _restgpr_23
/* 80777320  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80777324  7C 08 03 A6 */	mtlr r0
/* 80777328  38 21 01 60 */	addi r1, r1, 0x160
/* 8077732C  4E 80 00 20 */	blr 
