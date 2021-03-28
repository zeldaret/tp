lbl_80CA1D5C:
/* 80CA1D5C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80CA1D60  7C 08 02 A6 */	mflr r0
/* 80CA1D64  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CA1D68  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CA1D6C  4B 6C 04 70 */	b _savegpr_29
/* 80CA1D70  7C 7E 1B 78 */	mr r30, r3
/* 80CA1D74  3C 80 80 CA */	lis r4, lit_3774@ha
/* 80CA1D78  3B E4 31 BC */	addi r31, r4, lit_3774@l
/* 80CA1D7C  80 03 07 D0 */	lwz r0, 0x7d0(r3)
/* 80CA1D80  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1D84  40 82 00 64 */	bne lbl_80CA1DE8
/* 80CA1D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA1D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA1D90  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CA1D94  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CA1D98  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CA1D9C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80CA1DA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA1DA4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CA1DA8  38 00 00 00 */	li r0, 0
/* 80CA1DAC  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80CA1DB0  28 1E 00 00 */	cmplwi r30, 0
/* 80CA1DB4  41 82 00 0C */	beq lbl_80CA1DC0
/* 80CA1DB8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80CA1DBC  48 00 00 08 */	b lbl_80CA1DC4
lbl_80CA1DC0:
/* 80CA1DC0  38 80 FF FF */	li r4, -1
lbl_80CA1DC4:
/* 80CA1DC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CA1DC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CA1DCC  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80CA1DD0  7D 89 03 A6 */	mtctr r12
/* 80CA1DD4  4E 80 04 21 */	bctrl 
/* 80CA1DD8  80 7E 07 D0 */	lwz r3, 0x7d0(r30)
/* 80CA1DDC  38 03 00 01 */	addi r0, r3, 1
/* 80CA1DE0  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80CA1DE4  48 00 01 64 */	b lbl_80CA1F48
lbl_80CA1DE8:
/* 80CA1DE8  2C 00 FF FF */	cmpwi r0, -1
/* 80CA1DEC  40 82 00 2C */	bne lbl_80CA1E18
/* 80CA1DF0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80CA1DF4  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80CA1DF8  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80CA1DFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA1E00  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80CA1E04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CA1E08  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80CA1E0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA1E10  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80CA1E14  48 00 01 34 */	b lbl_80CA1F48
lbl_80CA1E18:
/* 80CA1E18  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80CA1E1C  28 00 00 00 */	cmplwi r0, 0
/* 80CA1E20  41 82 00 08 */	beq lbl_80CA1E28
/* 80CA1E24  4B FF FD 2D */	bl nan_setParticle__10daObjNAN_cFv
lbl_80CA1E28:
/* 80CA1E28  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80CA1E2C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80CA1E30  40 82 00 30 */	bne lbl_80CA1E60
/* 80CA1E34  3C 60 80 CA */	lis r3, lit_4444@ha
/* 80CA1E38  38 83 33 70 */	addi r4, r3, lit_4444@l
/* 80CA1E3C  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA1E40  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA1E44  90 61 00 08 */	stw r3, 8(r1)
/* 80CA1E48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA1E4C  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA1E50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA1E54  7F C3 F3 78 */	mr r3, r30
/* 80CA1E58  38 81 00 08 */	addi r4, r1, 8
/* 80CA1E5C  4B FF E7 79 */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA1E60:
/* 80CA1E60  38 61 00 40 */	addi r3, r1, 0x40
/* 80CA1E64  4B 3D 5E 04 */	b __ct__11dBgS_LinChkFv
/* 80CA1E68  38 61 00 98 */	addi r3, r1, 0x98
/* 80CA1E6C  4B 3D 6F FC */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA1E70  38 61 00 40 */	addi r3, r1, 0x40
/* 80CA1E74  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 80CA1E78  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA1E7C  38 C0 00 00 */	li r6, 0
/* 80CA1E80  4B 3D 5E E4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80CA1E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA1E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA1E8C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80CA1E90  7F A3 EB 78 */	mr r3, r29
/* 80CA1E94  38 81 00 40 */	addi r4, r1, 0x40
/* 80CA1E98  4B 3D 25 1C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80CA1E9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA1EA0  41 82 00 9C */	beq lbl_80CA1F3C
/* 80CA1EA4  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA1EA8  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA1EAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CA1EB0  7F A3 EB 78 */	mr r3, r29
/* 80CA1EB4  38 81 00 54 */	addi r4, r1, 0x54
/* 80CA1EB8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80CA1EBC  4B 3D 28 88 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CA1EC0  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80CA1EC4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CA1EC8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80CA1ECC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CA1ED0  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 80CA1ED4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80CA1ED8  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CA1EDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CA1EE0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CA1EE4  EC 42 00 2A */	fadds f2, f2, f0
/* 80CA1EE8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CA1EEC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CA1EF0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CA1EF4  EC 21 00 2A */	fadds f1, f1, f0
/* 80CA1EF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CA1EFC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CA1F00  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CA1F04  EC 04 00 2A */	fadds f0, f4, f0
/* 80CA1F08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CA1F0C  D0 5E 04 BC */	stfs f2, 0x4bc(r30)
/* 80CA1F10  D0 3E 04 C0 */	stfs f1, 0x4c0(r30)
/* 80CA1F14  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80CA1F18  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80CA1F1C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CA1F20  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80CA1F24  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CA1F28  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80CA1F2C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80CA1F30  3C 60 80 CA */	lis r3, __vt__8cM3dGPla@ha
/* 80CA1F34  38 03 34 68 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CA1F38  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80CA1F3C:
/* 80CA1F3C  38 61 00 40 */	addi r3, r1, 0x40
/* 80CA1F40  38 80 FF FF */	li r4, -1
/* 80CA1F44  4B 3D 5D 98 */	b __dt__11dBgS_LinChkFv
lbl_80CA1F48:
/* 80CA1F48  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CA1F4C  4B 6C 02 DC */	b _restgpr_29
/* 80CA1F50  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80CA1F54  7C 08 03 A6 */	mtlr r0
/* 80CA1F58  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80CA1F5C  4E 80 00 20 */	blr 
