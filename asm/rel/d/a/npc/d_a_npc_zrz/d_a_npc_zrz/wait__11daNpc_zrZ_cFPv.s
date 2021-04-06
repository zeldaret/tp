lbl_80B98D04:
/* 80B98D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B98D08  7C 08 02 A6 */	mflr r0
/* 80B98D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B98D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80B98D14  4B 7C 94 C9 */	bl _savegpr_29
/* 80B98D18  7C 7E 1B 78 */	mr r30, r3
/* 80B98D1C  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B98D20  3B E4 AF EC */	addi r31, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B98D24  A0 03 14 4A */	lhz r0, 0x144a(r3)
/* 80B98D28  2C 00 00 02 */	cmpwi r0, 2
/* 80B98D2C  41 82 00 6C */	beq lbl_80B98D98
/* 80B98D30  40 80 02 38 */	bge lbl_80B98F68
/* 80B98D34  2C 00 00 00 */	cmpwi r0, 0
/* 80B98D38  41 82 00 0C */	beq lbl_80B98D44
/* 80B98D3C  48 00 02 2C */	b lbl_80B98F68
/* 80B98D40  48 00 02 28 */	b lbl_80B98F68
lbl_80B98D44:
/* 80B98D44  38 80 00 01 */	li r4, 1
/* 80B98D48  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B98D4C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B98D50  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B98D54  7D 89 03 A6 */	mtctr r12
/* 80B98D58  4E 80 04 21 */	bctrl 
/* 80B98D5C  7F C3 F3 78 */	mr r3, r30
/* 80B98D60  38 80 00 00 */	li r4, 0
/* 80B98D64  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B98D68  38 A0 00 00 */	li r5, 0
/* 80B98D6C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B98D70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B98D74  7D 89 03 A6 */	mtctr r12
/* 80B98D78  4E 80 04 21 */	bctrl 
/* 80B98D7C  7F C3 F3 78 */	mr r3, r30
/* 80B98D80  38 80 00 00 */	li r4, 0
/* 80B98D84  4B FF E0 F9 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98D88  38 00 00 00 */	li r0, 0
/* 80B98D8C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B98D90  38 00 00 02 */	li r0, 2
/* 80B98D94  B0 1E 14 4A */	sth r0, 0x144a(r30)
lbl_80B98D98:
/* 80B98D98  88 1E 14 4D */	lbz r0, 0x144d(r30)
/* 80B98D9C  28 00 00 00 */	cmplwi r0, 0
/* 80B98DA0  40 82 00 74 */	bne lbl_80B98E14
/* 80B98DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B98DA8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B98DAC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80B98DB0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80B98DB4  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80B98DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B98DBC  4C 41 13 82 */	cror 2, 1, 2
/* 80B98DC0  40 82 00 54 */	bne lbl_80B98E14
/* 80B98DC4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80B98DC8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B98DCC  41 82 00 48 */	beq lbl_80B98E14
/* 80B98DD0  38 00 00 01 */	li r0, 1
/* 80B98DD4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80B98DD8  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98DDC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B98DE0  4B 5B 78 DD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B98DE4  7F C3 F3 78 */	mr r3, r30
/* 80B98DE8  38 80 00 02 */	li r4, 2
/* 80B98DEC  4B FF E0 91 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98DF0  7F C3 F3 78 */	mr r3, r30
/* 80B98DF4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B98DF8  4B 48 19 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B98DFC  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80B98E00  B0 7E 08 F2 */	sth r3, 0x8f2(r30)
/* 80B98E04  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80B98E08  38 00 00 01 */	li r0, 1
/* 80B98E0C  98 1E 09 ED */	stb r0, 0x9ed(r30)
/* 80B98E10  48 00 01 58 */	b lbl_80B98F68
lbl_80B98E14:
/* 80B98E14  88 1E 09 F0 */	lbz r0, 0x9f0(r30)
/* 80B98E18  28 00 00 00 */	cmplwi r0, 0
/* 80B98E1C  40 82 01 4C */	bne lbl_80B98F68
/* 80B98E20  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98E24  4B 5B 78 C9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B98E28  30 03 FF FF */	addic r0, r3, -1
/* 80B98E2C  7C 00 19 10 */	subfe r0, r0, r3
/* 80B98E30  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80B98E34  7F C3 F3 78 */	mr r3, r30
/* 80B98E38  7F A4 EB 78 */	mr r4, r29
/* 80B98E3C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80B98E40  4B 5B BB A1 */	bl chkFindPlayer2__8daNpcF_cFis
/* 80B98E44  2C 03 00 00 */	cmpwi r3, 0
/* 80B98E48  41 82 00 2C */	beq lbl_80B98E74
/* 80B98E4C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B98E50  40 82 00 3C */	bne lbl_80B98E8C
/* 80B98E54  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98E58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B98E5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B98E60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B98E64  4B 5B 78 59 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B98E68  38 00 00 00 */	li r0, 0
/* 80B98E6C  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80B98E70  48 00 00 1C */	b lbl_80B98E8C
lbl_80B98E74:
/* 80B98E74  2C 1D 00 00 */	cmpwi r29, 0
/* 80B98E78  41 82 00 14 */	beq lbl_80B98E8C
/* 80B98E7C  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98E80  4B 5B 78 61 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B98E84  38 00 00 00 */	li r0, 0
/* 80B98E88  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80B98E8C:
/* 80B98E8C  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98E90  4B 5B 78 5D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B98E94  28 03 00 00 */	cmplwi r3, 0
/* 80B98E98  41 82 00 14 */	beq lbl_80B98EAC
/* 80B98E9C  7F C3 F3 78 */	mr r3, r30
/* 80B98EA0  38 80 00 02 */	li r4, 2
/* 80B98EA4  4B FF DF D9 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98EA8  48 00 00 44 */	b lbl_80B98EEC
lbl_80B98EAC:
/* 80B98EAC  7F C3 F3 78 */	mr r3, r30
/* 80B98EB0  38 80 00 00 */	li r4, 0
/* 80B98EB4  4B FF DF C9 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98EB8  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B98EBC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B98EC0  7C 04 00 00 */	cmpw r4, r0
/* 80B98EC4  41 82 00 28 */	beq lbl_80B98EEC
/* 80B98EC8  7F C3 F3 78 */	mr r3, r30
/* 80B98ECC  38 A0 FF FF */	li r5, -1
/* 80B98ED0  38 C0 FF FF */	li r6, -1
/* 80B98ED4  38 E0 00 0F */	li r7, 0xf
/* 80B98ED8  4B 5B B1 CD */	bl step__8daNpcF_cFsiii
/* 80B98EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B98EE0  41 82 00 0C */	beq lbl_80B98EEC
/* 80B98EE4  38 00 00 00 */	li r0, 0
/* 80B98EE8  B0 1E 14 4A */	sth r0, 0x144a(r30)
lbl_80B98EEC:
/* 80B98EEC  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B98EF0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80B98EF4  7C 03 00 00 */	cmpw r3, r0
/* 80B98EF8  40 82 00 68 */	bne lbl_80B98F60
/* 80B98EFC  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B98F00  4B 5B 77 ED */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B98F04  30 03 FF FF */	addic r0, r3, -1
/* 80B98F08  7C 00 19 10 */	subfe r0, r0, r3
/* 80B98F0C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B98F10  7F C3 F3 78 */	mr r3, r30
/* 80B98F14  3C A0 80 15 */	lis r5, srchAttnActor1__8daNpcF_cFPvPv@ha /* 0x80152654@ha */
/* 80B98F18  38 A5 26 54 */	addi r5, r5, srchAttnActor1__8daNpcF_cFPvPv@l /* 0x80152654@l */
/* 80B98F1C  38 DF 00 00 */	addi r6, r31, 0
/* 80B98F20  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80B98F24  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80B98F28  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80B98F2C  C0 86 00 50 */	lfs f4, 0x50(r6)
/* 80B98F30  A8 DE 04 E6 */	lha r6, 0x4e6(r30)
/* 80B98F34  38 E0 00 78 */	li r7, 0x78
/* 80B98F38  39 00 00 01 */	li r8, 1
/* 80B98F3C  4B 5B B4 31 */	bl getAttnActorP__8daNpcF_cFiPFPvPv_Pvffffsii
/* 80B98F40  7C 64 1B 79 */	or. r4, r3, r3
/* 80B98F44  41 82 00 24 */	beq lbl_80B98F68
/* 80B98F48  38 7E 0C 88 */	addi r3, r30, 0xc88
/* 80B98F4C  4B 5B 77 71 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B98F50  7F C3 F3 78 */	mr r3, r30
/* 80B98F54  38 80 00 04 */	li r4, 4
/* 80B98F58  4B FF DF 25 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98F5C  48 00 00 0C */	b lbl_80B98F68
lbl_80B98F60:
/* 80B98F60  38 00 00 00 */	li r0, 0
/* 80B98F64  90 1E 09 38 */	stw r0, 0x938(r30)
lbl_80B98F68:
/* 80B98F68  38 60 00 01 */	li r3, 1
/* 80B98F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B98F70  4B 7C 92 B9 */	bl _restgpr_29
/* 80B98F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B98F78  7C 08 03 A6 */	mtlr r0
/* 80B98F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B98F80  4E 80 00 20 */	blr 
