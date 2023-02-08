lbl_80704CF0:
/* 80704CF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80704CF4  7C 08 02 A6 */	mflr r0
/* 80704CF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80704CFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80704D00  4B C5 D4 D9 */	bl _savegpr_28
/* 80704D04  7C 7D 1B 78 */	mr r29, r3
/* 80704D08  3C 60 80 70 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80705C54@ha */
/* 80704D0C  3B C3 5C 54 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80705C54@l */
/* 80704D10  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 80704D14  3B E3 5A F8 */	addi r31, r3, lit_3903@l /* 0x80705AF8@l */
/* 80704D18  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80704D1C  3C 80 80 70 */	lis r4, d_a_e_kr__stringBase0@ha /* 0x80705C4C@ha */
/* 80704D20  38 84 5C 4C */	addi r4, r4, d_a_e_kr__stringBase0@l /* 0x80705C4C@l */
/* 80704D24  4B 92 81 99 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80704D28  7C 7C 1B 78 */	mr r28, r3
/* 80704D2C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80704D30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80704D34  40 82 00 20 */	bne lbl_80704D54
/* 80704D38  28 1D 00 00 */	cmplwi r29, 0
/* 80704D3C  41 82 00 0C */	beq lbl_80704D48
/* 80704D40  7F A3 EB 78 */	mr r3, r29
/* 80704D44  48 00 02 C1 */	bl __ct__10e_kr_classFv
lbl_80704D48:
/* 80704D48  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80704D4C  60 00 00 08 */	ori r0, r0, 8
/* 80704D50  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80704D54:
/* 80704D54  2C 1C 00 04 */	cmpwi r28, 4
/* 80704D58  40 82 02 90 */	bne lbl_80704FE8
/* 80704D5C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80704D60  98 1D 06 64 */	stb r0, 0x664(r29)
/* 80704D64  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80704D68  28 00 00 FF */	cmplwi r0, 0xff
/* 80704D6C  40 82 00 0C */	bne lbl_80704D78
/* 80704D70  38 00 00 00 */	li r0, 0
/* 80704D74  98 1D 06 64 */	stb r0, 0x664(r29)
lbl_80704D78:
/* 80704D78  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80704D7C  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 80704D80  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80704D84  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80704D88  98 1D 06 65 */	stb r0, 0x665(r29)
/* 80704D8C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80704D90  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80704D94  98 1D 06 66 */	stb r0, 0x666(r29)
/* 80704D98  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80704D9C  98 1D 06 67 */	stb r0, 0x667(r29)
/* 80704DA0  38 00 00 00 */	li r0, 0
/* 80704DA4  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80704DA8  88 9D 06 67 */	lbz r4, 0x667(r29)
/* 80704DAC  28 04 00 FF */	cmplwi r4, 0xff
/* 80704DB0  41 82 00 28 */	beq lbl_80704DD8
/* 80704DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80704DB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80704DBC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80704DC0  7C 05 07 74 */	extsb r5, r0
/* 80704DC4  4B 93 05 9D */	bl isSwitch__10dSv_info_cCFii
/* 80704DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80704DCC  41 82 00 0C */	beq lbl_80704DD8
/* 80704DD0  38 60 00 05 */	li r3, 5
/* 80704DD4  48 00 02 18 */	b lbl_80704FEC
lbl_80704DD8:
/* 80704DD8  7F A3 EB 78 */	mr r3, r29
/* 80704DDC  3C 80 80 70 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80704BB4@ha */
/* 80704DE0  38 84 4B B4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80704BB4@l */
/* 80704DE4  38 A0 21 C0 */	li r5, 0x21c0
/* 80704DE8  4B 91 56 C9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80704DEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80704DF0  40 82 00 0C */	bne lbl_80704DFC
/* 80704DF4  38 60 00 05 */	li r3, 5
/* 80704DF8  48 00 01 F4 */	b lbl_80704FEC
lbl_80704DFC:
/* 80704DFC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80704E00  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80704E04  EC 01 00 2A */	fadds f0, f1, f0
/* 80704E08  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80704E0C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80704E10  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80704E14  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80704E18  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80704E1C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80704E20  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 80704E24  88 7D 06 66 */	lbz r3, 0x666(r29)
/* 80704E28  28 03 00 FF */	cmplwi r3, 0xff
/* 80704E2C  41 82 00 5C */	beq lbl_80704E88
/* 80704E30  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80704E34  7C 04 07 74 */	extsb r4, r0
/* 80704E38  4B 94 C9 B5 */	bl dPath_GetRoomPath__Fii
/* 80704E3C  90 7D 06 E4 */	stw r3, 0x6e4(r29)
/* 80704E40  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80704E44  28 00 00 00 */	cmplwi r0, 0
/* 80704E48  40 82 00 0C */	bne lbl_80704E54
/* 80704E4C  38 60 00 05 */	li r3, 5
/* 80704E50  48 00 01 9C */	b lbl_80704FEC
lbl_80704E54:
/* 80704E54  88 7D 06 66 */	lbz r3, 0x666(r29)
/* 80704E58  38 03 00 01 */	addi r0, r3, 1
/* 80704E5C  98 1D 06 E1 */	stb r0, 0x6e1(r29)
/* 80704E60  38 60 00 01 */	li r3, 1
/* 80704E64  98 7D 06 E3 */	stb r3, 0x6e3(r29)
/* 80704E68  38 00 00 0A */	li r0, 0xa
/* 80704E6C  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 80704E70  38 00 FF F6 */	li r0, -10
/* 80704E74  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80704E78  98 7D 06 74 */	stb r3, 0x674(r29)
/* 80704E7C  38 00 00 28 */	li r0, 0x28
/* 80704E80  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80704E84  48 00 00 10 */	b lbl_80704E94
lbl_80704E88:
/* 80704E88  38 00 00 28 */	li r0, 0x28
/* 80704E8C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80704E90  B0 1D 05 60 */	sth r0, 0x560(r29)
lbl_80704E94:
/* 80704E94  38 00 FF FF */	li r0, -1
/* 80704E98  90 1D 0F 00 */	stw r0, 0xf00(r29)
/* 80704E9C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80704EA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80704EA4  38 03 00 24 */	addi r0, r3, 0x24
/* 80704EA8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80704EAC  7F A3 EB 78 */	mr r3, r29
/* 80704EB0  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 80704EB4  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 80704EB8  FC 60 08 90 */	fmr f3, f1
/* 80704EBC  4B 91 56 6D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80704EC0  7F A3 EB 78 */	mr r3, r29
/* 80704EC4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80704EC8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80704ECC  FC 60 08 90 */	fmr f3, f1
/* 80704ED0  4B 91 56 69 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80704ED4  38 00 00 00 */	li r0, 0
/* 80704ED8  90 01 00 08 */	stw r0, 8(r1)
/* 80704EDC  38 7D 07 44 */	addi r3, r29, 0x744
/* 80704EE0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80704EE4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80704EE8  7F A6 EB 78 */	mr r6, r29
/* 80704EEC  38 E0 00 01 */	li r7, 1
/* 80704EF0  39 1D 07 04 */	addi r8, r29, 0x704
/* 80704EF4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80704EF8  39 40 00 00 */	li r10, 0
/* 80704EFC  4B 97 13 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80704F00  38 7D 07 04 */	addi r3, r29, 0x704
/* 80704F04  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80704F08  FC 40 08 90 */	fmr f2, f1
/* 80704F0C  4B 97 10 4D */	bl SetWall__12dBgS_AcchCirFff
/* 80704F10  38 7D 09 24 */	addi r3, r29, 0x924
/* 80704F14  38 80 00 64 */	li r4, 0x64
/* 80704F18  38 A0 00 FF */	li r5, 0xff
/* 80704F1C  7F A6 EB 78 */	mr r6, r29
/* 80704F20  4B 97 E9 41 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80704F24  38 7D 09 60 */	addi r3, r29, 0x960
/* 80704F28  38 9E 01 B4 */	addi r4, r30, 0x1b4
/* 80704F2C  4B 97 FB 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80704F30  38 7D 0A 98 */	addi r3, r29, 0xa98
/* 80704F34  38 9E 01 F4 */	addi r4, r30, 0x1f4
/* 80704F38  4B 97 FA FD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80704F3C  38 7D 0B D0 */	addi r3, r29, 0xbd0
/* 80704F40  38 9E 02 34 */	addi r4, r30, 0x234
/* 80704F44  4B 97 FA F1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80704F48  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 80704F4C  38 9E 02 74 */	addi r4, r30, 0x274
/* 80704F50  4B 97 FA E5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80704F54  38 1D 09 24 */	addi r0, r29, 0x924
/* 80704F58  90 1D 09 A4 */	stw r0, 0x9a4(r29)
/* 80704F5C  90 1D 0A DC */	stw r0, 0xadc(r29)
/* 80704F60  90 1D 0C 14 */	stw r0, 0xc14(r29)
/* 80704F64  90 1D 0D 4C */	stw r0, 0xd4c(r29)
/* 80704F68  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80704F6C  4B B6 29 E9 */	bl cM_rndF__Ff
/* 80704F70  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80704F74  EC 00 08 2A */	fadds f0, f0, f1
/* 80704F78  FC 00 00 1E */	fctiwz f0, f0
/* 80704F7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80704F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80704F84  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 80704F88  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80704F8C  4B B6 29 C9 */	bl cM_rndF__Ff
/* 80704F90  FC 00 08 1E */	fctiwz f0, f1
/* 80704F94  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80704F98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80704F9C  B0 1D 06 D6 */	sth r0, 0x6d6(r29)
/* 80704FA0  38 00 00 16 */	li r0, 0x16
/* 80704FA4  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80704FA8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80704FAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80704FB0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80704FB4  38 C0 00 03 */	li r6, 3
/* 80704FB8  38 E0 00 01 */	li r7, 1
/* 80704FBC  4B BB C0 D9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80704FC0  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80704FC4  3C 80 80 70 */	lis r4, d_a_e_kr__stringBase0@ha /* 0x80705C4C@ha */
/* 80704FC8  38 84 5C 4C */	addi r4, r4, d_a_e_kr__stringBase0@l /* 0x80705C4C@l */
/* 80704FCC  4B BB CB C5 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 80704FD0  38 1D 05 C0 */	addi r0, r29, 0x5c0
/* 80704FD4  90 1D 0E 48 */	stw r0, 0xe48(r29)
/* 80704FD8  38 00 00 01 */	li r0, 1
/* 80704FDC  98 1D 0E 5E */	stb r0, 0xe5e(r29)
/* 80704FE0  7F A3 EB 78 */	mr r3, r29
/* 80704FE4  4B FF F2 25 */	bl daE_Kr_Execute__FP10e_kr_class
lbl_80704FE8:
/* 80704FE8  7F 83 E3 78 */	mr r3, r28
lbl_80704FEC:
/* 80704FEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80704FF0  4B C5 D2 35 */	bl _restgpr_28
/* 80704FF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80704FF8  7C 08 03 A6 */	mtlr r0
/* 80704FFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80705000  4E 80 00 20 */	blr 
