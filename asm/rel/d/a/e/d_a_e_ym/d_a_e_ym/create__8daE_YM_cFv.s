lbl_80814BA4:
/* 80814BA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80814BA8  7C 08 02 A6 */	mflr r0
/* 80814BAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80814BB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80814BB4  4B B4 D6 21 */	bl _savegpr_27
/* 80814BB8  7C 7F 1B 78 */	mr r31, r3
/* 80814BBC  3C 80 80 81 */	lis r4, lit_3925@ha /* 0x80815994@ha */
/* 80814BC0  3B 84 59 94 */	addi r28, r4, lit_3925@l /* 0x80815994@l */
/* 80814BC4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80814BC8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80814BCC  40 82 00 E8 */	bne lbl_80814CB4
/* 80814BD0  7F E0 FB 79 */	or. r0, r31, r31
/* 80814BD4  41 82 00 D4 */	beq lbl_80814CA8
/* 80814BD8  7C 1B 03 78 */	mr r27, r0
/* 80814BDC  4B 80 3F 89 */	bl __ct__10fopAc_ac_cFv
/* 80814BE0  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 80814BE4  4B AA C3 81 */	bl __ct__15Z2CreatureEnemyFv
/* 80814BE8  38 7B 07 20 */	addi r3, r27, 0x720
/* 80814BEC  4B 86 12 C1 */	bl __ct__12dBgS_AcchCirFv
/* 80814BF0  3B BB 07 60 */	addi r29, r27, 0x760
/* 80814BF4  7F A3 EB 78 */	mr r3, r29
/* 80814BF8  4B 86 14 A9 */	bl __ct__9dBgS_AcchFv
/* 80814BFC  3C 60 80 81 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80815CD4@ha */
/* 80814C00  38 63 5C D4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80815CD4@l */
/* 80814C04  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80814C08  38 03 00 0C */	addi r0, r3, 0xc
/* 80814C0C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80814C10  38 03 00 18 */	addi r0, r3, 0x18
/* 80814C14  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80814C18  38 7D 00 14 */	addi r3, r29, 0x14
/* 80814C1C  4B 86 42 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80814C20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80814C24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80814C28  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80814C2C  38 7B 09 54 */	addi r3, r27, 0x954
/* 80814C30  4B 86 EB 31 */	bl __ct__10dCcD_GSttsFv
/* 80814C34  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80814C38  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80814C3C  90 7B 09 50 */	stw r3, 0x950(r27)
/* 80814C40  38 03 00 20 */	addi r0, r3, 0x20
/* 80814C44  90 1B 09 54 */	stw r0, 0x954(r27)
/* 80814C48  3B 7B 09 74 */	addi r27, r27, 0x974
/* 80814C4C  7F 63 DB 78 */	mr r3, r27
/* 80814C50  4B 86 ED D9 */	bl __ct__12dCcD_GObjInfFv
/* 80814C54  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80814C58  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80814C5C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80814C60  3C 60 80 81 */	lis r3, __vt__8cM3dGAab@ha /* 0x80815CC8@ha */
/* 80814C64  38 03 5C C8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80815CC8@l */
/* 80814C68  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80814C6C  3C 60 80 81 */	lis r3, __vt__8cM3dGSph@ha /* 0x80815CBC@ha */
/* 80814C70  38 03 5C BC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80815CBC@l */
/* 80814C74  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80814C78  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80814C7C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80814C80  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80814C84  38 03 00 58 */	addi r0, r3, 0x58
/* 80814C88  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80814C8C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80814C90  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80814C94  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80814C98  38 03 00 2C */	addi r0, r3, 0x2c
/* 80814C9C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80814CA0  38 03 00 84 */	addi r0, r3, 0x84
/* 80814CA4  90 1B 01 34 */	stw r0, 0x134(r27)
lbl_80814CA8:
/* 80814CA8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80814CAC  60 00 00 08 */	ori r0, r0, 8
/* 80814CB0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80814CB4:
/* 80814CB4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80814CB8  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 80814CBC  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80814CC0  28 00 00 FF */	cmplwi r0, 0xff
/* 80814CC4  40 82 00 0C */	bne lbl_80814CD0
/* 80814CC8  38 00 00 00 */	li r0, 0
/* 80814CCC  98 1F 06 A0 */	stb r0, 0x6a0(r31)
lbl_80814CD0:
/* 80814CD0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80814CD4  54 00 46 3E */	srwi r0, r0, 0x18
/* 80814CD8  98 1F 06 A2 */	stb r0, 0x6a2(r31)
/* 80814CDC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80814CE0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80814CE4  28 00 00 FF */	cmplwi r0, 0xff
/* 80814CE8  40 82 00 08 */	bne lbl_80814CF0
/* 80814CEC  38 00 00 00 */	li r0, 0
lbl_80814CF0:
/* 80814CF0  C0 5C 00 00 */	lfs f2, 0(r28)
/* 80814CF4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80814CF8  C8 3C 01 50 */	lfd f1, 0x150(r28)
/* 80814CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80814D00  3C 00 43 30 */	lis r0, 0x4330
/* 80814D04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80814D08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80814D0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80814D10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80814D14  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 80814D18  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80814D1C  54 1D C6 3E */	rlwinm r29, r0, 0x18, 0x18, 0x1f
/* 80814D20  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80814D24  54 1E C6 3E */	rlwinm r30, r0, 0x18, 0x18, 0x1f
/* 80814D28  98 1F 06 C8 */	stb r0, 0x6c8(r31)
/* 80814D2C  38 00 00 01 */	li r0, 1
/* 80814D30  98 1F 06 A1 */	stb r0, 0x6a1(r31)
/* 80814D34  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80814D38  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80814D3C  41 82 00 0C */	beq lbl_80814D48
/* 80814D40  38 00 00 00 */	li r0, 0
/* 80814D44  98 1F 06 A1 */	stb r0, 0x6a1(r31)
lbl_80814D48:
/* 80814D48  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80814D4C  54 00 07 3B */	rlwinm. r0, r0, 0, 0x1c, 0x1d
/* 80814D50  41 82 00 0C */	beq lbl_80814D5C
/* 80814D54  38 00 00 01 */	li r0, 1
/* 80814D58  98 1F 06 CB */	stb r0, 0x6cb(r31)
lbl_80814D5C:
/* 80814D5C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80814D60  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80814D64  98 1F 06 A3 */	stb r0, 0x6a3(r31)
/* 80814D68  88 9F 06 A2 */	lbz r4, 0x6a2(r31)
/* 80814D6C  28 04 00 FF */	cmplwi r4, 0xff
/* 80814D70  41 82 00 28 */	beq lbl_80814D98
/* 80814D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80814D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80814D7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80814D80  7C 05 07 74 */	extsb r5, r0
/* 80814D84  4B 82 05 DD */	bl isSwitch__10dSv_info_cCFii
/* 80814D88  2C 03 00 00 */	cmpwi r3, 0
/* 80814D8C  41 82 00 0C */	beq lbl_80814D98
/* 80814D90  38 60 00 05 */	li r3, 5
/* 80814D94  48 00 04 78 */	b lbl_8081520C
lbl_80814D98:
/* 80814D98  88 1F 06 C8 */	lbz r0, 0x6c8(r31)
/* 80814D9C  28 00 00 00 */	cmplwi r0, 0
/* 80814DA0  41 82 00 0C */	beq lbl_80814DAC
/* 80814DA4  28 00 00 FF */	cmplwi r0, 0xff
/* 80814DA8  40 82 00 20 */	bne lbl_80814DC8
lbl_80814DAC:
/* 80814DAC  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80814DB0  28 00 00 06 */	cmplwi r0, 6
/* 80814DB4  41 82 00 14 */	beq lbl_80814DC8
/* 80814DB8  28 00 00 03 */	cmplwi r0, 3
/* 80814DBC  41 82 00 0C */	beq lbl_80814DC8
/* 80814DC0  28 00 00 07 */	cmplwi r0, 7
/* 80814DC4  40 82 00 10 */	bne lbl_80814DD4
lbl_80814DC8:
/* 80814DC8  38 00 00 01 */	li r0, 1
/* 80814DCC  98 1F 06 CA */	stb r0, 0x6ca(r31)
/* 80814DD0  48 00 00 0C */	b lbl_80814DDC
lbl_80814DD4:
/* 80814DD4  38 00 00 00 */	li r0, 0
/* 80814DD8  98 1F 06 CA */	stb r0, 0x6ca(r31)
lbl_80814DDC:
/* 80814DDC  88 1F 06 CA */	lbz r0, 0x6ca(r31)
/* 80814DE0  28 00 00 01 */	cmplwi r0, 1
/* 80814DE4  40 82 00 18 */	bne lbl_80814DFC
/* 80814DE8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80814DEC  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80814DF0  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80814DF4  4B 81 80 C9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80814DF8  48 00 00 18 */	b lbl_80814E10
lbl_80814DFC:
/* 80814DFC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80814E00  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80814E04  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80814E08  38 84 00 05 */	addi r4, r4, 5
/* 80814E0C  4B 81 80 B1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
lbl_80814E10:
/* 80814E10  7C 7B 1B 78 */	mr r27, r3
/* 80814E14  2C 03 00 04 */	cmpwi r3, 4
/* 80814E18  40 82 03 F0 */	bne lbl_80815208
/* 80814E1C  38 00 00 00 */	li r0, 0
/* 80814E20  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80814E24  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80814E28  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80814E2C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80814E30  7F E3 FB 78 */	mr r3, r31
/* 80814E34  3C 80 80 81 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80813E84@ha */
/* 80814E38  38 84 3E 84 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80813E84@l */
/* 80814E3C  38 A0 28 B0 */	li r5, 0x28b0
/* 80814E40  4B 80 56 71 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80814E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80814E48  40 82 00 0C */	bne lbl_80814E54
/* 80814E4C  38 60 00 05 */	li r3, 5
/* 80814E50  48 00 03 BC */	b lbl_8081520C
lbl_80814E54:
/* 80814E54  3C 60 80 81 */	lis r3, data_80815D28@ha /* 0x80815D28@ha */
/* 80814E58  8C 03 5D 28 */	lbzu r0, data_80815D28@l(r3)  /* 0x80815D28@l */
/* 80814E5C  28 00 00 00 */	cmplwi r0, 0
/* 80814E60  40 82 00 20 */	bne lbl_80814E80
/* 80814E64  38 00 00 01 */	li r0, 1
/* 80814E68  98 1F 0A F4 */	stb r0, 0xaf4(r31)
/* 80814E6C  98 03 00 00 */	stb r0, 0(r3)
/* 80814E70  38 00 FF FF */	li r0, -1
/* 80814E74  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 80814E78  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 80814E7C  98 03 00 04 */	stb r0, 4(r3)
lbl_80814E80:
/* 80814E80  38 00 00 04 */	li r0, 4
/* 80814E84  90 1F 07 14 */	stw r0, 0x714(r31)
/* 80814E88  38 00 00 3A */	li r0, 0x3a
/* 80814E8C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80814E90  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80814E94  80 63 00 04 */	lwz r3, 4(r3)
/* 80814E98  38 03 00 24 */	addi r0, r3, 0x24
/* 80814E9C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80814EA0  7F E3 FB 78 */	mr r3, r31
/* 80814EA4  C0 3C 01 44 */	lfs f1, 0x144(r28)
/* 80814EA8  C0 5C 00 FC */	lfs f2, 0xfc(r28)
/* 80814EAC  FC 60 08 90 */	fmr f3, f1
/* 80814EB0  4B 80 56 79 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80814EB4  7F E3 FB 78 */	mr r3, r31
/* 80814EB8  C0 3C 00 6C */	lfs f1, 0x6c(r28)
/* 80814EBC  C0 5C 00 00 */	lfs f2, 0(r28)
/* 80814EC0  FC 60 08 90 */	fmr f3, f1
/* 80814EC4  4B 80 56 75 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80814EC8  38 00 00 00 */	li r0, 0
/* 80814ECC  90 01 00 08 */	stw r0, 8(r1)
/* 80814ED0  38 7F 07 60 */	addi r3, r31, 0x760
/* 80814ED4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80814ED8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80814EDC  7F E6 FB 78 */	mr r6, r31
/* 80814EE0  38 E0 00 01 */	li r7, 1
/* 80814EE4  39 1F 07 20 */	addi r8, r31, 0x720
/* 80814EE8  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80814EEC  39 40 00 00 */	li r10, 0
/* 80814EF0  4B 86 13 59 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80814EF4  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 80814EF8  60 00 20 00 */	ori r0, r0, 0x2000
/* 80814EFC  90 1F 07 8C */	stw r0, 0x78c(r31)
/* 80814F00  38 7F 07 20 */	addi r3, r31, 0x720
/* 80814F04  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 80814F08  C0 5C 00 B8 */	lfs f2, 0xb8(r28)
/* 80814F0C  4B 86 10 4D */	bl SetWall__12dBgS_AcchCirFff
/* 80814F10  38 00 00 0A */	li r0, 0xa
/* 80814F14  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80814F18  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80814F1C  38 7F 09 38 */	addi r3, r31, 0x938
/* 80814F20  38 80 00 64 */	li r4, 0x64
/* 80814F24  38 A0 00 00 */	li r5, 0
/* 80814F28  7F E6 FB 78 */	mr r6, r31
/* 80814F2C  4B 86 E9 35 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80814F30  38 7F 09 74 */	addi r3, r31, 0x974
/* 80814F34  3C 80 80 81 */	lis r4, cc_sph_src__6E_YM_n@ha /* 0x80815B3C@ha */
/* 80814F38  38 84 5B 3C */	addi r4, r4, cc_sph_src__6E_YM_n@l /* 0x80815B3C@l */
/* 80814F3C  4B 86 FA F9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80814F40  38 1F 09 38 */	addi r0, r31, 0x938
/* 80814F44  90 1F 09 B8 */	stw r0, 0x9b8(r31)
/* 80814F48  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80814F4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80814F50  38 BF 05 38 */	addi r5, r31, 0x538
/* 80814F54  38 C0 00 03 */	li r6, 3
/* 80814F58  38 E0 00 01 */	li r7, 1
/* 80814F5C  4B AA C1 39 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80814F60  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80814F64  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80814F68  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80814F6C  38 84 00 12 */	addi r4, r4, 0x12
/* 80814F70  4B AA CC 21 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80814F74  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 80814F78  90 1F 0A B4 */	stw r0, 0xab4(r31)
/* 80814F7C  38 00 00 01 */	li r0, 1
/* 80814F80  98 1F 0A CA */	stb r0, 0xaca(r31)
/* 80814F84  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 80814F88  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 80814F8C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80814F90  28 00 00 07 */	cmplwi r0, 7
/* 80814F94  41 81 02 44 */	bgt lbl_808151D8
/* 80814F98  3C 60 80 81 */	lis r3, lit_9421@ha /* 0x80815C28@ha */
/* 80814F9C  38 63 5C 28 */	addi r3, r3, lit_9421@l /* 0x80815C28@l */
/* 80814FA0  54 00 10 3A */	slwi r0, r0, 2
/* 80814FA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80814FA8  7C 09 03 A6 */	mtctr r0
/* 80814FAC  4E 80 04 20 */	bctr 
lbl_80814FB0:
/* 80814FB0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80814FB4  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 80814FB8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80814FBC  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 80814FC0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80814FC4  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80814FC8  7F E3 FB 78 */	mr r3, r31
/* 80814FCC  38 80 00 00 */	li r4, 0
/* 80814FD0  4B FF 4F CD */	bl setActionMode__8daE_YM_cFi
/* 80814FD4  48 00 02 04 */	b lbl_808151D8
lbl_80814FD8:
/* 80814FD8  7F E3 FB 78 */	mr r3, r31
/* 80814FDC  4B FF F4 FD */	bl checkInitialWall__8daE_YM_cFv
/* 80814FE0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80814FE4  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 80814FE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80814FEC  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 80814FF0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80814FF4  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80814FF8  7F E3 FB 78 */	mr r3, r31
/* 80814FFC  38 80 00 00 */	li r4, 0
/* 80815000  4B FF 4F 9D */	bl setActionMode__8daE_YM_cFi
/* 80815004  48 00 01 D4 */	b lbl_808151D8
lbl_80815008:
/* 80815008  7F E3 FB 78 */	mr r3, r31
/* 8081500C  38 80 00 00 */	li r4, 0
/* 80815010  4B FF 4F 8D */	bl setActionMode__8daE_YM_cFi
/* 80815014  38 00 00 64 */	li r0, 0x64
/* 80815018  90 1F 06 98 */	stw r0, 0x698(r31)
/* 8081501C  48 00 01 BC */	b lbl_808151D8
lbl_80815020:
/* 80815020  7F E3 FB 78 */	mr r3, r31
/* 80815024  38 80 00 0B */	li r4, 0xb
/* 80815028  4B FF 4F 75 */	bl setActionMode__8daE_YM_cFi
/* 8081502C  38 00 00 02 */	li r0, 2
/* 80815030  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80815034  48 00 01 A4 */	b lbl_808151D8
lbl_80815038:
/* 80815038  28 1E 00 FF */	cmplwi r30, 0xff
/* 8081503C  41 82 00 5C */	beq lbl_80815098
/* 80815040  7F C3 F3 78 */	mr r3, r30
/* 80815044  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80815048  7C 04 07 74 */	extsb r4, r0
/* 8081504C  4B 83 C7 A1 */	bl dPath_GetRoomPath__Fii
/* 80815050  90 7F 06 AC */	stw r3, 0x6ac(r31)
/* 80815054  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 80815058  28 00 00 00 */	cmplwi r0, 0
/* 8081505C  41 82 00 3C */	beq lbl_80815098
/* 80815060  38 00 00 1F */	li r0, 0x1f
/* 80815064  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 80815068  38 00 00 04 */	li r0, 4
/* 8081506C  98 1F 06 A6 */	stb r0, 0x6a6(r31)
/* 80815070  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80815074  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 80815078  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8081507C  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 80815080  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80815084  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80815088  7F E3 FB 78 */	mr r3, r31
/* 8081508C  38 80 00 00 */	li r4, 0
/* 80815090  4B FF 4F 0D */	bl setActionMode__8daE_YM_cFi
/* 80815094  48 00 01 44 */	b lbl_808151D8
lbl_80815098:
/* 80815098  38 00 00 00 */	li r0, 0
/* 8081509C  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 808150A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 808150A4  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 808150A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 808150AC  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 808150B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 808150B4  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 808150B8  7F E3 FB 78 */	mr r3, r31
/* 808150BC  38 80 00 00 */	li r4, 0
/* 808150C0  4B FF 4E DD */	bl setActionMode__8daE_YM_cFi
/* 808150C4  48 00 01 14 */	b lbl_808151D8
lbl_808150C8:
/* 808150C8  88 1F 06 A3 */	lbz r0, 0x6a3(r31)
/* 808150CC  28 00 00 FF */	cmplwi r0, 0xff
/* 808150D0  40 82 00 34 */	bne lbl_80815104
/* 808150D4  38 00 00 00 */	li r0, 0
/* 808150D8  98 1F 06 A0 */	stb r0, 0x6a0(r31)
/* 808150DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 808150E0  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 808150E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 808150E8  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 808150EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 808150F0  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 808150F4  7F E3 FB 78 */	mr r3, r31
/* 808150F8  38 80 00 00 */	li r4, 0
/* 808150FC  4B FF 4E A1 */	bl setActionMode__8daE_YM_cFi
/* 80815100  48 00 00 D8 */	b lbl_808151D8
lbl_80815104:
/* 80815104  28 1E 00 FF */	cmplwi r30, 0xff
/* 80815108  41 82 00 18 */	beq lbl_80815120
/* 8081510C  7F C3 F3 78 */	mr r3, r30
/* 80815110  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80815114  7C 04 07 74 */	extsb r4, r0
/* 80815118  4B 83 C6 D5 */	bl dPath_GetRoomPath__Fii
/* 8081511C  90 7F 06 AC */	stw r3, 0x6ac(r31)
lbl_80815120:
/* 80815120  7F E3 FB 78 */	mr r3, r31
/* 80815124  38 80 00 10 */	li r4, 0x10
/* 80815128  4B FF 4E 75 */	bl setActionMode__8daE_YM_cFi
/* 8081512C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80815130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80815134  88 9F 06 A3 */	lbz r4, 0x6a3(r31)
/* 80815138  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8081513C  7C 05 07 74 */	extsb r5, r0
/* 80815140  4B 82 02 21 */	bl isSwitch__10dSv_info_cCFii
/* 80815144  2C 03 00 00 */	cmpwi r3, 0
/* 80815148  41 82 00 90 */	beq lbl_808151D8
/* 8081514C  38 00 00 0A */	li r0, 0xa
/* 80815150  90 1F 06 98 */	stw r0, 0x698(r31)
/* 80815154  48 00 00 84 */	b lbl_808151D8
lbl_80815158:
/* 80815158  7F E3 FB 78 */	mr r3, r31
/* 8081515C  38 80 00 11 */	li r4, 0x11
/* 80815160  4B FF 4E 3D */	bl setActionMode__8daE_YM_cFi
/* 80815164  48 00 00 74 */	b lbl_808151D8
lbl_80815168:
/* 80815168  28 1E 00 FF */	cmplwi r30, 0xff
/* 8081516C  41 82 00 18 */	beq lbl_80815184
/* 80815170  7F C3 F3 78 */	mr r3, r30
/* 80815174  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80815178  7C 04 07 74 */	extsb r4, r0
/* 8081517C  4B 83 C6 71 */	bl dPath_GetRoomPath__Fii
/* 80815180  90 7F 06 AC */	stw r3, 0x6ac(r31)
lbl_80815184:
/* 80815184  28 1D 00 FF */	cmplwi r29, 0xff
/* 80815188  41 82 00 18 */	beq lbl_808151A0
/* 8081518C  7F A3 EB 78 */	mr r3, r29
/* 80815190  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80815194  7C 04 07 74 */	extsb r4, r0
/* 80815198  4B 83 C6 55 */	bl dPath_GetRoomPath__Fii
/* 8081519C  90 7F 06 B0 */	stw r3, 0x6b0(r31)
lbl_808151A0:
/* 808151A0  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 808151A4  28 00 00 00 */	cmplwi r0, 0
/* 808151A8  40 82 00 10 */	bne lbl_808151B8
/* 808151AC  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 808151B0  28 00 00 00 */	cmplwi r0, 0
/* 808151B4  41 82 00 1C */	beq lbl_808151D0
lbl_808151B8:
/* 808151B8  C0 1C 00 8C */	lfs f0, 0x8c(r28)
/* 808151BC  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 808151C0  7F E3 FB 78 */	mr r3, r31
/* 808151C4  38 80 00 12 */	li r4, 0x12
/* 808151C8  4B FF 4D D5 */	bl setActionMode__8daE_YM_cFi
/* 808151CC  48 00 00 0C */	b lbl_808151D8
lbl_808151D0:
/* 808151D0  38 60 00 05 */	li r3, 5
/* 808151D4  48 00 00 38 */	b lbl_8081520C
lbl_808151D8:
/* 808151D8  38 00 00 01 */	li r0, 1
/* 808151DC  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 808151E0  88 1F 06 CA */	lbz r0, 0x6ca(r31)
/* 808151E4  28 00 00 01 */	cmplwi r0, 1
/* 808151E8  40 82 00 18 */	bne lbl_80815200
/* 808151EC  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 808151F0  28 00 00 03 */	cmplwi r0, 3
/* 808151F4  41 82 00 0C */	beq lbl_80815200
/* 808151F8  38 00 00 00 */	li r0, 0
/* 808151FC  98 1F 06 CC */	stb r0, 0x6cc(r31)
lbl_80815200:
/* 80815200  7F E3 FB 78 */	mr r3, r31
/* 80815204  4B FF E8 0D */	bl daE_YM_Execute__FP8daE_YM_c
lbl_80815208:
/* 80815208  7F 63 DB 78 */	mr r3, r27
lbl_8081520C:
/* 8081520C  39 61 00 30 */	addi r11, r1, 0x30
/* 80815210  4B B4 D0 11 */	bl _restgpr_27
/* 80815214  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80815218  7C 08 03 A6 */	mtlr r0
/* 8081521C  38 21 00 30 */	addi r1, r1, 0x30
/* 80815220  4E 80 00 20 */	blr 
