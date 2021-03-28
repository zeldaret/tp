lbl_80692AF4:
/* 80692AF4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80692AF8  7C 08 02 A6 */	mflr r0
/* 80692AFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80692B00  39 61 00 50 */	addi r11, r1, 0x50
/* 80692B04  4B CC F6 D8 */	b _savegpr_29
/* 80692B08  7C 7D 1B 78 */	mr r29, r3
/* 80692B0C  3C 80 80 69 */	lis r4, lit_3788@ha
/* 80692B10  3B E4 46 90 */	addi r31, r4, lit_3788@l
/* 80692B14  3B C0 00 00 */	li r30, 0
/* 80692B18  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80692B1C  28 00 00 0C */	cmplwi r0, 0xc
/* 80692B20  41 81 04 0C */	bgt lbl_80692F2C
/* 80692B24  3C 80 80 69 */	lis r4, lit_4457@ha
/* 80692B28  38 84 47 B4 */	addi r4, r4, lit_4457@l
/* 80692B2C  54 00 10 3A */	slwi r0, r0, 2
/* 80692B30  7C 04 00 2E */	lwzx r0, r4, r0
/* 80692B34  7C 09 03 A6 */	mtctr r0
/* 80692B38  4E 80 04 20 */	bctr 
lbl_80692B3C:
/* 80692B3C  38 80 00 08 */	li r4, 8
/* 80692B40  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80692B44  38 A0 00 00 */	li r5, 0
/* 80692B48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80692B4C  4B FF E7 05 */	bl anm_init__FP10e_bu_classifUcf
/* 80692B50  38 00 00 01 */	li r0, 1
/* 80692B54  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692B58  48 00 03 D4 */	b lbl_80692F2C
lbl_80692B5C:
/* 80692B5C  A8 7D 06 BA */	lha r3, 0x6ba(r29)
/* 80692B60  38 03 17 70 */	addi r0, r3, 0x1770
/* 80692B64  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80692B68  80 1D 07 38 */	lwz r0, 0x738(r29)
/* 80692B6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80692B70  41 82 03 BC */	beq lbl_80692F2C
/* 80692B74  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80692B78  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80692B7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80692B80  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80692B84  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80692B88  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80692B8C  38 00 00 02 */	li r0, 2
/* 80692B90  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692B94  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80692B98  4B BD 4D F4 */	b cM_rndFX__Ff
/* 80692B9C  FC 00 08 1E */	fctiwz f0, f1
/* 80692BA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692BA4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80692BA8  A8 1D 06 B6 */	lha r0, 0x6b6(r29)
/* 80692BAC  7C 00 1A 14 */	add r0, r0, r3
/* 80692BB0  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 80692BB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80692BB8  4B BD 4D 9C */	b cM_rndF__Ff
/* 80692BBC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80692BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80692BC4  40 80 00 10 */	bge lbl_80692BD4
/* 80692BC8  38 00 40 00 */	li r0, 0x4000
/* 80692BCC  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 80692BD0  48 00 00 0C */	b lbl_80692BDC
lbl_80692BD4:
/* 80692BD4  38 00 C0 00 */	li r0, -16384
/* 80692BD8  B0 1D 06 BC */	sth r0, 0x6bc(r29)
lbl_80692BDC:
/* 80692BDC  3B C0 00 01 */	li r30, 1
/* 80692BE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070365@ha */
/* 80692BE4  38 03 03 65 */	addi r0, r3, 0x0365 /* 0x00070365@l */
/* 80692BE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80692BEC  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80692BF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80692BF4  38 A0 00 14 */	li r5, 0x14
/* 80692BF8  38 C0 FF FF */	li r6, -1
/* 80692BFC  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80692C00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80692C04  7D 89 03 A6 */	mtctr r12
/* 80692C08  4E 80 04 21 */	bctrl 
/* 80692C0C  48 00 03 20 */	b lbl_80692F2C
lbl_80692C10:
/* 80692C10  A8 7D 06 BA */	lha r3, 0x6ba(r29)
/* 80692C14  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80692C18  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80692C1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80692C20  FC 00 00 1E */	fctiwz f0, f0
/* 80692C24  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692C28  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80692C2C  7C 03 02 14 */	add r0, r3, r0
/* 80692C30  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80692C34  80 1D 07 38 */	lwz r0, 0x738(r29)
/* 80692C38  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80692C3C  41 82 02 F0 */	beq lbl_80692F2C
/* 80692C40  38 00 00 03 */	li r0, 3
/* 80692C44  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692C48  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80692C4C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80692C50:
/* 80692C50  A8 7D 06 BA */	lha r3, 0x6ba(r29)
/* 80692C54  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80692C58  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80692C5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80692C60  FC 00 00 1E */	fctiwz f0, f0
/* 80692C64  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692C68  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80692C6C  7C 03 02 14 */	add r0, r3, r0
/* 80692C70  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80692C74  A8 7D 06 B6 */	lha r3, 0x6b6(r29)
/* 80692C78  A8 1D 06 B8 */	lha r0, 0x6b8(r29)
/* 80692C7C  7C 03 02 14 */	add r0, r3, r0
/* 80692C80  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 80692C84  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80692C88  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692C8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80692C90  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80692C94  4B BD CD A8 */	b cLib_addCalc2__FPffff
/* 80692C98  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80692C9C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692CA0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80692CA4  4C 40 13 82 */	cror 2, 0, 2
/* 80692CA8  40 82 00 54 */	bne lbl_80692CFC
/* 80692CAC  38 00 00 00 */	li r0, 0
/* 80692CB0  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
/* 80692CB4  A8 1D 06 BA */	lha r0, 0x6ba(r29)
/* 80692CB8  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 80692CBC  41 81 00 98 */	bgt lbl_80692D54
/* 80692CC0  2C 00 F8 30 */	cmpwi r0, -2000
/* 80692CC4  40 81 00 90 */	ble lbl_80692D54
/* 80692CC8  38 00 00 04 */	li r0, 4
/* 80692CCC  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692CD0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80692CD4  4B BD 4C 80 */	b cM_rndF__Ff
/* 80692CD8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80692CDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80692CE0  FC 00 00 1E */	fctiwz f0, f0
/* 80692CE4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692CE8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80692CEC  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 80692CF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80692CF4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80692CF8  48 00 00 5C */	b lbl_80692D54
lbl_80692CFC:
/* 80692CFC  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 80692D00  2C 00 00 00 */	cmpwi r0, 0
/* 80692D04  40 82 00 50 */	bne lbl_80692D54
/* 80692D08  4B BD 4C 4C */	b cM_rndF__Ff
/* 80692D0C  FC 00 08 1E */	fctiwz f0, f1
/* 80692D10  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692D14  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80692D18  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80692D1C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80692D20  4B BD 4C 6C */	b cM_rndFX__Ff
/* 80692D24  FC 00 08 1E */	fctiwz f0, f1
/* 80692D28  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80692D2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80692D30  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
/* 80692D34  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80692D38  4B BD 4C 1C */	b cM_rndF__Ff
/* 80692D3C  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 80692D40  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80692D44  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80692D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80692D4C  40 81 00 08 */	ble lbl_80692D54
/* 80692D50  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80692D54:
/* 80692D54  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80692D58  A8 9D 06 BC */	lha r4, 0x6bc(r29)
/* 80692D5C  38 A0 00 01 */	li r5, 1
/* 80692D60  38 C0 04 00 */	li r6, 0x400
/* 80692D64  4B BD D8 A4 */	b cLib_addCalcAngleS2__FPssss
/* 80692D68  48 00 01 C4 */	b lbl_80692F2C
lbl_80692D6C:
/* 80692D6C  38 7D 06 BA */	addi r3, r29, 0x6ba
/* 80692D70  38 80 00 00 */	li r4, 0
/* 80692D74  38 A0 00 01 */	li r5, 1
/* 80692D78  38 C0 10 00 */	li r6, 0x1000
/* 80692D7C  4B BD D8 8C */	b cLib_addCalcAngleS2__FPssss
/* 80692D80  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80692D84  A8 9D 06 BC */	lha r4, 0x6bc(r29)
/* 80692D88  38 A0 00 01 */	li r5, 1
/* 80692D8C  38 C0 10 00 */	li r6, 0x1000
/* 80692D90  4B BD D8 78 */	b cLib_addCalcAngleS2__FPssss
/* 80692D94  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 80692D98  2C 00 00 00 */	cmpwi r0, 0
/* 80692D9C  40 82 01 90 */	bne lbl_80692F2C
/* 80692DA0  38 00 00 0A */	li r0, 0xa
/* 80692DA4  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692DA8  7F A3 EB 78 */	mr r3, r29
/* 80692DAC  38 80 00 05 */	li r4, 5
/* 80692DB0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80692DB4  38 A0 00 02 */	li r5, 2
/* 80692DB8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80692DBC  4B FF E4 95 */	bl anm_init__FP10e_bu_classifUcf
/* 80692DC0  48 00 01 6C */	b lbl_80692F2C
lbl_80692DC4:
/* 80692DC4  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 80692DC8  2C 00 00 00 */	cmpwi r0, 0
/* 80692DCC  40 82 01 60 */	bne lbl_80692F2C
/* 80692DD0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80692DD4  4B BD 4B 80 */	b cM_rndF__Ff
/* 80692DD8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80692DDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80692DE0  FC 00 00 1E */	fctiwz f0, f0
/* 80692DE4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80692DE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80692DEC  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 80692DF0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692DF4  4B BD 4B 60 */	b cM_rndF__Ff
/* 80692DF8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80692DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80692E00  FC 00 00 1E */	fctiwz f0, f0
/* 80692E04  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80692E08  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80692E0C  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 80692E10  38 00 00 0C */	li r0, 0xc
/* 80692E14  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692E18  48 00 01 14 */	b lbl_80692F2C
lbl_80692E1C:
/* 80692E1C  80 1D 07 38 */	lwz r0, 0x738(r29)
/* 80692E20  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80692E24  41 82 01 08 */	beq lbl_80692F2C
/* 80692E28  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692E2C  4B BD 4B 28 */	b cM_rndF__Ff
/* 80692E30  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80692E34  EC 00 08 2A */	fadds f0, f0, f1
/* 80692E38  FC 00 00 1E */	fctiwz f0, f0
/* 80692E3C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80692E40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80692E44  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 80692E48  38 00 00 0C */	li r0, 0xc
/* 80692E4C  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692E50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80692E54  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80692E58  3B C0 00 01 */	li r30, 1
/* 80692E5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070367@ha */
/* 80692E60  38 03 03 67 */	addi r0, r3, 0x0367 /* 0x00070367@l */
/* 80692E64  90 01 00 08 */	stw r0, 8(r1)
/* 80692E68  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80692E6C  38 81 00 08 */	addi r4, r1, 8
/* 80692E70  38 A0 00 00 */	li r5, 0
/* 80692E74  38 C0 FF FF */	li r6, -1
/* 80692E78  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80692E7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80692E80  7D 89 03 A6 */	mtctr r12
/* 80692E84  4E 80 04 21 */	bctrl 
/* 80692E88  48 00 00 A4 */	b lbl_80692F2C
lbl_80692E8C:
/* 80692E8C  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 80692E90  2C 00 00 00 */	cmpwi r0, 0
/* 80692E94  40 82 00 98 */	bne lbl_80692F2C
/* 80692E98  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 80692E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80692EA0  40 82 00 3C */	bne lbl_80692EDC
/* 80692EA4  38 00 00 02 */	li r0, 2
/* 80692EA8  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80692EAC  38 00 00 00 */	li r0, 0
/* 80692EB0  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692EB4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80692EB8  4B BD 4A 9C */	b cM_rndF__Ff
/* 80692EBC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80692EC0  EC 40 08 2A */	fadds f2, f0, f1
/* 80692EC4  7F A3 EB 78 */	mr r3, r29
/* 80692EC8  38 80 00 07 */	li r4, 7
/* 80692ECC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692ED0  38 A0 00 02 */	li r5, 2
/* 80692ED4  4B FF E3 7D */	bl anm_init__FP10e_bu_classifUcf
/* 80692ED8  48 00 00 54 */	b lbl_80692F2C
lbl_80692EDC:
/* 80692EDC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80692EE0  4B BD 4A AC */	b cM_rndFX__Ff
/* 80692EE4  FC 00 08 1E */	fctiwz f0, f1
/* 80692EE8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80692EEC  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80692EF0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80692EF4  7C 00 1A 14 */	add r0, r0, r3
/* 80692EF8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80692EFC  38 00 00 0B */	li r0, 0xb
/* 80692F00  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 80692F04  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692F08  4B BD 4A 4C */	b cM_rndF__Ff
/* 80692F0C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80692F10  EC 00 08 2A */	fadds f0, f0, f1
/* 80692F14  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80692F18  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80692F1C  4B BD 4A 38 */	b cM_rndF__Ff
/* 80692F20  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80692F24  EC 00 08 2A */	fadds f0, f0, f1
/* 80692F28  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80692F2C:
/* 80692F2C  A8 1D 06 74 */	lha r0, 0x674(r29)
/* 80692F30  2C 00 00 0A */	cmpwi r0, 0xa
/* 80692F34  40 80 00 64 */	bge lbl_80692F98
/* 80692F38  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80692F3C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80692F40  80 63 00 00 */	lwz r3, 0(r3)
/* 80692F44  A8 9D 06 B6 */	lha r4, 0x6b6(r29)
/* 80692F48  4B 97 94 94 */	b mDoMtx_YrotS__FPA4_fs
/* 80692F4C  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 80692F50  2C 00 00 00 */	cmpwi r0, 0
/* 80692F54  40 82 00 28 */	bne lbl_80692F7C
/* 80692F58  80 1D 07 38 */	lwz r0, 0x738(r29)
/* 80692F5C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80692F60  41 82 00 1C */	beq lbl_80692F7C
/* 80692F64  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80692F68  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80692F6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80692F70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80692F74  38 00 00 1E */	li r0, 0x1e
/* 80692F78  B0 1D 06 AC */	sth r0, 0x6ac(r29)
lbl_80692F7C:
/* 80692F7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80692F80  3C 60 80 69 */	lis r3, l_HIO@ha
/* 80692F84  38 63 49 68 */	addi r3, r3, l_HIO@l
/* 80692F88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80692F8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80692F90  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80692F94  48 00 00 64 */	b lbl_80692FF8
lbl_80692F98:
/* 80692F98  38 7D 06 B6 */	addi r3, r29, 0x6b6
/* 80692F9C  38 80 00 00 */	li r4, 0
/* 80692FA0  38 A0 00 02 */	li r5, 2
/* 80692FA4  38 C0 08 00 */	li r6, 0x800
/* 80692FA8  4B BD D6 60 */	b cLib_addCalcAngleS2__FPssss
/* 80692FAC  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80692FB0  38 80 00 00 */	li r4, 0
/* 80692FB4  38 A0 00 02 */	li r5, 2
/* 80692FB8  38 C0 08 00 */	li r6, 0x800
/* 80692FBC  4B BD D6 4C */	b cLib_addCalcAngleS2__FPssss
/* 80692FC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80692FC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80692FC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80692FCC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80692FD0  4B 97 94 0C */	b mDoMtx_YrotS__FPA4_fs
/* 80692FD4  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 80692FD8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80692FDC  3C 80 80 69 */	lis r4, l_HIO@ha
/* 80692FE0  38 84 49 68 */	addi r4, r4, l_HIO@l
/* 80692FE4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80692FE8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80692FEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80692FF0  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80692FF4  4B BD CA 48 */	b cLib_addCalc2__FPffff
lbl_80692FF8:
/* 80692FF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80692FFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80693000  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80693004  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80693008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8069300C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80693010  38 81 00 10 */	addi r4, r1, 0x10
/* 80693014  4B BD DE D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80693018  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8069301C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80693020  EC 01 00 2A */	fadds f0, f1, f0
/* 80693024  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80693028  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8069302C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80693030  EC 01 00 2A */	fadds f0, f1, f0
/* 80693034  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80693038  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8069303C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80693040  EC 01 00 2A */	fadds f0, f1, f0
/* 80693044  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80693048  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8069304C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80693050  EC 01 00 28 */	fsubs f0, f1, f0
/* 80693054  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80693058  7F C3 F3 78 */	mr r3, r30
/* 8069305C  39 61 00 50 */	addi r11, r1, 0x50
/* 80693060  4B CC F1 C8 */	b _restgpr_29
/* 80693064  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80693068  7C 08 03 A6 */	mtlr r0
/* 8069306C  38 21 00 50 */	addi r1, r1, 0x50
/* 80693070  4E 80 00 20 */	blr 
