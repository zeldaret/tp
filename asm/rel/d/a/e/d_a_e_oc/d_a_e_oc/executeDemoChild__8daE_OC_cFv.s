lbl_80732B04:
/* 80732B04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80732B08  7C 08 02 A6 */	mflr r0
/* 80732B0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80732B10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80732B14  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80732B18  7C 7E 1B 78 */	mr r30, r3
/* 80732B1C  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 80732B20  3B E3 5B 28 */	addi r31, r3, lit_3911@l /* 0x80735B28@l */
/* 80732B24  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80732B28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80732B2C  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 80732B30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80732B34  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80732B38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80732B3C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80732B40  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 80732B44  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80732B48  38 9E 06 74 */	addi r4, r30, 0x674
/* 80732B4C  4B 8E 6E 71 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80732B50  80 9E 06 74 */	lwz r4, 0x674(r30)
/* 80732B54  28 04 00 00 */	cmplwi r4, 0
/* 80732B58  41 82 02 F4 */	beq lbl_80732E4C
/* 80732B5C  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80732B60  28 00 00 08 */	cmplwi r0, 8
/* 80732B64  41 81 02 E8 */	bgt lbl_80732E4C
/* 80732B68  3C 60 80 73 */	lis r3, lit_6593@ha /* 0x80735EC8@ha */
/* 80732B6C  38 63 5E C8 */	addi r3, r3, lit_6593@l /* 0x80735EC8@l */
/* 80732B70  54 00 10 3A */	slwi r0, r0, 2
/* 80732B74  7C 03 00 2E */	lwzx r0, r3, r0
/* 80732B78  7C 09 03 A6 */	mtctr r0
/* 80732B7C  4E 80 04 20 */	bctr 
lbl_80732B80:
/* 80732B80  80 04 06 B0 */	lwz r0, 0x6b0(r4)
/* 80732B84  2C 00 00 01 */	cmpwi r0, 1
/* 80732B88  40 82 02 C4 */	bne lbl_80732E4C
/* 80732B8C  38 00 00 00 */	li r0, 0
/* 80732B90  98 1E 06 EB */	stb r0, 0x6eb(r30)
/* 80732B94  7F C3 F3 78 */	mr r3, r30
/* 80732B98  38 80 00 1C */	li r4, 0x1c
/* 80732B9C  38 A0 00 02 */	li r5, 2
/* 80732BA0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732BA4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80732BA8  4B FF B6 CD */	bl setBck__8daE_OC_cFiUcff
/* 80732BAC  38 00 00 01 */	li r0, 1
/* 80732BB0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732BB4  48 00 02 98 */	b lbl_80732E4C
lbl_80732BB8:
/* 80732BB8  80 04 06 B0 */	lwz r0, 0x6b0(r4)
/* 80732BBC  2C 00 00 05 */	cmpwi r0, 5
/* 80732BC0  40 82 02 8C */	bne lbl_80732E4C
/* 80732BC4  7F C3 F3 78 */	mr r3, r30
/* 80732BC8  38 80 00 03 */	li r4, 3
/* 80732BCC  38 A0 00 00 */	li r5, 0
/* 80732BD0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732BD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80732BD8  4B FF B6 9D */	bl setBck__8daE_OC_cFiUcff
/* 80732BDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A3@ha */
/* 80732BE0  38 03 01 A3 */	addi r0, r3, 0x01A3 /* 0x000701A3@l */
/* 80732BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80732BE8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732BEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80732BF0  38 A0 FF FF */	li r5, -1
/* 80732BF4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732BF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80732BFC  7D 89 03 A6 */	mtctr r12
/* 80732C00  4E 80 04 21 */	bctrl 
/* 80732C04  38 00 00 05 */	li r0, 5
/* 80732C08  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732C0C  48 00 02 40 */	b lbl_80732E4C
lbl_80732C10:
/* 80732C10  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732C14  38 80 00 01 */	li r4, 1
/* 80732C18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80732C1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80732C20  40 82 00 18 */	bne lbl_80732C38
/* 80732C24  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80732C28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80732C2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80732C30  41 82 00 08 */	beq lbl_80732C38
/* 80732C34  38 80 00 00 */	li r4, 0
lbl_80732C38:
/* 80732C38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80732C3C  41 82 02 10 */	beq lbl_80732E4C
/* 80732C40  7F C3 F3 78 */	mr r3, r30
/* 80732C44  38 80 00 10 */	li r4, 0x10
/* 80732C48  38 A0 00 00 */	li r5, 0
/* 80732C4C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732C50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80732C54  4B FF B6 21 */	bl setBck__8daE_OC_cFiUcff
/* 80732C58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B2@ha */
/* 80732C5C  38 03 01 B2 */	addi r0, r3, 0x01B2 /* 0x000701B2@l */
/* 80732C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 80732C64  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732C68  38 81 00 10 */	addi r4, r1, 0x10
/* 80732C6C  38 A0 FF FF */	li r5, -1
/* 80732C70  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732C74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80732C78  7D 89 03 A6 */	mtctr r12
/* 80732C7C  4E 80 04 21 */	bctrl 
/* 80732C80  38 00 00 06 */	li r0, 6
/* 80732C84  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732C88  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80732C8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80732C90  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80732C94  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80732C98  48 00 01 B4 */	b lbl_80732E4C
lbl_80732C9C:
/* 80732C9C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732CA0  38 80 00 01 */	li r4, 1
/* 80732CA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80732CA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80732CAC  40 82 00 18 */	bne lbl_80732CC4
/* 80732CB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80732CB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80732CB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80732CBC  41 82 00 08 */	beq lbl_80732CC4
/* 80732CC0  38 80 00 00 */	li r4, 0
lbl_80732CC4:
/* 80732CC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80732CC8  41 82 00 1C */	beq lbl_80732CE4
/* 80732CCC  7F C3 F3 78 */	mr r3, r30
/* 80732CD0  38 80 00 11 */	li r4, 0x11
/* 80732CD4  38 A0 00 00 */	li r5, 0
/* 80732CD8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732CDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80732CE0  4B FF B5 95 */	bl setBck__8daE_OC_cFiUcff
lbl_80732CE4:
/* 80732CE4  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 80732CE8  80 03 06 B0 */	lwz r0, 0x6b0(r3)
/* 80732CEC  2C 00 00 07 */	cmpwi r0, 7
/* 80732CF0  40 82 01 5C */	bne lbl_80732E4C
/* 80732CF4  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 80732CF8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80732CFC  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80732D00  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80732D04  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80732D08  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80732D0C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80732D10  38 81 00 18 */	addi r4, r1, 0x18
/* 80732D14  7C 65 1B 78 */	mr r5, r3
/* 80732D18  4B C1 43 79 */	bl PSVECAdd
/* 80732D1C  7F C3 F3 78 */	mr r3, r30
/* 80732D20  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80732D24  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80732D28  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80732D2C  4B 8E 79 E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80732D30  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80732D34  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80732D38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80732D3C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80732D40  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80732D44  38 00 00 07 */	li r0, 7
/* 80732D48  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732D4C  48 00 01 00 */	b lbl_80732E4C
lbl_80732D50:
/* 80732D50  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 80732D54  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80732D58  41 82 00 F4 */	beq lbl_80732E4C
/* 80732D5C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 80732D60  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 80732D64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80732D68  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732D6C  38 81 00 0C */	addi r4, r1, 0xc
/* 80732D70  38 A0 00 00 */	li r5, 0
/* 80732D74  38 C0 FF FF */	li r6, -1
/* 80732D78  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732D7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80732D80  7D 89 03 A6 */	mtctr r12
/* 80732D84  4E 80 04 21 */	bctrl 
/* 80732D88  38 7E 0E 60 */	addi r3, r30, 0xe60
/* 80732D8C  38 9E 0E 64 */	addi r4, r30, 0xe64
/* 80732D90  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80732D94  38 C0 00 00 */	li r6, 0
/* 80732D98  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80732D9C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80732DA0  39 00 00 01 */	li r8, 1
/* 80732DA4  4B 8E A2 7D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80732DA8  7F C3 F3 78 */	mr r3, r30
/* 80732DAC  38 80 00 12 */	li r4, 0x12
/* 80732DB0  38 A0 00 00 */	li r5, 0
/* 80732DB4  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80732DB8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80732DBC  4B FF B4 B9 */	bl setBck__8daE_OC_cFiUcff
/* 80732DC0  38 00 00 08 */	li r0, 8
/* 80732DC4  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80732DC8  48 00 00 84 */	b lbl_80732E4C
lbl_80732DCC:
/* 80732DCC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732DD0  38 63 00 0C */	addi r3, r3, 0xc
/* 80732DD4  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80732DD8  4B BF 56 55 */	bl checkPass__12J3DFrameCtrlFf
/* 80732DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80732DE0  41 82 00 2C */	beq lbl_80732E0C
/* 80732DE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017E@ha */
/* 80732DE8  38 03 01 7E */	addi r0, r3, 0x017E /* 0x0007017E@l */
/* 80732DEC  90 01 00 08 */	stw r0, 8(r1)
/* 80732DF0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80732DF4  38 81 00 08 */	addi r4, r1, 8
/* 80732DF8  38 A0 FF FF */	li r5, -1
/* 80732DFC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80732E00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80732E04  7D 89 03 A6 */	mtctr r12
/* 80732E08  4E 80 04 21 */	bctrl 
lbl_80732E0C:
/* 80732E0C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80732E10  38 80 00 01 */	li r4, 1
/* 80732E14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80732E18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80732E1C  40 82 00 18 */	bne lbl_80732E34
/* 80732E20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80732E24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80732E28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80732E2C  41 82 00 08 */	beq lbl_80732E34
/* 80732E30  38 80 00 00 */	li r4, 0
lbl_80732E34:
/* 80732E34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80732E38  41 82 00 14 */	beq lbl_80732E4C
/* 80732E3C  7F C3 F3 78 */	mr r3, r30
/* 80732E40  38 80 00 03 */	li r4, 3
/* 80732E44  38 A0 00 00 */	li r5, 0
/* 80732E48  4B FF AE 75 */	bl setActionMode__8daE_OC_cFii
lbl_80732E4C:
/* 80732E4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80732E50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80732E54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80732E58  7C 08 03 A6 */	mtlr r0
/* 80732E5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80732E60  4E 80 00 20 */	blr 
