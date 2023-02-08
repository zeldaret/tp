lbl_80778D90:
/* 80778D90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80778D94  7C 08 02 A6 */	mflr r0
/* 80778D98  90 01 00 54 */	stw r0, 0x54(r1)
/* 80778D9C  39 61 00 50 */	addi r11, r1, 0x50
/* 80778DA0  4B BE 94 21 */	bl _savegpr_22
/* 80778DA4  7C 7D 1B 78 */	mr r29, r3
/* 80778DA8  3C 80 80 78 */	lis r4, lit_1109@ha /* 0x8077A830@ha */
/* 80778DAC  3B C4 A8 30 */	addi r30, r4, lit_1109@l /* 0x8077A830@l */
/* 80778DB0  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 80778DB4  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 80778DB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80778DBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80778DC0  40 82 00 1C */	bne lbl_80778DDC
/* 80778DC4  28 1D 00 00 */	cmplwi r29, 0
/* 80778DC8  41 82 00 08 */	beq lbl_80778DD0
/* 80778DCC  48 00 05 75 */	bl __ct__11e_rdy_classFv
lbl_80778DD0:
/* 80778DD0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80778DD4  60 00 00 08 */	ori r0, r0, 8
/* 80778DD8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80778DDC:
/* 80778DDC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80778DE0  98 1D 05 B6 */	stb r0, 0x5b6(r29)
/* 80778DE4  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 80778DE8  98 1D 05 B7 */	stb r0, 0x5b7(r29)
/* 80778DEC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80778DF0  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80778DF4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 80778DF8  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80778DFC  28 00 00 0F */	cmplwi r0, 0xf
/* 80778E00  40 82 00 0C */	bne lbl_80778E0C
/* 80778E04  38 00 00 00 */	li r0, 0
/* 80778E08  98 1D 05 B8 */	stb r0, 0x5b8(r29)
lbl_80778E0C:
/* 80778E0C  3C 60 80 78 */	lis r3, d_a_e_rdy__stringBase0@ha /* 0x8077A0BC@ha */
/* 80778E10  38 63 A0 BC */	addi r3, r3, d_a_e_rdy__stringBase0@l /* 0x8077A0BC@l */
/* 80778E14  38 03 00 0F */	addi r0, r3, 0xf
/* 80778E18  90 1D 06 74 */	stw r0, 0x674(r29)
/* 80778E1C  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80778E20  80 9D 06 74 */	lwz r4, 0x674(r29)
/* 80778E24  4B 8B 40 99 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80778E28  7C 7C 1B 78 */	mr r28, r3
/* 80778E2C  2C 1C 00 04 */	cmpwi r28, 4
/* 80778E30  40 82 04 F4 */	bne lbl_80779324
/* 80778E34  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80778E38  28 00 00 03 */	cmplwi r0, 3
/* 80778E3C  41 82 00 38 */	beq lbl_80778E74
/* 80778E40  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80778E44  54 04 46 3E */	srwi r4, r0, 0x18
/* 80778E48  2C 04 00 FF */	cmpwi r4, 0xff
/* 80778E4C  41 82 00 28 */	beq lbl_80778E74
/* 80778E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80778E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80778E58  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80778E5C  7C 05 07 74 */	extsb r5, r0
/* 80778E60  4B 8B C5 01 */	bl isSwitch__10dSv_info_cCFii
/* 80778E64  2C 03 00 00 */	cmpwi r3, 0
/* 80778E68  41 82 00 0C */	beq lbl_80778E74
/* 80778E6C  38 60 00 05 */	li r3, 5
/* 80778E70  48 00 04 B8 */	b lbl_80779328
lbl_80778E74:
/* 80778E74  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80778E78  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80778E7C  98 1D 05 BA */	stb r0, 0x5ba(r29)
/* 80778E80  88 1D 05 BA */	lbz r0, 0x5ba(r29)
/* 80778E84  28 00 00 FF */	cmplwi r0, 0xff
/* 80778E88  40 82 00 0C */	bne lbl_80778E94
/* 80778E8C  38 00 00 00 */	li r0, 0
/* 80778E90  98 1D 05 BA */	stb r0, 0x5ba(r29)
lbl_80778E94:
/* 80778E94  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80778E98  54 00 46 3E */	srwi r0, r0, 0x18
/* 80778E9C  98 1D 05 B9 */	stb r0, 0x5b9(r29)
/* 80778EA0  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80778EA4  28 00 00 03 */	cmplwi r0, 3
/* 80778EA8  41 82 00 24 */	beq lbl_80778ECC
/* 80778EAC  28 00 00 04 */	cmplwi r0, 4
/* 80778EB0  41 82 00 1C */	beq lbl_80778ECC
/* 80778EB4  28 00 00 05 */	cmplwi r0, 5
/* 80778EB8  41 82 00 14 */	beq lbl_80778ECC
/* 80778EBC  28 00 00 06 */	cmplwi r0, 6
/* 80778EC0  41 82 00 0C */	beq lbl_80778ECC
/* 80778EC4  28 00 00 07 */	cmplwi r0, 7
/* 80778EC8  40 82 00 A0 */	bne lbl_80778F68
lbl_80778ECC:
/* 80778ECC  28 00 00 05 */	cmplwi r0, 5
/* 80778ED0  41 82 00 0C */	beq lbl_80778EDC
/* 80778ED4  38 00 00 01 */	li r0, 1
/* 80778ED8  98 1D 13 65 */	stb r0, 0x1365(r29)
lbl_80778EDC:
/* 80778EDC  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80778EE0  28 00 00 04 */	cmplwi r0, 4
/* 80778EE4  40 82 00 0C */	bne lbl_80778EF0
/* 80778EE8  38 00 00 01 */	li r0, 1
/* 80778EEC  98 1D 13 66 */	stb r0, 0x1366(r29)
lbl_80778EF0:
/* 80778EF0  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80778EF4  28 00 00 06 */	cmplwi r0, 6
/* 80778EF8  40 82 00 2C */	bne lbl_80778F24
/* 80778EFC  38 60 00 01 */	li r3, 1
/* 80778F00  98 7D 13 68 */	stb r3, 0x1368(r29)
/* 80778F04  38 00 00 19 */	li r0, 0x19
/* 80778F08  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80778F0C  38 00 00 00 */	li r0, 0
/* 80778F10  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80778F14  38 00 00 14 */	li r0, 0x14
/* 80778F18  B0 1D 0A 64 */	sth r0, 0xa64(r29)
/* 80778F1C  98 7D 13 66 */	stb r3, 0x1366(r29)
/* 80778F20  48 00 00 30 */	b lbl_80778F50
lbl_80778F24:
/* 80778F24  28 00 00 07 */	cmplwi r0, 7
/* 80778F28  40 82 00 20 */	bne lbl_80778F48
/* 80778F2C  38 00 00 1A */	li r0, 0x1a
/* 80778F30  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80778F34  38 00 00 01 */	li r0, 1
/* 80778F38  98 1D 13 66 */	stb r0, 0x1366(r29)
/* 80778F3C  38 00 00 14 */	li r0, 0x14
/* 80778F40  B0 1D 0A 68 */	sth r0, 0xa68(r29)
/* 80778F44  48 00 00 0C */	b lbl_80778F50
lbl_80778F48:
/* 80778F48  38 00 00 07 */	li r0, 7
/* 80778F4C  B0 1D 0A 42 */	sth r0, 0xa42(r29)
lbl_80778F50:
/* 80778F50  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80778F54  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80778F58  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80778F5C  38 00 00 03 */	li r0, 3
/* 80778F60  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 80778F64  48 00 00 A8 */	b lbl_8077900C
lbl_80778F68:
/* 80778F68  28 00 00 0B */	cmplwi r0, 0xb
/* 80778F6C  40 82 00 10 */	bne lbl_80778F7C
/* 80778F70  38 00 00 09 */	li r0, 9
/* 80778F74  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80778F78  48 00 00 94 */	b lbl_8077900C
lbl_80778F7C:
/* 80778F7C  28 00 00 0C */	cmplwi r0, 0xc
/* 80778F80  40 82 00 8C */	bne lbl_8077900C
/* 80778F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80778F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80778F8C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80778F90  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80778F94  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80778F98  A0 84 00 A8 */	lhz r4, 0xa8(r4)
/* 80778F9C  4B 8B BA 21 */	bl isEventBit__11dSv_event_cCFUs
/* 80778FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80778FA4  41 82 00 0C */	beq lbl_80778FB0
/* 80778FA8  38 60 00 05 */	li r3, 5
/* 80778FAC  48 00 03 7C */	b lbl_80779328
lbl_80778FB0:
/* 80778FB0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80778FB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80778FB8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80778FBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80778FC0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80778FC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80778FC8  38 00 00 1E */	li r0, 0x1e
/* 80778FCC  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80778FD0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80778FD4  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 80778FD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80778FDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80778FE0  38 00 FF FF */	li r0, -1
/* 80778FE4  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80778FE8  38 60 00 F5 */	li r3, 0xf5
/* 80778FEC  38 80 FF 00 */	li r4, -256
/* 80778FF0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80778FF4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80778FF8  7C 06 07 74 */	extsb r6, r0
/* 80778FFC  38 FD 04 E4 */	addi r7, r29, 0x4e4
/* 80779000  39 00 00 00 */	li r8, 0
/* 80779004  39 20 FF FF */	li r9, -1
/* 80779008  4B 8A 0D 91 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_8077900C:
/* 8077900C  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80779010  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80779014  41 82 00 0C */	beq lbl_80779020
/* 80779018  2C 00 00 FF */	cmpwi r0, 0xff
/* 8077901C  40 82 00 10 */	bne lbl_8077902C
lbl_80779020:
/* 80779020  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 80779024  D0 1D 0A 50 */	stfs f0, 0xa50(r29)
/* 80779028  48 00 00 2C */	b lbl_80779054
lbl_8077902C:
/* 8077902C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80779030  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80779034  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80779038  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077903C  3C 00 43 30 */	lis r0, 0x4330
/* 80779040  90 01 00 20 */	stw r0, 0x20(r1)
/* 80779044  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80779048  EC 00 08 28 */	fsubs f0, f0, f1
/* 8077904C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80779050  D0 1D 0A 50 */	stfs f0, 0xa50(r29)
lbl_80779054:
/* 80779054  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80779058  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8077905C  90 1D 13 6C */	stw r0, 0x136c(r29)
/* 80779060  80 1D 13 6C */	lwz r0, 0x136c(r29)
/* 80779064  2C 00 00 FF */	cmpwi r0, 0xff
/* 80779068  40 82 00 0C */	bne lbl_80779074
/* 8077906C  38 00 00 00 */	li r0, 0
/* 80779070  90 1D 13 6C */	stw r0, 0x136c(r29)
lbl_80779074:
/* 80779074  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80779078  60 00 01 00 */	ori r0, r0, 0x100
/* 8077907C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80779080  38 00 00 04 */	li r0, 4
/* 80779084  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80779088  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8077908C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80779090  28 03 00 FF */	cmplwi r3, 0xff
/* 80779094  41 82 00 28 */	beq lbl_807790BC
/* 80779098  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8077909C  7C 04 07 74 */	extsb r4, r0
/* 807790A0  4B 8D 87 4D */	bl dPath_GetRoomPath__Fii
/* 807790A4  90 7D 0B CC */	stw r3, 0xbcc(r29)
/* 807790A8  80 1D 0B CC */	lwz r0, 0xbcc(r29)
/* 807790AC  28 00 00 00 */	cmplwi r0, 0
/* 807790B0  40 82 00 0C */	bne lbl_807790BC
/* 807790B4  38 60 00 05 */	li r3, 5
/* 807790B8  48 00 02 70 */	b lbl_80779328
lbl_807790BC:
/* 807790BC  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807790C0  28 00 00 07 */	cmplwi r0, 7
/* 807790C4  40 82 00 0C */	bne lbl_807790D0
/* 807790C8  38 00 00 00 */	li r0, 0
/* 807790CC  B0 1D 0A 42 */	sth r0, 0xa42(r29)
lbl_807790D0:
/* 807790D0  88 1D 05 BA */	lbz r0, 0x5ba(r29)
/* 807790D4  28 00 00 01 */	cmplwi r0, 1
/* 807790D8  40 82 00 20 */	bne lbl_807790F8
/* 807790DC  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807790E0  28 00 00 00 */	cmplwi r0, 0
/* 807790E4  40 82 00 14 */	bne lbl_807790F8
/* 807790E8  38 00 00 18 */	li r0, 0x18
/* 807790EC  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 807790F0  38 00 00 00 */	li r0, 0
/* 807790F4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807790F8:
/* 807790F8  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807790FC  28 00 00 02 */	cmplwi r0, 2
/* 80779100  40 81 00 0C */	ble lbl_8077910C
/* 80779104  38 00 00 00 */	li r0, 0
/* 80779108  98 1D 05 B6 */	stb r0, 0x5b6(r29)
lbl_8077910C:
/* 8077910C  38 00 00 00 */	li r0, 0
/* 80779110  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80779114  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80779118  B0 1D 04 B4 */	sth r0, 0x4b4(r29)
/* 8077911C  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80779120  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80779124  B0 1D 04 B8 */	sth r0, 0x4b8(r29)
/* 80779128  7F A3 EB 78 */	mr r3, r29
/* 8077912C  3C 80 80 78 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80778998@ha */
/* 80779130  38 84 89 98 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80778998@l */
/* 80779134  38 A0 57 D0 */	li r5, 0x57d0
/* 80779138  4B 8A 13 79 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8077913C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80779140  40 82 00 0C */	bne lbl_8077914C
/* 80779144  38 60 00 05 */	li r3, 5
/* 80779148  48 00 01 E0 */	b lbl_80779328
lbl_8077914C:
/* 8077914C  88 1E 00 44 */	lbz r0, 0x44(r30)
/* 80779150  28 00 00 00 */	cmplwi r0, 0
/* 80779154  40 82 00 1C */	bne lbl_80779170
/* 80779158  38 00 00 01 */	li r0, 1
/* 8077915C  98 1D 13 2C */	stb r0, 0x132c(r29)
/* 80779160  98 1E 00 44 */	stb r0, 0x44(r30)
/* 80779164  38 00 FF FF */	li r0, -1
/* 80779168  38 7E 00 54 */	addi r3, r30, 0x54
/* 8077916C  98 03 00 04 */	stb r0, 4(r3)
lbl_80779170:
/* 80779170  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80779174  80 63 00 04 */	lwz r3, 4(r3)
/* 80779178  38 03 00 24 */	addi r0, r3, 0x24
/* 8077917C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80779180  7F A3 EB 78 */	mr r3, r29
/* 80779184  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80779188  FC 40 08 90 */	fmr f2, f1
/* 8077918C  FC 60 08 90 */	fmr f3, f1
/* 80779190  4B 8A 13 99 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80779194  7F A3 EB 78 */	mr r3, r29
/* 80779198  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8077919C  FC 40 08 90 */	fmr f2, f1
/* 807791A0  FC 60 08 90 */	fmr f3, f1
/* 807791A4  4B 8A 13 95 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807791A8  38 00 00 00 */	li r0, 0
/* 807791AC  90 01 00 08 */	stw r0, 8(r1)
/* 807791B0  38 7D 0C 14 */	addi r3, r29, 0xc14
/* 807791B4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807791B8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807791BC  7F A6 EB 78 */	mr r6, r29
/* 807791C0  38 E0 00 01 */	li r7, 1
/* 807791C4  39 1D 0B D4 */	addi r8, r29, 0xbd4
/* 807791C8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807791CC  39 40 00 00 */	li r10, 0
/* 807791D0  4B 8F D0 79 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807791D4  38 7D 0B D4 */	addi r3, r29, 0xbd4
/* 807791D8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807791DC  FC 40 08 90 */	fmr f2, f1
/* 807791E0  4B 8F CD 79 */	bl SetWall__12dBgS_AcchCirFff
/* 807791E4  38 00 00 3C */	li r0, 0x3c
/* 807791E8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807791EC  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 807791F0  38 7D 0D EC */	addi r3, r29, 0xdec
/* 807791F4  38 80 00 C8 */	li r4, 0xc8
/* 807791F8  38 A0 00 00 */	li r5, 0
/* 807791FC  7F A6 EB 78 */	mr r6, r29
/* 80779200  4B 90 A6 61 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80779204  3A C0 00 00 */	li r22, 0
/* 80779208  3B 60 00 00 */	li r27, 0
/* 8077920C  3C 60 80 78 */	lis r3, cc_sph_src@ha /* 0x8077A6BC@ha */
/* 80779210  3B 03 A6 BC */	addi r24, r3, cc_sph_src@l /* 0x8077A6BC@l */
/* 80779214  3B 3D 0D EC */	addi r25, r29, 0xdec
/* 80779218  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDBF@ha */
/* 8077921C  3B 43 FD BF */	addi r26, r3, 0xFDBF /* 0xD8FBFDBF@l */
lbl_80779220:
/* 80779220  7E FD DA 14 */	add r23, r29, r27
/* 80779224  38 77 0E 28 */	addi r3, r23, 0xe28
/* 80779228  7F 04 C3 78 */	mr r4, r24
/* 8077922C  4B 90 B8 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80779230  93 37 0E 6C */	stw r25, 0xe6c(r23)
/* 80779234  88 1D 13 69 */	lbz r0, 0x1369(r29)
/* 80779238  7C 00 07 75 */	extsb. r0, r0
/* 8077923C  41 82 00 08 */	beq lbl_80779244
/* 80779240  93 57 0E 50 */	stw r26, 0xe50(r23)
lbl_80779244:
/* 80779244  3A D6 00 01 */	addi r22, r22, 1
/* 80779248  2C 16 00 02 */	cmpwi r22, 2
/* 8077924C  3B 7B 01 38 */	addi r27, r27, 0x138
/* 80779250  40 81 FF D0 */	ble lbl_80779220
/* 80779254  38 7D 11 D0 */	addi r3, r29, 0x11d0
/* 80779258  3C 80 80 78 */	lis r4, at_sph_src@ha /* 0x8077A6FC@ha */
/* 8077925C  38 84 A6 FC */	addi r4, r4, at_sph_src@l /* 0x8077A6FC@l */
/* 80779260  4B 90 B7 D5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80779264  38 1D 0D EC */	addi r0, r29, 0xdec
/* 80779268  90 1D 12 14 */	stw r0, 0x1214(r29)
/* 8077926C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80779270  4B AE E6 E5 */	bl cM_rndF__Ff
/* 80779274  FC 00 08 1E */	fctiwz f0, f1
/* 80779278  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8077927C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80779280  54 03 04 2E */	rlwinm r3, r0, 0, 0x10, 0x17
/* 80779284  88 1E 01 F0 */	lbz r0, 0x1f0(r30)
/* 80779288  7C 00 07 74 */	extsb r0, r0
/* 8077928C  7C 00 1B 78 */	or r0, r0, r3
/* 80779290  B0 1D 0A 40 */	sth r0, 0xa40(r29)
/* 80779294  88 7E 01 F0 */	lbz r3, 0x1f0(r30)
/* 80779298  38 03 00 01 */	addi r0, r3, 1
/* 8077929C  98 1E 01 F0 */	stb r0, 0x1f0(r30)
/* 807792A0  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807792A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807792A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 807792AC  38 C0 00 03 */	li r6, 3
/* 807792B0  38 E0 00 01 */	li r7, 1
/* 807792B4  4B B4 7D E1 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807792B8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807792BC  3C 80 80 78 */	lis r4, d_a_e_rdy__stringBase0@ha /* 0x8077A0BC@ha */
/* 807792C0  38 84 A0 BC */	addi r4, r4, d_a_e_rdy__stringBase0@l /* 0x8077A0BC@l */
/* 807792C4  38 84 00 0F */	addi r4, r4, 0xf
/* 807792C8  4B B4 88 C9 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807792CC  38 1D 05 D0 */	addi r0, r29, 0x5d0
/* 807792D0  90 1D 13 10 */	stw r0, 0x1310(r29)
/* 807792D4  38 00 00 05 */	li r0, 5
/* 807792D8  98 1D 0A 70 */	stb r0, 0xa70(r29)
/* 807792DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807792E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807792E4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 807792E8  3C 80 80 78 */	lis r4, d_a_e_rdy__stringBase0@ha /* 0x8077A0BC@ha */
/* 807792EC  38 84 A0 BC */	addi r4, r4, d_a_e_rdy__stringBase0@l /* 0x8077A0BC@l */
/* 807792F0  38 84 00 15 */	addi r4, r4, 0x15
/* 807792F4  4B BE F6 A1 */	bl strcmp
/* 807792F8  2C 03 00 00 */	cmpwi r3, 0
/* 807792FC  40 82 00 10 */	bne lbl_8077930C
/* 80779300  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80779304  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80779308  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_8077930C:
/* 8077930C  38 00 00 01 */	li r0, 1
/* 80779310  90 1E 01 EC */	stw r0, 0x1ec(r30)
/* 80779314  7F A3 EB 78 */	mr r3, r29
/* 80779318  4B FF E0 19 */	bl daE_RDY_Execute__FP11e_rdy_class
/* 8077931C  38 00 00 00 */	li r0, 0
/* 80779320  90 1E 01 EC */	stw r0, 0x1ec(r30)
lbl_80779324:
/* 80779324  7F 83 E3 78 */	mr r3, r28
lbl_80779328:
/* 80779328  39 61 00 50 */	addi r11, r1, 0x50
/* 8077932C  4B BE 8E E1 */	bl _restgpr_22
/* 80779330  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80779334  7C 08 03 A6 */	mtlr r0
/* 80779338  38 21 00 50 */	addi r1, r1, 0x50
/* 8077933C  4E 80 00 20 */	blr 
