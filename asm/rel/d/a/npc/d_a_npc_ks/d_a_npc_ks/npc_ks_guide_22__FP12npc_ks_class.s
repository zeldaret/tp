lbl_80A56A1C:
/* 80A56A1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A56A20  7C 08 02 A6 */	mflr r0
/* 80A56A24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A56A28  39 61 00 30 */	addi r11, r1, 0x30
/* 80A56A2C  4B 90 B7 B1 */	bl _savegpr_29
/* 80A56A30  7C 7D 1B 78 */	mr r29, r3
/* 80A56A34  3C 80 80 A6 */	lis r4, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A56A38  3B E4 DE FC */	addi r31, r4, lit_4030@l /* 0x80A5DEFC@l */
/* 80A56A3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A56A40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A56A44  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A56A48  4B 5C 3D 99 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A56A4C  D0 3D 05 C4 */	stfs f1, 0x5c4(r29)
/* 80A56A50  3B C0 00 01 */	li r30, 1
/* 80A56A54  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A56A58  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A56A5C  FC 00 00 1E */	fctiwz f0, f0
/* 80A56A60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A56A64  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A56A68  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A56A6C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A56A70  41 82 03 74 */	beq lbl_80A56DE4
/* 80A56A74  40 80 00 2C */	bge lbl_80A56AA0
/* 80A56A78  2C 00 00 02 */	cmpwi r0, 2
/* 80A56A7C  41 82 01 E4 */	beq lbl_80A56C60
/* 80A56A80  40 80 00 14 */	bge lbl_80A56A94
/* 80A56A84  2C 00 00 00 */	cmpwi r0, 0
/* 80A56A88  41 82 00 3C */	beq lbl_80A56AC4
/* 80A56A8C  40 80 00 68 */	bge lbl_80A56AF4
/* 80A56A90  48 00 05 60 */	b lbl_80A56FF0
lbl_80A56A94:
/* 80A56A94  2C 00 00 05 */	cmpwi r0, 5
/* 80A56A98  41 82 02 D0 */	beq lbl_80A56D68
/* 80A56A9C  48 00 05 54 */	b lbl_80A56FF0
lbl_80A56AA0:
/* 80A56AA0  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A56AA4  41 82 04 2C */	beq lbl_80A56ED0
/* 80A56AA8  40 80 00 10 */	bge lbl_80A56AB8
/* 80A56AAC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A56AB0  40 80 03 DC */	bge lbl_80A56E8C
/* 80A56AB4  48 00 05 3C */	b lbl_80A56FF0
lbl_80A56AB8:
/* 80A56AB8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A56ABC  40 80 05 34 */	bge lbl_80A56FF0
/* 80A56AC0  48 00 04 C4 */	b lbl_80A56F84
lbl_80A56AC4:
/* 80A56AC4  7F A3 EB 78 */	mr r3, r29
/* 80A56AC8  38 80 00 1A */	li r4, 0x1a
/* 80A56ACC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A56AD0  38 A0 00 02 */	li r5, 2
/* 80A56AD4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56AD8  4B FF 26 CD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56ADC  38 00 00 01 */	li r0, 1
/* 80A56AE0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56AE4  38 00 00 00 */	li r0, 0
/* 80A56AE8  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A56AEC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A56AF0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A56AF4:
/* 80A56AF4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A56AF8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80A56AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A56B00  41 81 00 20 */	bgt lbl_80A56B20
/* 80A56B04  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56B08  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A56B0C  3C 60 80 A6 */	lis r3, guide_path_22@ha /* 0x80A5F584@ha */
/* 80A56B10  38 83 F5 84 */	addi r4, r3, guide_path_22@l /* 0x80A5F584@l */
/* 80A56B14  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A56B18  2C 00 00 00 */	cmpwi r0, 0
/* 80A56B1C  40 80 00 70 */	bge lbl_80A56B8C
lbl_80A56B20:
/* 80A56B20  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A56B24  80 03 FE A4 */	lwz r0, call_pt@l(r3)  /* 0x80A5FEA4@l */
/* 80A56B28  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A56B2C  41 82 00 20 */	beq lbl_80A56B4C
/* 80A56B30  7F A3 EB 78 */	mr r3, r29
/* 80A56B34  38 80 00 08 */	li r4, 8
/* 80A56B38  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56B3C  38 A0 00 02 */	li r5, 2
/* 80A56B40  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56B44  4B FF 26 61 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56B48  48 00 00 1C */	b lbl_80A56B64
lbl_80A56B4C:
/* 80A56B4C  7F A3 EB 78 */	mr r3, r29
/* 80A56B50  38 80 00 07 */	li r4, 7
/* 80A56B54  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56B58  38 A0 00 02 */	li r5, 2
/* 80A56B5C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56B60  4B FF 26 45 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56B64:
/* 80A56B64  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A56B68  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A56B6C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A56B70  38 03 00 01 */	addi r0, r3, 1
/* 80A56B74  90 04 00 00 */	stw r0, 0(r4)
/* 80A56B78  38 00 00 0A */	li r0, 0xa
/* 80A56B7C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56B80  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A56B84  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A56B88  48 00 04 68 */	b lbl_80A56FF0
lbl_80A56B8C:
/* 80A56B8C  41 82 00 74 */	beq lbl_80A56C00
/* 80A56B90  7F A3 EB 78 */	mr r3, r29
/* 80A56B94  38 80 00 0C */	li r4, 0xc
/* 80A56B98  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A56B9C  38 A0 00 02 */	li r5, 2
/* 80A56BA0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56BA4  4B FF 26 01 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56BA8  3C 60 80 A6 */	lis r3, guide_path_22@ha /* 0x80A5F584@ha */
/* 80A56BAC  38 83 F5 84 */	addi r4, r3, guide_path_22@l /* 0x80A5F584@l */
/* 80A56BB0  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56BB4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56BB8  7C 64 02 14 */	add r3, r4, r0
/* 80A56BBC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A56BC0  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A56BC4  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56BC8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56BCC  7C 64 02 14 */	add r3, r4, r0
/* 80A56BD0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A56BD4  D0 1D 08 F4 */	stfs f0, 0x8f4(r29)
/* 80A56BD8  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56BDC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56BE0  7C 64 02 14 */	add r3, r4, r0
/* 80A56BE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A56BE8  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A56BEC  38 00 00 02 */	li r0, 2
/* 80A56BF0  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56BF4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A56BF8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A56BFC  48 00 03 F4 */	b lbl_80A56FF0
lbl_80A56C00:
/* 80A56C00  7C 64 2A 14 */	add r3, r4, r5
/* 80A56C04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A56C08  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A56C0C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56C10  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56C14  7C 64 02 14 */	add r3, r4, r0
/* 80A56C18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A56C1C  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A56C20  38 00 00 05 */	li r0, 5
/* 80A56C24  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56C28  3C 60 80 A6 */	lis r3, l_HIO@ha /* 0x80A5FEB8@ha */
/* 80A56C2C  38 63 FE B8 */	addi r3, r3, l_HIO@l /* 0x80A5FEB8@l */
/* 80A56C30  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A56C34  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A56C38  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56C3C  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A56C40  41 82 03 B0 */	beq lbl_80A56FF0
/* 80A56C44  7F A3 EB 78 */	mr r3, r29
/* 80A56C48  38 80 00 1A */	li r4, 0x1a
/* 80A56C4C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A56C50  38 A0 00 02 */	li r5, 2
/* 80A56C54  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56C58  4B FF 25 4D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56C5C  48 00 03 94 */	b lbl_80A56FF0
lbl_80A56C60:
/* 80A56C60  3B C0 00 00 */	li r30, 0
/* 80A56C64  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A56C68  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A56C6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A56C70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A56C74  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A56C78  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A56C7C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A56C80  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A56C84  4B 81 09 F1 */	bl cM_atan2s__Fff
/* 80A56C88  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A56C8C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80A56C90  C0 3D 08 F4 */	lfs f1, 0x8f4(r29)
/* 80A56C94  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56C98  C0 7F 01 38 */	lfs f3, 0x138(r31)
/* 80A56C9C  4B 81 8D A1 */	bl cLib_addCalc2__FPffff
/* 80A56CA0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80A56CA4  C0 3D 08 F4 */	lfs f1, 0x8f4(r29)
/* 80A56CA8  C0 1F 04 30 */	lfs f0, 0x430(r31)
/* 80A56CAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A56CB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56CB4  4C 41 13 82 */	cror 2, 1, 2
/* 80A56CB8  40 82 00 28 */	bne lbl_80A56CE0
/* 80A56CBC  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56CC0  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A56CC4  41 82 00 1C */	beq lbl_80A56CE0
/* 80A56CC8  7F A3 EB 78 */	mr r3, r29
/* 80A56CCC  38 80 00 1A */	li r4, 0x1a
/* 80A56CD0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A56CD4  38 A0 00 02 */	li r5, 2
/* 80A56CD8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56CDC  4B FF 24 C9 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56CE0:
/* 80A56CE0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80A56CE4  C0 3D 08 F4 */	lfs f1, 0x8f4(r29)
/* 80A56CE8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A56CEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A56CF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56CF4  4C 41 13 82 */	cror 2, 1, 2
/* 80A56CF8  40 82 00 2C */	bne lbl_80A56D24
/* 80A56CFC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80A56D00  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A56D04  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56D08  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80A56D0C  4B 81 8D 31 */	bl cLib_addCalc2__FPffff
/* 80A56D10  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80A56D14  C0 3D 08 F8 */	lfs f1, 0x8f8(r29)
/* 80A56D18  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56D1C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80A56D20  4B 81 8D 1D */	bl cLib_addCalc2__FPffff
lbl_80A56D24:
/* 80A56D24  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80A56D28  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A56D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A56D30  4C 41 13 82 */	cror 2, 1, 2
/* 80A56D34  40 82 02 BC */	bne lbl_80A56FF0
/* 80A56D38  C0 1D 08 F0 */	lfs f0, 0x8f0(r29)
/* 80A56D3C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A56D40  C0 1D 08 F4 */	lfs f0, 0x8f4(r29)
/* 80A56D44  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A56D48  C0 1D 08 F8 */	lfs f0, 0x8f8(r29)
/* 80A56D4C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A56D50  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A56D54  38 03 00 01 */	addi r0, r3, 1
/* 80A56D58  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A56D5C  38 00 00 01 */	li r0, 1
/* 80A56D60  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56D64  48 00 02 8C */	b lbl_80A56FF0
lbl_80A56D68:
/* 80A56D68  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A56D6C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A56D70  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A56D74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A56D78  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A56D7C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A56D80  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A56D84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A56D88  4B 81 08 ED */	bl cM_atan2s__Fff
/* 80A56D8C  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A56D90  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A56D94  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A56D98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A56D9C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A56DA0  EC 41 00 2A */	fadds f2, f1, f0
/* 80A56DA4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A56DA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56DAC  40 81 00 0C */	ble lbl_80A56DB8
/* 80A56DB0  FC 00 10 34 */	frsqrte f0, f2
/* 80A56DB4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A56DB8:
/* 80A56DB8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A56DBC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A56DC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A56DC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56DC8  40 80 02 28 */	bge lbl_80A56FF0
/* 80A56DCC  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A56DD0  38 03 00 01 */	addi r0, r3, 1
/* 80A56DD4  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A56DD8  38 00 00 01 */	li r0, 1
/* 80A56DDC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56DE0  48 00 02 10 */	b lbl_80A56FF0
lbl_80A56DE4:
/* 80A56DE4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56DE8  2C 00 00 08 */	cmpwi r0, 8
/* 80A56DEC  40 82 00 18 */	bne lbl_80A56E04
/* 80A56DF0  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A56DF4  3C 63 00 01 */	addis r3, r3, 1
/* 80A56DF8  38 03 80 00 */	addi r0, r3, -32768
/* 80A56DFC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A56E00  48 00 00 0C */	b lbl_80A56E0C
lbl_80A56E04:
/* 80A56E04  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A56E08  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A56E0C:
/* 80A56E0C  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A56E10  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A56E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A56E18  40 80 00 28 */	bge lbl_80A56E40
/* 80A56E1C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A56E20  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56E24  3C 60 80 A6 */	lis r3, guide_path_22@ha /* 0x80A5F584@ha */
/* 80A56E28  38 63 F5 84 */	addi r3, r3, guide_path_22@l /* 0x80A5F584@l */
/* 80A56E2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A56E30  2C 00 00 00 */	cmpwi r0, 0
/* 80A56E34  41 80 00 0C */	blt lbl_80A56E40
/* 80A56E38  38 00 00 01 */	li r0, 1
/* 80A56E3C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A56E40:
/* 80A56E40  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A56E44  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A56E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A56E4C  40 80 00 28 */	bge lbl_80A56E74
/* 80A56E50  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56E54  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A56E58  41 82 00 1C */	beq lbl_80A56E74
/* 80A56E5C  7F A3 EB 78 */	mr r3, r29
/* 80A56E60  38 80 00 33 */	li r4, 0x33
/* 80A56E64  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56E68  38 A0 00 02 */	li r5, 2
/* 80A56E6C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56E70  4B FF 23 35 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56E74:
/* 80A56E74  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56E78  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A56E7C  40 82 01 74 */	bne lbl_80A56FF0
/* 80A56E80  38 00 00 01 */	li r0, 1
/* 80A56E84  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 80A56E88  48 00 01 68 */	b lbl_80A56FF0
lbl_80A56E8C:
/* 80A56E8C  7F A3 EB 78 */	mr r3, r29
/* 80A56E90  38 80 00 27 */	li r4, 0x27
/* 80A56E94  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56E98  38 A0 00 02 */	li r5, 2
/* 80A56E9C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56EA0  4B FF 23 05 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56EA4  38 00 00 29 */	li r0, 0x29
/* 80A56EA8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56EAC  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A56EB0  4B 81 0A A5 */	bl cM_rndF__Ff
/* 80A56EB4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A56EB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A56EBC  FC 00 00 1E */	fctiwz f0, f0
/* 80A56EC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A56EC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A56EC8  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A56ECC  48 00 01 24 */	b lbl_80A56FF0
lbl_80A56ED0:
/* 80A56ED0  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56ED4  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A56ED8  41 82 00 2C */	beq lbl_80A56F04
/* 80A56EDC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A56EE0  40 82 00 0C */	bne lbl_80A56EEC
/* 80A56EE4  2C 03 00 07 */	cmpwi r3, 7
/* 80A56EE8  41 80 00 1C */	blt lbl_80A56F04
lbl_80A56EEC:
/* 80A56EEC  2C 03 00 28 */	cmpwi r3, 0x28
/* 80A56EF0  40 81 00 0C */	ble lbl_80A56EFC
/* 80A56EF4  2C 03 00 30 */	cmpwi r3, 0x30
/* 80A56EF8  41 80 00 0C */	blt lbl_80A56F04
lbl_80A56EFC:
/* 80A56EFC  2C 03 00 41 */	cmpwi r3, 0x41
/* 80A56F00  40 81 00 0C */	ble lbl_80A56F0C
lbl_80A56F04:
/* 80A56F04  38 00 00 04 */	li r0, 4
/* 80A56F08  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
lbl_80A56F0C:
/* 80A56F0C  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A56F10  2C 00 00 00 */	cmpwi r0, 0
/* 80A56F14  40 82 00 28 */	bne lbl_80A56F3C
/* 80A56F18  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56F1C  2C 00 00 27 */	cmpwi r0, 0x27
/* 80A56F20  40 82 00 1C */	bne lbl_80A56F3C
/* 80A56F24  7F A3 EB 78 */	mr r3, r29
/* 80A56F28  38 80 00 2B */	li r4, 0x2b
/* 80A56F2C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56F30  38 A0 00 00 */	li r5, 0
/* 80A56F34  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56F38  4B FF 22 6D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56F3C:
/* 80A56F3C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A56F40  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80A56F44  40 82 00 AC */	bne lbl_80A56FF0
/* 80A56F48  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A56F4C  38 80 00 01 */	li r4, 1
/* 80A56F50  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A56F54  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A56F58  40 82 00 18 */	bne lbl_80A56F70
/* 80A56F5C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A56F60  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A56F64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A56F68  41 82 00 08 */	beq lbl_80A56F70
/* 80A56F6C  38 80 00 00 */	li r4, 0
lbl_80A56F70:
/* 80A56F70  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A56F74  41 82 00 7C */	beq lbl_80A56FF0
/* 80A56F78  38 00 00 28 */	li r0, 0x28
/* 80A56F7C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A56F80  48 00 00 70 */	b lbl_80A56FF0
lbl_80A56F84:
/* 80A56F84  A8 1D 05 F0 */	lha r0, 0x5f0(r29)
/* 80A56F88  2C 00 00 00 */	cmpwi r0, 0
/* 80A56F8C  40 82 00 64 */	bne lbl_80A56FF0
/* 80A56F90  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A56F94  80 03 FE A4 */	lwz r0, call_pt@l(r3)  /* 0x80A5FEA4@l */
/* 80A56F98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A56F9C  41 82 00 20 */	beq lbl_80A56FBC
/* 80A56FA0  7F A3 EB 78 */	mr r3, r29
/* 80A56FA4  38 80 00 08 */	li r4, 8
/* 80A56FA8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56FAC  38 A0 00 02 */	li r5, 2
/* 80A56FB0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56FB4  4B FF 21 F1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56FB8  48 00 00 1C */	b lbl_80A56FD4
lbl_80A56FBC:
/* 80A56FBC  7F A3 EB 78 */	mr r3, r29
/* 80A56FC0  38 80 00 07 */	li r4, 7
/* 80A56FC4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A56FC8  38 A0 00 02 */	li r5, 2
/* 80A56FCC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A56FD0  4B FF 21 D5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56FD4:
/* 80A56FD4  3C 60 80 A6 */	lis r3, call_pt@ha /* 0x80A5FEA4@ha */
/* 80A56FD8  38 83 FE A4 */	addi r4, r3, call_pt@l /* 0x80A5FEA4@l */
/* 80A56FDC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A56FE0  38 03 00 01 */	addi r0, r3, 1
/* 80A56FE4  90 04 00 00 */	stw r0, 0(r4)
/* 80A56FE8  38 00 00 0A */	li r0, 0xa
/* 80A56FEC  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A56FF0:
/* 80A56FF0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A56FF4  38 80 00 00 */	li r4, 0
/* 80A56FF8  38 A0 00 01 */	li r5, 1
/* 80A56FFC  38 C0 08 00 */	li r6, 0x800
/* 80A57000  4B 81 96 09 */	bl cLib_addCalcAngleS2__FPssss
/* 80A57004  4B FF 20 51 */	bl checkDoorDemo__Fv
/* 80A57008  2C 03 00 00 */	cmpwi r3, 0
/* 80A5700C  41 82 00 14 */	beq lbl_80A57020
/* 80A57010  38 00 00 64 */	li r0, 0x64
/* 80A57014  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A57018  38 00 00 00 */	li r0, 0
/* 80A5701C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A57020:
/* 80A57020  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A57024  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A57028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5702C  40 81 00 10 */	ble lbl_80A5703C
/* 80A57030  38 00 00 01 */	li r0, 1
/* 80A57034  98 1D 09 0C */	stb r0, 0x90c(r29)
/* 80A57038  48 00 00 28 */	b lbl_80A57060
lbl_80A5703C:
/* 80A5703C  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A57040  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A57044  7C 03 00 50 */	subf r0, r3, r0
/* 80A57048  7C 00 07 34 */	extsh r0, r0
/* 80A5704C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A57050  41 81 00 0C */	bgt lbl_80A5705C
/* 80A57054  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A57058  40 80 00 08 */	bge lbl_80A57060
lbl_80A5705C:
/* 80A5705C  3B C0 00 00 */	li r30, 0
lbl_80A57060:
/* 80A57060  A8 1D 05 EA */	lha r0, 0x5ea(r29)
/* 80A57064  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A57068  41 80 00 68 */	blt lbl_80A570D0
/* 80A5706C  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A57070  41 81 00 60 */	bgt lbl_80A570D0
/* 80A57074  7F A3 EB 78 */	mr r3, r29
/* 80A57078  C0 3F 03 FC */	lfs f1, 0x3fc(r31)
/* 80A5707C  4B FF 2E 21 */	bl enemy_check__FP12npc_ks_classf
/* 80A57080  28 03 00 00 */	cmplwi r3, 0
/* 80A57084  40 82 00 18 */	bne lbl_80A5709C
/* 80A57088  38 00 00 2A */	li r0, 0x2a
/* 80A5708C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A57090  38 00 00 1E */	li r0, 0x1e
/* 80A57094  B0 1D 05 F0 */	sth r0, 0x5f0(r29)
/* 80A57098  48 00 00 5C */	b lbl_80A570F4
lbl_80A5709C:
/* 80A5709C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80A570A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A570A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A570A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A570AC  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80A570B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A570B4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A570B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A570BC  4B 81 05 B9 */	bl cM_atan2s__Fff
/* 80A570C0  3C 63 00 01 */	addis r3, r3, 1
/* 80A570C4  38 03 80 00 */	addi r0, r3, -32768
/* 80A570C8  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A570CC  48 00 00 28 */	b lbl_80A570F4
lbl_80A570D0:
/* 80A570D0  7F A3 EB 78 */	mr r3, r29
/* 80A570D4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80A570D8  4B FF 2D A1 */	bl enemy_view_check__FP12npc_ks_classf
/* 80A570DC  28 03 00 00 */	cmplwi r3, 0
/* 80A570E0  41 82 00 14 */	beq lbl_80A570F4
/* 80A570E4  38 00 00 28 */	li r0, 0x28
/* 80A570E8  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A570EC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A570F0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A570F4:
/* 80A570F4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A570F8  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A570FC  38 A0 00 01 */	li r5, 1
/* 80A57100  38 C0 10 00 */	li r6, 0x1000
/* 80A57104  4B 81 95 05 */	bl cLib_addCalcAngleS2__FPssss
/* 80A57108  7F C3 F3 78 */	mr r3, r30
/* 80A5710C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A57110  4B 90 B1 19 */	bl _restgpr_29
/* 80A57114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A57118  7C 08 03 A6 */	mtlr r0
/* 80A5711C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A57120  4E 80 00 20 */	blr 
