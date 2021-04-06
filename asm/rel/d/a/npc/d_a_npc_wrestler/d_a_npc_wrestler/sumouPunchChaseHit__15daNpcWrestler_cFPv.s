lbl_80B34CD0:
/* 80B34CD0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B34CD4  7C 08 02 A6 */	mflr r0
/* 80B34CD8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B34CDC  39 61 00 90 */	addi r11, r1, 0x90
/* 80B34CE0  4B 82 D4 F5 */	bl _savegpr_27
/* 80B34CE4  7C 7F 1B 78 */	mr r31, r3
/* 80B34CE8  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B34CEC  3B C4 16 DC */	addi r30, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B34CF0  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B34CF4  3B 64 1D F8 */	addi r27, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B34CF8  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B34CFC  7C 00 00 34 */	cntlzw r0, r0
/* 80B34D00  54 04 D9 7E */	srwi r4, r0, 5
/* 80B34D04  3B 84 00 11 */	addi r28, r4, 0x11
/* 80B34D08  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B34D0C  2C 00 00 02 */	cmpwi r0, 2
/* 80B34D10  41 82 01 4C */	beq lbl_80B34E5C
/* 80B34D14  40 80 00 10 */	bge lbl_80B34D24
/* 80B34D18  2C 00 00 00 */	cmpwi r0, 0
/* 80B34D1C  41 82 00 14 */	beq lbl_80B34D30
/* 80B34D20  48 00 06 28 */	b lbl_80B35348
lbl_80B34D24:
/* 80B34D24  2C 00 00 04 */	cmpwi r0, 4
/* 80B34D28  40 80 06 20 */	bge lbl_80B35348
/* 80B34D2C  48 00 05 64 */	b lbl_80B35290
lbl_80B34D30:
/* 80B34D30  38 80 00 06 */	li r4, 6
/* 80B34D34  38 A0 00 01 */	li r5, 1
/* 80B34D38  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B34D3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B34D40  7D 89 03 A6 */	mtctr r12
/* 80B34D44  4E 80 04 21 */	bctrl 
/* 80B34D48  7F E3 FB 78 */	mr r3, r31
/* 80B34D4C  38 80 00 0C */	li r4, 0xc
/* 80B34D50  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B34D54  38 A0 00 00 */	li r5, 0
/* 80B34D58  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B34D5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B34D60  7D 89 03 A6 */	mtctr r12
/* 80B34D64  4E 80 04 21 */	bctrl 
/* 80B34D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B34D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B34D70  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B34D74  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80B34D78  28 00 00 1F */	cmplwi r0, 0x1f
/* 80B34D7C  40 82 00 10 */	bne lbl_80B34D8C
/* 80B34D80  38 00 00 21 */	li r0, 0x21
/* 80B34D84  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80B34D88  48 00 00 0C */	b lbl_80B34D94
lbl_80B34D8C:
/* 80B34D8C  38 00 00 1C */	li r0, 0x1c
/* 80B34D90  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80B34D94:
/* 80B34D94  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34D98  80 63 00 04 */	lwz r3, 4(r3)
/* 80B34D9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B34DA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B34DA4  1C 1C 00 30 */	mulli r0, r28, 0x30
/* 80B34DA8  7C 63 02 14 */	add r3, r3, r0
/* 80B34DAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B34DB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B34DB4  4B 81 16 FD */	bl PSMTXCopy
/* 80B34DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B34DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B34DC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B34DC4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B34DC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B34DCC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B34DD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B34DD4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B34DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B34DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B34DE0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80B34DE4  38 80 00 00 */	li r4, 0
/* 80B34DE8  90 81 00 08 */	stw r4, 8(r1)
/* 80B34DEC  38 00 FF FF */	li r0, -1
/* 80B34DF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B34DF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B34DF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B34DFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B34E00  38 80 00 00 */	li r4, 0
/* 80B34E04  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008537@ha */
/* 80B34E08  38 A5 85 37 */	addi r5, r5, 0x8537 /* 0x00008537@l */
/* 80B34E0C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B34E10  38 E0 00 00 */	li r7, 0
/* 80B34E14  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B34E18  39 20 00 00 */	li r9, 0
/* 80B34E1C  39 40 00 FF */	li r10, 0xff
/* 80B34E20  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B34E24  4B 51 7C 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B34E28  90 7F 0D D8 */	stw r3, 0xdd8(r31)
/* 80B34E2C  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B34E30  28 03 00 00 */	cmplwi r3, 0
/* 80B34E34  41 82 00 10 */	beq lbl_80B34E44
/* 80B34E38  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B34E3C  60 00 00 40 */	ori r0, r0, 0x40
/* 80B34E40  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B34E44:
/* 80B34E44  38 00 00 00 */	li r0, 0
/* 80B34E48  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80B34E4C  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 80B34E50  38 00 00 02 */	li r0, 2
/* 80B34E54  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34E58  48 00 04 F0 */	b lbl_80B35348
lbl_80B34E5C:
/* 80B34E5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B34E60  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B34E64  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B34E68  4B 4E 58 A9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B34E6C  B0 7F 08 F2 */	sth r3, 0x8f2(r31)
/* 80B34E70  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B34E74  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B34E78  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B34E7C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B34E80  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34E84  4B 4D C3 69 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B34E88  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34E8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B34E90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B34E94  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B34E98  1F 9C 00 30 */	mulli r28, r28, 0x30
/* 80B34E9C  7C 60 E2 14 */	add r3, r0, r28
/* 80B34EA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B34EA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B34EA8  4B 81 16 09 */	bl PSMTXCopy
/* 80B34EAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B34EB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B34EB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B34EB8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B34EBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B34EC0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B34EC4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B34EC8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B34ECC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B34ED0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B34ED4  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80B34ED8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B34EDC  40 82 01 B0 */	bne lbl_80B3508C
/* 80B34EE0  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B34EE4  28 00 00 01 */	cmplwi r0, 1
/* 80B34EE8  40 82 00 A0 */	bne lbl_80B34F88
/* 80B34EEC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80B34EF0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B34EF4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B34EF8  40 82 00 90 */	bne lbl_80B34F88
/* 80B34EFC  80 7B 0B B4 */	lwz r3, 0xbb4(r27)
/* 80B34F00  80 1B 0B B8 */	lwz r0, 0xbb8(r27)
/* 80B34F04  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80B34F08  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B34F0C  80 1B 0B BC */	lwz r0, 0xbbc(r27)
/* 80B34F10  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B34F14  38 00 00 03 */	li r0, 3
/* 80B34F18  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34F1C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34F20  4B 82 D0 F9 */	bl __ptmf_test
/* 80B34F24  2C 03 00 00 */	cmpwi r3, 0
/* 80B34F28  41 82 00 18 */	beq lbl_80B34F40
/* 80B34F2C  7F E3 FB 78 */	mr r3, r31
/* 80B34F30  38 80 00 00 */	li r4, 0
/* 80B34F34  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34F38  4B 82 D1 4D */	bl __ptmf_scall
/* 80B34F3C  60 00 00 00 */	nop 
lbl_80B34F40:
/* 80B34F40  38 00 00 00 */	li r0, 0
/* 80B34F44  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34F48  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80B34F4C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B34F50  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34F54  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34F58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B34F5C  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34F60  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34F64  4B 82 D0 B5 */	bl __ptmf_test
/* 80B34F68  2C 03 00 00 */	cmpwi r3, 0
/* 80B34F6C  41 82 01 20 */	beq lbl_80B3508C
/* 80B34F70  7F E3 FB 78 */	mr r3, r31
/* 80B34F74  38 80 00 00 */	li r4, 0
/* 80B34F78  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34F7C  4B 82 D1 09 */	bl __ptmf_scall
/* 80B34F80  60 00 00 00 */	nop 
/* 80B34F84  48 00 01 08 */	b lbl_80B3508C
lbl_80B34F88:
/* 80B34F88  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B34F8C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B34F90  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 80B34F94  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B34F98  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B34F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B34FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B34FA4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B34FA8  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80B34FAC  80 84 00 74 */	lwz r4, 0x74(r4)
/* 80B34FB0  38 A0 00 0F */	li r5, 0xf
/* 80B34FB4  38 C1 00 50 */	addi r6, r1, 0x50
/* 80B34FB8  4B 53 AA 6D */	bl StartShock__12dVibration_cFii4cXyz
/* 80B34FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B34FC0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B34FC4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B34FC8  38 80 00 00 */	li r4, 0
/* 80B34FCC  90 81 00 08 */	stw r4, 8(r1)
/* 80B34FD0  38 00 FF FF */	li r0, -1
/* 80B34FD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B34FD8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B34FDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B34FE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B34FE4  38 80 00 00 */	li r4, 0
/* 80B34FE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008539@ha */
/* 80B34FEC  38 A5 85 39 */	addi r5, r5, 0x8539 /* 0x00008539@l */
/* 80B34FF0  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B34FF4  38 E0 00 00 */	li r7, 0
/* 80B34FF8  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B34FFC  39 20 00 00 */	li r9, 0
/* 80B35000  39 40 00 FF */	li r10, 0xff
/* 80B35004  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B35008  4B 51 7A 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B3500C  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80B35010  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B35014  38 80 00 00 */	li r4, 0
/* 80B35018  90 81 00 08 */	stw r4, 8(r1)
/* 80B3501C  38 00 FF FF */	li r0, -1
/* 80B35020  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B35024  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B35028  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B3502C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B35030  38 80 00 00 */	li r4, 0
/* 80B35034  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000853A@ha */
/* 80B35038  38 A5 85 3A */	addi r5, r5, 0x853A /* 0x0000853A@l */
/* 80B3503C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80B35040  38 E0 00 00 */	li r7, 0
/* 80B35044  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80B35048  39 20 00 00 */	li r9, 0
/* 80B3504C  39 40 00 FF */	li r10, 0xff
/* 80B35050  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 80B35054  4B 51 7A 3D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B35058  90 7F 0D E0 */	stw r3, 0xde0(r31)
/* 80B3505C  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B35060  28 03 00 00 */	cmplwi r3, 0
/* 80B35064  41 82 00 10 */	beq lbl_80B35074
/* 80B35068  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B3506C  60 00 00 40 */	ori r0, r0, 0x40
/* 80B35070  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B35074:
/* 80B35074  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B35078  28 03 00 00 */	cmplwi r3, 0
/* 80B3507C  41 82 00 10 */	beq lbl_80B3508C
/* 80B35080  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B35084  60 00 00 40 */	ori r0, r0, 0x40
/* 80B35088  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80B3508C:
/* 80B3508C  80 BF 0D D8 */	lwz r5, 0xdd8(r31)
/* 80B35090  28 05 00 00 */	cmplwi r5, 0
/* 80B35094  41 82 00 24 */	beq lbl_80B350B8
/* 80B35098  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B3509C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B350A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B350A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B350A8  7C 60 E2 14 */	add r3, r0, r28
/* 80B350AC  38 85 00 68 */	addi r4, r5, 0x68
/* 80B350B0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80B350B4  4B 74 B7 2D */	bl func_802807E0
lbl_80B350B8:
/* 80B350B8  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B350BC  28 03 00 00 */	cmplwi r3, 0
/* 80B350C0  41 82 00 28 */	beq lbl_80B350E8
/* 80B350C4  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B350C8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B350CC  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80B350D0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B350D4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B350D8  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80B350DC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B350E0  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80B350E4  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_80B350E8:
/* 80B350E8  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B350EC  28 06 00 00 */	cmplwi r6, 0
/* 80B350F0  41 82 00 40 */	beq lbl_80B35130
/* 80B350F4  A8 7F 08 F0 */	lha r3, 0x8f0(r31)
/* 80B350F8  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B350FC  A8 BF 08 F4 */	lha r5, 0x8f4(r31)
/* 80B35100  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80B35104  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80B35108  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 80B3510C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B35110  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B35114  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80B35118  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B3511C  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80B35120  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80B35124  80 DF 0D E0 */	lwz r6, 0xde0(r31)
/* 80B35128  38 C6 00 68 */	addi r6, r6, 0x68
/* 80B3512C  4B 74 B6 09 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80B35130:
/* 80B35130  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B35134  D0 1F 0E 8C */	stfs f0, 0xe8c(r31)
/* 80B35138  7F E3 FB 78 */	mr r3, r31
/* 80B3513C  4B FF E8 B1 */	bl checkOutOfArenaP__15daNpcWrestler_cFv
/* 80B35140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B35144  41 82 00 90 */	beq lbl_80B351D4
/* 80B35148  80 7B 0B C0 */	lwz r3, 0xbc0(r27)
/* 80B3514C  80 1B 0B C4 */	lwz r0, 0xbc4(r27)
/* 80B35150  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B35154  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B35158  80 1B 0B C8 */	lwz r0, 0xbc8(r27)
/* 80B3515C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B35160  38 00 00 03 */	li r0, 3
/* 80B35164  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35168  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3516C  4B 82 CE AD */	bl __ptmf_test
/* 80B35170  2C 03 00 00 */	cmpwi r3, 0
/* 80B35174  41 82 00 18 */	beq lbl_80B3518C
/* 80B35178  7F E3 FB 78 */	mr r3, r31
/* 80B3517C  38 80 00 00 */	li r4, 0
/* 80B35180  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35184  4B 82 CF 01 */	bl __ptmf_scall
/* 80B35188  60 00 00 00 */	nop 
lbl_80B3518C:
/* 80B3518C  38 00 00 00 */	li r0, 0
/* 80B35190  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35194  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B35198  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B3519C  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B351A0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B351A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B351A8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B351AC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B351B0  4B 82 CE 69 */	bl __ptmf_test
/* 80B351B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B351B8  41 82 01 90 */	beq lbl_80B35348
/* 80B351BC  7F E3 FB 78 */	mr r3, r31
/* 80B351C0  38 80 00 00 */	li r4, 0
/* 80B351C4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B351C8  4B 82 CE BD */	bl __ptmf_scall
/* 80B351CC  60 00 00 00 */	nop 
/* 80B351D0  48 00 01 78 */	b lbl_80B35348
lbl_80B351D4:
/* 80B351D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B351D8  38 80 00 01 */	li r4, 1
/* 80B351DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B351E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B351E4  40 82 00 18 */	bne lbl_80B351FC
/* 80B351E8  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 80B351EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B351F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B351F4  41 82 00 08 */	beq lbl_80B351FC
/* 80B351F8  38 80 00 00 */	li r4, 0
lbl_80B351FC:
/* 80B351FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B35200  41 82 01 48 */	beq lbl_80B35348
/* 80B35204  80 7B 0B CC */	lwz r3, 0xbcc(r27)
/* 80B35208  80 1B 0B D0 */	lwz r0, 0xbd0(r27)
/* 80B3520C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B35210  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B35214  80 1B 0B D4 */	lwz r0, 0xbd4(r27)
/* 80B35218  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3521C  38 00 00 03 */	li r0, 3
/* 80B35220  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35224  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B35228  4B 82 CD F1 */	bl __ptmf_test
/* 80B3522C  2C 03 00 00 */	cmpwi r3, 0
/* 80B35230  41 82 00 18 */	beq lbl_80B35248
/* 80B35234  7F E3 FB 78 */	mr r3, r31
/* 80B35238  38 80 00 00 */	li r4, 0
/* 80B3523C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35240  4B 82 CE 45 */	bl __ptmf_scall
/* 80B35244  60 00 00 00 */	nop 
lbl_80B35248:
/* 80B35248  38 00 00 00 */	li r0, 0
/* 80B3524C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B35250  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B35254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B35258  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B3525C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B35260  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B35264  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B35268  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3526C  4B 82 CD AD */	bl __ptmf_test
/* 80B35270  2C 03 00 00 */	cmpwi r3, 0
/* 80B35274  41 82 00 D4 */	beq lbl_80B35348
/* 80B35278  7F E3 FB 78 */	mr r3, r31
/* 80B3527C  38 80 00 00 */	li r4, 0
/* 80B35280  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B35284  4B 82 CE 01 */	bl __ptmf_scall
/* 80B35288  60 00 00 00 */	nop 
/* 80B3528C  48 00 00 BC */	b lbl_80B35348
lbl_80B35290:
/* 80B35290  80 7F 0D D8 */	lwz r3, 0xdd8(r31)
/* 80B35294  28 03 00 00 */	cmplwi r3, 0
/* 80B35298  41 82 00 18 */	beq lbl_80B352B0
/* 80B3529C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B352A0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B352A4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B352A8  38 00 00 00 */	li r0, 0
/* 80B352AC  90 1F 0D D8 */	stw r0, 0xdd8(r31)
lbl_80B352B0:
/* 80B352B0  80 7F 0D DC */	lwz r3, 0xddc(r31)
/* 80B352B4  28 03 00 00 */	cmplwi r3, 0
/* 80B352B8  41 82 00 18 */	beq lbl_80B352D0
/* 80B352BC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B352C0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B352C4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B352C8  38 00 00 00 */	li r0, 0
/* 80B352CC  90 1F 0D DC */	stw r0, 0xddc(r31)
lbl_80B352D0:
/* 80B352D0  80 7F 0D E0 */	lwz r3, 0xde0(r31)
/* 80B352D4  28 03 00 00 */	cmplwi r3, 0
/* 80B352D8  41 82 00 18 */	beq lbl_80B352F0
/* 80B352DC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80B352E0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80B352E4  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80B352E8  38 00 00 00 */	li r0, 0
/* 80B352EC  90 1F 0D E0 */	stw r0, 0xde0(r31)
lbl_80B352F0:
/* 80B352F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B352F4  4B 4D 7A 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B352F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B352FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B35300  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B35304  38 63 05 F8 */	addi r3, r3, 0x5f8
/* 80B35308  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B3530C  4B 73 B8 F9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B35310  7C 64 1B 78 */	mr r4, r3
/* 80B35314  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35318  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3531C  4B 4D 71 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B35320  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B35324  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80B35328  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80B3532C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80B35330  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80B35334  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B35338  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3533C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B35340  7C 85 23 78 */	mr r5, r4
/* 80B35344  4B 81 1A 29 */	bl PSMTXMultVec
lbl_80B35348:
/* 80B35348  38 60 00 01 */	li r3, 1
/* 80B3534C  39 61 00 90 */	addi r11, r1, 0x90
/* 80B35350  4B 82 CE D1 */	bl _restgpr_27
/* 80B35354  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B35358  7C 08 03 A6 */	mtlr r0
/* 80B3535C  38 21 00 90 */	addi r1, r1, 0x90
/* 80B35360  4E 80 00 20 */	blr 
