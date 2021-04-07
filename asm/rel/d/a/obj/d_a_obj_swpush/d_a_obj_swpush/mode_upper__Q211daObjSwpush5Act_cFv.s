lbl_80483D2C:
/* 80483D2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80483D30  7C 08 02 A6 */	mflr r0
/* 80483D34  90 01 00 34 */	stw r0, 0x34(r1)
/* 80483D38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80483D3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80483D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80483D44  4B ED E4 91 */	bl _savegpr_27
/* 80483D48  7C 7B 1B 78 */	mr r27, r3
/* 80483D4C  3C 60 80 48 */	lis r3, M_bmd__Q211daObjSwpush5Act_c@ha /* 0x80484D10@ha */
/* 80483D50  3B E3 4D 10 */	addi r31, r3, M_bmd__Q211daObjSwpush5Act_c@l /* 0x80484D10@l */
/* 80483D54  3B C0 00 00 */	li r30, 0
/* 80483D58  3B A0 00 00 */	li r29, 0
/* 80483D5C  3B 80 00 00 */	li r28, 0
/* 80483D60  C3 FF 01 1C */	lfs f31, 0x11c(r31)
/* 80483D64  88 1B 05 C4 */	lbz r0, 0x5c4(r27)
/* 80483D68  28 00 00 00 */	cmplwi r0, 0
/* 80483D6C  41 82 00 3C */	beq lbl_80483DA8
/* 80483D70  80 1B 05 AC */	lwz r0, 0x5ac(r27)
/* 80483D74  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483D78  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80483D7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80483D80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80483D84  41 82 00 20 */	beq lbl_80483DA4
/* 80483D88  88 1B 05 CA */	lbz r0, 0x5ca(r27)
/* 80483D8C  28 00 00 00 */	cmplwi r0, 0
/* 80483D90  41 82 00 0C */	beq lbl_80483D9C
/* 80483D94  3B 80 00 01 */	li r28, 1
/* 80483D98  48 00 00 10 */	b lbl_80483DA8
lbl_80483D9C:
/* 80483D9C  C3 FF 01 34 */	lfs f31, 0x134(r31)
/* 80483DA0  48 00 00 08 */	b lbl_80483DA8
lbl_80483DA4:
/* 80483DA4  3B 80 00 01 */	li r28, 1
lbl_80483DA8:
/* 80483DA8  7F 63 DB 78 */	mr r3, r27
/* 80483DAC  38 80 00 01 */	li r4, 1
/* 80483DB0  38 A0 00 1D */	li r5, 0x1d
/* 80483DB4  48 00 0F 31 */	bl func_80484CE4
/* 80483DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80483DBC  41 82 00 70 */	beq lbl_80483E2C
/* 80483DC0  7F 63 DB 78 */	mr r3, r27
/* 80483DC4  88 1B 05 F2 */	lbz r0, 0x5f2(r27)
/* 80483DC8  7C 04 07 74 */	extsb r4, r0
/* 80483DCC  48 00 0B 0D */	bl nr_ride_people__Q211daObjSwpush5Act_cFc
/* 80483DD0  2C 03 00 01 */	cmpwi r3, 1
/* 80483DD4  40 82 00 58 */	bne lbl_80483E2C
/* 80483DD8  7F 63 DB 78 */	mr r3, r27
/* 80483DDC  88 1B 05 F3 */	lbz r0, 0x5f3(r27)
/* 80483DE0  7C 04 07 74 */	extsb r4, r0
/* 80483DE4  48 00 0A F5 */	bl nr_ride_people__Q211daObjSwpush5Act_cFc
/* 80483DE8  2C 03 00 01 */	cmpwi r3, 1
/* 80483DEC  41 82 00 40 */	beq lbl_80483E2C
/* 80483DF0  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80483DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80483DF8  41 81 00 34 */	bgt lbl_80483E2C
/* 80483DFC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80483E00  80 1B 05 AC */	lwz r0, 0x5ac(r27)
/* 80483E04  1C 80 00 2C */	mulli r4, r0, 0x2c
/* 80483E08  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80483E0C  38 04 00 14 */	addi r0, r4, 0x14
/* 80483E10  7C 03 04 2E */	lfsx f0, r3, r0
/* 80483E14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80483E18  D0 1B 05 D4 */	stfs f0, 0x5d4(r27)
/* 80483E1C  38 00 00 1E */	li r0, 0x1e
/* 80483E20  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80483E24  3B C0 00 01 */	li r30, 1
/* 80483E28  48 00 00 18 */	b lbl_80483E40
lbl_80483E2C:
/* 80483E2C  A8 7B 05 F0 */	lha r3, 0x5f0(r27)
/* 80483E30  2C 03 00 00 */	cmpwi r3, 0
/* 80483E34  40 81 00 0C */	ble lbl_80483E40
/* 80483E38  38 03 FF FF */	addi r0, r3, -1
/* 80483E3C  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
lbl_80483E40:
/* 80483E40  80 1B 05 AC */	lwz r0, 0x5ac(r27)
/* 80483E44  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483E48  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80483E4C  7C 63 02 14 */	add r3, r3, r0
/* 80483E50  80 03 00 00 */	lwz r0, 0(r3)
/* 80483E54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80483E58  40 82 00 40 */	bne lbl_80483E98
/* 80483E5C  A8 1B 05 F0 */	lha r0, 0x5f0(r27)
/* 80483E60  2C 00 00 00 */	cmpwi r0, 0
/* 80483E64  41 81 00 34 */	bgt lbl_80483E98
/* 80483E68  88 1B 05 C0 */	lbz r0, 0x5c0(r27)
/* 80483E6C  28 00 00 00 */	cmplwi r0, 0
/* 80483E70  41 82 00 28 */	beq lbl_80483E98
/* 80483E74  88 1B 05 C1 */	lbz r0, 0x5c1(r27)
/* 80483E78  28 00 00 00 */	cmplwi r0, 0
/* 80483E7C  40 82 00 1C */	bne lbl_80483E98
/* 80483E80  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80483E84  D0 1B 05 D4 */	stfs f0, 0x5d4(r27)
/* 80483E88  38 00 00 1E */	li r0, 0x1e
/* 80483E8C  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80483E90  3B C0 00 01 */	li r30, 1
/* 80483E94  48 00 00 18 */	b lbl_80483EAC
lbl_80483E98:
/* 80483E98  A8 7B 05 F0 */	lha r3, 0x5f0(r27)
/* 80483E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80483EA0  40 81 00 0C */	ble lbl_80483EAC
/* 80483EA4  38 03 FF FF */	addi r0, r3, -1
/* 80483EA8  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
lbl_80483EAC:
/* 80483EAC  7F 63 DB 78 */	mr r3, r27
/* 80483EB0  38 80 00 08 */	li r4, 8
/* 80483EB4  38 A0 00 08 */	li r5, 8
/* 80483EB8  48 00 0E 2D */	bl func_80484CE4
/* 80483EBC  7C 64 1B 78 */	mr r4, r3
/* 80483EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80483EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80483EC8  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80483ECC  7C 05 07 74 */	extsb r5, r0
/* 80483ED0  4B BB 14 91 */	bl isSwitch__10dSv_info_cCFii
/* 80483ED4  30 03 FF FF */	addic r0, r3, -1
/* 80483ED8  7C 00 19 10 */	subfe r0, r0, r3
/* 80483EDC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80483EE0  80 1B 05 AC */	lwz r0, 0x5ac(r27)
/* 80483EE4  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483EE8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80483EEC  7C A3 00 2E */	lwzx r5, r3, r0
/* 80483EF0  54 A3 E7 FE */	rlwinm r3, r5, 0x1c, 0x1f, 0x1f
/* 80483EF4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80483EF8  40 82 00 2C */	bne lbl_80483F24
/* 80483EFC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 80483F00  41 82 00 44 */	beq lbl_80483F44
/* 80483F04  28 04 00 00 */	cmplwi r4, 0
/* 80483F08  41 82 00 0C */	beq lbl_80483F14
/* 80483F0C  28 03 00 00 */	cmplwi r3, 0
/* 80483F10  41 82 00 14 */	beq lbl_80483F24
lbl_80483F14:
/* 80483F14  28 04 00 00 */	cmplwi r4, 0
/* 80483F18  40 82 00 2C */	bne lbl_80483F44
/* 80483F1C  28 03 00 00 */	cmplwi r3, 0
/* 80483F20  41 82 00 24 */	beq lbl_80483F44
lbl_80483F24:
/* 80483F24  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80483F28  41 82 00 0C */	beq lbl_80483F34
/* 80483F2C  38 00 00 01 */	li r0, 1
/* 80483F30  98 1B 05 CB */	stb r0, 0x5cb(r27)
lbl_80483F34:
/* 80483F34  3B A0 00 01 */	li r29, 1
/* 80483F38  7F 63 DB 78 */	mr r3, r27
/* 80483F3C  48 00 00 6D */	bl mode_u_l_init__Q211daObjSwpush5Act_cFv
/* 80483F40  48 00 00 18 */	b lbl_80483F58
lbl_80483F44:
/* 80483F44  D3 FB 05 CC */	stfs f31, 0x5cc(r27)
/* 80483F48  7F 63 DB 78 */	mr r3, r27
/* 80483F4C  FC 20 F8 90 */	fmr f1, f31
/* 80483F50  38 80 00 01 */	li r4, 1
/* 80483F54  4B FF FC 1D */	bl top_bg_aim_req__Q211daObjSwpush5Act_cFfs
lbl_80483F58:
/* 80483F58  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80483F5C  41 82 00 10 */	beq lbl_80483F6C
/* 80483F60  7F 63 DB 78 */	mr r3, r27
/* 80483F64  48 00 07 A5 */	bl demo_reqSw_init__Q211daObjSwpush5Act_cFv
/* 80483F68  48 00 00 20 */	b lbl_80483F88
lbl_80483F6C:
/* 80483F6C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80483F70  41 82 00 18 */	beq lbl_80483F88
/* 80483F74  88 1B 05 C5 */	lbz r0, 0x5c5(r27)
/* 80483F78  28 00 00 00 */	cmplwi r0, 0
/* 80483F7C  40 82 00 0C */	bne lbl_80483F88
/* 80483F80  7F 63 DB 78 */	mr r3, r27
/* 80483F84  48 00 05 FD */	bl demo_reqPause_init__Q211daObjSwpush5Act_cFv
lbl_80483F88:
/* 80483F88  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80483F8C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80483F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80483F94  4B ED E2 8D */	bl _restgpr_27
/* 80483F98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80483F9C  7C 08 03 A6 */	mtlr r0
/* 80483FA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80483FA4  4E 80 00 20 */	blr 
