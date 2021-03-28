lbl_80712BF0:
/* 80712BF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80712BF4  7C 08 02 A6 */	mflr r0
/* 80712BF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80712BFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80712C00  4B C4 F5 C4 */	b _savegpr_23
/* 80712C04  7C 7C 1B 78 */	mr r28, r3
/* 80712C08  3C 80 80 71 */	lis r4, lit_1109@ha
/* 80712C0C  3B A4 3F 28 */	addi r29, r4, lit_1109@l
/* 80712C10  3C 80 80 71 */	lis r4, cNullVec__6Z2Calc@ha
/* 80712C14  3B C4 3B 08 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80712C18  3C 80 80 71 */	lis r4, lit_3828@ha
/* 80712C1C  3B E4 39 74 */	addi r31, r4, lit_3828@l
/* 80712C20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80712C24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80712C28  40 82 00 1C */	bne lbl_80712C44
/* 80712C2C  28 1C 00 00 */	cmplwi r28, 0
/* 80712C30  41 82 00 08 */	beq lbl_80712C38
/* 80712C34  48 00 02 ED */	bl __ct__10e_mf_classFv
lbl_80712C38:
/* 80712C38  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80712C3C  60 00 00 08 */	ori r0, r0, 8
/* 80712C40  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80712C44:
/* 80712C44  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80712C48  3C 80 80 71 */	lis r4, stringBase0@ha
/* 80712C4C  38 84 3A F4 */	addi r4, r4, stringBase0@l
/* 80712C50  4B 91 A2 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80712C54  7C 7B 1B 78 */	mr r27, r3
/* 80712C58  2C 1B 00 04 */	cmpwi r27, 4
/* 80712C5C  40 82 02 A8 */	bne lbl_80712F04
/* 80712C60  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80712C64  54 04 46 3E */	srwi r4, r0, 0x18
/* 80712C68  2C 04 00 FF */	cmpwi r4, 0xff
/* 80712C6C  41 82 00 28 */	beq lbl_80712C94
/* 80712C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80712C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80712C78  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80712C7C  7C 05 07 74 */	extsb r5, r0
/* 80712C80  4B 92 26 E0 */	b isSwitch__10dSv_info_cCFii
/* 80712C84  2C 03 00 00 */	cmpwi r3, 0
/* 80712C88  41 82 00 0C */	beq lbl_80712C94
/* 80712C8C  38 60 00 05 */	li r3, 5
/* 80712C90  48 00 02 78 */	b lbl_80712F08
lbl_80712C94:
/* 80712C94  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80712C98  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 80712C9C  38 00 00 01 */	li r0, 1
/* 80712CA0  98 1C 05 B9 */	stb r0, 0x5b9(r28)
/* 80712CA4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80712CA8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80712CAC  98 1C 05 B7 */	stb r0, 0x5b7(r28)
/* 80712CB0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80712CB4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80712CB8  98 1C 05 B8 */	stb r0, 0x5b8(r28)
/* 80712CBC  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80712CC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80712CC4  41 82 00 0C */	beq lbl_80712CD0
/* 80712CC8  2C 00 00 FF */	cmpwi r0, 0xff
/* 80712CCC  40 82 00 10 */	bne lbl_80712CDC
lbl_80712CD0:
/* 80712CD0  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80712CD4  D0 1C 06 B8 */	stfs f0, 0x6b8(r28)
/* 80712CD8  48 00 00 2C */	b lbl_80712D04
lbl_80712CDC:
/* 80712CDC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80712CE0  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 80712CE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80712CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80712CEC  3C 00 43 30 */	lis r0, 0x4330
/* 80712CF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80712CF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80712CF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80712CFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80712D00  D0 1C 06 B8 */	stfs f0, 0x6b8(r28)
lbl_80712D04:
/* 80712D04  38 00 00 00 */	li r0, 0
/* 80712D08  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80712D0C  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80712D10  B0 1C 04 B8 */	sth r0, 0x4b8(r28)
/* 80712D14  7F 83 E3 78 */	mr r3, r28
/* 80712D18  3C 80 80 71 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80712D1C  38 84 2A 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80712D20  38 A0 33 E0 */	li r5, 0x33e0
/* 80712D24  4B 90 77 8C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80712D28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80712D2C  40 82 00 0C */	bne lbl_80712D38
/* 80712D30  38 60 00 05 */	li r3, 5
/* 80712D34  48 00 01 D4 */	b lbl_80712F08
lbl_80712D38:
/* 80712D38  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 80712D3C  28 00 00 00 */	cmplwi r0, 0
/* 80712D40  40 82 00 1C */	bne lbl_80712D5C
/* 80712D44  38 00 00 01 */	li r0, 1
/* 80712D48  98 1C 10 B9 */	stb r0, 0x10b9(r28)
/* 80712D4C  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 80712D50  38 00 FF FF */	li r0, -1
/* 80712D54  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80712D58  98 03 00 04 */	stb r0, 4(r3)
lbl_80712D5C:
/* 80712D5C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80712D60  60 00 01 00 */	ori r0, r0, 0x100
/* 80712D64  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80712D68  38 00 00 04 */	li r0, 4
/* 80712D6C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80712D70  80 7C 05 DC */	lwz r3, 0x5dc(r28)
/* 80712D74  80 63 00 04 */	lwz r3, 4(r3)
/* 80712D78  38 03 00 24 */	addi r0, r3, 0x24
/* 80712D7C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80712D80  7F 83 E3 78 */	mr r3, r28
/* 80712D84  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80712D88  FC 40 08 90 */	fmr f2, f1
/* 80712D8C  FC 60 08 90 */	fmr f3, f1
/* 80712D90  4B 90 77 98 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80712D94  7F 83 E3 78 */	mr r3, r28
/* 80712D98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80712D9C  FC 40 08 90 */	fmr f2, f1
/* 80712DA0  FC 60 08 90 */	fmr f3, f1
/* 80712DA4  4B 90 77 94 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80712DA8  38 00 00 00 */	li r0, 0
/* 80712DAC  90 01 00 08 */	stw r0, 8(r1)
/* 80712DB0  38 7C 08 64 */	addi r3, r28, 0x864
/* 80712DB4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80712DB8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80712DBC  7F 86 E3 78 */	mr r6, r28
/* 80712DC0  38 E0 00 01 */	li r7, 1
/* 80712DC4  39 1C 08 24 */	addi r8, r28, 0x824
/* 80712DC8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80712DCC  39 40 00 00 */	li r10, 0
/* 80712DD0  4B 96 34 78 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80712DD4  38 7C 08 24 */	addi r3, r28, 0x824
/* 80712DD8  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80712DDC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80712DE0  4B 96 31 78 */	b SetWall__12dBgS_AcchCirFff
/* 80712DE4  38 00 00 C8 */	li r0, 0xc8
/* 80712DE8  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 80712DEC  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 80712DF0  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 80712DF4  38 80 00 C8 */	li r4, 0xc8
/* 80712DF8  38 A0 00 00 */	li r5, 0
/* 80712DFC  7F 86 E3 78 */	mr r6, r28
/* 80712E00  4B 97 0A 60 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80712E04  3A E0 00 00 */	li r23, 0
/* 80712E08  3B 40 00 00 */	li r26, 0
/* 80712E0C  3B 3C 0A 40 */	addi r25, r28, 0xa40
lbl_80712E10:
/* 80712E10  7F 1C D2 14 */	add r24, r28, r26
/* 80712E14  38 78 0A 7C */	addi r3, r24, 0xa7c
/* 80712E18  38 9E 02 6C */	addi r4, r30, 0x26c
/* 80712E1C  4B 97 1C 18 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80712E20  93 38 0A C0 */	stw r25, 0xac0(r24)
/* 80712E24  3A F7 00 01 */	addi r23, r23, 1
/* 80712E28  2C 17 00 02 */	cmpwi r23, 2
/* 80712E2C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80712E30  40 81 FF E0 */	ble lbl_80712E10
/* 80712E34  38 7C 0E 24 */	addi r3, r28, 0xe24
/* 80712E38  38 9E 02 AC */	addi r4, r30, 0x2ac
/* 80712E3C  4B 97 1B F8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80712E40  38 1C 0A 40 */	addi r0, r28, 0xa40
/* 80712E44  90 1C 0E 68 */	stw r0, 0xe68(r28)
/* 80712E48  38 7C 0F 5C */	addi r3, r28, 0xf5c
/* 80712E4C  38 9E 02 EC */	addi r4, r30, 0x2ec
/* 80712E50  4B 97 1B E4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80712E54  38 1C 0A 40 */	addi r0, r28, 0xa40
/* 80712E58  90 1C 0F A0 */	stw r0, 0xfa0(r28)
/* 80712E5C  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 80712E60  4B B5 4A F4 */	b cM_rndF__Ff
/* 80712E64  FC 00 08 1E */	fctiwz f0, f1
/* 80712E68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80712E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80712E70  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 80712E74  B0 1C 06 AC */	sth r0, 0x6ac(r28)
/* 80712E78  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 80712E7C  28 00 00 00 */	cmplwi r0, 0
/* 80712E80  40 82 00 0C */	bne lbl_80712E8C
/* 80712E84  38 00 00 09 */	li r0, 9
/* 80712E88  B0 1C 06 AE */	sth r0, 0x6ae(r28)
lbl_80712E8C:
/* 80712E8C  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80712E90  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80712E94  38 BC 05 38 */	addi r5, r28, 0x538
/* 80712E98  38 C0 00 03 */	li r6, 3
/* 80712E9C  38 E0 00 01 */	li r7, 1
/* 80712EA0  4B BA E1 F4 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80712EA4  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80712EA8  3C 80 80 71 */	lis r4, stringBase0@ha
/* 80712EAC  38 84 3A F4 */	addi r4, r4, stringBase0@l
/* 80712EB0  4B BA EC E0 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80712EB4  38 1C 05 E8 */	addi r0, r28, 0x5e8
/* 80712EB8  90 1C 10 9C */	stw r0, 0x109c(r28)
/* 80712EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80712EC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80712EC4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80712EC8  3C 80 80 71 */	lis r4, stringBase0@ha
/* 80712ECC  38 84 3A F4 */	addi r4, r4, stringBase0@l
/* 80712ED0  38 84 00 0C */	addi r4, r4, 0xc
/* 80712ED4  4B C5 5A C0 */	b strcmp
/* 80712ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80712EDC  40 82 00 10 */	bne lbl_80712EEC
/* 80712EE0  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80712EE4  60 00 40 00 */	ori r0, r0, 0x4000
/* 80712EE8  90 1C 04 9C */	stw r0, 0x49c(r28)
lbl_80712EEC:
/* 80712EEC  38 00 00 01 */	li r0, 1
/* 80712EF0  90 1D 00 9C */	stw r0, 0x9c(r29)
/* 80712EF4  7F 83 E3 78 */	mr r3, r28
/* 80712EF8  4B FF ED C1 */	bl daE_MF_Execute__FP10e_mf_class
/* 80712EFC  38 00 00 00 */	li r0, 0
/* 80712F00  90 1D 00 9C */	stw r0, 0x9c(r29)
lbl_80712F04:
/* 80712F04  7F 63 DB 78 */	mr r3, r27
lbl_80712F08:
/* 80712F08  39 61 00 40 */	addi r11, r1, 0x40
/* 80712F0C  4B C4 F3 04 */	b _restgpr_23
/* 80712F10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80712F14  7C 08 03 A6 */	mtlr r0
/* 80712F18  38 21 00 40 */	addi r1, r1, 0x40
/* 80712F1C  4E 80 00 20 */	blr 
