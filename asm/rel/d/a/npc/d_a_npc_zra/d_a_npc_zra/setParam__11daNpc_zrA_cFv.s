lbl_80B7AC08:
/* 80B7AC08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7AC0C  7C 08 02 A6 */	mflr r0
/* 80B7AC10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7AC14  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7AC18  4B 7E 75 C4 */	b _savegpr_29
/* 80B7AC1C  7C 7D 1B 78 */	mr r29, r3
/* 80B7AC20  3B C0 00 0A */	li r30, 0xa
/* 80B7AC24  80 03 05 FC */	lwz r0, 0x5fc(r3)
/* 80B7AC28  54 1F A7 FE */	rlwinm r31, r0, 0x14, 0x1f, 0x1f
/* 80B7AC2C  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80B7AC30  28 00 00 00 */	cmplwi r0, 0
/* 80B7AC34  41 82 00 0C */	beq lbl_80B7AC40
/* 80B7AC38  3C 60 00 80 */	lis r3, 0x0080 /* 0x0080000A@ha */
/* 80B7AC3C  3B C3 00 0A */	addi r30, r3, 0x000A /* 0x0080000A@l */
lbl_80B7AC40:
/* 80B7AC40  7F A3 EB 78 */	mr r3, r29
/* 80B7AC44  48 00 2F 85 */	bl selectAction__11daNpc_zrA_cFv
/* 80B7AC48  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80B7AC4C  28 00 00 00 */	cmplwi r0, 0
/* 80B7AC50  40 82 00 20 */	bne lbl_80B7AC70
/* 80B7AC54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7AC58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7AC5C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B7AC60  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B7AC64  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B7AC68  41 82 00 08 */	beq lbl_80B7AC70
/* 80B7AC6C  3B C0 00 00 */	li r30, 0
lbl_80B7AC70:
/* 80B7AC70  88 1D 15 21 */	lbz r0, 0x1521(r29)
/* 80B7AC74  28 00 00 00 */	cmplwi r0, 0
/* 80B7AC78  41 82 00 68 */	beq lbl_80B7ACE0
/* 80B7AC7C  38 00 00 00 */	li r0, 0
/* 80B7AC80  90 1D 14 D0 */	stw r0, 0x14d0(r29)
/* 80B7AC84  90 1D 14 D4 */	stw r0, 0x14d4(r29)
/* 80B7AC88  3B C0 00 02 */	li r30, 2
/* 80B7AC8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7AC90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7AC94  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B7AC98  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B7AC9C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B7ACA0  41 82 00 08 */	beq lbl_80B7ACA8
/* 80B7ACA4  3B C0 00 00 */	li r30, 0
lbl_80B7ACA8:
/* 80B7ACA8  88 1D 15 3C */	lbz r0, 0x153c(r29)
/* 80B7ACAC  28 00 00 01 */	cmplwi r0, 1
/* 80B7ACB0  41 82 00 10 */	beq lbl_80B7ACC0
/* 80B7ACB4  88 1D 15 20 */	lbz r0, 0x1520(r29)
/* 80B7ACB8  28 00 00 02 */	cmplwi r0, 2
/* 80B7ACBC  40 82 00 08 */	bne lbl_80B7ACC4
lbl_80B7ACC0:
/* 80B7ACC0  3B C0 00 00 */	li r30, 0
lbl_80B7ACC4:
/* 80B7ACC4  38 00 00 40 */	li r0, 0x40
/* 80B7ACC8  98 1D 05 44 */	stb r0, 0x544(r29)
/* 80B7ACCC  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B7ACD0  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B7ACD4  38 00 00 3F */	li r0, 0x3f
/* 80B7ACD8  98 1D 05 47 */	stb r0, 0x547(r29)
/* 80B7ACDC  48 00 00 74 */	b lbl_80B7AD50
lbl_80B7ACE0:
/* 80B7ACE0  88 1D 14 E8 */	lbz r0, 0x14e8(r29)
/* 80B7ACE4  28 00 00 00 */	cmplwi r0, 0
/* 80B7ACE8  41 82 00 2C */	beq lbl_80B7AD14
/* 80B7ACEC  28 00 00 06 */	cmplwi r0, 6
/* 80B7ACF0  41 82 00 24 */	beq lbl_80B7AD14
/* 80B7ACF4  28 00 00 05 */	cmplwi r0, 5
/* 80B7ACF8  41 82 00 1C */	beq lbl_80B7AD14
/* 80B7ACFC  28 00 00 02 */	cmplwi r0, 2
/* 80B7AD00  40 82 00 10 */	bne lbl_80B7AD10
/* 80B7AD04  88 1D 15 94 */	lbz r0, 0x1594(r29)
/* 80B7AD08  28 00 00 00 */	cmplwi r0, 0
/* 80B7AD0C  41 82 00 08 */	beq lbl_80B7AD14
lbl_80B7AD10:
/* 80B7AD10  3B C0 00 00 */	li r30, 0
lbl_80B7AD14:
/* 80B7AD14  38 00 00 00 */	li r0, 0
/* 80B7AD18  90 1D 14 D0 */	stw r0, 0x14d0(r29)
/* 80B7AD1C  90 1D 14 D4 */	stw r0, 0x14d4(r29)
/* 80B7AD20  7F A3 EB 78 */	mr r3, r29
/* 80B7AD24  38 80 00 05 */	li r4, 5
/* 80B7AD28  38 A0 00 06 */	li r5, 6
/* 80B7AD2C  4B 5D 95 4C */	b getDistTableIdx__8daNpcF_cFii
/* 80B7AD30  98 7D 05 44 */	stb r3, 0x544(r29)
/* 80B7AD34  88 1D 05 44 */	lbz r0, 0x544(r29)
/* 80B7AD38  98 1D 05 45 */	stb r0, 0x545(r29)
/* 80B7AD3C  7F A3 EB 78 */	mr r3, r29
/* 80B7AD40  38 80 00 03 */	li r4, 3
/* 80B7AD44  38 A0 00 06 */	li r5, 6
/* 80B7AD48  4B 5D 95 30 */	b getDistTableIdx__8daNpcF_cFii
/* 80B7AD4C  98 7D 05 47 */	stb r3, 0x547(r29)
lbl_80B7AD50:
/* 80B7AD50  93 DD 05 5C */	stw r30, 0x55c(r29)
/* 80B7AD54  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7AD58  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l
/* 80B7AD5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B7AD60  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80B7AD64  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80B7AD68  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80B7AD6C  88 1D 15 20 */	lbz r0, 0x1520(r29)
/* 80B7AD70  28 00 00 00 */	cmplwi r0, 0
/* 80B7AD74  41 82 00 14 */	beq lbl_80B7AD88
/* 80B7AD78  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80B7AD7C  7C 64 1B 78 */	mr r4, r3
/* 80B7AD80  C0 3D 15 6C */	lfs f1, 0x156c(r29)
/* 80B7AD84  4B 7C C3 54 */	b PSVECScale
lbl_80B7AD88:
/* 80B7AD88  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80B7AD8C  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7AD90  38 84 C4 58 */	addi r4, r4, m__17daNpc_zrA_Param_c@l
/* 80B7AD94  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B7AD98  4B 4F B1 A8 */	b SetWallR__12dBgS_AcchCirFf
/* 80B7AD9C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7ADA0  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l
/* 80B7ADA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B7ADA8  D0 1D 08 14 */	stfs f0, 0x814(r29)
/* 80B7ADAC  88 1D 14 E8 */	lbz r0, 0x14e8(r29)
/* 80B7ADB0  28 00 00 00 */	cmplwi r0, 0
/* 80B7ADB4  40 82 00 0C */	bne lbl_80B7ADC0
/* 80B7ADB8  2C 1F 00 00 */	cmpwi r31, 0
/* 80B7ADBC  41 82 00 0C */	beq lbl_80B7ADC8
lbl_80B7ADC0:
/* 80B7ADC0  28 00 00 06 */	cmplwi r0, 6
/* 80B7ADC4  40 82 00 14 */	bne lbl_80B7ADD8
lbl_80B7ADC8:
/* 80B7ADC8  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7ADCC  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l
/* 80B7ADD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B7ADD4  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_80B7ADD8:
/* 80B7ADD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7ADDC  4B 7E 74 4C */	b _restgpr_29
/* 80B7ADE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7ADE4  7C 08 03 A6 */	mtlr r0
/* 80B7ADE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7ADEC  4E 80 00 20 */	blr 
