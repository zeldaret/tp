lbl_80D14CFC:
/* 80D14CFC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80D14D00  7C 08 02 A6 */	mflr r0
/* 80D14D04  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80D14D08  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80D14D0C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80D14D10  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80D14D14  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80D14D18  39 61 00 80 */	addi r11, r1, 0x80
/* 80D14D1C  4B 64 D4 A0 */	b _savegpr_21
/* 80D14D20  7C 7F 1B 78 */	mr r31, r3
/* 80D14D24  3C 80 80 D1 */	lis r4, lit_3806@ha
/* 80D14D28  3B C4 55 E8 */	addi r30, r4, lit_3806@l
/* 80D14D2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D14D30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D14D34  40 82 00 40 */	bne lbl_80D14D74
/* 80D14D38  7F E0 FB 79 */	or. r0, r31, r31
/* 80D14D3C  41 82 00 2C */	beq lbl_80D14D68
/* 80D14D40  7C 15 03 78 */	mr r21, r0
/* 80D14D44  4B 30 3E 20 */	b __ct__10fopAc_ac_cFv
/* 80D14D48  38 75 05 8C */	addi r3, r21, 0x58c
/* 80D14D4C  3C 80 80 D1 */	lis r4, __ct__6yuka_sFv@ha
/* 80D14D50  38 84 55 30 */	addi r4, r4, __ct__6yuka_sFv@l
/* 80D14D54  3C A0 80 D1 */	lis r5, __dt__6yuka_sFv@ha
/* 80D14D58  38 A5 54 F4 */	addi r5, r5, __dt__6yuka_sFv@l
/* 80D14D5C  38 C0 00 78 */	li r6, 0x78
/* 80D14D60  38 E0 00 C8 */	li r7, 0xc8
/* 80D14D64  4B 64 CF FC */	b __construct_array
lbl_80D14D68:
/* 80D14D68  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D14D6C  60 00 00 08 */	ori r0, r0, 8
/* 80D14D70  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D14D74:
/* 80D14D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D14D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D14D7C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80D14D80  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 80D14D84  3C 80 80 D1 */	lis r4, stringBase0@ha
/* 80D14D88  38 84 56 B8 */	addi r4, r4, stringBase0@l
/* 80D14D8C  4B 65 3C 08 */	b strcmp
/* 80D14D90  2C 03 00 00 */	cmpwi r3, 0
/* 80D14D94  40 82 00 18 */	bne lbl_80D14DAC
/* 80D14D98  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D14D9C  38 63 56 B8 */	addi r3, r3, stringBase0@l
/* 80D14DA0  38 03 00 07 */	addi r0, r3, 7
/* 80D14DA4  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D14DA8  48 00 00 14 */	b lbl_80D14DBC
lbl_80D14DAC:
/* 80D14DAC  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D14DB0  38 63 56 B8 */	addi r3, r3, stringBase0@l
/* 80D14DB4  38 03 00 10 */	addi r0, r3, 0x10
/* 80D14DB8  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_80D14DBC:
/* 80D14DBC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D14DC0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D14DC4  4B 31 80 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D14DC8  7C 7C 1B 78 */	mr r28, r3
/* 80D14DCC  2C 1C 00 04 */	cmpwi r28, 4
/* 80D14DD0  40 82 06 F8 */	bne lbl_80D154C8
/* 80D14DD4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D14DD8  98 1F 05 74 */	stb r0, 0x574(r31)
/* 80D14DDC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D14DE0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D14DE4  98 1F 05 75 */	stb r0, 0x575(r31)
/* 80D14DE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D14DEC  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80D14DF0  98 1F 05 76 */	stb r0, 0x576(r31)
/* 80D14DF4  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D14DF8  28 00 00 0F */	cmplwi r0, 0xf
/* 80D14DFC  40 82 00 0C */	bne lbl_80D14E08
/* 80D14E00  38 00 00 00 */	li r0, 0
/* 80D14E04  98 1F 05 76 */	stb r0, 0x576(r31)
lbl_80D14E08:
/* 80D14E08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D14E0C  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80D14E10  98 1F 05 77 */	stb r0, 0x577(r31)
/* 80D14E14  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D14E18  28 00 00 0F */	cmplwi r0, 0xf
/* 80D14E1C  40 82 00 0C */	bne lbl_80D14E28
/* 80D14E20  38 00 00 00 */	li r0, 0
/* 80D14E24  98 1F 05 77 */	stb r0, 0x577(r31)
lbl_80D14E28:
/* 80D14E28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D14E2C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D14E30  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80D14E34  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80D14E38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D14E3C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80D14E40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D14E44  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80D14E48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D14E4C  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D14E50  28 00 00 03 */	cmplwi r0, 3
/* 80D14E54  40 82 01 B4 */	bne lbl_80D15008
/* 80D14E58  38 00 00 00 */	li r0, 0
/* 80D14E5C  90 1F 63 4C */	stw r0, 0x634c(r31)
/* 80D14E60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D14E64  2C 00 00 05 */	cmpwi r0, 5
/* 80D14E68  3C 60 80 D1 */	lis r3, r11yuka_image@ha
/* 80D14E6C  3B 63 57 94 */	addi r27, r3, r11yuka_image@l
/* 80D14E70  40 82 00 0C */	bne lbl_80D14E7C
/* 80D14E74  3C 60 80 D1 */	lis r3, r05yuka_image@ha
/* 80D14E78  3B 63 56 D4 */	addi r27, r3, r05yuka_image@l
lbl_80D14E7C:
/* 80D14E7C  7F 63 DB 78 */	mr r3, r27
/* 80D14E80  38 00 00 C0 */	li r0, 0xc0
/* 80D14E84  7C 09 03 A6 */	mtctr r0
lbl_80D14E88:
/* 80D14E88  88 03 00 00 */	lbz r0, 0(r3)
/* 80D14E8C  7C 00 07 75 */	extsb. r0, r0
/* 80D14E90  41 82 00 10 */	beq lbl_80D14EA0
/* 80D14E94  80 9F 63 4C */	lwz r4, 0x634c(r31)
/* 80D14E98  38 04 00 01 */	addi r0, r4, 1
/* 80D14E9C  90 1F 63 4C */	stw r0, 0x634c(r31)
lbl_80D14EA0:
/* 80D14EA0  38 63 00 01 */	addi r3, r3, 1
/* 80D14EA4  42 00 FF E4 */	bdnz lbl_80D14E88
/* 80D14EA8  38 00 00 00 */	li r0, 0
/* 80D14EAC  98 1F 05 77 */	stb r0, 0x577(r31)
/* 80D14EB0  7F E3 FB 78 */	mr r3, r31
/* 80D14EB4  3C 80 80 D1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D14EB8  38 84 49 DC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D14EBC  3C A0 80 05 */	lis r5, 0x8005 /* 0x8004B000@ha */
/* 80D14EC0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x8004B000@l */
/* 80D14EC4  4B 30 55 EC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D14EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D14ECC  40 82 00 0C */	bne lbl_80D14ED8
/* 80D14ED0  38 60 00 05 */	li r3, 5
/* 80D14ED4  48 00 05 F8 */	b lbl_80D154CC
lbl_80D14ED8:
/* 80D14ED8  3A BF 05 8C */	addi r21, r31, 0x58c
/* 80D14EDC  3A C0 00 00 */	li r22, 0
/* 80D14EE0  48 00 00 34 */	b lbl_80D14F14
lbl_80D14EE4:
/* 80D14EE4  80 95 00 70 */	lwz r4, 0x70(r21)
/* 80D14EE8  28 04 00 00 */	cmplwi r4, 0
/* 80D14EEC  41 82 00 20 */	beq lbl_80D14F0C
/* 80D14EF0  7F A3 EB 78 */	mr r3, r29
/* 80D14EF4  7F E5 FB 78 */	mr r5, r31
/* 80D14EF8  4B 35 FB 10 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D14EFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D14F00  41 82 00 0C */	beq lbl_80D14F0C
/* 80D14F04  38 60 00 05 */	li r3, 5
/* 80D14F08  48 00 05 C4 */	b lbl_80D154CC
lbl_80D14F0C:
/* 80D14F0C  3A D6 00 01 */	addi r22, r22, 1
/* 80D14F10  3A B5 00 78 */	addi r21, r21, 0x78
lbl_80D14F14:
/* 80D14F14  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D14F18  7C 16 00 00 */	cmpw r22, r0
/* 80D14F1C  41 80 FF C8 */	blt lbl_80D14EE4
/* 80D14F20  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80D14F24  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D14F28  EC 01 00 2A */	fadds f0, f1, f0
/* 80D14F2C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80D14F30  3B 00 00 00 */	li r24, 0
/* 80D14F34  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D14F38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D14F3C  3B 40 00 00 */	li r26, 0
/* 80D14F40  7F 79 DB 78 */	mr r25, r27
lbl_80D14F44:
/* 80D14F44  88 19 00 00 */	lbz r0, 0(r25)
/* 80D14F48  7C 00 07 75 */	extsb. r0, r0
/* 80D14F4C  41 82 00 A8 */	beq lbl_80D14FF4
/* 80D14F50  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80D14F54  57 40 07 3E */	clrlwi r0, r26, 0x1c
/* 80D14F58  C8 3E 00 C0 */	lfd f1, 0xc0(r30)
/* 80D14F5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D14F60  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80D14F64  3C 60 43 30 */	lis r3, 0x4330
/* 80D14F68  90 61 00 38 */	stw r3, 0x38(r1)
/* 80D14F6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80D14F70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D14F74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D14F78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D14F7C  57 40 E7 3E */	rlwinm r0, r26, 0x1c, 0x1c, 0x1f
/* 80D14F80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D14F84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D14F88  90 61 00 40 */	stw r3, 0x40(r1)
/* 80D14F8C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80D14F90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D14F94  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D14F98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D14F9C  38 00 00 01 */	li r0, 1
/* 80D14FA0  7E DF C2 14 */	add r22, r31, r24
/* 80D14FA4  98 16 05 C0 */	stb r0, 0x5c0(r22)
/* 80D14FA8  38 61 00 08 */	addi r3, r1, 8
/* 80D14FAC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80D14FB0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80D14FB4  4B 55 1B 30 */	b __pl__4cXyzCFRC3Vec
/* 80D14FB8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D14FBC  D0 16 05 94 */	stfs f0, 0x594(r22)
/* 80D14FC0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D14FC4  D0 16 05 98 */	stfs f0, 0x598(r22)
/* 80D14FC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D14FCC  D0 16 05 9C */	stfs f0, 0x59c(r22)
/* 80D14FD0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D14FD4  4B 55 29 80 */	b cM_rndF__Ff
/* 80D14FD8  FC 00 08 1E */	fctiwz f0, f1
/* 80D14FDC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80D14FE0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80D14FE4  B0 16 05 C2 */	sth r0, 0x5c2(r22)
/* 80D14FE8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D14FEC  D0 16 05 BC */	stfs f0, 0x5bc(r22)
/* 80D14FF0  3B 18 00 78 */	addi r24, r24, 0x78
lbl_80D14FF4:
/* 80D14FF4  3B 5A 00 01 */	addi r26, r26, 1
/* 80D14FF8  2C 1A 00 C0 */	cmpwi r26, 0xc0
/* 80D14FFC  3B 39 00 01 */	addi r25, r25, 1
/* 80D15000  41 80 FF 44 */	blt lbl_80D14F44
/* 80D15004  48 00 03 EC */	b lbl_80D153F0
lbl_80D15008:
/* 80D15008  28 00 00 00 */	cmplwi r0, 0
/* 80D1500C  40 82 00 18 */	bne lbl_80D15024
/* 80D15010  88 7F 05 74 */	lbz r3, 0x574(r31)
/* 80D15014  88 1F 05 75 */	lbz r0, 0x575(r31)
/* 80D15018  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D1501C  90 1F 63 4C */	stw r0, 0x634c(r31)
/* 80D15020  48 00 00 54 */	b lbl_80D15074
lbl_80D15024:
/* 80D15024  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15028  28 00 00 01 */	cmplwi r0, 1
/* 80D1502C  40 82 00 3C */	bne lbl_80D15068
/* 80D15030  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 80D15034  88 1F 05 75 */	lbz r0, 0x575(r31)
/* 80D15038  C8 3E 00 C8 */	lfd f1, 0xc8(r30)
/* 80D1503C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80D15040  3C 00 43 30 */	lis r0, 0x4330
/* 80D15044  90 01 00 48 */	stw r0, 0x48(r1)
/* 80D15048  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80D1504C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D15050  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D15054  FC 00 00 1E */	fctiwz f0, f0
/* 80D15058  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80D1505C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D15060  90 1F 63 4C */	stw r0, 0x634c(r31)
/* 80D15064  48 00 00 10 */	b lbl_80D15074
lbl_80D15068:
/* 80D15068  88 1F 05 75 */	lbz r0, 0x575(r31)
/* 80D1506C  1C 00 00 03 */	mulli r0, r0, 3
/* 80D15070  90 1F 63 4C */	stw r0, 0x634c(r31)
lbl_80D15074:
/* 80D15074  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15078  28 00 00 01 */	cmplwi r0, 1
/* 80D1507C  40 82 00 10 */	bne lbl_80D1508C
/* 80D15080  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D15084  54 00 10 3A */	slwi r0, r0, 2
/* 80D15088  90 1F 63 4C */	stw r0, 0x634c(r31)
lbl_80D1508C:
/* 80D1508C  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D15090  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80D15094  40 81 00 0C */	ble lbl_80D150A0
/* 80D15098  38 00 00 C8 */	li r0, 0xc8
/* 80D1509C  90 1F 63 4C */	stw r0, 0x634c(r31)
lbl_80D150A0:
/* 80D150A0  7F E3 FB 78 */	mr r3, r31
/* 80D150A4  3C 80 80 D1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80D150A8  38 84 49 DC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80D150AC  3C A0 80 05 */	lis r5, 0x8005 /* 0x8004B000@ha */
/* 80D150B0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x8004B000@l */
/* 80D150B4  4B 30 53 FC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D150B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D150BC  40 82 00 0C */	bne lbl_80D150C8
/* 80D150C0  38 60 00 05 */	li r3, 5
/* 80D150C4  48 00 04 08 */	b lbl_80D154CC
lbl_80D150C8:
/* 80D150C8  3C 60 80 D1 */	lis r3, struct_80D158F4+0x1@ha
/* 80D150CC  8C 03 58 F5 */	lbzu r0, struct_80D158F4+0x1@l(r3)
/* 80D150D0  28 00 00 00 */	cmplwi r0, 0
/* 80D150D4  40 82 00 20 */	bne lbl_80D150F4
/* 80D150D8  38 00 00 01 */	li r0, 1
/* 80D150DC  98 1F 63 70 */	stb r0, 0x6370(r31)
/* 80D150E0  98 03 00 00 */	stb r0, 0(r3)
/* 80D150E4  38 00 FF FF */	li r0, -1
/* 80D150E8  3C 60 80 D1 */	lis r3, l_HIO@ha
/* 80D150EC  38 63 59 04 */	addi r3, r3, l_HIO@l
/* 80D150F0  98 03 00 04 */	stb r0, 4(r3)
lbl_80D150F4:
/* 80D150F4  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D150F8  28 00 00 00 */	cmplwi r0, 0
/* 80D150FC  40 82 01 88 */	bne lbl_80D15284
/* 80D15100  3A BF 05 8C */	addi r21, r31, 0x58c
/* 80D15104  3A C0 00 00 */	li r22, 0
/* 80D15108  48 00 00 34 */	b lbl_80D1513C
lbl_80D1510C:
/* 80D1510C  80 95 00 70 */	lwz r4, 0x70(r21)
/* 80D15110  28 04 00 00 */	cmplwi r4, 0
/* 80D15114  41 82 00 20 */	beq lbl_80D15134
/* 80D15118  7F A3 EB 78 */	mr r3, r29
/* 80D1511C  7F E5 FB 78 */	mr r5, r31
/* 80D15120  4B 35 F8 E8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D15124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D15128  41 82 00 0C */	beq lbl_80D15134
/* 80D1512C  38 60 00 05 */	li r3, 5
/* 80D15130  48 00 03 9C */	b lbl_80D154CC
lbl_80D15134:
/* 80D15134  3A D6 00 01 */	addi r22, r22, 1
/* 80D15138  3A B5 00 78 */	addi r21, r21, 0x78
lbl_80D1513C:
/* 80D1513C  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D15140  7C 16 00 00 */	cmpw r22, r0
/* 80D15144  41 80 FF C8 */	blt lbl_80D1510C
/* 80D15148  3B 00 00 00 */	li r24, 0
/* 80D1514C  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15150  28 00 00 01 */	cmplwi r0, 1
/* 80D15154  40 82 00 30 */	bne lbl_80D15184
/* 80D15158  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D1515C  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D15160  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80D15164  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D15168  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1516C  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80D15170  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80D15174  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D15178  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80D1517C  3B 40 00 02 */	li r26, 2
/* 80D15180  48 00 00 10 */	b lbl_80D15190
lbl_80D15184:
/* 80D15184  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80D15188  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D1518C  3B 40 00 01 */	li r26, 1
lbl_80D15190:
/* 80D15190  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80D15194  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D15198  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1519C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80D151A0  3B 60 00 00 */	li r27, 0
/* 80D151A4  CB DE 00 C0 */	lfd f30, 0xc0(r30)
/* 80D151A8  3E E0 43 30 */	lis r23, 0x4330
/* 80D151AC  48 00 00 C4 */	b lbl_80D15270
lbl_80D151B0:
/* 80D151B0  3B 20 00 00 */	li r25, 0
/* 80D151B4  6F 76 80 00 */	xoris r22, r27, 0x8000
/* 80D151B8  48 00 00 A4 */	b lbl_80D1525C
lbl_80D151BC:
/* 80D151BC  38 00 00 01 */	li r0, 1
/* 80D151C0  7E BF C2 14 */	add r21, r31, r24
/* 80D151C4  98 15 05 C0 */	stb r0, 0x5c0(r21)
/* 80D151C8  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 80D151CC  92 C1 00 4C */	stw r22, 0x4c(r1)
/* 80D151D0  92 E1 00 48 */	stw r23, 0x48(r1)
/* 80D151D4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80D151D8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80D151DC  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80D151E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D151E4  EC 02 00 2A */	fadds f0, f2, f0
/* 80D151E8  D0 15 05 94 */	stfs f0, 0x594(r21)
/* 80D151EC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80D151F0  D0 15 05 98 */	stfs f0, 0x598(r21)
/* 80D151F4  C0 5F 04 B0 */	lfs f2, 0x4b0(r31)
/* 80D151F8  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 80D151FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D15200  92 E1 00 40 */	stw r23, 0x40(r1)
/* 80D15204  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80D15208  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80D1520C  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 80D15210  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D15214  EC 02 00 2A */	fadds f0, f2, f0
/* 80D15218  D0 15 05 9C */	stfs f0, 0x59c(r21)
/* 80D1521C  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D15220  4B 55 27 34 */	b cM_rndF__Ff
/* 80D15224  FC 00 08 1E */	fctiwz f0, f1
/* 80D15228  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80D1522C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80D15230  B0 15 05 C2 */	sth r0, 0x5c2(r21)
/* 80D15234  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15238  28 00 00 01 */	cmplwi r0, 1
/* 80D1523C  40 82 00 10 */	bne lbl_80D1524C
/* 80D15240  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80D15244  D0 15 05 BC */	stfs f0, 0x5bc(r21)
/* 80D15248  48 00 00 0C */	b lbl_80D15254
lbl_80D1524C:
/* 80D1524C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D15250  D0 15 05 BC */	stfs f0, 0x5bc(r21)
lbl_80D15254:
/* 80D15254  3B 18 00 78 */	addi r24, r24, 0x78
/* 80D15258  3B 39 00 01 */	addi r25, r25, 1
lbl_80D1525C:
/* 80D1525C  88 1F 05 75 */	lbz r0, 0x575(r31)
/* 80D15260  7C 00 D1 D6 */	mullw r0, r0, r26
/* 80D15264  7C 19 00 00 */	cmpw r25, r0
/* 80D15268  41 80 FF 54 */	blt lbl_80D151BC
/* 80D1526C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80D15270:
/* 80D15270  88 1F 05 74 */	lbz r0, 0x574(r31)
/* 80D15274  7C 00 D1 D6 */	mullw r0, r0, r26
/* 80D15278  7C 1B 00 00 */	cmpw r27, r0
/* 80D1527C  41 80 FF 34 */	blt lbl_80D151B0
/* 80D15280  48 00 01 70 */	b lbl_80D153F0
lbl_80D15284:
/* 80D15284  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15288  28 00 00 01 */	cmplwi r0, 1
/* 80D1528C  40 82 00 10 */	bne lbl_80D1529C
/* 80D15290  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80D15294  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 80D15298  48 00 00 0C */	b lbl_80D152A4
lbl_80D1529C:
/* 80D1529C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80D152A0  D0 1F 05 7C */	stfs f0, 0x57c(r31)
lbl_80D152A4:
/* 80D152A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80D152A8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D152AC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80D152B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D152B4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D152B8  3B 20 00 00 */	li r25, 0
/* 80D152BC  3B 40 00 00 */	li r26, 0
/* 80D152C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D152C4  3B 63 07 68 */	addi r27, r3, calc_mtx@l
/* 80D152C8  C3 DE 00 2C */	lfs f30, 0x2c(r30)
/* 80D152CC  CB FE 00 C8 */	lfd f31, 0xc8(r30)
/* 80D152D0  3F 00 43 30 */	lis r24, 0x4330
/* 80D152D4  48 00 01 10 */	b lbl_80D153E4
lbl_80D152D8:
/* 80D152D8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D152DC  4B 55 26 78 */	b cM_rndF__Ff
/* 80D152E0  FC 00 08 1E */	fctiwz f0, f1
/* 80D152E4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80D152E8  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80D152EC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80D152F0  4B 2F 70 EC */	b mDoMtx_YrotS__FPA4_fs
/* 80D152F4  38 61 00 14 */	addi r3, r1, 0x14
/* 80D152F8  1C 1A 00 78 */	mulli r0, r26, 0x78
/* 80D152FC  7E DF 02 14 */	add r22, r31, r0
/* 80D15300  3A B6 05 94 */	addi r21, r22, 0x594
/* 80D15304  7E A4 AB 78 */	mr r4, r21
/* 80D15308  4B 55 BB E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80D1530C  7E A3 AB 78 */	mr r3, r21
/* 80D15310  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D15314  7E A5 AB 78 */	mr r5, r21
/* 80D15318  4B 63 1D 78 */	b PSVECAdd
/* 80D1531C  7F E3 FB 78 */	mr r3, r31
/* 80D15320  7F 44 D3 78 */	mr r4, r26
/* 80D15324  4B FF F8 B1 */	bl set_pos_check__FP14obj_toby_classi
/* 80D15328  2C 03 00 00 */	cmpwi r3, 0
/* 80D1532C  41 82 00 7C */	beq lbl_80D153A8
/* 80D15330  38 00 00 01 */	li r0, 1
/* 80D15334  98 16 05 C0 */	stb r0, 0x5c0(r22)
/* 80D15338  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D1533C  4B 55 26 18 */	b cM_rndF__Ff
/* 80D15340  FC 00 08 1E */	fctiwz f0, f1
/* 80D15344  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80D15348  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80D1534C  B0 16 05 C2 */	sth r0, 0x5c2(r22)
/* 80D15350  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D15354  28 00 00 01 */	cmplwi r0, 1
/* 80D15358  40 82 00 10 */	bne lbl_80D15368
/* 80D1535C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80D15360  D0 16 05 BC */	stfs f0, 0x5bc(r22)
/* 80D15364  48 00 00 0C */	b lbl_80D15370
lbl_80D15368:
/* 80D15368  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D1536C  D0 16 05 BC */	stfs f0, 0x5bc(r22)
lbl_80D15370:
/* 80D15370  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D15374  4B 55 25 E0 */	b cM_rndF__Ff
/* 80D15378  FC 00 08 1E */	fctiwz f0, f1
/* 80D1537C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80D15380  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80D15384  B0 16 05 AE */	sth r0, 0x5ae(r22)
/* 80D15388  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80D1538C  4B 55 25 C8 */	b cM_rndF__Ff
/* 80D15390  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D15394  EC 20 08 2A */	fadds f1, f0, f1
/* 80D15398  C0 16 05 BC */	lfs f0, 0x5bc(r22)
/* 80D1539C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D153A0  D0 16 05 BC */	stfs f0, 0x5bc(r22)
/* 80D153A4  48 00 00 1C */	b lbl_80D153C0
lbl_80D153A8:
/* 80D153A8  3B 39 00 01 */	addi r25, r25, 1
/* 80D153AC  2C 19 03 E8 */	cmpwi r25, 0x3e8
/* 80D153B0  3B 5A FF FF */	addi r26, r26, -1
/* 80D153B4  40 81 00 0C */	ble lbl_80D153C0
/* 80D153B8  38 60 00 05 */	li r3, 5
/* 80D153BC  48 00 01 10 */	b lbl_80D154CC
lbl_80D153C0:
/* 80D153C0  88 1F 05 75 */	lbz r0, 0x575(r31)
/* 80D153C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80D153C8  93 01 00 48 */	stw r24, 0x48(r1)
/* 80D153CC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80D153D0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80D153D4  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80D153D8  4B 55 25 7C */	b cM_rndF__Ff
/* 80D153DC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D153E0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80D153E4:
/* 80D153E4  80 1F 63 4C */	lwz r0, 0x634c(r31)
/* 80D153E8  7C 1A 00 00 */	cmpw r26, r0
/* 80D153EC  41 80 FE EC */	blt lbl_80D152D8
lbl_80D153F0:
/* 80D153F0  28 1F 00 00 */	cmplwi r31, 0
/* 80D153F4  41 82 00 0C */	beq lbl_80D15400
/* 80D153F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80D153FC  48 00 00 08 */	b lbl_80D15404
lbl_80D15400:
/* 80D15400  38 00 FF FF */	li r0, -1
lbl_80D15404:
/* 80D15404  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80D15408  7F E3 FB 78 */	mr r3, r31
/* 80D1540C  4B FF F4 05 */	bl daObj_Toby_Execute__FP14obj_toby_class
/* 80D15410  88 1F 05 77 */	lbz r0, 0x577(r31)
/* 80D15414  28 00 00 00 */	cmplwi r0, 0
/* 80D15418  40 82 00 68 */	bne lbl_80D15480
/* 80D1541C  3A A0 00 00 */	li r21, 0
/* 80D15420  3B 20 00 00 */	li r25, 0
/* 80D15424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D15428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1542C  3E C3 00 02 */	addis r22, r3, 2
/* 80D15430  3B 5E 00 94 */	addi r26, r30, 0x94
/* 80D15434  3B 00 00 01 */	li r24, 1
/* 80D15438  3A D6 C2 F8 */	addi r22, r22, -15624
lbl_80D1543C:
/* 80D1543C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D15440  7C 9A C8 2E */	lwzx r4, r26, r25
/* 80D15444  7E C5 B3 78 */	mr r5, r22
/* 80D15448  38 C0 00 80 */	li r6, 0x80
/* 80D1544C  4B 32 6E A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D15450  7C 64 1B 78 */	mr r4, r3
/* 80D15454  7F A3 EB 78 */	mr r3, r29
/* 80D15458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1545C  7C 05 07 74 */	extsb r5, r0
/* 80D15460  38 C0 00 01 */	li r6, 1
/* 80D15464  4B 31 76 8C */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80D15468  9B 1F 63 71 */	stb r24, 0x6371(r31)
/* 80D1546C  3A B5 00 01 */	addi r21, r21, 1
/* 80D15470  28 15 00 02 */	cmplwi r21, 2
/* 80D15474  3B 39 00 04 */	addi r25, r25, 4
/* 80D15478  41 80 FF C4 */	blt lbl_80D1543C
/* 80D1547C  48 00 00 4C */	b lbl_80D154C8
lbl_80D15480:
/* 80D15480  28 00 00 01 */	cmplwi r0, 1
/* 80D15484  40 82 00 44 */	bne lbl_80D154C8
/* 80D15488  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1548C  38 80 00 06 */	li r4, 6
/* 80D15490  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D15494  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D15498  3C A5 00 02 */	addis r5, r5, 2
/* 80D1549C  38 C0 00 80 */	li r6, 0x80
/* 80D154A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D154A4  4B 32 6E 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D154A8  7C 64 1B 78 */	mr r4, r3
/* 80D154AC  7F A3 EB 78 */	mr r3, r29
/* 80D154B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D154B4  7C 05 07 74 */	extsb r5, r0
/* 80D154B8  38 C0 00 01 */	li r6, 1
/* 80D154BC  4B 31 76 34 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80D154C0  38 00 00 01 */	li r0, 1
/* 80D154C4  98 1F 63 71 */	stb r0, 0x6371(r31)
lbl_80D154C8:
/* 80D154C8  7F 83 E3 78 */	mr r3, r28
lbl_80D154CC:
/* 80D154CC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80D154D0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80D154D4  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80D154D8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80D154DC  39 61 00 80 */	addi r11, r1, 0x80
/* 80D154E0  4B 64 CD 28 */	b _restgpr_21
/* 80D154E4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80D154E8  7C 08 03 A6 */	mtlr r0
/* 80D154EC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80D154F0  4E 80 00 20 */	blr 
