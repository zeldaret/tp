lbl_800B4B7C:
/* 800B4B7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B4B80  7C 08 02 A6 */	mflr r0
/* 800B4B84  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B4B88  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800B4B8C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800B4B90  39 61 00 20 */	addi r11, r1, 0x20
/* 800B4B94  48 2A D6 3D */	bl _savegpr_26
/* 800B4B98  7C 7D 1B 78 */	mr r29, r3
/* 800B4B9C  38 60 00 00 */	li r3, 0
/* 800B4BA0  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B4BA4  28 00 00 62 */	cmplwi r0, 0x62
/* 800B4BA8  41 82 00 10 */	beq lbl_800B4BB8
/* 800B4BAC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B4BB0  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B4BB4  40 82 00 08 */	bne lbl_800B4BBC
lbl_800B4BB8:
/* 800B4BB8  38 60 00 01 */	li r3, 1
lbl_800B4BBC:
/* 800B4BBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4BC0  40 82 06 A4 */	bne lbl_800B5264
/* 800B4BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B4BC8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B4BCC  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B4BD0  28 00 00 00 */	cmplwi r0, 0
/* 800B4BD4  40 82 06 90 */	bne lbl_800B5264
/* 800B4BD8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800B4BDC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800B4BE0  38 63 04 70 */	addi r3, r3, 0x470
/* 800B4BE4  4B FE 8E 7D */	bl checkStageName__9daAlink_cFPCc
/* 800B4BE8  7C 7F 1B 78 */	mr r31, r3
/* 800B4BEC  48 00 B7 FD */	bl checkRoomOnly__9daAlink_cFv
/* 800B4BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4BF4  41 82 00 9C */	beq lbl_800B4C90
/* 800B4BF8  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800B4BFC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B4C00  40 82 00 90 */	bne lbl_800B4C90
/* 800B4C04  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800B4C08  40 82 00 88 */	bne lbl_800B4C90
/* 800B4C0C  7F A3 EB 78 */	mr r3, r29
/* 800B4C10  48 00 46 45 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B4C14  2C 03 00 00 */	cmpwi r3, 0
/* 800B4C18  40 82 00 10 */	bne lbl_800B4C28
/* 800B4C1C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B4C20  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B4C24  40 82 00 50 */	bne lbl_800B4C74
lbl_800B4C28:
/* 800B4C28  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800B4C2C  28 03 00 FF */	cmplwi r3, 0xff
/* 800B4C30  41 82 00 44 */	beq lbl_800B4C74
/* 800B4C34  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800B4C38  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B4C3C  41 82 00 38 */	beq lbl_800B4C74
/* 800B4C40  28 03 01 02 */	cmplwi r3, 0x102
/* 800B4C44  41 82 00 30 */	beq lbl_800B4C74
/* 800B4C48  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B4C4C  28 00 02 02 */	cmplwi r0, 0x202
/* 800B4C50  40 82 00 14 */	bne lbl_800B4C64
/* 800B4C54  7F A3 EB 78 */	mr r3, r29
/* 800B4C58  38 80 00 2A */	li r4, 0x2a
/* 800B4C5C  4B FF E5 F5 */	bl setDoStatus__9daAlink_cFUc
/* 800B4C60  48 00 06 04 */	b lbl_800B5264
lbl_800B4C64:
/* 800B4C64  7F A3 EB 78 */	mr r3, r29
/* 800B4C68  38 80 00 04 */	li r4, 4
/* 800B4C6C  4B FF E5 E5 */	bl setDoStatus__9daAlink_cFUc
/* 800B4C70  48 00 05 F4 */	b lbl_800B5264
lbl_800B4C74:
/* 800B4C74  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 800B4C78  2C 00 00 00 */	cmpwi r0, 0
/* 800B4C7C  41 82 05 E8 */	beq lbl_800B5264
/* 800B4C80  7F A3 EB 78 */	mr r3, r29
/* 800B4C84  38 80 00 12 */	li r4, 0x12
/* 800B4C88  4B FF E5 C9 */	bl setDoStatus__9daAlink_cFUc
/* 800B4C8C  48 00 05 D8 */	b lbl_800B5264
lbl_800B4C90:
/* 800B4C90  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800B4C94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B4C98  41 82 01 FC */	beq lbl_800B4E94
/* 800B4C9C  7F A3 EB 78 */	mr r3, r29
/* 800B4CA0  48 01 DD 35 */	bl checkDownAttackState__9daAlink_cFv
/* 800B4CA4  2C 03 00 00 */	cmpwi r3, 0
/* 800B4CA8  41 82 00 14 */	beq lbl_800B4CBC
/* 800B4CAC  7F A3 EB 78 */	mr r3, r29
/* 800B4CB0  38 80 00 30 */	li r4, 0x30
/* 800B4CB4  4B FF E5 B5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4CB8  48 00 01 88 */	b lbl_800B4E40
lbl_800B4CBC:
/* 800B4CBC  7F A3 EB 78 */	mr r3, r29
/* 800B4CC0  48 01 DC 35 */	bl checkCutHeadState__9daAlink_cFv
/* 800B4CC4  2C 03 00 00 */	cmpwi r3, 0
/* 800B4CC8  41 82 00 14 */	beq lbl_800B4CDC
/* 800B4CCC  7F A3 EB 78 */	mr r3, r29
/* 800B4CD0  38 80 00 77 */	li r4, 0x77
/* 800B4CD4  4B FF E5 95 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4CD8  48 00 01 68 */	b lbl_800B4E40
lbl_800B4CDC:
/* 800B4CDC  7F A3 EB 78 */	mr r3, r29
/* 800B4CE0  48 07 30 E5 */	bl checkWolfSideStep__9daAlink_cCFv
/* 800B4CE4  2C 03 00 00 */	cmpwi r3, 0
/* 800B4CE8  41 82 00 14 */	beq lbl_800B4CFC
/* 800B4CEC  7F A3 EB 78 */	mr r3, r29
/* 800B4CF0  38 80 00 19 */	li r4, 0x19
/* 800B4CF4  4B FF E5 75 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4CF8  48 00 01 48 */	b lbl_800B4E40
lbl_800B4CFC:
/* 800B4CFC  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 800B4D00  28 03 00 00 */	cmplwi r3, 0
/* 800B4D04  41 82 00 A0 */	beq lbl_800B4DA4
/* 800B4D08  A8 03 00 08 */	lha r0, 8(r3)
/* 800B4D0C  2C 00 02 C7 */	cmpwi r0, 0x2c7
/* 800B4D10  40 82 00 84 */	bne lbl_800B4D94
/* 800B4D14  88 03 05 68 */	lbz r0, 0x568(r3)
/* 800B4D18  7C 00 07 75 */	extsb. r0, r0
/* 800B4D1C  40 80 00 0C */	bge lbl_800B4D28
/* 800B4D20  38 00 00 00 */	li r0, 0
/* 800B4D24  48 00 00 08 */	b lbl_800B4D2C
lbl_800B4D28:
/* 800B4D28  38 03 05 38 */	addi r0, r3, 0x538
lbl_800B4D2C:
/* 800B4D2C  28 00 00 00 */	cmplwi r0, 0
/* 800B4D30  41 82 01 10 */	beq lbl_800B4E40
/* 800B4D34  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 800B4D38  80 03 08 90 */	lwz r0, 0x890(r3)
/* 800B4D3C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800B4D40  40 82 00 10 */	bne lbl_800B4D50
/* 800B4D44  7F A3 EB 78 */	mr r3, r29
/* 800B4D48  38 80 00 93 */	li r4, 0x93
/* 800B4D4C  4B FF E5 05 */	bl setDoStatus__9daAlink_cFUc
lbl_800B4D50:
/* 800B4D50  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 800B4D54  64 00 00 02 */	oris r0, r0, 2
/* 800B4D58  90 1D 05 80 */	stw r0, 0x580(r29)
/* 800B4D5C  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 800B4D60  88 03 05 68 */	lbz r0, 0x568(r3)
/* 800B4D64  7C 00 07 75 */	extsb. r0, r0
/* 800B4D68  40 80 00 0C */	bge lbl_800B4D74
/* 800B4D6C  38 60 00 00 */	li r3, 0
/* 800B4D70  48 00 00 08 */	b lbl_800B4D78
lbl_800B4D74:
/* 800B4D74  38 63 05 38 */	addi r3, r3, 0x538
lbl_800B4D78:
/* 800B4D78  C0 03 00 00 */	lfs f0, 0(r3)
/* 800B4D7C  D0 1D 37 38 */	stfs f0, 0x3738(r29)
/* 800B4D80  C0 03 00 04 */	lfs f0, 4(r3)
/* 800B4D84  D0 1D 37 3C */	stfs f0, 0x373c(r29)
/* 800B4D88  C0 03 00 08 */	lfs f0, 8(r3)
/* 800B4D8C  D0 1D 37 40 */	stfs f0, 0x3740(r29)
/* 800B4D90  48 00 00 B0 */	b lbl_800B4E40
lbl_800B4D94:
/* 800B4D94  7F A3 EB 78 */	mr r3, r29
/* 800B4D98  38 80 00 8B */	li r4, 0x8b
/* 800B4D9C  4B FF E4 B5 */	bl setDoStatus__9daAlink_cFUc
/* 800B4DA0  48 00 00 A0 */	b lbl_800B4E40
lbl_800B4DA4:
/* 800B4DA4  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800B4DA8  3B 60 00 01 */	li r27, 1
/* 800B4DAC  7F 83 E3 78 */	mr r3, r28
/* 800B4DB0  4B FB EA 35 */	bl LockonTruth__12dAttention_cFv
/* 800B4DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4DB8  40 82 00 14 */	bne lbl_800B4DCC
/* 800B4DBC  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800B4DC0  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B4DC4  40 82 00 08 */	bne lbl_800B4DCC
/* 800B4DC8  3B 60 00 00 */	li r27, 0
lbl_800B4DCC:
/* 800B4DCC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B4DD0  41 82 00 14 */	beq lbl_800B4DE4
/* 800B4DD4  7F A3 EB 78 */	mr r3, r29
/* 800B4DD8  38 80 00 8B */	li r4, 0x8b
/* 800B4DDC  4B FF E4 75 */	bl setDoStatus__9daAlink_cFUc
/* 800B4DE0  48 00 00 60 */	b lbl_800B4E40
lbl_800B4DE4:
/* 800B4DE4  A8 1D 30 D2 */	lha r0, 0x30d2(r29)
/* 800B4DE8  2C 00 00 00 */	cmpwi r0, 0
/* 800B4DEC  40 82 00 54 */	bne lbl_800B4E40
/* 800B4DF0  7F A3 EB 78 */	mr r3, r29
/* 800B4DF4  4B FF FD 39 */	bl getFrontRollRate__9daAlink_cFv
/* 800B4DF8  C0 1D 33 A8 */	lfs f0, 0x33a8(r29)
/* 800B4DFC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B4E00  41 81 00 34 */	bgt lbl_800B4E34
/* 800B4E04  83 9D 27 E0 */	lwz r28, 0x27e0(r29)
/* 800B4E08  3B 60 00 01 */	li r27, 1
/* 800B4E0C  7F 83 E3 78 */	mr r3, r28
/* 800B4E10  4B FB E9 D5 */	bl LockonTruth__12dAttention_cFv
/* 800B4E14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4E18  40 82 00 14 */	bne lbl_800B4E2C
/* 800B4E1C  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 800B4E20  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B4E24  40 82 00 08 */	bne lbl_800B4E2C
/* 800B4E28  3B 60 00 00 */	li r27, 0
lbl_800B4E2C:
/* 800B4E2C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B4E30  41 82 00 10 */	beq lbl_800B4E40
lbl_800B4E34:
/* 800B4E34  7F A3 EB 78 */	mr r3, r29
/* 800B4E38  38 80 00 09 */	li r4, 9
/* 800B4E3C  4B FF E4 15 */	bl setDoStatus__9daAlink_cFUc
lbl_800B4E40:
/* 800B4E40  7F A3 EB 78 */	mr r3, r29
/* 800B4E44  4B FF CC E5 */	bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800B4E48  2C 03 00 00 */	cmpwi r3, 0
/* 800B4E4C  41 82 04 18 */	beq lbl_800B5264
/* 800B4E50  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B4E54  28 00 00 8B */	cmplwi r0, 0x8b
/* 800B4E58  41 82 00 2C */	beq lbl_800B4E84
/* 800B4E5C  28 00 00 30 */	cmplwi r0, 0x30
/* 800B4E60  41 82 00 24 */	beq lbl_800B4E84
/* 800B4E64  28 00 00 77 */	cmplwi r0, 0x77
/* 800B4E68  41 82 00 1C */	beq lbl_800B4E84
/* 800B4E6C  28 00 00 19 */	cmplwi r0, 0x19
/* 800B4E70  41 82 00 14 */	beq lbl_800B4E84
/* 800B4E74  28 00 00 09 */	cmplwi r0, 9
/* 800B4E78  41 82 00 0C */	beq lbl_800B4E84
/* 800B4E7C  28 00 00 93 */	cmplwi r0, 0x93
/* 800B4E80  40 82 03 E4 */	bne lbl_800B5264
lbl_800B4E84:
/* 800B4E84  7F A3 EB 78 */	mr r3, r29
/* 800B4E88  38 80 00 00 */	li r4, 0
/* 800B4E8C  4B FF E3 C5 */	bl setDoStatus__9daAlink_cFUc
/* 800B4E90  48 00 03 D4 */	b lbl_800B5264
lbl_800B4E94:
/* 800B4E94  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 800B4E98  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 800B4E9C  7C 03 00 50 */	subf r0, r3, r0
/* 800B4EA0  7C 03 07 34 */	extsh r3, r0
/* 800B4EA4  4B FF E5 F1 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800B4EA8  7C 7C 1B 78 */	mr r28, r3
/* 800B4EAC  7F A3 EB 78 */	mr r3, r29
/* 800B4EB0  4B FF FC 7D */	bl getFrontRollRate__9daAlink_cFv
/* 800B4EB4  FF E0 08 90 */	fmr f31, f1
/* 800B4EB8  83 7D 27 E0 */	lwz r27, 0x27e0(r29)
/* 800B4EBC  3B 40 00 01 */	li r26, 1
/* 800B4EC0  7F 63 DB 78 */	mr r3, r27
/* 800B4EC4  4B FB E9 21 */	bl LockonTruth__12dAttention_cFv
/* 800B4EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4ECC  40 82 00 14 */	bne lbl_800B4EE0
/* 800B4ED0  80 1B 03 34 */	lwz r0, 0x334(r27)
/* 800B4ED4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800B4ED8  40 82 00 08 */	bne lbl_800B4EE0
/* 800B4EDC  3B 40 00 00 */	li r26, 0
lbl_800B4EE0:
/* 800B4EE0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800B4EE4  40 82 00 28 */	bne lbl_800B4F0C
/* 800B4EE8  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 800B4EEC  28 03 00 00 */	cmplwi r3, 0
/* 800B4EF0  41 82 01 48 */	beq lbl_800B5038
/* 800B4EF4  80 1D 28 38 */	lwz r0, 0x2838(r29)
/* 800B4EF8  7C 03 00 40 */	cmplw r3, r0
/* 800B4EFC  41 82 00 10 */	beq lbl_800B4F0C
/* 800B4F00  80 1D 28 40 */	lwz r0, 0x2840(r29)
/* 800B4F04  7C 03 00 40 */	cmplw r3, r0
/* 800B4F08  40 82 01 30 */	bne lbl_800B5038
lbl_800B4F0C:
/* 800B4F0C  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800B4F10  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B4F14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4F18  40 81 00 74 */	ble lbl_800B4F8C
/* 800B4F1C  2C 1C 00 00 */	cmpwi r28, 0
/* 800B4F20  41 82 00 6C */	beq lbl_800B4F8C
/* 800B4F24  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B4F28  28 00 01 03 */	cmplwi r0, 0x103
/* 800B4F2C  40 82 00 24 */	bne lbl_800B4F50
/* 800B4F30  7F A3 EB 78 */	mr r3, r29
/* 800B4F34  48 01 DA A1 */	bl checkDownAttackState__9daAlink_cFv
/* 800B4F38  2C 03 00 00 */	cmpwi r3, 0
/* 800B4F3C  41 82 00 14 */	beq lbl_800B4F50
/* 800B4F40  7F A3 EB 78 */	mr r3, r29
/* 800B4F44  38 80 00 30 */	li r4, 0x30
/* 800B4F48  4B FF E3 21 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4F4C  48 00 01 D4 */	b lbl_800B5120
lbl_800B4F50:
/* 800B4F50  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B4F54  28 00 01 03 */	cmplwi r0, 0x103
/* 800B4F58  40 82 00 24 */	bne lbl_800B4F7C
/* 800B4F5C  7F A3 EB 78 */	mr r3, r29
/* 800B4F60  48 01 D9 95 */	bl checkCutHeadState__9daAlink_cFv
/* 800B4F64  2C 03 00 00 */	cmpwi r3, 0
/* 800B4F68  41 82 00 14 */	beq lbl_800B4F7C
/* 800B4F6C  7F A3 EB 78 */	mr r3, r29
/* 800B4F70  38 80 00 77 */	li r4, 0x77
/* 800B4F74  4B FF E2 F5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4F78  48 00 01 A8 */	b lbl_800B5120
lbl_800B4F7C:
/* 800B4F7C  7F A3 EB 78 */	mr r3, r29
/* 800B4F80  38 80 00 19 */	li r4, 0x19
/* 800B4F84  4B FF E2 E5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4F88  48 00 01 98 */	b lbl_800B5120
lbl_800B4F8C:
/* 800B4F8C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B4F90  28 00 00 16 */	cmplwi r0, 0x16
/* 800B4F94  41 82 00 94 */	beq lbl_800B5028
/* 800B4F98  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B4F9C  28 00 01 03 */	cmplwi r0, 0x103
/* 800B4FA0  41 82 00 0C */	beq lbl_800B4FAC
/* 800B4FA4  28 00 01 02 */	cmplwi r0, 0x102
/* 800B4FA8  40 82 00 80 */	bne lbl_800B5028
lbl_800B4FAC:
/* 800B4FAC  28 00 01 02 */	cmplwi r0, 0x102
/* 800B4FB0  40 82 00 14 */	bne lbl_800B4FC4
/* 800B4FB4  7F A3 EB 78 */	mr r3, r29
/* 800B4FB8  38 80 00 13 */	li r4, 0x13
/* 800B4FBC  4B FF E2 95 */	bl setDoStatus__9daAlink_cFUc
/* 800B4FC0  48 00 01 60 */	b lbl_800B5120
lbl_800B4FC4:
/* 800B4FC4  28 00 01 03 */	cmplwi r0, 0x103
/* 800B4FC8  40 82 00 24 */	bne lbl_800B4FEC
/* 800B4FCC  7F A3 EB 78 */	mr r3, r29
/* 800B4FD0  48 01 DA 05 */	bl checkDownAttackState__9daAlink_cFv
/* 800B4FD4  2C 03 00 00 */	cmpwi r3, 0
/* 800B4FD8  41 82 00 14 */	beq lbl_800B4FEC
/* 800B4FDC  7F A3 EB 78 */	mr r3, r29
/* 800B4FE0  38 80 00 30 */	li r4, 0x30
/* 800B4FE4  4B FF E2 85 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B4FE8  48 00 01 38 */	b lbl_800B5120
lbl_800B4FEC:
/* 800B4FEC  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B4FF0  28 00 01 03 */	cmplwi r0, 0x103
/* 800B4FF4  40 82 00 24 */	bne lbl_800B5018
/* 800B4FF8  7F A3 EB 78 */	mr r3, r29
/* 800B4FFC  48 01 D8 F9 */	bl checkCutHeadState__9daAlink_cFv
/* 800B5000  2C 03 00 00 */	cmpwi r3, 0
/* 800B5004  41 82 00 14 */	beq lbl_800B5018
/* 800B5008  7F A3 EB 78 */	mr r3, r29
/* 800B500C  38 80 00 77 */	li r4, 0x77
/* 800B5010  4B FF E2 59 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5014  48 00 01 0C */	b lbl_800B5120
lbl_800B5018:
/* 800B5018  7F A3 EB 78 */	mr r3, r29
/* 800B501C  38 80 00 86 */	li r4, 0x86
/* 800B5020  4B FF E2 31 */	bl setDoStatus__9daAlink_cFUc
/* 800B5024  48 00 00 FC */	b lbl_800B5120
lbl_800B5028:
/* 800B5028  7F A3 EB 78 */	mr r3, r29
/* 800B502C  38 80 00 79 */	li r4, 0x79
/* 800B5030  4B FF E2 21 */	bl setDoStatus__9daAlink_cFUc
/* 800B5034  48 00 00 EC */	b lbl_800B5120
lbl_800B5038:
/* 800B5038  7F A3 EB 78 */	mr r3, r29
/* 800B503C  48 00 42 19 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B5040  2C 03 00 00 */	cmpwi r3, 0
/* 800B5044  40 82 00 1C */	bne lbl_800B5060
/* 800B5048  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B504C  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B5050  41 82 00 10 */	beq lbl_800B5060
/* 800B5054  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B5058  28 00 02 02 */	cmplwi r0, 0x202
/* 800B505C  40 82 00 74 */	bne lbl_800B50D0
lbl_800B5060:
/* 800B5060  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800B5064  28 03 00 FF */	cmplwi r3, 0xff
/* 800B5068  41 82 00 68 */	beq lbl_800B50D0
/* 800B506C  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800B5070  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B5074  41 82 00 5C */	beq lbl_800B50D0
/* 800B5078  C0 1D 33 A8 */	lfs f0, 0x33a8(r29)
/* 800B507C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800B5080  4C 40 13 82 */	cror 2, 0, 2
/* 800B5084  40 82 00 4C */	bne lbl_800B50D0
/* 800B5088  28 03 01 02 */	cmplwi r3, 0x102
/* 800B508C  40 82 00 34 */	bne lbl_800B50C0
/* 800B5090  7F A3 EB 78 */	mr r3, r29
/* 800B5094  4B FF E4 6D */	bl checkAttentionState__9daAlink_cFv
/* 800B5098  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B509C  41 82 00 14 */	beq lbl_800B50B0
/* 800B50A0  7F A3 EB 78 */	mr r3, r29
/* 800B50A4  38 80 00 13 */	li r4, 0x13
/* 800B50A8  4B FF E1 A9 */	bl setDoStatus__9daAlink_cFUc
/* 800B50AC  48 00 00 74 */	b lbl_800B5120
lbl_800B50B0:
/* 800B50B0  7F A3 EB 78 */	mr r3, r29
/* 800B50B4  38 80 00 14 */	li r4, 0x14
/* 800B50B8  4B FF E1 99 */	bl setDoStatus__9daAlink_cFUc
/* 800B50BC  48 00 00 64 */	b lbl_800B5120
lbl_800B50C0:
/* 800B50C0  7F A3 EB 78 */	mr r3, r29
/* 800B50C4  38 80 00 04 */	li r4, 4
/* 800B50C8  4B FF E1 89 */	bl setDoStatus__9daAlink_cFUc
/* 800B50CC  48 00 00 54 */	b lbl_800B5120
lbl_800B50D0:
/* 800B50D0  C0 1D 33 A8 */	lfs f0, 0x33a8(r29)
/* 800B50D4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800B50D8  40 81 00 30 */	ble lbl_800B5108
/* 800B50DC  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B50E0  28 00 01 02 */	cmplwi r0, 0x102
/* 800B50E4  40 82 00 14 */	bne lbl_800B50F8
/* 800B50E8  7F A3 EB 78 */	mr r3, r29
/* 800B50EC  38 80 00 13 */	li r4, 0x13
/* 800B50F0  4B FF E1 61 */	bl setDoStatus__9daAlink_cFUc
/* 800B50F4  48 00 00 2C */	b lbl_800B5120
lbl_800B50F8:
/* 800B50F8  7F A3 EB 78 */	mr r3, r29
/* 800B50FC  38 80 00 79 */	li r4, 0x79
/* 800B5100  4B FF E1 51 */	bl setDoStatus__9daAlink_cFUc
/* 800B5104  48 00 00 1C */	b lbl_800B5120
lbl_800B5108:
/* 800B5108  A8 1D 30 8E */	lha r0, 0x308e(r29)
/* 800B510C  2C 00 00 00 */	cmpwi r0, 0
/* 800B5110  41 82 00 10 */	beq lbl_800B5120
/* 800B5114  7F A3 EB 78 */	mr r3, r29
/* 800B5118  38 80 00 12 */	li r4, 0x12
/* 800B511C  4B FF E1 35 */	bl setDoStatus__9daAlink_cFUc
lbl_800B5120:
/* 800B5120  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800B5124  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B5128  40 82 00 20 */	bne lbl_800B5148
/* 800B512C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B5130  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B5134  41 82 00 14 */	beq lbl_800B5148
/* 800B5138  7F A3 EB 78 */	mr r3, r29
/* 800B513C  4B FF C9 ED */	bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800B5140  2C 03 00 00 */	cmpwi r3, 0
/* 800B5144  41 82 00 30 */	beq lbl_800B5174
lbl_800B5148:
/* 800B5148  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B514C  28 00 00 79 */	cmplwi r0, 0x79
/* 800B5150  41 82 00 74 */	beq lbl_800B51C4
/* 800B5154  28 00 00 86 */	cmplwi r0, 0x86
/* 800B5158  41 82 00 6C */	beq lbl_800B51C4
/* 800B515C  28 00 00 30 */	cmplwi r0, 0x30
/* 800B5160  41 82 00 64 */	beq lbl_800B51C4
/* 800B5164  28 00 00 77 */	cmplwi r0, 0x77
/* 800B5168  41 82 00 5C */	beq lbl_800B51C4
/* 800B516C  28 00 00 19 */	cmplwi r0, 0x19
/* 800B5170  41 82 00 54 */	beq lbl_800B51C4
lbl_800B5174:
/* 800B5174  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B5178  28 00 00 79 */	cmplwi r0, 0x79
/* 800B517C  40 82 00 A4 */	bne lbl_800B5220
/* 800B5180  88 1D 2F A8 */	lbz r0, 0x2fa8(r29)
/* 800B5184  28 00 00 06 */	cmplwi r0, 6
/* 800B5188  41 82 00 3C */	beq lbl_800B51C4
/* 800B518C  38 60 00 00 */	li r3, 0
/* 800B5190  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B5194  28 00 00 46 */	cmplwi r0, 0x46
/* 800B5198  40 82 00 14 */	bne lbl_800B51AC
/* 800B519C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B51A0  28 00 00 53 */	cmplwi r0, 0x53
/* 800B51A4  40 82 00 08 */	bne lbl_800B51AC
/* 800B51A8  38 60 00 01 */	li r3, 1
lbl_800B51AC:
/* 800B51AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B51B0  40 82 00 14 */	bne lbl_800B51C4
/* 800B51B4  7F A3 EB 78 */	mr r3, r29
/* 800B51B8  48 02 B2 F5 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800B51BC  2C 03 00 00 */	cmpwi r3, 0
/* 800B51C0  41 82 00 60 */	beq lbl_800B5220
lbl_800B51C4:
/* 800B51C4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800B51C8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B51CC  41 82 00 20 */	beq lbl_800B51EC
/* 800B51D0  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B51D4  28 00 00 79 */	cmplwi r0, 0x79
/* 800B51D8  40 82 00 14 */	bne lbl_800B51EC
/* 800B51DC  C0 3D 36 AC */	lfs f1, 0x36ac(r29)
/* 800B51E0  48 1B 30 05 */	bl cBgW_CheckBGround__Ff
/* 800B51E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B51E8  40 82 00 38 */	bne lbl_800B5220
lbl_800B51EC:
/* 800B51EC  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800B51F0  28 00 00 42 */	cmplwi r0, 0x42
/* 800B51F4  40 82 00 20 */	bne lbl_800B5214
/* 800B51F8  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800B51FC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B5200  41 82 00 14 */	beq lbl_800B5214
/* 800B5204  7F A3 EB 78 */	mr r3, r29
/* 800B5208  38 80 00 04 */	li r4, 4
/* 800B520C  4B FF E0 45 */	bl setDoStatus__9daAlink_cFUc
/* 800B5210  48 00 00 10 */	b lbl_800B5220
lbl_800B5214:
/* 800B5214  7F A3 EB 78 */	mr r3, r29
/* 800B5218  38 80 00 00 */	li r4, 0
/* 800B521C  4B FF E0 35 */	bl setDoStatus__9daAlink_cFUc
lbl_800B5220:
/* 800B5220  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800B5224  41 82 00 1C */	beq lbl_800B5240
/* 800B5228  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B522C  28 00 00 19 */	cmplwi r0, 0x19
/* 800B5230  40 82 00 10 */	bne lbl_800B5240
/* 800B5234  7F A3 EB 78 */	mr r3, r29
/* 800B5238  38 80 00 00 */	li r4, 0
/* 800B523C  4B FF E0 15 */	bl setDoStatus__9daAlink_cFUc
lbl_800B5240:
/* 800B5240  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 800B5244  28 00 00 04 */	cmplwi r0, 4
/* 800B5248  40 82 00 1C */	bne lbl_800B5264
/* 800B524C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800B5250  28 00 02 02 */	cmplwi r0, 0x202
/* 800B5254  40 82 00 10 */	bne lbl_800B5264
/* 800B5258  7F A3 EB 78 */	mr r3, r29
/* 800B525C  38 80 00 2A */	li r4, 0x2a
/* 800B5260  4B FF DF F1 */	bl setDoStatus__9daAlink_cFUc
lbl_800B5264:
/* 800B5264  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800B5268  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800B526C  39 61 00 20 */	addi r11, r1, 0x20
/* 800B5270  48 2A CF AD */	bl _restgpr_26
/* 800B5274  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B5278  7C 08 03 A6 */	mtlr r0
/* 800B527C  38 21 00 30 */	addi r1, r1, 0x30
/* 800B5280  4E 80 00 20 */	blr 
