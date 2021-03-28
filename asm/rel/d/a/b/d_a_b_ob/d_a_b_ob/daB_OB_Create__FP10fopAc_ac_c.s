lbl_80619C5C:
/* 80619C5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80619C60  7C 08 02 A6 */	mflr r0
/* 80619C64  90 01 00 74 */	stw r0, 0x74(r1)
/* 80619C68  39 61 00 70 */	addi r11, r1, 0x70
/* 80619C6C  4B D4 85 54 */	b _savegpr_22
/* 80619C70  7C 7C 1B 78 */	mr r28, r3
/* 80619C74  3C 80 80 62 */	lis r4, cNullVec__6Z2Calc@ha
/* 80619C78  3B A4 B0 A4 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80619C7C  3C 80 80 62 */	lis r4, lit_1109@ha
/* 80619C80  3B C4 B4 C0 */	addi r30, r4, lit_1109@l
/* 80619C84  3C 80 80 62 */	lis r4, lit_3772@ha
/* 80619C88  3B E4 AD 84 */	addi r31, r4, lit_3772@l
/* 80619C8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80619C90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80619C94  40 82 00 1C */	bne lbl_80619CB0
/* 80619C98  28 1C 00 00 */	cmplwi r28, 0
/* 80619C9C  41 82 00 08 */	beq lbl_80619CA4
/* 80619CA0  48 00 04 21 */	bl __ct__10b_ob_classFv
lbl_80619CA4:
/* 80619CA4  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80619CA8  60 00 00 08 */	ori r0, r0, 8
/* 80619CAC  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80619CB0:
/* 80619CB0  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80619CB4  3C 80 80 62 */	lis r4, stringBase0@ha
/* 80619CB8  38 84 B0 9C */	addi r4, r4, stringBase0@l
/* 80619CBC  4B A1 32 00 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80619CC0  7C 7B 1B 78 */	mr r27, r3
/* 80619CC4  2C 1B 00 04 */	cmpwi r27, 4
/* 80619CC8  40 82 03 DC */	bne lbl_8061A0A4
/* 80619CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80619CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80619CD4  3B 03 09 58 */	addi r24, r3, 0x958
/* 80619CD8  7F 03 C3 78 */	mr r3, r24
/* 80619CDC  38 80 00 03 */	li r4, 3
/* 80619CE0  4B A1 AC 54 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80619CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80619CE8  41 82 00 BC */	beq lbl_80619DA4
/* 80619CEC  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80619CF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80619CF4  C0 1F 02 D4 */	lfs f0, 0x2d4(r31)
/* 80619CF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80619CFC  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 80619D00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80619D04  38 61 00 20 */	addi r3, r1, 0x20
/* 80619D08  38 80 00 00 */	li r4, 0
/* 80619D0C  38 A0 00 00 */	li r5, 0
/* 80619D10  38 C0 00 00 */	li r6, 0
/* 80619D14  4B C4 D6 E0 */	b __ct__5csXyzFsss
/* 80619D18  38 61 00 34 */	addi r3, r1, 0x34
/* 80619D1C  38 81 00 20 */	addi r4, r1, 0x20
/* 80619D20  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80619D24  7C 05 07 74 */	extsb r5, r0
/* 80619D28  38 C0 00 00 */	li r6, 0
/* 80619D2C  38 E0 00 00 */	li r7, 0
/* 80619D30  39 00 00 02 */	li r8, 2
/* 80619D34  4B A0 2C 28 */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 80619D38  7F 03 C3 78 */	mr r3, r24
/* 80619D3C  38 80 00 04 */	li r4, 4
/* 80619D40  4B A1 AB F4 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80619D44  2C 03 00 00 */	cmpwi r3, 0
/* 80619D48  40 82 00 54 */	bne lbl_80619D9C
/* 80619D4C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80619D50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80619D54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80619D58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80619D5C  C0 1F 03 08 */	lfs f0, 0x308(r31)
/* 80619D60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80619D64  C0 1F 03 0C */	lfs f0, 0x30c(r31)
/* 80619D68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80619D6C  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80619D70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80619D74  38 61 00 34 */	addi r3, r1, 0x34
/* 80619D78  38 80 00 22 */	li r4, 0x22
/* 80619D7C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80619D80  7C 05 07 74 */	extsb r5, r0
/* 80619D84  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 80619D88  38 E1 00 28 */	addi r7, r1, 0x28
/* 80619D8C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80619D90  FC 40 08 90 */	fmr f2, f1
/* 80619D94  39 00 FF FF */	li r8, -1
/* 80619D98  4B A0 23 3C */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_80619D9C:
/* 80619D9C  38 60 00 05 */	li r3, 5
/* 80619DA0  48 00 03 08 */	b lbl_8061A0A8
lbl_80619DA4:
/* 80619DA4  38 00 00 00 */	li r0, 0
/* 80619DA8  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80619DAC  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80619DB0  7F 83 E3 78 */	mr r3, r28
/* 80619DB4  3C 80 80 62 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80619DB8  38 84 94 38 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80619DBC  3C A0 00 02 */	lis r5, 0x0002 /* 0x0001F6A0@ha */
/* 80619DC0  38 A5 F6 A0 */	addi r5, r5, 0xF6A0 /* 0x0001F6A0@l */
/* 80619DC4  4B A0 06 EC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80619DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80619DCC  40 82 00 0C */	bne lbl_80619DD8
/* 80619DD0  38 60 00 05 */	li r3, 5
/* 80619DD4  48 00 02 D4 */	b lbl_8061A0A8
lbl_80619DD8:
/* 80619DD8  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 80619DDC  28 00 00 00 */	cmplwi r0, 0
/* 80619DE0  40 82 00 1C */	bne lbl_80619DFC
/* 80619DE4  38 00 00 01 */	li r0, 1
/* 80619DE8  98 1C 5D E0 */	stb r0, 0x5de0(r28)
/* 80619DEC  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 80619DF0  38 00 FF FF */	li r0, -1
/* 80619DF4  38 7E 00 54 */	addi r3, r30, 0x54
/* 80619DF8  98 03 00 04 */	stb r0, 4(r3)
lbl_80619DFC:
/* 80619DFC  38 00 00 1E */	li r0, 0x1e
/* 80619E00  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 80619E04  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 80619E08  B0 1C 47 78 */	sth r0, 0x4778(r28)
/* 80619E0C  38 00 00 01 */	li r0, 1
/* 80619E10  90 1C 47 90 */	stw r0, 0x4790(r28)
/* 80619E14  38 7C 47 CC */	addi r3, r28, 0x47cc
/* 80619E18  38 80 00 64 */	li r4, 0x64
/* 80619E1C  38 A0 00 00 */	li r5, 0
/* 80619E20  7F 86 E3 78 */	mr r6, r28
/* 80619E24  4B A6 9A 3C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80619E28  38 7C 48 08 */	addi r3, r28, 0x4808
/* 80619E2C  38 9D 02 38 */	addi r4, r29, 0x238
/* 80619E30  4B A6 AC 04 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80619E34  38 1C 47 CC */	addi r0, r28, 0x47cc
/* 80619E38  90 1C 48 4C */	stw r0, 0x484c(r28)
/* 80619E3C  38 7C 49 40 */	addi r3, r28, 0x4940
/* 80619E40  38 9D 02 F8 */	addi r4, r29, 0x2f8
/* 80619E44  4B A6 AB F0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80619E48  38 1C 47 CC */	addi r0, r28, 0x47cc
/* 80619E4C  90 1C 49 84 */	stw r0, 0x4984(r28)
/* 80619E50  38 7C 4A A0 */	addi r3, r28, 0x4aa0
/* 80619E54  38 80 00 FF */	li r4, 0xff
/* 80619E58  38 A0 00 00 */	li r5, 0
/* 80619E5C  7F 86 E3 78 */	mr r6, r28
/* 80619E60  4B A6 9A 00 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80619E64  38 7C 4A DC */	addi r3, r28, 0x4adc
/* 80619E68  38 9D 02 78 */	addi r4, r29, 0x278
/* 80619E6C  4B A6 AB C8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80619E70  3B 1C 4A A0 */	addi r24, r28, 0x4aa0
/* 80619E74  93 1C 4B 20 */	stw r24, 0x4b20(r28)
/* 80619E78  3A C0 00 00 */	li r22, 0
/* 80619E7C  3B 40 00 00 */	li r26, 0
/* 80619E80  3B 20 00 02 */	li r25, 2
lbl_80619E84:
/* 80619E84  7E FC D2 14 */	add r23, r28, r26
/* 80619E88  38 77 06 00 */	addi r3, r23, 0x600
/* 80619E8C  38 9D 02 B8 */	addi r4, r29, 0x2b8
/* 80619E90  4B A6 AB A4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80619E94  93 17 06 44 */	stw r24, 0x644(r23)
/* 80619E98  80 17 06 9C */	lwz r0, 0x69c(r23)
/* 80619E9C  60 00 00 01 */	ori r0, r0, 1
/* 80619EA0  90 17 06 9C */	stw r0, 0x69c(r23)
/* 80619EA4  9B 37 06 BA */	stb r25, 0x6ba(r23)
/* 80619EA8  3A D6 00 01 */	addi r22, r22, 1
/* 80619EAC  2C 16 00 13 */	cmpwi r22, 0x13
/* 80619EB0  3B 5A 01 78 */	addi r26, r26, 0x178
/* 80619EB4  41 80 FF D0 */	blt lbl_80619E84
/* 80619EB8  38 7C 4C 14 */	addi r3, r28, 0x4c14
/* 80619EBC  38 9D 02 B8 */	addi r4, r29, 0x2b8
/* 80619EC0  4B A6 AB 74 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80619EC4  38 1C 4A A0 */	addi r0, r28, 0x4aa0
/* 80619EC8  90 1C 4C 58 */	stw r0, 0x4c58(r28)
/* 80619ECC  80 1C 4C B0 */	lwz r0, 0x4cb0(r28)
/* 80619ED0  60 00 00 01 */	ori r0, r0, 1
/* 80619ED4  90 1C 4C B0 */	stw r0, 0x4cb0(r28)
/* 80619ED8  38 00 00 02 */	li r0, 2
/* 80619EDC  98 1C 4C CE */	stb r0, 0x4cce(r28)
/* 80619EE0  38 00 00 00 */	li r0, 0
/* 80619EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80619EE8  38 7C 4D 8C */	addi r3, r28, 0x4d8c
/* 80619EEC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80619EF0  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80619EF4  7F 86 E3 78 */	mr r6, r28
/* 80619EF8  38 E0 00 01 */	li r7, 1
/* 80619EFC  39 1C 4D 4C */	addi r8, r28, 0x4d4c
/* 80619F00  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80619F04  39 40 00 00 */	li r10, 0
/* 80619F08  4B A5 C3 40 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80619F0C  38 7C 4D 4C */	addi r3, r28, 0x4d4c
/* 80619F10  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80619F14  C0 5F 03 14 */	lfs f2, 0x314(r31)
/* 80619F18  4B A5 C0 40 */	b SetWall__12dBgS_AcchCirFff
/* 80619F1C  38 80 00 01 */	li r4, 1
/* 80619F20  98 9C 47 4C */	stb r4, 0x474c(r28)
/* 80619F24  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80619F28  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 80619F2C  28 00 00 00 */	cmplwi r0, 0
/* 80619F30  41 82 00 3C */	beq lbl_80619F6C
/* 80619F34  B0 9C 47 52 */	sth r4, 0x4752(r28)
/* 80619F38  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80619F3C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80619F40  80 63 00 00 */	lwz r3, 0(r3)
/* 80619F44  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80619F48  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000030@ha */
/* 80619F4C  38 84 00 30 */	addi r4, r4, 0x0030 /* 0x01000030@l */
/* 80619F50  38 A0 00 00 */	li r5, 0
/* 80619F54  38 C0 00 00 */	li r6, 0
/* 80619F58  4B C9 50 B8 */	b bgmStart__8Z2SeqMgrFUlUll
/* 80619F5C  38 60 00 05 */	li r3, 5
/* 80619F60  38 80 FF FF */	li r4, -1
/* 80619F64  4B A1 3B 38 */	b dComIfGs_onOneZoneSwitch__Fii
/* 80619F68  48 00 00 0C */	b lbl_80619F74
lbl_80619F6C:
/* 80619F6C  38 00 00 00 */	li r0, 0
/* 80619F70  B0 1C 47 52 */	sth r0, 0x4752(r28)
lbl_80619F74:
/* 80619F74  3A C0 00 00 */	li r22, 0
/* 80619F78  3B A0 00 00 */	li r29, 0
/* 80619F7C  3B 40 00 00 */	li r26, 0
lbl_80619F80:
/* 80619F80  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80619F84  7C 07 07 74 */	extsb r7, r0
/* 80619F88  93 41 00 08 */	stw r26, 8(r1)
/* 80619F8C  38 60 00 D2 */	li r3, 0xd2
/* 80619F90  28 1C 00 00 */	cmplwi r28, 0
/* 80619F94  41 82 00 0C */	beq lbl_80619FA0
/* 80619F98  80 9C 00 04 */	lwz r4, 4(r28)
/* 80619F9C  48 00 00 08 */	b lbl_80619FA4
lbl_80619FA0:
/* 80619FA0  38 80 FF FF */	li r4, -1
lbl_80619FA4:
/* 80619FA4  7E C5 B3 78 */	mr r5, r22
/* 80619FA8  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 80619FAC  39 00 00 00 */	li r8, 0
/* 80619FB0  39 20 00 00 */	li r9, 0
/* 80619FB4  39 40 FF FF */	li r10, -1
/* 80619FB8  4B 9F FF 38 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80619FBC  38 1D 4F 64 */	addi r0, r29, 0x4f64
/* 80619FC0  7C 7C 01 2E */	stwx r3, r28, r0
/* 80619FC4  3A D6 00 01 */	addi r22, r22, 1
/* 80619FC8  2C 16 00 08 */	cmpwi r22, 8
/* 80619FCC  3B BD 00 04 */	addi r29, r29, 4
/* 80619FD0  41 80 FF B0 */	blt lbl_80619F80
/* 80619FD4  38 60 00 00 */	li r3, 0
/* 80619FD8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80619FDC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80619FE0  38 00 02 00 */	li r0, 0x200
/* 80619FE4  7C 09 03 A6 */	mtctr r0
lbl_80619FE8:
/* 80619FE8  C0 5C 04 AC */	lfs f2, 0x4ac(r28)
/* 80619FEC  EC 42 08 28 */	fsubs f2, f2, f1
/* 80619FF0  7C 9C 1A 14 */	add r4, r28, r3
/* 80619FF4  D0 04 23 24 */	stfs f0, 0x2324(r4)
/* 80619FF8  D0 44 23 28 */	stfs f2, 0x2328(r4)
/* 80619FFC  D0 04 23 2C */	stfs f0, 0x232c(r4)
/* 8061A000  38 63 00 0C */	addi r3, r3, 0xc
/* 8061A004  42 00 FF E4 */	bdnz lbl_80619FE8
/* 8061A008  38 00 00 01 */	li r0, 1
/* 8061A00C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8061A010  38 00 00 00 */	li r0, 0
/* 8061A014  90 1E 00 44 */	stw r0, 0x44(r30)
/* 8061A018  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 8061A01C  D0 1C 47 A0 */	stfs f0, 0x47a0(r28)
/* 8061A020  38 7C 59 3C */	addi r3, r28, 0x593c
/* 8061A024  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8061A028  38 BC 05 38 */	addi r5, r28, 0x538
/* 8061A02C  38 C0 00 03 */	li r6, 3
/* 8061A030  38 E0 00 01 */	li r7, 1
/* 8061A034  4B CA 70 60 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8061A038  38 1C 59 3C */	addi r0, r28, 0x593c
/* 8061A03C  90 1C 4A 80 */	stw r0, 0x4a80(r28)
/* 8061A040  38 1C 5C 38 */	addi r0, r28, 0x5c38
/* 8061A044  90 01 00 08 */	stw r0, 8(r1)
/* 8061A048  38 1C 5C 44 */	addi r0, r28, 0x5c44
/* 8061A04C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061A050  38 1C 5C 50 */	addi r0, r28, 0x5c50
/* 8061A054  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061A058  38 1C 5C 5C */	addi r0, r28, 0x5c5c
/* 8061A05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A060  38 1C 5C 68 */	addi r0, r28, 0x5c68
/* 8061A064  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061A068  38 1C 5C 74 */	addi r0, r28, 0x5c74
/* 8061A06C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061A070  38 7C 59 E0 */	addi r3, r28, 0x59e0
/* 8061A074  38 9C 5B E4 */	addi r4, r28, 0x5be4
/* 8061A078  38 BC 5B F0 */	addi r5, r28, 0x5bf0
/* 8061A07C  38 DC 5B FC */	addi r6, r28, 0x5bfc
/* 8061A080  38 FC 5C 08 */	addi r7, r28, 0x5c08
/* 8061A084  39 1C 5C 14 */	addi r8, r28, 0x5c14
/* 8061A088  39 3C 5C 20 */	addi r9, r28, 0x5c20
/* 8061A08C  39 5C 5C 2C */	addi r10, r28, 0x5c2c
/* 8061A090  4B CA 85 E0 */	b init__12Z2CreatureOIFP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3VecP3Vec
/* 8061A094  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8061A098  D0 1C 5D 04 */	stfs f0, 0x5d04(r28)
/* 8061A09C  7F 83 E3 78 */	mr r3, r28
/* 8061A0A0  4B FF E5 B1 */	bl daB_OB_Execute__FP10b_ob_class
lbl_8061A0A4:
/* 8061A0A4  7F 63 DB 78 */	mr r3, r27
lbl_8061A0A8:
/* 8061A0A8  39 61 00 70 */	addi r11, r1, 0x70
/* 8061A0AC  4B D4 81 60 */	b _restgpr_22
/* 8061A0B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8061A0B4  7C 08 03 A6 */	mtlr r0
/* 8061A0B8  38 21 00 70 */	addi r1, r1, 0x70
/* 8061A0BC  4E 80 00 20 */	blr 
