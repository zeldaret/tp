lbl_80491BB0:
/* 80491BB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80491BB4  7C 08 02 A6 */	mflr r0
/* 80491BB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80491BBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80491BC0  4B ED 06 1C */	b _savegpr_29
/* 80491BC4  7C 7E 1B 78 */	mr r30, r3
/* 80491BC8  3C 80 80 49 */	lis r4, cNullVec__6Z2Calc@ha
/* 80491BCC  3B E4 64 94 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80491BD0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80491BD4  54 1D 06 BE */	clrlwi r29, r0, 0x1a
/* 80491BD8  4B FF F7 C5 */	bl checkOpen__8daTbox_cFv
/* 80491BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80491BE0  41 82 00 F0 */	beq lbl_80491CD0
/* 80491BE4  80 9E 07 2C */	lwz r4, 0x72c(r30)
/* 80491BE8  A8 04 00 08 */	lha r0, 8(r4)
/* 80491BEC  3C 60 80 49 */	lis r3, lit_4357@ha
/* 80491BF0  C8 23 62 5C */	lfd f1, lit_4357@l(r3)
/* 80491BF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80491BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80491BFC  3C 00 43 30 */	lis r0, 0x4330
/* 80491C00  90 01 00 20 */	stw r0, 0x20(r1)
/* 80491C04  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80491C08  EC 00 08 28 */	fsubs f0, f0, f1
/* 80491C0C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80491C10  2C 1D 00 03 */	cmpwi r29, 3
/* 80491C14  40 82 00 8C */	bne lbl_80491CA0
/* 80491C18  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491C1C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80491C20  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491C24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80491C28  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491C2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80491C30  38 61 00 14 */	addi r3, r1, 0x14
/* 80491C34  4B B8 C0 88 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80491C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80491C3C  41 82 00 1C */	beq lbl_80491C58
/* 80491C40  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80491C44  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80491C48  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80491C4C  38 00 00 00 */	li r0, 0
/* 80491C50  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80491C54  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80491C58:
/* 80491C58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491C5C  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80491C60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491C64  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80491C68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491C6C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80491C70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491C74  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80491C78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491C7C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80491C80  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491C84  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80491C88  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491C8C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80491C90  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491C94  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80491C98  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491C9C  D0 1E 05 40 */	stfs f0, 0x540(r30)
lbl_80491CA0:
/* 80491CA0  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 80491CA4  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80491CA8  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491CAC  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491CB0  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80491CB4  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491CB8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80491CBC  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80491CC0  38 60 00 00 */	li r3, 0
/* 80491CC4  38 A0 00 01 */	li r5, 1
/* 80491CC8  4B C0 A5 28 */	b offStatus__7dTres_cFUcii
/* 80491CCC  48 00 02 84 */	b lbl_80491F50
lbl_80491CD0:
/* 80491CD0  7F C3 F3 78 */	mr r3, r30
/* 80491CD4  4B FF F6 89 */	bl checkEnv__8daTbox_cFv
/* 80491CD8  2C 03 00 00 */	cmpwi r3, 0
/* 80491CDC  40 82 00 20 */	bne lbl_80491CFC
/* 80491CE0  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80491CE4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80491CE8  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491CEC  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491CF0  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80491CF4  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491CF8  48 00 02 58 */	b lbl_80491F50
lbl_80491CFC:
/* 80491CFC  7F C3 F3 78 */	mr r3, r30
/* 80491D00  4B FF F8 45 */	bl checkNormal__8daTbox_cFv
/* 80491D04  2C 03 00 00 */	cmpwi r3, 0
/* 80491D08  41 82 01 8C */	beq lbl_80491E94
/* 80491D0C  2C 1D 00 06 */	cmpwi r29, 6
/* 80491D10  40 82 00 30 */	bne lbl_80491D40
/* 80491D14  7F C3 F3 78 */	mr r3, r30
/* 80491D18  48 00 2C 39 */	bl checkDrop__8daTbox_cFv
/* 80491D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80491D20  40 82 00 20 */	bne lbl_80491D40
/* 80491D24  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80491D28  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80491D2C  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491D30  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491D34  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80491D38  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491D3C  48 00 01 40 */	b lbl_80491E7C
lbl_80491D40:
/* 80491D40  2C 1D 00 03 */	cmpwi r29, 3
/* 80491D44  40 82 00 FC */	bne lbl_80491E40
/* 80491D48  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80491D4C  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80491D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80491D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80491D58  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80491D5C  7C 05 07 74 */	extsb r5, r0
/* 80491D60  4B BA 36 00 */	b isSwitch__10dSv_info_cCFii
/* 80491D64  2C 03 00 00 */	cmpwi r3, 0
/* 80491D68  41 82 00 A8 */	beq lbl_80491E10
/* 80491D6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491D70  D0 01 00 08 */	stfs f0, 8(r1)
/* 80491D74  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491D78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80491D7C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491D80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80491D84  38 61 00 08 */	addi r3, r1, 8
/* 80491D88  4B B8 BF 34 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80491D8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80491D90  41 82 00 1C */	beq lbl_80491DAC
/* 80491D94  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80491D98  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80491D9C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80491DA0  38 00 00 00 */	li r0, 0
/* 80491DA4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80491DA8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_80491DAC:
/* 80491DAC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491DB0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80491DB4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491DB8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80491DBC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491DC0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80491DC4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491DC8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80491DCC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491DD0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80491DD4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491DD8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80491DDC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80491DE0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80491DE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80491DE8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80491DEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80491DF0  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80491DF4  80 7F 00 E0 */	lwz r3, 0xe0(r31)
/* 80491DF8  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80491DFC  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491E00  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491E04  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80491E08  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491E0C  48 00 00 70 */	b lbl_80491E7C
lbl_80491E10:
/* 80491E10  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 80491E14  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80491E18  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491E1C  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491E20  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80491E24  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491E28  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 80491E2C  60 00 00 02 */	ori r0, r0, 2
/* 80491E30  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80491E34  38 00 00 01 */	li r0, 1
/* 80491E38  98 1E 09 FD */	stb r0, 0x9fd(r30)
/* 80491E3C  48 00 00 40 */	b lbl_80491E7C
lbl_80491E40:
/* 80491E40  2C 1D 00 00 */	cmpwi r29, 0
/* 80491E44  40 82 00 20 */	bne lbl_80491E64
/* 80491E48  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80491E4C  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80491E50  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491E54  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491E58  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80491E5C  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491E60  48 00 00 1C */	b lbl_80491E7C
lbl_80491E64:
/* 80491E64  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80491E68  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80491E6C  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491E70  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491E74  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80491E78  90 1E 07 48 */	stw r0, 0x748(r30)
lbl_80491E7C:
/* 80491E7C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80491E80  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80491E84  38 60 00 00 */	li r3, 0
/* 80491E88  38 A0 00 01 */	li r5, 1
/* 80491E8C  4B C0 A2 DC */	b onStatus__7dTres_cFUcii
/* 80491E90  48 00 00 C0 */	b lbl_80491F50
lbl_80491E94:
/* 80491E94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80491E98  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80491E9C  38 60 00 00 */	li r3, 0
/* 80491EA0  38 A0 00 01 */	li r5, 1
/* 80491EA4  4B C0 A3 4C */	b offStatus__7dTres_cFUcii
/* 80491EA8  2C 1D 00 02 */	cmpwi r29, 2
/* 80491EAC  41 82 00 14 */	beq lbl_80491EC0
/* 80491EB0  40 80 00 A0 */	bge lbl_80491F50
/* 80491EB4  2C 1D 00 01 */	cmpwi r29, 1
/* 80491EB8  40 80 00 40 */	bge lbl_80491EF8
/* 80491EBC  48 00 00 94 */	b lbl_80491F50
lbl_80491EC0:
/* 80491EC0  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 80491EC4  80 1F 01 14 */	lwz r0, 0x114(r31)
/* 80491EC8  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491ECC  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491ED0  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80491ED4  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491ED8  38 00 00 41 */	li r0, 0x41
/* 80491EDC  98 1E 07 5C */	stb r0, 0x75c(r30)
/* 80491EE0  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 80491EE4  60 00 00 03 */	ori r0, r0, 3
/* 80491EE8  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80491EEC  38 00 00 78 */	li r0, 0x78
/* 80491EF0  B0 1E 07 5A */	sth r0, 0x75a(r30)
/* 80491EF4  48 00 00 5C */	b lbl_80491F50
lbl_80491EF8:
/* 80491EF8  A0 1E 09 80 */	lhz r0, 0x980(r30)
/* 80491EFC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80491F00  28 00 00 0F */	cmplwi r0, 0xf
/* 80491F04  40 82 00 20 */	bne lbl_80491F24
/* 80491F08  80 7F 01 1C */	lwz r3, 0x11c(r31)
/* 80491F0C  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 80491F10  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491F14  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491F18  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 80491F1C  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80491F20  48 00 00 1C */	b lbl_80491F3C
lbl_80491F24:
/* 80491F24  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80491F28  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 80491F2C  90 7E 07 40 */	stw r3, 0x740(r30)
/* 80491F30  90 1E 07 44 */	stw r0, 0x744(r30)
/* 80491F34  80 1F 01 30 */	lwz r0, 0x130(r31)
/* 80491F38  90 1E 07 48 */	stw r0, 0x748(r30)
lbl_80491F3C:
/* 80491F3C  38 00 00 78 */	li r0, 0x78
/* 80491F40  B0 1E 07 5A */	sth r0, 0x75a(r30)
/* 80491F44  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 80491F48  60 00 00 03 */	ori r0, r0, 3
/* 80491F4C  B0 1E 07 54 */	sth r0, 0x754(r30)
lbl_80491F50:
/* 80491F50  39 61 00 40 */	addi r11, r1, 0x40
/* 80491F54  4B ED 02 D4 */	b _restgpr_29
/* 80491F58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80491F5C  7C 08 03 A6 */	mtlr r0
/* 80491F60  38 21 00 40 */	addi r1, r1, 0x40
/* 80491F64  4E 80 00 20 */	blr 
