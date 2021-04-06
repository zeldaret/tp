lbl_800C7C64:
/* 800C7C64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800C7C68  7C 08 02 A6 */	mflr r0
/* 800C7C6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800C7C70  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800C7C74  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800C7C78  39 61 00 40 */	addi r11, r1, 0x40
/* 800C7C7C  48 29 A5 5D */	bl _savegpr_28
/* 800C7C80  7C 7D 1B 78 */	mr r29, r3
/* 800C7C84  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800C7C88  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800C7C8C  A8 03 30 0A */	lha r0, 0x300a(r3)
/* 800C7C90  2C 00 00 00 */	cmpwi r0, 0
/* 800C7C94  41 82 00 38 */	beq lbl_800C7CCC
/* 800C7C98  48 04 DF 89 */	bl checkEventRun__9daAlink_cCFv
/* 800C7C9C  2C 03 00 00 */	cmpwi r3, 0
/* 800C7CA0  40 82 00 10 */	bne lbl_800C7CB0
/* 800C7CA4  7F A3 EB 78 */	mr r3, r29
/* 800C7CA8  4B FE DC 45 */	bl checkWaitAction__9daAlink_cFv
/* 800C7CAC  48 00 00 18 */	b lbl_800C7CC4
lbl_800C7CB0:
/* 800C7CB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C7CB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C7CB8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C7CBC  80 9D 31 84 */	lwz r4, 0x3184(r29)
/* 800C7CC0  4B F8 04 BD */	bl cutEnd__16dEvent_manager_cFi
lbl_800C7CC4:
/* 800C7CC4  38 60 00 01 */	li r3, 1
/* 800C7CC8  48 00 06 00 */	b lbl_800C82C8
lbl_800C7CCC:
/* 800C7CCC  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800C7CD0  80 1D 19 9C */	lwz r0, 0x199c(r29)
/* 800C7CD4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C7CD8  40 82 00 18 */	bne lbl_800C7CF0
/* 800C7CDC  C0 1D 34 84 */	lfs f0, 0x3484(r29)
/* 800C7CE0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 800C7CE4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C7CE8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 800C7CEC  48 00 00 0C */	b lbl_800C7CF8
lbl_800C7CF0:
/* 800C7CF0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800C7CF4  D0 1D 34 84 */	stfs f0, 0x3484(r29)
lbl_800C7CF8:
/* 800C7CF8  38 00 00 04 */	li r0, 4
/* 800C7CFC  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800C7D00  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 800C7D04  2C 00 00 00 */	cmpwi r0, 0
/* 800C7D08  41 82 01 BC */	beq lbl_800C7EC4
/* 800C7D0C  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800C7D10  2C 00 00 00 */	cmpwi r0, 0
/* 800C7D14  40 82 01 B0 */	bne lbl_800C7EC4
/* 800C7D18  88 1D 2F BF */	lbz r0, 0x2fbf(r29)
/* 800C7D1C  28 00 00 00 */	cmplwi r0, 0
/* 800C7D20  40 82 03 00 */	bne lbl_800C8020
/* 800C7D24  38 00 00 01 */	li r0, 1
/* 800C7D28  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 800C7D2C  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 800C7D30  2C 00 00 01 */	cmpwi r0, 1
/* 800C7D34  40 82 00 84 */	bne lbl_800C7DB8
/* 800C7D38  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800C7D3C  28 00 00 39 */	cmplwi r0, 0x39
/* 800C7D40  41 82 00 0C */	beq lbl_800C7D4C
/* 800C7D44  28 00 00 3A */	cmplwi r0, 0x3a
/* 800C7D48  40 82 00 70 */	bne lbl_800C7DB8
lbl_800C7D4C:
/* 800C7D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C7D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C7D54  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C7D58  80 9D 31 84 */	lwz r4, 0x3184(r29)
/* 800C7D5C  4B F8 04 21 */	bl cutEnd__16dEvent_manager_cFi
/* 800C7D60  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C7D64  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C7D68  41 82 00 20 */	beq lbl_800C7D88
/* 800C7D6C  7F A3 EB 78 */	mr r3, r29
/* 800C7D70  38 80 00 00 */	li r4, 0
/* 800C7D74  38 BF 18 D0 */	addi r5, r31, 0x18d0
/* 800C7D78  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 800C7D7C  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C7D80  48 06 19 59 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800C7D84  48 00 00 1C */	b lbl_800C7DA0
lbl_800C7D88:
/* 800C7D88  7F A3 EB 78 */	mr r3, r29
/* 800C7D8C  38 80 00 19 */	li r4, 0x19
/* 800C7D90  38 BF 00 64 */	addi r5, r31, 0x64
/* 800C7D94  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800C7D98  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C7D9C  4B FE 52 45 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800C7DA0:
/* 800C7DA0  38 00 00 0C */	li r0, 0xc
/* 800C7DA4  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800C7DA8  38 00 00 01 */	li r0, 1
/* 800C7DAC  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 800C7DB0  38 60 00 01 */	li r3, 1
/* 800C7DB4  48 00 05 14 */	b lbl_800C82C8
lbl_800C7DB8:
/* 800C7DB8  80 7F 4A 18 */	lwz r3, 0x4a18(r31)
/* 800C7DBC  80 1F 4A 1C */	lwz r0, 0x4a1c(r31)
/* 800C7DC0  90 61 00 08 */	stw r3, 8(r1)
/* 800C7DC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C7DC8  80 1F 4A 20 */	lwz r0, 0x4a20(r31)
/* 800C7DCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800C7DD0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 800C7DD4  3B 83 56 1C */	addi r28, r3, l_wolfBaseAnime@l /* 0x8042561C@l */
/* 800C7DD8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 800C7DDC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800C7DE0  3B E3 55 14 */	addi r31, r3, l_waitBaseAnime@l /* 0x80425514@l */
/* 800C7DE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800C7DE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C7DEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800C7DF0  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C7DF4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C7DF8  40 82 00 40 */	bne lbl_800C7E38
/* 800C7DFC  7F A3 EB 78 */	mr r3, r29
/* 800C7E00  38 80 00 FE */	li r4, 0xfe
/* 800C7E04  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C7E08  4B FE 51 A9 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800C7E0C  7F A3 EB 78 */	mr r3, r29
/* 800C7E10  38 80 00 00 */	li r4, 0
/* 800C7E14  4B FF 79 89 */	bl setMetamorphoseModel__9daAlink_cFi
/* 800C7E18  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800C7E1C  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800C7E20  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 800C7E24  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7E28  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 800C7E2C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800C7E30  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 800C7E34  48 00 00 4C */	b lbl_800C7E80
lbl_800C7E38:
/* 800C7E38  7F A3 EB 78 */	mr r3, r29
/* 800C7E3C  38 80 00 6F */	li r4, 0x6f
/* 800C7E40  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C7E44  48 06 18 65 */	bl setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf
/* 800C7E48  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 800C7E4C  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 800C7E50  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 800C7E54  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7E58  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 800C7E5C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 800C7E60  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 800C7E64  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800C7E68  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800C7E6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C7E70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800C7E74  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800C7E78  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800C7E7C  90 1D 31 A0 */	stw r0, 0x31a0(r29)
lbl_800C7E80:
/* 800C7E80  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 800C7E84  4B F4 4E E1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800C7E88  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 800C7E8C  4B F4 50 B9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 800C7E90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800C7E94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800C7E98  38 81 00 08 */	addi r4, r1, 8
/* 800C7E9C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 800C7EA0  48 27 EE CD */	bl PSMTXMultVec
/* 800C7EA4  38 00 00 0C */	li r0, 0xc
/* 800C7EA8  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800C7EAC  A0 1D 06 04 */	lhz r0, 0x604(r29)
/* 800C7EB0  2C 00 00 03 */	cmpwi r0, 3
/* 800C7EB4  40 82 01 6C */	bne lbl_800C8020
/* 800C7EB8  38 00 00 01 */	li r0, 1
/* 800C7EBC  B0 1D 30 14 */	sth r0, 0x3014(r29)
/* 800C7EC0  48 00 01 60 */	b lbl_800C8020
lbl_800C7EC4:
/* 800C7EC4  7F C3 F3 78 */	mr r3, r30
/* 800C7EC8  48 09 66 05 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C7ECC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C7ED0  40 82 00 70 */	bne lbl_800C7F40
/* 800C7ED4  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 800C7ED8  2C 00 00 01 */	cmpwi r0, 1
/* 800C7EDC  40 82 00 18 */	bne lbl_800C7EF4
/* 800C7EE0  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 800C7EE4  28 00 00 39 */	cmplwi r0, 0x39
/* 800C7EE8  41 82 00 58 */	beq lbl_800C7F40
/* 800C7EEC  28 00 00 3A */	cmplwi r0, 0x3a
/* 800C7EF0  41 82 00 50 */	beq lbl_800C7F40
lbl_800C7EF4:
/* 800C7EF4  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800C7EF8  2C 00 00 00 */	cmpwi r0, 0
/* 800C7EFC  41 82 01 24 */	beq lbl_800C8020
/* 800C7F00  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800C7F04  C0 1D 34 80 */	lfs f0, 0x3480(r29)
/* 800C7F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C7F0C  40 81 01 14 */	ble lbl_800C8020
/* 800C7F10  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800C7F14  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C7F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C7F1C  41 81 00 24 */	bgt lbl_800C7F40
/* 800C7F20  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800C7F24  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C7F28  40 82 00 18 */	bne lbl_800C7F40
/* 800C7F2C  7F A3 EB 78 */	mr r3, r29
/* 800C7F30  38 80 00 08 */	li r4, 8
/* 800C7F34  4B FE A6 99 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800C7F38  2C 03 00 00 */	cmpwi r3, 0
/* 800C7F3C  41 82 00 E4 */	beq lbl_800C8020
lbl_800C7F40:
/* 800C7F40  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800C7F44  2C 00 00 00 */	cmpwi r0, 0
/* 800C7F48  41 82 00 A0 */	beq lbl_800C7FE8
/* 800C7F4C  7F A3 EB 78 */	mr r3, r29
/* 800C7F50  38 80 00 00 */	li r4, 0
/* 800C7F54  38 A0 00 00 */	li r5, 0
/* 800C7F58  4B FF 93 85 */	bl deleteEquipItem__9daAlink_cFii
/* 800C7F5C  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800C7F60  2C 00 00 00 */	cmpwi r0, 0
/* 800C7F64  41 82 00 18 */	beq lbl_800C7F7C
/* 800C7F68  7F A3 EB 78 */	mr r3, r29
/* 800C7F6C  48 04 FD 25 */	bl resetSpecialEvent__9daAlink_cFv
/* 800C7F70  7F A3 EB 78 */	mr r3, r29
/* 800C7F74  4B FE D9 79 */	bl checkWaitAction__9daAlink_cFv
/* 800C7F78  48 00 03 50 */	b lbl_800C82C8
lbl_800C7F7C:
/* 800C7F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C7F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C7F84  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C7F88  80 9D 31 84 */	lwz r4, 0x3184(r29)
/* 800C7F8C  4B F8 01 F1 */	bl cutEnd__16dEvent_manager_cFi
/* 800C7F90  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C7F94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C7F98  41 82 00 20 */	beq lbl_800C7FB8
/* 800C7F9C  7F A3 EB 78 */	mr r3, r29
/* 800C7FA0  38 80 00 00 */	li r4, 0
/* 800C7FA4  38 BF 18 D0 */	addi r5, r31, 0x18d0
/* 800C7FA8  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 800C7FAC  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C7FB0  48 06 17 29 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800C7FB4  48 00 00 1C */	b lbl_800C7FD0
lbl_800C7FB8:
/* 800C7FB8  7F A3 EB 78 */	mr r3, r29
/* 800C7FBC  38 80 00 19 */	li r4, 0x19
/* 800C7FC0  38 BF 00 64 */	addi r5, r31, 0x64
/* 800C7FC4  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800C7FC8  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800C7FCC  4B FE 50 15 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800C7FD0:
/* 800C7FD0  38 00 00 0C */	li r0, 0xc
/* 800C7FD4  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800C7FD8  38 00 00 01 */	li r0, 1
/* 800C7FDC  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 800C7FE0  38 60 00 01 */	li r3, 1
/* 800C7FE4  48 00 02 E4 */	b lbl_800C82C8
lbl_800C7FE8:
/* 800C7FE8  38 00 00 04 */	li r0, 4
/* 800C7FEC  98 1D 2F BF */	stb r0, 0x2fbf(r29)
/* 800C7FF0  38 00 00 00 */	li r0, 0
/* 800C7FF4  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 800C7FF8  38 00 00 01 */	li r0, 1
/* 800C7FFC  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 800C8000  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 800C8004  2C 00 00 00 */	cmpwi r0, 0
/* 800C8008  41 82 00 18 */	beq lbl_800C8020
/* 800C800C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C8010  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C8014  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800C8018  38 80 5E 40 */	li r4, 0x5e40
/* 800C801C  4B F6 C9 71 */	bl onEventBit__11dSv_event_cFUs
lbl_800C8020:
/* 800C8020  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800C8024  D0 1D 33 DC */	stfs f0, 0x33dc(r29)
/* 800C8028  A8 1D 30 12 */	lha r0, 0x3012(r29)
/* 800C802C  2C 00 00 00 */	cmpwi r0, 0
/* 800C8030  41 82 00 D4 */	beq lbl_800C8104
/* 800C8034  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C8038  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C803C  41 82 00 44 */	beq lbl_800C8080
/* 800C8040  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800C8044  C0 22 98 F0 */	lfs f1, lit_74385(r2)
/* 800C8048  C0 1D 33 DC */	lfs f0, 0x33dc(r29)
/* 800C804C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C8050  EC 22 00 28 */	fsubs f1, f2, f0
/* 800C8054  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C8058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C805C  40 80 00 08 */	bge lbl_800C8064
/* 800C8060  FC 20 00 90 */	fmr f1, f0
lbl_800C8064:
/* 800C8064  C0 02 98 F4 */	lfs f0, lit_74386(r2)
/* 800C8068  EC 00 00 72 */	fmuls f0, f0, f1
/* 800C806C  FC 00 00 1E */	fctiwz f0, f0
/* 800C8070  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C8074  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C8078  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800C807C  48 00 01 30 */	b lbl_800C81AC
lbl_800C8080:
/* 800C8080  C0 9D 33 DC */	lfs f4, 0x33dc(r29)
/* 800C8084  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800C8088  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 800C808C  40 80 00 38 */	bge lbl_800C80C4
/* 800C8090  C8 62 98 F8 */	lfd f3, lit_74387(r2)
/* 800C8094  C8 42 99 00 */	lfd f2, lit_74388(r2)
/* 800C8098  C8 22 99 08 */	lfd f1, lit_74389(r2)
/* 800C809C  C8 02 99 10 */	lfd f0, lit_74390(r2)
/* 800C80A0  FC 00 01 32 */	fmul f0, f0, f4
/* 800C80A4  FC 01 00 28 */	fsub f0, f1, f0
/* 800C80A8  FC 02 00 32 */	fmul f0, f2, f0
/* 800C80AC  FC 03 00 2A */	fadd f0, f3, f0
/* 800C80B0  FC 00 00 1E */	fctiwz f0, f0
/* 800C80B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C80B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C80BC  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800C80C0  48 00 00 EC */	b lbl_800C81AC
lbl_800C80C4:
/* 800C80C4  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800C80C8  C0 22 93 F8 */	lfs f1, lit_13700(r2)
/* 800C80CC  EC 04 00 28 */	fsubs f0, f4, f0
/* 800C80D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C80D4  EC 22 00 28 */	fsubs f1, f2, f0
/* 800C80D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C80DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C80E0  40 80 00 08 */	bge lbl_800C80E8
/* 800C80E4  FC 20 00 90 */	fmr f1, f0
lbl_800C80E8:
/* 800C80E8  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800C80EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 800C80F0  FC 00 00 1E */	fctiwz f0, f0
/* 800C80F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C80F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C80FC  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800C8100  48 00 00 AC */	b lbl_800C81AC
lbl_800C8104:
/* 800C8104  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C8108  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C810C  41 82 00 2C */	beq lbl_800C8138
/* 800C8110  C8 42 99 18 */	lfd f2, lit_74391(r2)
/* 800C8114  C8 22 99 10 */	lfd f1, lit_74390(r2)
/* 800C8118  C0 1D 33 DC */	lfs f0, 0x33dc(r29)
/* 800C811C  FC 01 00 32 */	fmul f0, f1, f0
/* 800C8120  FC 02 00 32 */	fmul f0, f2, f0
/* 800C8124  FC 00 00 1E */	fctiwz f0, f0
/* 800C8128  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C812C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C8130  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800C8134  48 00 00 78 */	b lbl_800C81AC
lbl_800C8138:
/* 800C8138  C0 5D 33 DC */	lfs f2, 0x33dc(r29)
/* 800C813C  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800C8140  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C8144  40 80 00 28 */	bge lbl_800C816C
/* 800C8148  C8 22 99 20 */	lfd f1, lit_74392(r2)
/* 800C814C  C8 02 99 28 */	lfd f0, lit_74393(r2)
/* 800C8150  FC 00 00 B2 */	fmul f0, f0, f2
/* 800C8154  FC 01 00 32 */	fmul f0, f1, f0
/* 800C8158  FC 00 00 1E */	fctiwz f0, f0
/* 800C815C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C8160  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C8164  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800C8168  48 00 00 44 */	b lbl_800C81AC
lbl_800C816C:
/* 800C816C  C0 22 93 F8 */	lfs f1, lit_13700(r2)
/* 800C8170  EC 02 00 28 */	fsubs f0, f2, f0
/* 800C8174  EC 41 00 32 */	fmuls f2, f1, f0
/* 800C8178  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C817C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C8180  40 81 00 08 */	ble lbl_800C8188
/* 800C8184  FC 40 00 90 */	fmr f2, f0
lbl_800C8188:
/* 800C8188  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 800C818C  C0 02 99 30 */	lfs f0, lit_74394(r2)
/* 800C8190  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800C8194  EC 01 00 2A */	fadds f0, f1, f0
/* 800C8198  FC 00 00 50 */	fneg f0, f0
/* 800C819C  FC 00 00 1E */	fctiwz f0, f0
/* 800C81A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800C81A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C81A8  B0 1D 30 0E */	sth r0, 0x300e(r29)
lbl_800C81AC:
/* 800C81AC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C81B0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C81B4  40 82 01 10 */	bne lbl_800C82C4
/* 800C81B8  A8 7D 30 12 */	lha r3, 0x3012(r29)
/* 800C81BC  7C 60 07 35 */	extsh. r0, r3
/* 800C81C0  41 82 00 1C */	beq lbl_800C81DC
/* 800C81C4  C0 3D 33 DC */	lfs f1, 0x33dc(r29)
/* 800C81C8  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800C81CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 800C81D0  C0 02 94 E0 */	lfs f0, lit_19379(r2)
/* 800C81D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C81D8  48 00 00 18 */	b lbl_800C81F0
lbl_800C81DC:
/* 800C81DC  C0 3D 33 DC */	lfs f1, 0x33dc(r29)
/* 800C81E0  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800C81E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 800C81E8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800C81EC  EC 01 00 24 */	fdivs f0, f1, f0
lbl_800C81F0:
/* 800C81F0  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 800C81F4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800C81F8  40 80 00 08 */	bge lbl_800C8200
/* 800C81FC  48 00 00 18 */	b lbl_800C8214
lbl_800C8200:
/* 800C8200  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800C8204  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 800C8208  40 81 00 08 */	ble lbl_800C8210
/* 800C820C  48 00 00 08 */	b lbl_800C8214
lbl_800C8210:
/* 800C8210  FF E0 00 90 */	fmr f31, f0
lbl_800C8214:
/* 800C8214  7C 60 07 35 */	extsh. r0, r3
/* 800C8218  41 82 00 28 */	beq lbl_800C8240
/* 800C821C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800C8220  C0 22 99 34 */	lfs f1, lit_74395(r2)
/* 800C8224  C0 1D 33 DC */	lfs f0, 0x33dc(r29)
/* 800C8228  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C822C  EC 02 00 2A */	fadds f0, f2, f0
/* 800C8230  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800C8234  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C8238  EF E0 F8 28 */	fsubs f31, f0, f31
/* 800C823C  48 00 00 40 */	b lbl_800C827C
lbl_800C8240:
/* 800C8240  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800C8244  C0 42 97 F8 */	lfs f2, lit_55145(r2)
/* 800C8248  C0 3D 33 DC */	lfs f1, 0x33dc(r29)
/* 800C824C  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800C8250  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C8254  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C8258  EC 03 00 28 */	fsubs f0, f3, f0
/* 800C825C  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 800C8260  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C8264  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800C8268  40 81 00 14 */	ble lbl_800C827C
/* 800C826C  7F A3 EB 78 */	mr r3, r29
/* 800C8270  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800C8274  EC 20 07 F2 */	fmuls f1, f0, f31
/* 800C8278  48 03 9A F9 */	bl swimBgCheck__9daAlink_cFf
lbl_800C827C:
/* 800C827C  C0 3D 34 7C */	lfs f1, 0x347c(r29)
/* 800C8280  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C8284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C8288  40 81 00 08 */	ble lbl_800C8290
/* 800C828C  D0 1D 34 7C */	stfs f0, 0x347c(r29)
lbl_800C8290:
/* 800C8290  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 800C8294  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C8298  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C829C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800C82A0  3C 00 43 30 */	lis r0, 0x4330
/* 800C82A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 800C82A8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800C82AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C82B0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800C82B4  FC 00 00 1E */	fctiwz f0, f0
/* 800C82B8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800C82BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C82C0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
lbl_800C82C4:
/* 800C82C4  38 60 00 01 */	li r3, 1
lbl_800C82C8:
/* 800C82C8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800C82CC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800C82D0  39 61 00 40 */	addi r11, r1, 0x40
/* 800C82D4  48 29 9F 51 */	bl _restgpr_28
/* 800C82D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800C82DC  7C 08 03 A6 */	mtlr r0
/* 800C82E0  38 21 00 50 */	addi r1, r1, 0x50
/* 800C82E4  4E 80 00 20 */	blr 
