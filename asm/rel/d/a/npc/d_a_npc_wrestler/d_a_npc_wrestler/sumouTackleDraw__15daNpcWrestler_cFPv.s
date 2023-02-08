lbl_80B36C8C:
/* 80B36C8C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B36C90  7C 08 02 A6 */	mflr r0
/* 80B36C94  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B36C98  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B36C9C  4B 82 B5 35 */	bl _savegpr_26
/* 80B36CA0  7C 7B 1B 78 */	mr r27, r3
/* 80B36CA4  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B36CA8  3B A4 16 DC */	addi r29, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B36CAC  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B36CB0  3B C4 1D F8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B36CB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36CB8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36CBC  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80B36CC0  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B36CC4  30 00 FF FF */	addic r0, r0, -1
/* 80B36CC8  7C 80 01 10 */	subfe r4, r0, r0
/* 80B36CCC  38 00 00 00 */	li r0, 0
/* 80B36CD0  7C 1A 20 78 */	andc r26, r0, r4
/* 80B36CD4  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B36CD8  2C 00 00 02 */	cmpwi r0, 2
/* 80B36CDC  41 82 00 70 */	beq lbl_80B36D4C
/* 80B36CE0  40 80 05 74 */	bge lbl_80B37254
/* 80B36CE4  2C 00 00 00 */	cmpwi r0, 0
/* 80B36CE8  41 82 00 0C */	beq lbl_80B36CF4
/* 80B36CEC  48 00 05 68 */	b lbl_80B37254
/* 80B36CF0  48 00 05 64 */	b lbl_80B37254
lbl_80B36CF4:
/* 80B36CF4  38 80 00 12 */	li r4, 0x12
/* 80B36CF8  38 A0 00 01 */	li r5, 1
/* 80B36CFC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B36D00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B36D04  7D 89 03 A6 */	mtctr r12
/* 80B36D08  4E 80 04 21 */	bctrl 
/* 80B36D0C  7F 63 DB 78 */	mr r3, r27
/* 80B36D10  38 80 00 14 */	li r4, 0x14
/* 80B36D14  C0 3D 01 C8 */	lfs f1, 0x1c8(r29)
/* 80B36D18  38 A0 00 00 */	li r5, 0
/* 80B36D1C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B36D20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B36D24  7D 89 03 A6 */	mtctr r12
/* 80B36D28  4E 80 04 21 */	bctrl 
/* 80B36D2C  38 00 00 00 */	li r0, 0
/* 80B36D30  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 80B36D34  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 80B36D38  90 1B 0D DC */	stw r0, 0xddc(r27)
/* 80B36D3C  90 1B 0D D8 */	stw r0, 0xdd8(r27)
/* 80B36D40  38 00 00 02 */	li r0, 2
/* 80B36D44  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B36D48  48 00 05 0C */	b lbl_80B37254
lbl_80B36D4C:
/* 80B36D4C  C0 1D 01 B8 */	lfs f0, 0x1b8(r29)
/* 80B36D50  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B36D54  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B36D58  7F 83 E3 78 */	mr r3, r28
/* 80B36D5C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B36D60  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80B36D64  7D 89 03 A6 */	mtctr r12
/* 80B36D68  4E 80 04 21 */	bctrl 
/* 80B36D6C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B36D70  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B36D74  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B36D78  4B 4D A4 75 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B36D7C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B36D80  80 63 00 04 */	lwz r3, 4(r3)
/* 80B36D84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B36D88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B36D8C  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 80B36D90  7C 63 02 14 */	add r3, r3, r0
/* 80B36D94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B36D98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36D9C  4B 80 F7 15 */	bl PSMTXCopy
/* 80B36DA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B36DA4  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36DA8  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80B36DAC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B36DB0  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80B36DB4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B36DB8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80B36DBC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B36DC0  38 61 00 74 */	addi r3, r1, 0x74
/* 80B36DC4  4B 4D 5F A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B36DC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B36DCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B36DD0  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B36DD4  4B 4D 56 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B36DD8  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B36DDC  C0 5D 05 A0 */	lfs f2, 0x5a0(r29)
/* 80B36DE0  C0 7D 05 E0 */	lfs f3, 0x5e0(r29)
/* 80B36DE4  4B 4D 5F B9 */	bl transM__14mDoMtx_stack_cFfff
/* 80B36DE8  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80B36DEC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B36DF0  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80B36DF4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B36DF8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80B36DFC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B36E00  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B36E04  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B36E08  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80B36E0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B36E10  40 82 01 B0 */	bne lbl_80B36FC0
/* 80B36E14  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B36E18  28 00 00 01 */	cmplwi r0, 1
/* 80B36E1C  40 82 00 A0 */	bne lbl_80B36EBC
/* 80B36E20  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B36E24  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B36E28  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B36E2C  40 82 00 90 */	bne lbl_80B36EBC
/* 80B36E30  80 7E 0C 68 */	lwz r3, 0xc68(r30)
/* 80B36E34  80 1E 0C 6C */	lwz r0, 0xc6c(r30)
/* 80B36E38  90 61 00 68 */	stw r3, 0x68(r1)
/* 80B36E3C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B36E40  80 1E 0C 70 */	lwz r0, 0xc70(r30)
/* 80B36E44  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B36E48  38 00 00 03 */	li r0, 3
/* 80B36E4C  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B36E50  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B36E54  4B 82 B1 C5 */	bl __ptmf_test
/* 80B36E58  2C 03 00 00 */	cmpwi r3, 0
/* 80B36E5C  41 82 00 18 */	beq lbl_80B36E74
/* 80B36E60  7F 63 DB 78 */	mr r3, r27
/* 80B36E64  38 80 00 00 */	li r4, 0
/* 80B36E68  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B36E6C  4B 82 B2 19 */	bl __ptmf_scall
/* 80B36E70  60 00 00 00 */	nop 
lbl_80B36E74:
/* 80B36E74  38 00 00 00 */	li r0, 0
/* 80B36E78  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B36E7C  80 61 00 68 */	lwz r3, 0x68(r1)
/* 80B36E80  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B36E84  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B36E88  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B36E8C  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80B36E90  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B36E94  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B36E98  4B 82 B1 81 */	bl __ptmf_test
/* 80B36E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B36EA0  41 82 01 20 */	beq lbl_80B36FC0
/* 80B36EA4  7F 63 DB 78 */	mr r3, r27
/* 80B36EA8  38 80 00 00 */	li r4, 0
/* 80B36EAC  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B36EB0  4B 82 B1 D5 */	bl __ptmf_scall
/* 80B36EB4  60 00 00 00 */	nop 
/* 80B36EB8  48 00 01 08 */	b lbl_80B36FC0
lbl_80B36EBC:
/* 80B36EBC  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B36EC0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80B36EC4  C0 1D 01 B4 */	lfs f0, 0x1b4(r29)
/* 80B36EC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B36ECC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B36ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36ED8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B36EDC  80 9B 0B D8 */	lwz r4, 0xbd8(r27)
/* 80B36EE0  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B36EE4  38 A0 00 0F */	li r5, 0xf
/* 80B36EE8  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80B36EEC  4B 53 8B 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 80B36EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B36EF4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B36EF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80B36EFC  38 80 00 00 */	li r4, 0
/* 80B36F00  90 81 00 08 */	stw r4, 8(r1)
/* 80B36F04  38 00 FF FF */	li r0, -1
/* 80B36F08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36F0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B36F10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B36F14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B36F18  38 80 00 00 */	li r4, 0
/* 80B36F1C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80B36F20  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80B36F24  38 C1 00 74 */	addi r6, r1, 0x74
/* 80B36F28  38 E0 00 00 */	li r7, 0
/* 80B36F2C  39 1B 08 F0 */	addi r8, r27, 0x8f0
/* 80B36F30  39 20 00 00 */	li r9, 0
/* 80B36F34  39 40 00 FF */	li r10, 0xff
/* 80B36F38  C0 3D 01 B4 */	lfs f1, 0x1b4(r29)
/* 80B36F3C  4B 51 5B 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B36F40  90 7B 0D E0 */	stw r3, 0xde0(r27)
/* 80B36F44  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80B36F48  38 80 00 00 */	li r4, 0
/* 80B36F4C  90 81 00 08 */	stw r4, 8(r1)
/* 80B36F50  38 00 FF FF */	li r0, -1
/* 80B36F54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B36F58  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B36F5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B36F60  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B36F64  38 80 00 00 */	li r4, 0
/* 80B36F68  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80B36F6C  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 80B36F70  38 C1 00 74 */	addi r6, r1, 0x74
/* 80B36F74  38 E0 00 00 */	li r7, 0
/* 80B36F78  39 1B 08 F0 */	addi r8, r27, 0x8f0
/* 80B36F7C  39 20 00 00 */	li r9, 0
/* 80B36F80  39 40 00 FF */	li r10, 0xff
/* 80B36F84  C0 3D 01 B4 */	lfs f1, 0x1b4(r29)
/* 80B36F88  4B 51 5B 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B36F8C  90 7B 0D E4 */	stw r3, 0xde4(r27)
/* 80B36F90  80 7B 0D E0 */	lwz r3, 0xde0(r27)
/* 80B36F94  28 03 00 00 */	cmplwi r3, 0
/* 80B36F98  41 82 00 10 */	beq lbl_80B36FA8
/* 80B36F9C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36FA0  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36FA4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B36FA8:
/* 80B36FA8  80 7B 0D E4 */	lwz r3, 0xde4(r27)
/* 80B36FAC  28 03 00 00 */	cmplwi r3, 0
/* 80B36FB0  41 82 00 10 */	beq lbl_80B36FC0
/* 80B36FB4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B36FB8  60 00 00 40 */	ori r0, r0, 0x40
/* 80B36FBC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B36FC0:
/* 80B36FC0  80 7B 0D E0 */	lwz r3, 0xde0(r27)
/* 80B36FC4  28 03 00 00 */	cmplwi r3, 0
/* 80B36FC8  40 82 00 10 */	bne lbl_80B36FD8
/* 80B36FCC  80 1B 0D E4 */	lwz r0, 0xde4(r27)
/* 80B36FD0  28 00 00 00 */	cmplwi r0, 0
/* 80B36FD4  41 82 00 7C */	beq lbl_80B37050
lbl_80B36FD8:
/* 80B36FD8  28 03 00 00 */	cmplwi r3, 0
/* 80B36FDC  41 82 00 2C */	beq lbl_80B37008
/* 80B36FE0  E0 01 00 74 */	psq_l f0, 116(r1), 0, 0 /* qr0 */
/* 80B36FE4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B36FE8  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 80B36FEC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B36FF0  80 7B 0D E0 */	lwz r3, 0xde0(r27)
/* 80B36FF4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B36FF8  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80B36FFC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B37000  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80B37004  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_80B37008:
/* 80B37008  80 DB 0D E4 */	lwz r6, 0xde4(r27)
/* 80B3700C  28 06 00 00 */	cmplwi r6, 0
/* 80B37010  41 82 00 40 */	beq lbl_80B37050
/* 80B37014  A8 7B 08 F0 */	lha r3, 0x8f0(r27)
/* 80B37018  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3701C  A8 BB 08 F4 */	lha r5, 0x8f4(r27)
/* 80B37020  E0 01 00 74 */	psq_l f0, 116(r1), 0, 0 /* qr0 */
/* 80B37024  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80B37028  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80B3702C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B37030  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B37034  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80B37038  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B3703C  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80B37040  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80B37044  80 DB 0D E4 */	lwz r6, 0xde4(r27)
/* 80B37048  38 C6 00 68 */	addi r6, r6, 0x68
/* 80B3704C  4B 74 96 E9 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80B37050:
/* 80B37050  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B37054  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B37058  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80B3705C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B37060  40 81 00 1C */	ble lbl_80B3707C
/* 80B37064  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80B37068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B3706C  40 80 00 10 */	bge lbl_80B3707C
/* 80B37070  4B 64 A5 D1 */	bl dCam_getBody__Fv
/* 80B37074  38 80 00 05 */	li r4, 5
/* 80B37078  4B 62 CC D9 */	bl ModeFix__9dCamera_cFl
lbl_80B3707C:
/* 80B3707C  7F 63 DB 78 */	mr r3, r27
/* 80B37080  4B FF E7 01 */	bl checkOutOfArenaW__15daNpcWrestler_cFv
/* 80B37084  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37088  41 82 00 90 */	beq lbl_80B37118
/* 80B3708C  80 7E 0C 74 */	lwz r3, 0xc74(r30)
/* 80B37090  80 1E 0C 78 */	lwz r0, 0xc78(r30)
/* 80B37094  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B37098  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B3709C  80 1E 0C 7C */	lwz r0, 0xc7c(r30)
/* 80B370A0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B370A4  38 00 00 03 */	li r0, 3
/* 80B370A8  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B370AC  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B370B0  4B 82 AF 69 */	bl __ptmf_test
/* 80B370B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B370B8  41 82 00 18 */	beq lbl_80B370D0
/* 80B370BC  7F 63 DB 78 */	mr r3, r27
/* 80B370C0  38 80 00 00 */	li r4, 0
/* 80B370C4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B370C8  4B 82 AF BD */	bl __ptmf_scall
/* 80B370CC  60 00 00 00 */	nop 
lbl_80B370D0:
/* 80B370D0  38 00 00 00 */	li r0, 0
/* 80B370D4  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B370D8  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B370DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B370E0  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B370E4  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B370E8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B370EC  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B370F0  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B370F4  4B 82 AF 25 */	bl __ptmf_test
/* 80B370F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B370FC  41 82 01 58 */	beq lbl_80B37254
/* 80B37100  7F 63 DB 78 */	mr r3, r27
/* 80B37104  38 80 00 00 */	li r4, 0
/* 80B37108  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3710C  4B 82 AF 79 */	bl __ptmf_scall
/* 80B37110  60 00 00 00 */	nop 
/* 80B37114  48 00 01 40 */	b lbl_80B37254
lbl_80B37118:
/* 80B37118  7F 63 DB 78 */	mr r3, r27
/* 80B3711C  4B FF C8 D1 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B37120  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B37124  41 82 00 90 */	beq lbl_80B371B4
/* 80B37128  80 7E 0C 80 */	lwz r3, 0xc80(r30)
/* 80B3712C  80 1E 0C 84 */	lwz r0, 0xc84(r30)
/* 80B37130  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B37134  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B37138  80 1E 0C 88 */	lwz r0, 0xc88(r30)
/* 80B3713C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B37140  38 00 00 03 */	li r0, 3
/* 80B37144  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B37148  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3714C  4B 82 AE CD */	bl __ptmf_test
/* 80B37150  2C 03 00 00 */	cmpwi r3, 0
/* 80B37154  41 82 00 18 */	beq lbl_80B3716C
/* 80B37158  7F 63 DB 78 */	mr r3, r27
/* 80B3715C  38 80 00 00 */	li r4, 0
/* 80B37160  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B37164  4B 82 AF 21 */	bl __ptmf_scall
/* 80B37168  60 00 00 00 */	nop 
lbl_80B3716C:
/* 80B3716C  38 00 00 00 */	li r0, 0
/* 80B37170  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B37174  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B37178  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B3717C  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B37180  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B37184  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B37188  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3718C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B37190  4B 82 AE 89 */	bl __ptmf_test
/* 80B37194  2C 03 00 00 */	cmpwi r3, 0
/* 80B37198  41 82 00 BC */	beq lbl_80B37254
/* 80B3719C  7F 63 DB 78 */	mr r3, r27
/* 80B371A0  38 80 00 00 */	li r4, 0
/* 80B371A4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B371A8  4B 82 AE DD */	bl __ptmf_scall
/* 80B371AC  60 00 00 00 */	nop 
/* 80B371B0  48 00 00 A4 */	b lbl_80B37254
lbl_80B371B4:
/* 80B371B4  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B371B8  28 00 00 16 */	cmplwi r0, 0x16
/* 80B371BC  40 82 00 98 */	bne lbl_80B37254
/* 80B371C0  80 7B 0B D8 */	lwz r3, 0xbd8(r27)
/* 80B371C4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B371C8  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B371CC  80 7E 0C 8C */	lwz r3, 0xc8c(r30)
/* 80B371D0  80 1E 0C 90 */	lwz r0, 0xc90(r30)
/* 80B371D4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B371D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B371DC  80 1E 0C 94 */	lwz r0, 0xc94(r30)
/* 80B371E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B371E4  38 00 00 03 */	li r0, 3
/* 80B371E8  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B371EC  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B371F0  4B 82 AE 29 */	bl __ptmf_test
/* 80B371F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B371F8  41 82 00 18 */	beq lbl_80B37210
/* 80B371FC  7F 63 DB 78 */	mr r3, r27
/* 80B37200  38 80 00 00 */	li r4, 0
/* 80B37204  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B37208  4B 82 AE 7D */	bl __ptmf_scall
/* 80B3720C  60 00 00 00 */	nop 
lbl_80B37210:
/* 80B37210  38 00 00 00 */	li r0, 0
/* 80B37214  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B37218  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3721C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B37220  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B37224  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B37228  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3722C  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B37230  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B37234  4B 82 AD E5 */	bl __ptmf_test
/* 80B37238  2C 03 00 00 */	cmpwi r3, 0
/* 80B3723C  41 82 00 18 */	beq lbl_80B37254
/* 80B37240  7F 63 DB 78 */	mr r3, r27
/* 80B37244  38 80 00 00 */	li r4, 0
/* 80B37248  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3724C  4B 82 AE 39 */	bl __ptmf_scall
/* 80B37250  60 00 00 00 */	nop 
lbl_80B37254:
/* 80B37254  38 60 00 01 */	li r3, 1
/* 80B37258  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B3725C  4B 82 AF C1 */	bl _restgpr_26
/* 80B37260  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B37264  7C 08 03 A6 */	mtlr r0
/* 80B37268  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B3726C  4E 80 00 20 */	blr 
